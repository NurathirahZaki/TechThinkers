<?php
Class function() {

    public Message(username, image, text) {
        time = Time();
        if(image == undefined) image = './farmmp.jpg'
       return username, image, text, time;
    }

    public Connect(socket, id, boole) {
        if(boole == true) {
            $base = mysql_connect(id, 'root', '');
            socket_connect(socket, 'localhost', 80)
            return $base;
        } else return;
    }

    public Redirect(id_object, data) {
        if(id_object != undefined && id_object > 0) {
            header("Location: insert_reponse_teacher="echo data['id'])
        } else return;
    }

    public Cookie(id, value) {
        return setcookie(id, value, time()+(60*60*24*30))
    }

    public Reconnect(id, value, socket) {
        Connect(id, socket, true)
        if(Cookie(id, value) == mysql_fetch_array(id, value)) {
            return true;
        } else return false;
    }

}



ReflectionClass::export('function_teacher');

?>
