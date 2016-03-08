/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$().ready(function(){
          
    $("#signupform").validate({
        rules: {
            name:{
                required: true,
                minlength: 4
            },
            email:{
                required: true,
                email: true
            },
            password:{
                required: true,
                minlength: 5
            },
            confirmPassword:{
                required: true,
                minlength: 5,
                equalTo: "#password"
            }
        },
        messages:{
             name:{
                required: "The name is required!",
                minlength: "The name should be greater than or equal to 5 letters!"
            },
            email:{
                required: "Email is required!",
                email: "Please enter a valid email!"
            },
            password:{
                required: "The password is required!",
                minlength: "The password should be greater than or equal to 5 letters!"
            },
            confirmPassword:{
                required: "Please confirm your password!",
                minlength: "The password should be greater than or equal to 5 letters!",
                equalTo: "The password should match the above password!"
            }
        }
    });
});