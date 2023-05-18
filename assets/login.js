$('button').click(function(){
    $.ajax({
       url:'router/router.php?ind=login', 
       data:$('form').serialize(),
       type:'POST',
       success:function(result){
        if(result == 'error'){
            // Display an error message if login is unsuccessful
            $('#signin-status').html('Invalid username or password')
        }else{
            // Display a success message if login is successful
            $('#signin-status').html('Logged In Successfully')
            
            // Redirect the user to the chatroom page
            window.location.href = 'chatroom.php'
        }
       }
    })
})