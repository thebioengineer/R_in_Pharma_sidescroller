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
          					<li style = \"margin-top: 10px;\"> <b>Statistical Programmer</b><br> &nbspFred Hutch </li>
          					<li style = \"margin-top: 10px;\"> <b>R user for 5 years</b></li>
          					<li style = \"margin-top: 10px;\"> <b>Seattle UseR Organizer</b> </li>
          					<li style = \"margin-top: 10px;\"> <b>Cascadia R Conf Committee</b> </li>
          					<li style = \"margin-top: 10px;\"> <b>Enjoy R Package development</b></li>
          					<li> &nbsp </li>
          					<li> &nbsp </li>
          					<li style = \"margin-top: 10px;\"> <b>@ellis_hughes</b> </li>
          				</ul>
          				</td>
          				<td style=\"height: 500px;width: 30%;padding-top: 100px;\">
          				<div style=\"height:100%\">
          					<img src=\"img/ellis_hughes.jpg\" style=\"margin: auto; height:100%\"/>
          				</div>
          				</td>
          			</table>"),
        style = "width:1000px;")

# Outline ----
pres_outline <- pres_bio %>% 
  slide_wide(title = "Outline",
        HTML("<div style=\"display:absolute\">
				      <div style=\"width:100%;font-size:40px;z-index: 10;\">
        				<p><b> Background </b><p>
        				<p><b> Package Development & Validation Framework </b></p>
        				<p><b> Lessons Learned </b></p>
        			</div>
        			<div style=\"right: -10%;position: absolute;top: 40%;\">
        				<img src=\"img/fh_logo.png\"/>
        			</div>
        			</div>"))

# Fred Hutch and SCHARP Multipanel Slide ----
pres_FH_scharp <- pres_outline %>% 
  slide_multipanel(title = "Fred Hutch and SCHARP",
        ## Fred Hutch ----
        panel(HTML("<div style=\"width:1200px;display:inline-block;padding-top:100px\">
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
      panel(HTML("<b> Cutting edge Research in HIV/AIDS prevention and Vaccine Development all over the world</b>
                  <br>
            			<br>
            			<img src=\"img/scharp_world.jpeg\"/>"))             
                   
                   
                   )


# Save Output ----
save_sidescroller(
  pres_FH_scharp,
  here("r_pharma_scharp_validation_example.html")
)
