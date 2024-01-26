<?php
   //connect to server and select database
   $conn = mysql_connect("localhost", "root", "")
       or die(mysql_error());
   mysql_select_db("testDB",$conn) or die(mysql_error());
   
   //gather the topics
 $get_topics = "select topic_id, topic_title,
   date_format(topic_create_time, '%b %e %Y at %r') as fmt_topic_create_time,
  topic_owner from forum_topics order by topic_create_time desc";
  $get_topics_res = mysql_query($get_topics,$conn) or die(mysql_error());
 if (mysql_num_rows($get_topics_res) < 1) {
     //there are no topics, so say so
    $display_block = "<P><em>No topics exist.</em></p>";
  } else {
     //create the display string
     $display_block = "
     <table cellpadding=3 cellspacing=1 border=1>
    <tr>
    <th>TOPIC TITLE</th>
     <th># of POSTS</th>
     </tr>";
  
      while ($topic_info = mysql_fetch_array($get_topics_res)) {
         $topic_id = $topic_info['topic_id'];
         $topic_title = stripslashes($topic_info['topic_title']);
         $topic_create_time = $topic_info['fmt_topic_create_time'];
        $topic_owner = stripslashes($topic_info['topic_owner']);
  
         //get number of posts
         $get_num_posts = "select count(post_id) from forum_posts
              where topic_id = $topic_id";
        $get_num_posts_res = mysql_query($get_num_posts,$conn)
              or die(mysql_error());
         $num_posts = mysql_result($get_num_posts_res,0,'count(post_id)');
 
         //add to display
         $display_block .= "
         <tr>
         <td><a href=\"showtopic_student.php?topic_id=$topic_id\">
         <strong>$topic_title</strong></a><br>
         Created on $topic_create_time by $topic_owner</td>
         <td align=center>$num_posts</td>
         </tr>";
     }
  
     //close up the table
     $display_block .= "</table>";
  }
  ?>
  <html>
  <head>
  <title>Topics in My Forum</title>
  </head>
  <body>
  <h1>Topics in My Forum</h1>
  <?php print $display_block; ?>
  <P>Would you like to <a href="addtopic_student.html">add a topic</a>?</p>
  </body>
  </html>