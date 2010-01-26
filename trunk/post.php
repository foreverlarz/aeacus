<?php

$db_hostname = 'localhost';
$db_username = 'lucas';
$db_password = 'loves_you';
$db_database = 'wlw';

//////////////////////////////////////////////////////////////////////////////////

$db_c = mysql_connect($db_hostname, $db_username, $db_password);
$db_s = mysql_select_db($db_database);

$list = array('username','password','hostname','body');
foreach ($list as $value) {
    $$value = mysql_real_escape_string($_POST["$value"]); 
};

$sql =  "SELECT network_host_user.uid FROM network_host_user                    ".
        "  JOIN network_host ON network_host_user.host_id=network_host.host_id  ".
        "  JOIN network_user ON network_host_user.user_id=network_user.user_id  ".
        " WHERE network_user.username='$username'                               ".
        "    && network_user.password='$password'                               ".
        "    && network_host.hostname='$hostname'                               ".
        "    && network_host_user.class='admin'                                 ";

$result = mysql_query($sql);
list($uid) = mysql_fetch_row($result);
echo empty($uid) ? "you do not have permission to post." : "thanks for the post!";

?>
