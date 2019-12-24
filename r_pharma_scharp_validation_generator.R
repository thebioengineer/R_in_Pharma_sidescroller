#install.packages("remotes")
# remotes::install_github("thebioengineer/sidescroller",upgrade = "never")

library(sidescroller)
library(here)

# Initialize Sidescroller ----
pres <- sidescroller()

# Title ----
pres_title <- pres %>% 
  title_slide(
    title = "Validation Framework for Assay Processing Pipelines",
    subtitle = c("Ellis Hughes","August 23, 2019"),
    text_align = "left"
  )

# Bio ----
pres_bio <- pres_title %>% 
  slide(title = "Ellis Hughes",
        HTML("<table style = \"width:100%;\">
          			<tr>
          				<td style=\"height:100%;width:30%; font-size:30px;\">
          				<ul style = \"list-style-type: none;\">
                    <li> Statistical Programmer <br> 
                          <span style=\"font-style: italic;padding-left: 5px;\"> Fred Hutch </span>
                          </li>
					          <li> Seattle UseR Organizer </li>
					          <li> Cascadia R Conf Committee </li>
					          <li> &nbsp </li>
					          <li> &nbsp </li>
					          <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">
					          <li> <a href=\"https://twitter.com/ellis_hughes\" class=\"fa fa-twitter-square\"></a> @ellis_hughes </li>
					          <li> <a href=\"https://www.linkedin.com/in/ellishughes\" class=\"fa fa-linkedin-square\"></a> linkedin.com/in/ellishughes </li>
					          <li> <a href=\"https://www.github.com/thebioengineer\" class=\"fa fa-github-square\"></a> github.com/thebioengineer </li>
          				</ul>
          				</td>
          				<td style=\"height: 500px;width: 30%;padding-top: 100px;\">
          				<div style=\"height:100%\">
          					<img src=\"img/ellis_hughes.jpg\" style=\"margin: auto; height:100%;transform: rotate(-90deg);\"/>
          				</div>
          				</td>
          			</table>"),
        style = "width:1000px;background-color: #d3d3d340;")

# Outline ----
pres_outline <- pres_bio %>% 
  slide(title = "Outline",
        HTML("<div style=\"display:absolute\">
				      <div style=\"width:100%;font-size:40px;z-index: 10;margin-top:75px;position: relative;\">
        				<p><b> Background </b></p>
        				<p><b> Package Development & Validation Framework </b></p>
        				<p><b> Lessons Learned </b></p>
        			</div>
        			<div style=\"right: -30%;position: absolute;top: 25%;z-index: 0;opacity: 0.5;\">
        				<img src=\"img/FH_logo.PNG\"/>
        			</div>
        			</div>"))

# Fred Hutch and SCHARP Multipanel Slide ----
pres_FH_scharp <- pres_outline %>% 
  slide_multipanel(title = "Fred Hutch and SCHARP",
        ## Fred Hutch ----
        panel(HTML("<div style=\"display:inline-block;padding-top:100px\">
                    <style type=\"text/css\">
                      .fhcrc_info_container{
                      	width: 375px;
                      	display:inline-block;
                      	margin:auto;
                      }
                    </style>
    				        <div class=\"fhcrc_info_container\">
    				        	<div>
    				        		<img src=\"http://www.fredhutch.org/content/www/en/about/about-the-hutch/_jcr_content/root/responsivegrid/panelcontainer/contents/textimage_copy/image.img.png\" alt=\"Icon depicting blood stem cell transplantation and immunotherapy\" style=\"margin:auto\"/>
    				        	</div>
    				        	<h4 style=\"text-align: center;\">Blood Stem Cell Transplantation<br>and Immunotherapy</h4>  
    				        </div>
    				        <div class=\"fhcrc_info_container\">
    				        	<div>
    				        		<img src=\"http://www.fredhutch.org/content/www/en/about/about-the-hutch/_jcr_content/root/responsivegrid/panelcontainer/contents/textimage_813484303_/image.img.png\" style=\"margin:auto\"/>
    				        	</div>
    				        	<h4 style=\"text-align: center;\">Cancer Risk Factors, and Causes,<br>Prevention and Outcomes</h4>  
    				        </div>
    				        <div class=\"fhcrc_info_container\">
    				        	<div>
    				        		<img src=\"http://www.fredhutch.org/content/www/en/about/about-the-hutch/_jcr_content/root/responsivegrid/panelcontainer/contents/textimage_467138480_/image.img.png\" style=\"margin:auto\"/>
    				        	</div>
    				        	<h4 style=\"text-align: center;\">Vaccine Development<br>and Virus-Associated Cancers</h4>  
    				        </div>				
    				      </div>
    			        
    				      <div>
    				        <div style=\"margin:auto;width:70%\">
    				        <div class=\"fhcrc_info_container\">
    				        	<div>
    				        		<img src=\"http://www.fredhutch.org/content/www/en/about/about-the-hutch/_jcr_content/root/responsivegrid/panelcontainer/contents/textimage_copy_copy/image.img.png\" style=\"margin:auto\"/>
    				        	</div>
    				        	<h4 style=\"text-align: center;\">Molecular Underpinnings of Cancer</h4>  
    				        </div>
            
    				        <div class=\"fhcrc_info_container\">
    				        	<div>
    				        		<img src=\"http://www.fredhutch.org/content/www/en/about/about-the-hutch/_jcr_content/root/responsivegrid/panelcontainer/contents/textimage_813484303__56068710/image.img.png\" style=\"margin:auto\"/>
    				        	</div>
    				        	<h4 style=\"text-align: center;\">Tumor-Specific Translational Research</h4>  
    				        </div>
    				        </div>
    				      </div>")),
        ## SCHARP ----
        panel(HTML("<ul style=\"list-style-type: none;\">
        
            					<li><img src=\"img/logos/scharp.png\" style=\"max-width:800px;margin-top:100px;margin-bottom:50px;\"/></li>
            					
            					<li> <b>Established 1992</b> </li><br>
            					<li> <b>Worldwide-impact in the fight against cancer,<br/> HIV/AIDS and other infectious diseases.</b> </li><br>
            
            					<li><b>Clinical Data Management</b></li>
            					<li><b>Laboratory Data Management</b></li>
            					<li><b>Statistical Support and Analysis</b></li>
            					
            				</ul>")))

# Assays and Correlates of Protection ----
pres_assays <- pres_FH_scharp %>% 
  slide_multipanel(title = "Assays and Correlates of Protection",
      panel(HTML("<b> Cutting edge Research in HIV/AIDS prevention <br> and Vaccine Development all over the world</b>
                  <br>
            			<br>
            			<img src=\"img/scharp_world.jpeg\"/>"), style = "padding-top:100px"),
      
      panel(HTML("
                 <img src=\"https://storage.needpix.com/rsynced_images/crowd-2045498_1280.jpg\"  style=\"max-height:500px;max-width:800px\"/>
			            <p style=\"font-size:20px\">image source: https://storage.needpix.com/rsynced_images/crowd-2045498_1280.jpg </p>")),
      panel(HTML("<img src=\"img/sample_coll.png\"  style=\"max-height:600px; padding-top:200px\"/>")),
      # panel(HTML("<img src=\"img/sample_coll.png\"  style=\"max-height:600px; padding-top:200px; position: relative;z-index: 10;\"/>
                  # <img src=\"img/sample_coll.png\"  style=\"max-height:600px; padding-top:180px; padding-left: 30px;position: relative;z-index: 8; margin-top:-500px;\"/>
                  # <img src=\"img/sample_coll.png\"  style=\"max-height:600px; padding-top:160px; padding-left: 60px;position: relative; z-index: 6; margin-top:-500px;\"/>")),
      panel(HTML("<img src=\"img/thinker.PNG\"  style=\"max-height:600px;\"/>")),
      panel(HTML("<img src=\"img/assaying.PNG\"  style=\"max-height:600px;\"/>")),
      panel(HTML("<img src=\"img/visc.PNG\"  style=\"max-height:600px;margin-top:100px\"/>")),
      panel(HTML("<h2 style=\"margin-top:100px;\"> Assays are under constant development</h2>
				          <b> - Antigens could be added to the processing plan </b>	
				          <br>
				          <b> - Exploratory endpoints </b>		
				          <br>
				          <b> - Processing techniques </b>	
				          <br>
				          <img src=\"img/ab.png\"  style=\"margin:auto;\"/>")),
      panel(HTML("<div class = \"slide_title\" style=\"padding: 20px;\">
                  <h1 style=\"font-size:60px;;margin-top:100px\"\"> 
                      We need a validated pipeline that is rigid enough to provide form and consistency between studies,
                      but flexible enough to handle potential changes
                  </h1>
                  </div>
                 "), style = "width: 800px;"))


pres_dev_and_val <- pres_assays %>% 
  slide_multipanel(title = "Package Development and Validation",
    panel(HTML("<br><br>
                <p><b> Develop functions as steps in a work flow </b><p>
                <p><b> Capture all documentation that is required in a validation </b></p>
                <p><b> Automation tools to support code development </b></p>")),
    panel(HTML("<img src=\"img/standard_wf.PNG\"/>")),
    panel(HTML("<img src=\"img/unique_wf.PNG\"/>")),
    panel(HTML("<img src=\"img/standard_wf_plus.PNG\"/>")),
    panel(HTML("<div style=\"text-align:center;\">
               <img src=\"https://raw.githubusercontent.com/rstudio/hex-stickers/master/PNG/roxygen2.png\"  style=\"margin:auto;width:500px;\"/>
               <p>Roxygen2 -RStudio (https://github.com/rstudio/hex-stickers/blob/master/PNG/roxygen2.png)</p>
               </div>")),
    panel(HTML("<h3>Documenting of the validation process in a vignette:</h3>
                <br><br><br>
                <b>Introduction</b>
                <br>
                &nbsp Capture the reason behind creating the package<br>
                <b>Purpose</b><br>
                &nbsp Goals that the package should achieve<br>
                <b>Specifications</b><br>
                &nbsp Capture the process level specifications<br>
                &nbsp Capture the function level specifications<br>
                <b>Risk Assessment</b><br>
                &nbsp Capture the process level risks and mitigations in a table<br>
                &nbsp Capture the function level risks and mitigations in a table<br>")),
    panel(HTML("<div style=\"text-align:center;\">
                <img src=\"img/GitHub-Mark.png\"/>
                <p>github.com</p>
               </div>")))

pres_lessonslearned <- pres_dev_and_val %>% 
  slide_multipanel(title = "Lessons Learned & Observations",
    panel(HTML("<br>
                <b>Designing explicit specifications is important</b><br><br>
                <b>Function naming schemes</b><br><br>
                <b>Function argument formats</b><br><br>
                <b>Package Dependencies</b><br><br>
               <b>Tidy-styling</b>")),
    panel(HTML("<h2> Observations </h2>
		          	<h3> Easy to accidentally gloss over important functionality </h3>
		          	&nbsp Record features explicitly required and double check often 
		          	<br>
		          	<h3> Scope creep is inevitable </h3>
		          	<ul>
		          	<li>Unforeseen functions</li>
		          	<li>Additional functionality</li>
               </ul>")),
    panel(HTML("<h1> Co-Authors and Support </h1>
                <ul>
                <li> Anthony Williams </li>
                <li> Jimmy Fulp </li>
                <li> Bharathi Lakshminarayanan </li>
                <li> Alicia Sato </li>
                <li> Shannon Grant </li>
                <li> Paul Stutzman </li>
                <li> Kate Ostbye </li>
               </ul>")),
    panel(HTML("<h2> Fred Hutch is Hiring! </h2>
                <p> fredhutch.com/careers </p>
                <img src=\"https://thebioengineer.github.io/images/r_in_pharma/img/logos/fhcrc.jpg\" style = \"width:400px\"/>")),
    panel(HTML("<div style=\"background-color:#112345;\">
               <h1 style=\"color: white;margin-left: 10px;\"> Thank You </h2>
               <img src=\"img/r_pharma_logo.png\"  style=\"margin:auto;\"/>
               </div>")),
    style = "background-color: #d3d3d340;")

# Save Output ----
save_sidescroller(
  pres_lessonslearned,
  here("index.html")
)

