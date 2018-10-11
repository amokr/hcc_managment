<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.io.IOException,
    java.io.PrintWriter,
    java.sql.Connection,
    java.sql.DriverManager,
    java.sql.PreparedStatement,
    java.sql.ResultSet,

    javax.servlet.ServletException,
    javax.servlet.annotation.WebServlet,
    javax.servlet.http.HttpServlet,
    javax.servlet.http.HttpServletRequest,
    javax.servlet.http.HttpServletResponse,
    javax.servlet.http.HttpSession"
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Doctor_edit_profile </title>
<link href="https://cdn.jotfor.ms/static/formCss.css?3.3.2258" rel="stylesheet" type="text/css" />
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/css/styles/nova.css?3.3.2258" />
<link type="text/css" media="print" rel="stylesheet" href="https://cdn.jotfor.ms/css/printForm.css?3.3.2258" />
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/themes/CSS/566a91c2977cdfcd478b4567.css?"/>
<style type="text/css">
    .form-label-left{
        width:150px;
    }
    .form-line{
        padding-top:12px;
        padding-bottom:12px;
    }
    .form-label-right{
        width:150px;
    }
    body, html{
        margin:0;
        padding:0;
        background:#fff;
    }

    .form-all{
        margin:0px auto;
        padding-top:0px;
        width:690px;
        color:#555 !important;
        font-family:"Lucida Grande", "Lucida Sans Unicode", "Lucida Sans", Verdana, sans-serif;
        font-size:14px;
    }
</style>

<style type="text/css" id="form-designer-style">
    /* Injected CSS Code */
.form-label.form-label-auto {
        
        display: inline-block;
        float: left;
        text-align: left;
      
      } /*__INSPECT_SEPERATOR__*/
    /* Injected CSS Code */
</style>

<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/css/styles/buttons/form-submit-button-simple_blue.css?3.3.2258"/>
<script src="https://cdn.jotfor.ms/js/vendor/jquery-1.8.0.min.js?v=3.3.2258" type="text/javascript"></script>
<script src="https://cdn.jotfor.ms/js/vendor/maskedinput.min.js?v=3.3.2258" type="text/javascript"></script>
<script src="https://cdn.jotfor.ms/static/prototype.forms.js" type="text/javascript"></script>
<script src="https://cdn.jotfor.ms/static/jotform.forms.js?3.3.2258" type="text/javascript"></script>
<script type="text/javascript">
   JotForm.init(function(){
      JotForm.setPhoneMaskingValidator( 'input_8_full', '##########' );
      JotForm.setPhoneMaskingValidator( 'input_12_full', '##########' );
  
    JotForm.alterTexts({"alphabetic":"This field can only contain letters","alphanumeric":"This field can only contain letters and numbers.","ccDonationMinLimitError":"Minimum amount is {minAmount} {currency}","ccInvalidCVC":"CVC number is invalid.","ccInvalidExpireDate":"Expire date is invalid.","ccInvalidNumber":"Credit Card Number is invalid.","ccMissingDetails":"Please fill up the Credit Card details.","ccMissingDonation":"Please enter numeric values for donation amount.","ccMissingProduct":"Please select at least one product.","characterLimitError":"Too many Characters.  The limit is","characterMinLimitError":"Too few characters. The minimum is","confirmClearForm":"Are you sure you want to clear the form?","confirmEmail":"E-mail does not match","currency":"This field can only contain currency values.","cyrillic":"This field can only contain cyrillic characters","dateInvalid":"This date is not valid. The date format is {format}","dateInvalidSeparate":"This date is not valid. Enter a valid {element}.","dateLimited":"This date is unavailable.","disallowDecimals":"Please enter a whole number.","email":"Enter a valid e-mail address","fillMask":"Field value must fill mask.","freeEmailError":"Free email accounts are not allowed","generalError":"There are errors on the form. Please fix them before continuing.","generalPageError":"There are errors on this page. Please fix them before continuing.","gradingScoreError":"Score total should only be less than or equal to","incompleteFields":"There are incomplete required fields. Please complete them.","inputCarretErrorA":"Input should not be less than the minimum value:","inputCarretErrorB":"Input should not be greater than the maximum value:","lessThan":"Your score should be less than or equal to","maxDigitsError":"The maximum digits allowed is","maxSelectionsError":"The maximum number of selections allowed is","minSelectionsError":"The minimum required number of selections is","multipleFileUploads_emptyError":"{file} is empty, please select files again without it.","multipleFileUploads_fileLimitError":"Only {fileLimit} file uploads allowed.","multipleFileUploads_minSizeError":"{file} is too small, minimum file size is {minSizeLimit}.","multipleFileUploads_onLeave":"The files are being uploaded, if you leave now the upload will be cancelled.","multipleFileUploads_sizeError":"{file} is too large, maximum file size is {sizeLimit}.","multipleFileUploads_typeError":"{file} has invalid extension. Only {extensions} are allowed.","nextButtonText":"Next","numeric":"This field can only contain numeric values","pastDatesDisallowed":"Date must not be in the past.","pleaseWait":"Please wait...","prevButtonText":"Previous","progressMiddleText":"of","required":"This field is required.","requireEveryCell":"Every cell is required.","requireEveryRow":"Every row is required.","requireOne":"At least one field required.","seeAllText":"See All","submissionLimit":"Sorry! Only one entry is allowed.  Multiple submissions are disabled for this form.","submitButtonText":"Submit","uploadExtensions":"You can only upload following files:","uploadFilesize":"File size cannot be bigger than:","uploadFilesizemin":"File size cannot be smaller than:","url":"This field can only contain a valid URL","wordLimitError":"Too many words. The limit is","wordMinLimitError":"Too few words.  The minimum is"});
	JotForm.clearFieldOnHide="disable";
	JotForm.submitError="jumpToFirstError";
    /*INIT-END*/
});

   
function fun1(){
	alert("You data is sucessfully udated");
}
</script>

</head>
<body>
<form action="Student_edit" method="post">
 <div class="form-all">
 
   <ul class="form-section page-section">
     
 <li id="cid_1" class="form-input-wide" data-type="control_head">
        
<div class="form-header-group ">
         
 <div class="header-text httac htvam">
           
 <h2 id="header_1" class="form-header" data-component="header">
EDIT-YOUR PROFILE  
   </h2>
         
   <div id="subHeader_1" class="form-subHeader">
              For Doctor
   
         </div>
          </div>
    
    </div>
   
   </li>
 
<!-- li class="form-line jf-required" data-type="control_dropdown" id="id_5">
  
      <label class="form-label form-label-left form-label-auto" id="label_5" for="input_5">
     
     Blood Group
      </label>
        
<div id="cid_5" class="form-input jf-required">
    
      <select class="form-dropdown validate[required]" id="input_5" name="blood_gp" style="width:150px;" data-component="dropdown" required="">
    
        
            <option disabled selected value="-1"> Select </option>
  
          <option value="A+"> A+ </option>
  
          <option value="A-"> A- </option>
	
		<option value="B+"> B+ </option>
	
		<option value="B-"> B- </option>
	
		<option value="AB+"> AB+ </option>
		
	<option value="AB-"> AB- </option>
	
		<option value="O+"> O+ </option>
   
          <option value="O-"> O- </option>

       </select>

        </div>
 
     </li -->
 
     <li class="form-line jf-required" data-type="control_email" id="id_7">
  
      <label class="form-label form-label-left form-label-auto" id="label_7" for="input_7">
          Email
      
    
 
       </label>
  
      <div id="cid_7" class="form-input jf-required">
   
       <span class="form-sub-label-container" style="vertical-align:top;">
  
          <input type="email" id="input_7" name="email" class="form-textbox validate[Email]" size="30" value="" data-component="email"  />

            <label class="form-sub-label" for="input_7" style="min-height:13px;"> example@example.com </label>
 
         </span>
  
      </div>                                                                           
      

      </li>
 
     <li class="form-line jf-required" data-type="control_phone" id="id_8">
    
    <label class="form-label form-label-left form-label-auto" id="label_8" for="input_8_full">
          Phone Number
  
             
 </label>
 
       <div id="cid_8" class="form-input jf-required">
    
      <span class="form-sub-label-container" style="vertical-align:top;">
   
         <input type="tel" id="input_8_full" name="p_no" data-type="mask-number" class="mask-phone-number form-textbox validate[Fill Mask]" autocomplete="off" data-masked="true" value="" data-component="phone" />
    
        <label class="form-sub-label" for="input_8_masked" id="sublabel_masked" style="min-height:13px;"> 
 </label>

          </span>
  
      </div>
  
    </li>
      <li class="form-line" data-type="control_button" id="id_13">
      
  <div id="cid_13" class="form-input-wide">
 
         <div style="text-align:center;" class="form-buttons-wrapper">
     
      <button id="input_reset_13" type="reset" class="form-submit-reset form-submit-button-simple_blue" data-component="button">
       
       reset
            </button>
  
          <span>
    
           
            </span>
    
        <button id="input_13" type="submit" class="form-submit-button form-submit-button-simple_blue" data-component="button" onclick="fun1()">
      
        submit
            </button>
    
      </div>
 
       </div>
   
   </li>
  
    <li style="display:none">
    
    Should be Empty:
        <input type="text" name="website" value="" />
   
   </li>
   
 </ul>
  </div>
</form>
</body>
</html>
<script type="text/javascript">JotForm.ownerView=true;</script>