{include file='header.tpl'}
		<div id="header_wrap">
			<div id="header"><!-- begin header -->
				{include file='upperheader.tpl' user=$user}
					
				<div id="header_lower">	

					<div class="slider-wrap"><!-- begin slider -->
						<div class="slider">
							<div id="jFlowSlide" style="position: relative; width: 495px; height: 255px; overflow: hidden;">
								<div id="mySlides" style="position: relative; width: 1485px; height: 255px; overflow: hidden; margin-left: -495px;">
									<!-- slider 1 -->
									<div class="jFlowSlideContainer"><img alt="slide1" src="{$image_url}/excel_apps.jpg"></div>
									
									<!-- slider 2 -->
									<div class="jFlowSlideContainer"><img alt="slide2" src="{$image_url}/economic_growth.jpg"></div>	
									
									<!-- slider 3 -->
									<div class="jFlowSlideContainer"><img alt="slide3" src="{$image_url}/family_budget.jpg"></div>
								</div>
							</div>
						</div>
					</div><!-- end slider wrap -->
					
					<div id="header_sub">
						<div id="header_sub_headline">
							<h1>Welcome to iBudget</h1>
							<h2>A new way to manage your expenses and keep track of where your money goes.</h2>
						</div>
						<div id="header_sub_port">
							<div id="header_sub_text">
								<h3>Want to see more?</h3>
								<h4>Please take that enthusiasm with you to the projects page!</h4>
							</div>
							<div id="header_sub_button">
								<a href="http://code.google.com/p/cs679-b1-class-project/"><img width="50" height="50" class="go_button" alt="Go To Project" src="{$image_url}/go-button.jpg"></a>
							</div>
						</div><!-- header sub port -->
					</div><!--end header sub-->
					
					<div class="slider_nav"><!-- slider navigation -->
						<div class="slider_nav_left">
							<div id="myController">
								<span class="jFlowControl">1</span>
								<span class="jFlowControl">2</span>
								<span class="jFlowControl">3</span>
							</div>
						</div>
					</div><!-- end slider navigation-->
			  
				</div><!-- end header lower-->
			</div><!-- end header -->
		</div>

		<div id="page"><!-- start page content -->
			<div id="sub_boxes"><!-- start sub boxes  --> 
				
				<!-- sub box 1 -->
				<div class="sub_box">
					<div class="sub_box_text">
						<img width="40" height="40" class="sub_box_image" style="vertical-align:middle" alt="briefcase" src="{$image_url}/speed.png"><h2>Make your life easier</h2>
						<p><img width="20" height="20" style="vertical-align:top" alt="" src="{$image_url}/arrow_right.png"> At iBudget, we believe money is for living. So we make everything
						simple and streamlined. Sign up takes less than five minutes. Then iBudget automatically pulls all your financial information into
						one place, so you can finally get the entire picture.</p>
					</div>
				</div>
				
				<!-- sub box 2 -->
				<div class="sub_box">
					<div class="sub_box_text">
						<img width="40" height="40" class="sub_box_image" style="vertical-align:middle" alt="display" src="{$image_url}/shield.png"><h2>Information Safety</h2>
						<p><img width="20" height="20" style="vertical-align:top" alt="" src="{$image_url}/arrow_right.png"> iBudget values the privacy of its clients and ensures it is always secure. That's because we use 
						128-bit SSL encryption-the same security that banks use-and all data is protected and validated.
						 Plus, since iBudget is read-only, no money can be moved in or out of any account. </p>
					</div>
				</div>
				
				<!-- sub box 3 -->
				<div class="sub_box_right">
					<div class="sub_box_text">
						<img width="40" height="40" class="sub_box_image" style="vertical-align:middle" alt="rolodex" src="{$image_url}/danger.png"><h2>Reach your goals</h2>
						<p><img width="20" height="20" style="vertical-align:top" alt="" src="{$image_url}/arrow_right.png"> iBudget helps you reach your goals:
						set a budget and create a plan to reach your personal financial goals. You can track your progress online or stay up-to-date
						 with monthly emails. And we'll help you achieve your goals faster with helpful free advice and next steps.</p>
					</div>
				</div>
			</div><!-- end sub boxes  -->
			
			<div id="main_content">
				<div id="main_content_left">
					<h1>A bit about the iBudget project</h1>
					<p>The iBudget project started out as a group project for a software engineering class. After we completed it and showed it to some of our friends we realized the big potential it has and the
					numerous benefits it provides to users. We decided to launch the project... </p>
					
					<blockquote>
						<p>"If you need motivation to achieve financial discipline, consider iBudget. It has all the features I need and is very intuitive and easy to use."</p>
						<p><i> -- Tom Smith</i></p>
					</blockquote>					
				</div><!-- end main content left  -->

				<div id="main_content_right">
					<h2 class="sub_box_text"><img width="27" height="24" class="sub_box_image" style="vertical-align:middle" alt="resources" src="{$image_url}/resources.jpg">Resources and helpful links</h2>
					<p>Here we provide helpful links.</p> 
					<ul>
						<li><a href="http://www.fpanet.org/">Financial Planning Association</a></li>
						<li><a href="http://www.moneysaveronline.com/">Money Saver Magazine</a></li>
						<li><a href="http://www.saveandinvest.org/">Save and Invest</a></li>
					</ul>
				</div><!-- end main content right  -->
				
			</div><!-- end main content  -->
			<div style="clear: both;">&nbsp;</div>
		</div>
		<div class="push"></div>

		<script type="text/javascript">
		$(document).ready(function(){
			$("#myController").jFlow({
				slides: "#mySlides",
				width: "495px",
				height: "255px",
				duration: 400
			});
		});
		</script>

{include file='footer.tpl'}
