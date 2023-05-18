

<?php
class Messages {
    public function send() {
        // Start a new session
        session_start();

        // Get the message from the POST data
        $message = $_POST['message'];

        // Get the account ID from the session
        $id = $_SESSION['auth'][0]['Id'];

        // Connect to the database
        $pdo = new PDO('mysql:host=localhost;dbname=chatroom', 'root', '');

        // Prepare and execute the query to insert the message into the database
        $messages = $pdo->prepare('INSERT INTO messages (account_id, message) VALUES (:account_id, :message)');
        $messages->bindValue(':account_id', $id);
        $messages->bindValue(':message', $message);
        $messages->execute();
    }

    public function refresh() {
        // Start a new session
        session_start();

        // Get the account ID from the session
        $id = $_SESSION['auth'][0]['Id'];

        // Connect to the database
        $pdo = new PDO('mysql:host=localhost;dbname=chatroom', 'root', '');

        // Prepare and execute the query to retrieve messages from the database
        $messages = $pdo->prepare('SELECT m.id, m.message, m.timestamp, a.name, m.account_id FROM `messages` as m INNER JOIN accounts as a ON a.id = m.account_id ORDER BY m.timestamp ASC');
        $messages->execute();

        // Fetch all the messages as associative arrays
        $data = $messages->fetchAll(PDO::FETCH_ASSOC);

        // Iterate over the messages and display them
        foreach ($data as $message) {
            if ($id == $message['account_id']) {
                echo '
                    <div class="you">
                        <div>
                            <p>You</p>
                            <p>' . $message['message'] . '</p>
                        </div>
                    </div>
                ';
            } else {
                echo '
                    <div class="others">
                        <div>
                            <p>' . $message['name'] . '</p>
                            <p>' . $message['message'] . '</p>
                        </div>
                    </div>
                ';
            }
        }
    }
}
?>