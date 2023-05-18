<?php

class Accounts{
    public function login(){
        // Start a new session
        session_start();
        
        // Get the username and password from the POST data
        $username = $_POST['username'];
        $password = $_POST['password'];
        
        // Connect to the database
        $pdo = new PDO('mysql:host=localhost;dbname=chatroom' , 'root' ,'');

        // Prepare and execute the query to check if the account exists
        $account = $pdo->prepare('SELECT * FROM accounts WHERE username=:username and password=:password');
        $account->bindValue('username',$username);
        $account->bindValue('password',$password);
        $account->execute();

        // Fetch all the rows as associative arrays
        $data = $account->fetchALL(PDO::FETCH_ASSOC);

        // Check if there is only one row (account) found
        if(count($data) == 1){
            echo 'success'; 
            
            // Store the authenticated user's data in the session
            $_SESSION['auth'] = $data;
        }else{
            echo 'error';
        }
    }

    public function register(){
        // ...
    }
}