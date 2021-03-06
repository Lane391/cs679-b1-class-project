$(document).ready(function () {

	$('.error, .success').hide();	
    $("#register_name").css("display", "none");

    
    //validate and show next set of fields (first, last names)
    $("#next").click(function () {
        
        //check that password meets requirements
        if (!isValidPassword()) {
            return;
        }
        
        //check that passwords are equal
        if ($("#password").val() !== $("#password_repeat").val()) {
            $("#password_repeat").parent("p").find(".error").show().html("Passwords don't match");
            return;
        } else {
            $("#password_repeat").parent("p").find(".error").hide().html("");
        }
        
        //check that username is valid, and toggle the form
        isValidUser(toggleForm);
    });
    
    
    //on submit of form validate, first and last names aren't empty
    $("form").submit(function () {
        var valid = true;
        
        if ($("#firstname").val().trim() === "") {
            $("#firstname").parent("p").find(".error").show().html("Required!");
            return false;
        } else if ($("#lastname").val().trim() === "") {
            $("#firstname").parent("p").find(".error").hide().html("");
            $("#lastname").parent("p").find(".error").show().html("Required!");
            return false;
        }
            
        $("#firstname").parent("p").find(".error").hide().html("");
        $("#lastname").parent("p").find(".error").hide().html("");

        return true;
    });
    
    
    
    //on username blur, check that username isn't taken
    $("#username").blur(function () {
       isValidUser();
    });


    //on password blur, check that password meets requirements
    $("#password").blur(isValidPassword);
    
});


var isValidPassword = function () {
    if (!$("#password").val().match(/((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9\s]).{8,})/)) {
        $("#password").parent("p").find(".error").show().html("Password Invalid! Must be at least 8 characters and have one lowercase, one uppercase, one number, and one special character.");
        return false;
    } else {
        $("#password").parent("p").find(".error").hide().html("");
        return true;
    }
}


var isValidUser = function (func) {
    $.ajax({
        type: "POST",
        url: "register.php",
        data: {"action" : "checkuser", "username" : $("#username").val()},
        success: function (msg) {
            if (msg === "true") {
                $("#username").parent("p").find(".error").show().html("Email already taken!");
                $("#username").parent("p").find(".success").hide().html("");
            } else if (!$("#username").val().match(/^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i)) {
                $("#username").parent("p").find(".error").show().html("Invalid email!");
                $("#username").parent("p").find(".success").hide().html("");
            } else {
                $("#username").parent("p").find(".error").hide().html("");
                $("#username").parent("p").find(".success").show().html("Email Available");
                if (func !== undefined) {
                    func();
                }
            }
        }
    });
}
  
        
var toggleForm = function () {
    $(".register_toggle").toggle();
}        
        
        