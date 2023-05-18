<?php
require_once('../class/class.accounts.php');
require_once('../class/class.messages.php');

$accounts = new Accounts;
$messages = new Messages;

// Check if the 'ind' parameter is set to 'login'
if ($_GET['ind'] == 'login') {
    // Call the login method of the Accounts class and echo the result
    echo $accounts->login();
}

// Check if the 'ind' parameter is set to 'send'
if ($_GET['ind'] == 'send') {
    // Call the send method of the Messages class and echo the result
    echo $messages->send();
}

// Check if the 'ind' parameter is set to 'refresh'
if ($_GET['ind'] == 'refresh') {
    // Call the refresh method of the Messages class and echo the result
    echo $messages->refresh();
}
