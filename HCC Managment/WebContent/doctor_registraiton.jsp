<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ page import="java.util.*" %>
<title>doctor_registration</title>
<link href="https://cdn.jotfor.ms/static/formCss.css?3.3.2390" rel="stylesheet" type="text/css" />
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/css/styles/nova.css?3.3.2390" />
<link type="text/css" media="print" rel="stylesheet" href="https://cdn.jotfor.ms/css/printForm.css?3.3.2390" />
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
<%
class NumberGen
{
 public String gen()
    {

        long timeSeed = System.nanoTime();

        double randSeed = Math.random() * 1000;

        long midSeed = (long) (timeSeed * randSeed); 
        String s = midSeed + "";
        String subStr = s.substring(0,5);
        return subStr;
    }

}
%>
<style type="text/css" id="form-designer-style">
    /* Injected CSS Code */
.form-label.form-label-auto {
        
        display: inline-block;
        float: left;
        text-align: left;
      
      } /*__INSPECT_SEPERATOR__*/
    /* Injected CSS Code */
</style>

<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/css/styles/buttons/form-submit-button-simple_blue.css?3.3.2390"/>
<script src="https://cdn.jotfor.ms/js/vendor/jquery-1.8.0.min.js?v=3.3.2390" type="text/javascript"></script>
<script src="https://cdn.jotfor.ms/js/vendor/maskedinput.min.js?v=3.3.2390" type="text/javascript"></script>
<script src="https://cdn.jotfor.ms/static/prototype.forms.js" type="text/javascript"></script>
<script src="https://cdn.jotfor.ms/static/jotform.forms.js?3.3.2390" type="text/javascript"></script>
<script type="text/javascript">
   JotForm.init(function(){

 JotForm.calendarMonths = ["January","February","March","April","May","June","July","August","September","October","November","December"];
 JotForm.calendarDays = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"];
 JotForm.calendarOther = {"today":"Today"};
 var languageOptions = document.querySelectorAll('#langList li'); 
 for(var langIndex = 0; langIndex < languageOptions.length; langIndex++) { 
   languageOptions[langIndex].on('click', function(e) { setTimeout(function(){ JotForm.setCalendar("14", false, {"days":{"monday":true,"tuesday":true,"wednesday":true,"thursday":true,"friday":true,"saturday":true,"sunday":true},"future":true,"past":true,"custom":false,"ranges":false,"start":"","end":""}); }, 0); });
 } 
 JotForm.setCalendar("14", false, {"days":{"monday":true,"tuesday":true,"wednesday":true,"thursday":true,"friday":true,"saturday":true,"sunday":true},"future":true,"past":true,"custom":false,"ranges":false,"start":"","end":""});
      setTimeout(function() {
          $('input_8').hint('ex: orthopatic');
       }, 20);
      JotForm.shuffleOptions("5");
      JotForm.setPhoneMaskingValidator( 'input_6_full', '##########' );
      setTimeout(function() {
          $('input_13').hint('2017');
       }, 20);
      setTimeout(function() {
          $('input_18').hint('new password');
       }, 20);
      setTimeout(function() {
          $('input_19').hint('conform Password');
       }, 20);
      JotForm.alterTexts({"alphabetic":"This field can only contain letters","alphanumeric":"This field can only contain letters and numbers.","ccDonationMinLimitError":"Minimum amount is {minAmount} {currency}","ccInvalidCVC":"CVC number is invalid.","ccInvalidExpireDate":"Expire date is invalid.","ccInvalidNumber":"Credit Card Number is invalid.","ccMissingDetails":"Please fill up the Credit Card details.","ccMissingDonation":"Please enter numeric values for donation amount.","ccMissingProduct":"Please select at least one product.","characterLimitError":"Too many Characters.  The limit is","characterMinLimitError":"Too few characters. The minimum is","confirmClearForm":"Are you sure you want to clear the form?","confirmEmail":"E-mail does not match","currency":"This field can only contain currency values.","cyrillic":"This field can only contain cyrillic characters","dateInvalid":"This date is not valid. The date format is {format}","dateInvalidSeparate":"This date is not valid. Enter a valid {element}.","dateLimited":"This date is unavailable.","disallowDecimals":"Please enter a whole number.","email":"Enter a valid e-mail address","fillMask":"Field value must fill mask.","freeEmailError":"Free email accounts are not allowed","generalError":"There are errors on the form. Please fix them before continuing.","generalPageError":"There are errors on this page. Please fix them before continuing.","gradingScoreError":"Score total should only be less than or equal to","incompleteFields":"There are incomplete required fields. Please complete them.","inputCarretErrorA":"Input should not be less than the minimum value:","inputCarretErrorB":"Input should not be greater than the maximum value:","lessThan":"Your score should be less than or equal to","maxDigitsError":"The maximum digits allowed is","maxSelectionsError":"The maximum number of selections allowed is","minSelectionsError":"The minimum required number of selections is","multipleFileUploads_emptyError":"{file} is empty, please select files again without it.","multipleFileUploads_fileLimitError":"Only {fileLimit} file uploads allowed.","multipleFileUploads_minSizeError":"{file} is too small, minimum file size is {minSizeLimit}.","multipleFileUploads_onLeave":"The files are being uploaded, if you leave now the upload will be cancelled.","multipleFileUploads_sizeError":"{file} is too large, maximum file size is {sizeLimit}.","multipleFileUploads_typeError":"{file} has invalid extension. Only {extensions} are allowed.","nextButtonText":"Next","numeric":"This field can only contain numeric values","pastDatesDisallowed":"Date must not be in the past.","pleaseWait":"Please wait...","prevButtonText":"Previous","progressMiddleText":"of","required":"This field is required.","requireEveryCell":"Every cell is required.","requireEveryRow":"Every row is required.","requireOne":"At least one field required.","seeAllText":"See All","submissionLimit":"Sorry! Only one entry is allowed.  Multiple submissions are disabled for this form.","submitButtonText":"Submit","uploadExtensions":"You can only upload following files:","uploadFilesize":"File size cannot be bigger than:","uploadFilesizemin":"File size cannot be smaller than:","url":"This field can only contain a valid URL","wordLimitError":"Too many words. The limit is","wordMinLimitError":"Too few words.  The minimum is"});
	JotForm.clearFieldOnHide="disable";
	JotForm.submitError="jumpToFirstError";
    /*INIT-END*/
});

   JotForm.prepareCalculationsOnTheFly([null,{"name":"doctorRegistraton","qid":"1","text":"Doctor Registraton","type":"control_head"},{"name":"submit2","qid":"2","text":"Submit","type":"control_button"},{"name":"name","qid":"3","text":"Name","type":"control_fullname"},null,{"name":"gender","qid":"5","text":"Gender","type":"control_dropdown"},{"name":"phoneNumber","qid":"6","text":"Phone Number","type":"control_phone"},{"name":"email","qid":"7","text":"Email","type":"control_email"},{"name":"specifiaction","qid":"8","text":"Specifiaction","type":"control_textbox"},{"name":"clickTo","qid":"9","text":"Qualification","type":"control_text"},{"name":"divider","qid":"10","type":"control_divider"},{"name":"nameOf","qid":"11","text":"Name of Degree","type":"control_textbox"},null,{"name":"yearOf13","qid":"13","text":"Year of join HCC","type":"control_number"},{"name":"dateOf","qid":"14","text":"Date of birth","type":"control_datetime"},{"name":"divider15","qid":"15","type":"control_divider"},{"name":"clickTo16","qid":"16","text":"Login inforamtion **","type":"control_text"},{"name":"loginId17","qid":"17","text":"Login id (User id) :","type":"control_textbox"},{"name":"newPassword18","qid":"18","text":"New Password","type":"control_textbox"},{"name":"conformPassword19","qid":"19","text":"Conform Password","type":"control_textbox"}]);
   setTimeout(function() {
JotForm.paymentExtrasOnTheFly([null,{"name":"doctorRegistraton","qid":"1","text":"Doctor Registraton","type":"control_head"},{"name":"submit2","qid":"2","text":"Submit","type":"control_button"},{"name":"name","qid":"3","text":"Name","type":"control_fullname"},null,{"name":"gender","qid":"5","text":"Gender","type":"control_dropdown"},{"name":"phoneNumber","qid":"6","text":"Phone Number","type":"control_phone"},{"name":"email","qid":"7","text":"Email","type":"control_email"},{"name":"specifiaction","qid":"8","text":"Specifiaction","type":"control_textbox"},{"name":"clickTo","qid":"9","text":"Qualification","type":"control_text"},{"name":"divider","qid":"10","type":"control_divider"},{"name":"nameOf","qid":"11","text":"Name of Degree","type":"control_textbox"},null,{"name":"yearOf13","qid":"13","text":"Year of join HCC","type":"control_number"},{"name":"dateOf","qid":"14","text":"Date of birth","type":"control_datetime"},{"name":"divider15","qid":"15","type":"control_divider"},{"name":"clickTo16","qid":"16","text":"Login inforamtion **","type":"control_text"},{"name":"loginId17","qid":"17","text":"Login id (User id) :","type":"control_textbox"},{"name":"newPassword18","qid":"18","text":"New Password","type":"control_textbox"},{"name":"conformPassword19","qid":"19","text":"Conform Password","type":"control_textbox"}]);}, 20); 
  var tt="<%=new NumberGen().gen()%>";
   function randomfunct()
   {
	   document.getElementById('loginid').value=tt;
   }
   document.getElementById('sub').disabled=true;
   function checkpwd(){
	   var pwd1=document.getElementById('pwd1');
	   var pwd2=document.getElementById('pwd2');
	   if(pwd1.value==pwd2.value)
	   {
		   
		   randomfunct();
		   pwd2.style.borderColor="green";
           document.getElementById('confirm').innerHTML='Correct Password';	
           document.getElementById('confirm').style.color='green';
           //document.getElementById('sub').disabled=false;
		   
	   }
	   else{
		   pwd2.style.borderColor="red";
           document.getElementById('confirm').innerHTML='Invalid Password';	
           document.getElementById('confirm').style.color='red';
		 
	   }
   }
  
   function check1(){
	   var pwd1=document.getElementById('pwd1');
	   var pwd2=document.getElementById('pwd2');
	   if(pwd1.value==pwd2.value)
		    return true;
	   else
		   
		   return false;
   }
   
   </script>
</head>
<body>
<form action="docotor_registration" method="post">
  <input type="hidden" name="formID" value="73015004272442" />
  <div class="form-all">
    <ul class="form-section page-section">
      <li id="cid_1" class="form-input-wide" data-type="control_head">
        <div class="form-header-group ">
          <div class="header-text httac htvam">
            <h1 id="header_1" class="form-header" data-component="header">
              Doctor Registraton
            </h1>
          </div>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_fullname" id="id_3">
        <label class="form-label form-label-left" id="label_3" for="first_3">
          Name
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_3" class="form-input jf-required">
          <div data-wrapper-react="true">
            <span class="form-sub-label-container" style="vertical-align:top;">
              <input type="text" id="first_3" name="fname" class="form-textbox validate[required]" size="10" value="" data-component="first" required="" />
              <label class="form-sub-label" for="first_3" id="sublabel_first" style="min-height:13px;"> First Name </label>
            </span>
            <span class="form-sub-label-container" style="vertical-align:top;">
              <input type="text" id="last_3" name="lname" class="form-textbox validate[required]" size="15" value="" data-component="last" required="" />
              <label class="form-sub-label" for="last_3" id="sublabel_last" style="min-height:13px;"> Last Name </label>
            </span>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_datetime" id="id_14">
        <label class="form-label form-label-left form-label-auto" id="label_14" for="lite_mode_14"> Date of birth </label>
        <div id="cid_14" class="form-input">
          <div data-wrapper-react="true">
            <div style="display:none;">
              <span class="form-sub-label-container" style="vertical-align:top;">
                <input class="form-textbox validate[limitDate]" id="month" name="q14_dateOf[month]" type="tel" size="2" data-maxlength="2" value="" />
                <span class="date-separate">
                   -
                </span>
                <label class="form-sub-label" for="month_14" id="sublabel_month" style="min-height:13px;"> Month </label>
              </span>
              <span class="form-sub-label-container" style="vertical-align:top;">
                <input class="form-textbox validate[limitDate]" id="day_14" name="day" type="tel" size="2" data-maxlength="2" value="" />
                <span class="date-separate">
                   -
                </span>
                <label class="form-sub-label" for="day_14" id="sublabel_day" style="min-height:13px;"> Day </label>
              </span>
              <span class="form-sub-label-container" style="vertical-align:top;">
                <input class="form-textbox validate[limitDate]" id="year_14" name="year" type="tel" size="4" data-maxlength="4" value="" />
                <label class="form-sub-label" for="year_14" id="sublabel_year" style="min-height:13px;"> Year </label>
              </span>
            </div>
            <span class="form-sub-label-container" style="vertical-align:top;">
              <input class="form-textbox validate[limitDate, validateLiteDate]" id="lite_mode_14" type="text" size="12" data-maxlength="12" value="" data-format="mmddyyyy" data-seperator="-" placeholder="mm-dd-yyyy" />
              <label class="form-sub-label" for="lite_mode_14" id="sublabel_litemode" style="min-height:13px;"> Date </label>
            </span>
            <span class="form-sub-label-container" style="vertical-align:top;">
              <img alt="Pick a Date" id="input_14_pick" src="https://cdn.jotfor.ms/images/calendar.png" style="vertical-align:middle;" data-component="datetime" />
              <label class="form-sub-label" for="input_14_pick" style="min-height:13px;">  </label>
            </span>
          </div>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_textbox" id="id_8">
        <label class="form-label form-label-left form-label-auto" id="label_8" for="input_8">
          Specifiaction
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_8" class="form-input jf-required">
          <input type="text" id="input_8" name="spec" data-type="input-textbox" class="form-textbox validate[required]" size="20" value="" placeholder="ex: orthopatic" data-component="textbox" required="" />
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_dropdown" id="id_5">
        <label class="form-label form-label-left form-label-auto" id="label_5" for="input_5">
          Gender
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_5" class="form-input jf-required">
          <select class="form-dropdown validate[required]" id="input_5" name="gender" style="width:100px;" data-component="dropdown" required="">
            <option value="">  </option>
            <option value="Male"> Male </option>
            <option value="Female"> Female </option>
            <option value="Other"> Other </option>
          </select>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_email" id="id_7">
        <label class="form-label form-label-left form-label-auto" id="label_7" for="input_7">
          Email
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_7" class="form-input jf-required">
          <span class="form-sub-label-container" style="vertical-align:top;">
            <input type="email" id="input_7" name="email" class="form-textbox validate[required, Email]" size="30" value="" data-component="email" required="" />
            <label class="form-sub-label" for="input_7" style="min-height:13px;"> example@example.com </label>
          </span>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_phone" id="id_6">
        <label class="form-label form-label-left form-label-auto" id="label_6" for="input_6_full">
          Phone Number
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_6" class="form-input jf-required">
          <span class="form-sub-label-container" style="vertical-align:top;">
            <input type="tel" id="input_6_full" name="p_no" data-type="mask-number" class="mask-phone-number form-textbox validate[required, Fill Mask]" autocomplete="off" data-masked="true" value="" placeholder="Phone no" data-component="phone" required="" />
            <label class="form-sub-label" for="input_6_masked" id="sublabel_masked" style="min-height:13px;">  </label>
          </span>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_number" id="id_13">
        <label class="form-label form-label-left form-label-auto" id="label_13" for="input_13">
          Year of join HCC
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_13" class="form-input jf-required">
          <input type="number" id="input_13" name="yoj" data-type="input-number" class=" form-number-input form-textbox validate[required]" style="width:60px;" size="5" value="" placeholder="2017" data-numbermin="1996" data-numbermax="3000" data-component="number" required="" />
        </div>
      </li>
      <li class="form-line" data-type="control_text" id="id_9">
        <div id="cid_9" class="form-input-wide">
          <div id="text_9" class="form-html" data-component="text">
            <h3>
              <span style="color: #999999;">
                <strong>Qualification</strong>
              </span>
            </h3>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_divider" id="id_10">
        <div id="cid_10" class="form-input-wide">
          <div data-component="divider" style="border-bottom:3px solid #e6e6e6;height:3px;margin-left:0px;margin-right:0px;margin-top:5px;margin-bottom:5px;">
          </div>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_textbox" id="id_11">
        <label class="form-label form-label-left form-label-auto" id="label_11" for="input_11">
          Name of Degree
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_11" class="form-input jf-required">
          <input type="text" id="input_11" name="nod" data-type="input-textbox" class="form-textbox validate[required]" size="20" value="" data-component="textbox" required="" />
        </div>
      </li>
      <li class="form-line" data-type="control_text" id="id_16">
        <div id="cid_16" class="form-input-wide">
          <div id="text_16" class="form-html" data-component="text">
            <h3>
              <span style="color: #999999;">
                Login inforamtion **
              </span>
            </h3>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_divider" id="id_15">
        <div id="cid_15" class="form-input-wide">
          <div data-component="divider" style="border-bottom:1px solid #e6e6e6;height:1px;margin-left:0px;margin-right:0px;margin-top:5px;margin-bottom:5px;">
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_textbox" id="id_17">
        <label class="form-label form-label-left" id="label_17" for="input_17"> Login id (User id) : </label>
        <div id="cid_17" class="form-input">
          <span class="form-sub-label-container" style="vertical-align:top;">
            <input type="text" id="loginid" name="uid" data-type="input-textbox" class="form-readonly form-textbox" size="20" value="Write the  user id" tabindex="-1" data-component="textbox" readonly="" />
            <label class="form-sub-label" for="input_17" style="min-height:13px;"> Please reammember it </label>
          </span>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_textbox" id="id_18">
        <label class="form-label form-label-left form-label-auto" id="label_18" for="input_18">
          New Password
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_18" class="form-input jf-required">
          <input type="text" id="pwd1" name="q18_newPassword18" data-type="input-textbox" class="form-textbox validate[required, Fill Mask]" size="20" value="" placeholder="new password" data-component="textbox" required="" />
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_textbox" id="id_19">
        <label class="form-label form-label-left form-label-auto" id="label_19" for="input_19">
          Conform Password
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_19" class="form-input jf-required">
          <input type="text" id="pwd2" name="pwd" data-type="input-textbox" class="form-textbox validate[required]" size="20" value="" placeholder="conform Password" data-component="textbox" required="" onkeyup="checkpwd();return false;"/>
        	 <label class="form-sub-label" id="confirm" for="input_17" style="min-height:13px;"></label>
        </div>
      </li>
      <li class="form-line" data-type="control_button" id="id_2">
        <div id="cid_2" class="form-input-wide">
          <div style="text-align:center;" class="form-buttons-wrapper">
            <button id="input_reset_2" type="reset" class="form-submit-reset form-submit-button-simple_blue" data-component="button">
              Reset
            </button>
            <span>
               
            </span>
            <button id="input_2" type="submit" class="form-submit-button form-submit-button-simple_blue" data-component="button">
              Submit
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