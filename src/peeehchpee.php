<?php
// Issue: Hardcoded credential
$password = "123456"; 

function getUser($id) {
    // Issue: SQL Injection
    $query = "SELECT * FROM users WHERE id = " . $id;
    
    // Issue: Unused variable
    $temp = 10; 
    
    return mysql_query($query);
}

// Issue: XSS (Unescaped output)
echo "<h1>User: " . $_GET['user'] . "</h1>"; 
?>
