$('#input').keypress(function(e){
    // Check if the Enter key is pressed
    if(e.keyCode == 13){
        // Get the message from the input field
        var message = $(this).val()
        
        // Send the message via AJAX to the server
        $.ajax({
            url:'router/router.php?ind=send',
            type:'POST',
            data:{
                'message':message
            },
            success:function(result){
                // Clear the input field and focus on it
                $('#input').val('')
                $('#input').focus()
            }
        })
    }
})

// Refresh the messages periodically
setInterval(function(){
    // Send an AJAX request to retrieve the latest messages from the server
    $.ajax({
        url:'router/router.php?ind=refresh',
        type:'GET',
        success:function(result){
            // Update the messages container with the retrieved messages
            $('.messages').html(result)
        }
    })
},1000)

document.getElementById('logoutBtn').addEventListener('click', function() {
    // Send an AJAX request to the logout PHP file
    var xhr = new XMLHttpRequest();
    xhr.open('POST', 'logout.php', true);
    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {
            // Redirect to the login page or any desired page after logout
            window.location.href = 'login.php';
        }
    };
    xhr.send();
});