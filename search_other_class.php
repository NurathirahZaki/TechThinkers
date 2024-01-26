	      <!-- block --> <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlW1aI+l6SxjZpQl/c5x63zgIYTl1Vz7kZ7tFvMz3Dmn" crossorigin="anonymous">
                        <div class="block" id="search_class">
                            <div class="navbar navbar-inner block-header">
                                <div id="" class="muted pull-left"><strong>Search Past Class</strong></div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
								<form method="post" action="search_class.php">	
										<div class="control-group">
											<label>School Year:</label>
                                          <div class="controls">
                                            <select name="school_year"  class="span8" required>
                                             	<option></option>
											<?php
											$query = mysqli_query($conn,"select * from school_year order by school_year DESC");
											while($row = mysqli_fetch_array($query)){
											
											?>
											<option><?php echo $row['school_year']; ?></option>
											<?php } ?>
                                            </select>
                                          </div>
                                        </div>
											<div class="control-group">
                                          <div class="controls">
												<button name="search" class="btn btn-info"><i class="icon-search"></i> Search</button>

                                          </div>
                                        </div>
                                </form>
								</div>
                            </div>
                        </div>
                        <!-- /block -->