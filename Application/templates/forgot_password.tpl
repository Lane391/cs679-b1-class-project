{include file='header.tpl'}
<div id="header_wrap{if !$homepage}_secondary{/if}">
	<div id="header{if $secondary}_secondary{/if}"><!-- begin header -->
		<div id="header_upper">
			<div id="header_logo"></div>
				     
	     	<div id="navs"><!-- begin navigations -->
	       		<div id="navs_left"></div>
	       		<div id="navs_center">
	         		<ul>
	             		<li><a href="index.php">Home</a></li>
	        	    	<li><a href="about.php">About</a></li>
	               	  	<li><a href="contact.php">Contact</a></li>     
	               	  	<li><a href="login.php">Log In</a></li>     
	                	<li><a href="register.php">Register</a></li>     
	       			</ul>
	       		</div>
	   			<div id="navs_right"> </div>
	  		</div><!-- end navigations -->
	 	</div><!-- end header upper -->
	  
	  	<div id="header_lower">	   
		 	<div id="header_sub_secondary"> 
		    	<div id="header_sub_text_secondary">
		    		<p>Lost password</p>           
		  		</div>
		   	</div>
		    <div id="header_sub_secondary_right">
		    	Forgot password? Request a new one here
		    </div>                            
		</div><!-- end header lower-->
	</div><!-- end header -->
</div>

<div id="page{if !$homepage}_secondary{/if}"><!-- start page content -->
          
	<div id="main_content">
		<div id="main_content_left_secondary">
       		<fieldset id="forgot_password">
	       		<legend>Forgot password</legend>
	        	<form action="forgot_password.php" method="POST">
	        		<p class="error">&nbsp;{if $err_message}{$err_message}{/if}</p>
	        		<p><label for="email">Email: </label><input type="email" name="email" id="email"></p>
	        		<p><input type="submit" name="submit" value="Submit"></p>
	        	</form>
        	</fieldset>
                    
		</div><!-- end main content left  -->
      		<!-- end main content right  -->
    </div> <!-- end main content  -->
	<div style="clear: both;">&nbsp;</div>       
          
</div>
<div class="push"></div>

<script type="text/javascript">
$(document).ready(function(){
	$("input[type=submit]").click(function(e){
		if ($("#email").val() == ''){
			$("p.error").html('Please enter your email');
			e.preventDefault();
			$("#email").focus();
		}
	})
});

</script>

{include file='footer.tpl'}