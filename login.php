<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
    <?php
        session_start();
        if(isset($_SESSION['auth'])){
            header('location: chatroom.php');
        }
    ?>
    <div class="container">
        <form id="login-form">
            <h2>Login</h2>
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" name="username" id="username" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" name="password" id="password" required>
            </div>
            <div class="form-group">
                <button type="button" id="login-button">Sign In</button>
            </div>
            <div id="signin-status"></div>
        </form>
    </div>

    <script src="../wst_midterm_BSIT201_johnreyelvargas-main/assets/jquery.min.js"></script>
    <script src="../wst_midterm_BSIT201_johnreyelvargas-main/assets/login.js"></script>
</body>
</html>