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
<html class="supernova">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patientlogin</title>
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
    body{
        margin:0;
        padding:0;
        background-color:blue;
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

   JotForm.prepareCalculationsOnTheFly([null,{"name":"patientRegistraiton","qid":"1","text":"Patient Registraiton","type":"control_head"},null,{"name":"registraiotnNo","qid":"3","text":"Registraiotn no","type":"control_textbox"},{"name":"patientName","qid":"4","text":"Patient Name","type":"control_fullname"},{"name":"diseasesType","qid":"5","text":"Diseases Type","type":"control_dropdown"},{"name":"appointementDay","qid":"6","text":"Appointement Day","type":"control_dropdown"},{"name":"email","qid":"7","text":"Email","type":"control_email"},{"name":"phoneNumber","qid":"8","text":"Phone Number","type":"control_phone"},{"name":"clickTo","qid":"9","text":"<h3><span style=\"font-size: 14pt; color: #999999;\"><strong>In case of Emergency</strong></span></h3>","type":"control_text"},{"name":"divider","qid":"10","type":"control_divider"},{"name":"parientName","qid":"11","text":"Parient Name","type":"control_fullname"},{"name":"contactNo","qid":"12","text":"Contact No","type":"control_phone"},{"name":"reset","qid":"13","text":"reset","type":"control_button"}]);
   setTimeout(function() {
JotForm.paymentExtrasOnTheFly([null,{"name":"patientRegistraiton","qid":"1","text":"Patient Registraiton","type":"control_head"},null,{"name":"registraiotnNo","qid":"3","text":"Registraiotn no","type":"control_textbox"},{"name":"patientName","qid":"4","text":"Patient Name","type":"control_fullname"},{"name":"diseasesType","qid":"5","text":"Diseases Type","type":"control_dropdown"},{"name":"appointementDay","qid":"6","text":"Appointement Day","type":"control_dropdown"},{"name":"email","qid":"7","text":"Email","type":"control_email"},{"name":"phoneNumber","qid":"8","text":"Phone Number","type":"control_phone"},{"name":"clickTo","qid":"9","text":"<h3><span style=\"font-size: 14pt; color: #999999;\"><strong>In case of Emergency</strong></span></h3>","type":"control_text"},{"name":"divider","qid":"10","type":"control_divider"},{"name":"parientName","qid":"11","text":"Parient Name","type":"control_fullname"},{"name":"contactNo","qid":"12","text":"Contact No","type":"control_phone"},{"name":"reset","qid":"13","text":"reset","type":"control_button"}]);}, 20); 
function fun1(){
	
}
   </script>
</head>
<body>
<%session=request.getSession();  
        String n=(String)session.getAttribute("reg_no");
        String msg=null;
        		msg=(String)session.getAttribute("msg");
        String fname=null,lname=null;
        try{
        	PreparedStatement ps=null;
        	Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hcc_database","Hcc_Admin","162049");
			 ps=con.prepareStatement("Select fname,lname from student where reg_no=?");
			 ps.setString(1,n);
			 ResultSet rt=ps.executeQuery();
			 while(rt.next()){
				 fname=rt.getString(1);
				 lname=rt.getString(2);
			 }
        }catch(Exception e)
		{
		System.out.println(e);
		}
        %>
<form class="jotform-form" action="patient_login" method="post" accept-charset="utf-8">
  <input type="hidden" name="formID" value="72942444072456" />
  <div class="form-all">
    <ul class="form-section page-section">
      <li id="cid_1" class="form-input-wide" data-type="control_head">
        <div class="form-header-group ">
          <div class="header-text httac htvam">
            <h2 id="header_1" class="form-header" data-component="header">
              Patient Registraiton
            </h2>
            <div id="subHeader_1" class="form-subHeader">
              For student
            </div>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_textbox" id="id_3">
        <label class="form-label form-label-left" id="label_3" for="input_3"> Registraiotn no </label>
        <div id="cid_3" class="form-input">
          <span class="form-sub-label-container" style="vertical-align:top;">
            <input type="text" id="input_3" name="q3_registraiotnNo" data-type="input-textbox" class="form-readonly form-textbox" size="20" value="<%= n%>" tabindex="-1" data-component="textbox" readonly="" />
          </span>
        </div>
      </li>
      <li class="form-line" data-type="control_fullname" id="id_4">
        <label class="form-label form-label-left" id="label_4" for="first_4"> Patient Name </label>
        <div id="cid_4" class="form-input">
          <div data-wrapper-react="true">
            <span class="form-sub-label-container" style="vertical-align:top;">
              <input type="text" id="first_4" class="form-readonly form-textbox" size="10" value="<%= fname %>" tabindex="-1" data-component="first" readonly="" />
              <label class="form-sub-label" for="first_4" id="sublabel_first" style="min-height:13px;"> First Name </label>
            </span>
            <span class="form-sub-label-container" style="vertical-align:top;">
              <input type="text" id="last_4" class="form-readonly form-textbox" size="15" value="<%= lname%>" tabindex="-1" data-component="last" readonly="" />
              <label class="form-sub-label" for="last_4" id="sublabel_last" style="min-height:13px;"> Last Name </label>
            </span>
          </div>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_dropdown" id="id_5">
        <label class="form-label form-label-left form-label-auto" id="label_5" for="input_5">
          Diseases Type
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_5" class="form-input jf-required">
          <select class="form-dropdown validate[required]" id="input_5" name="d_type" style="width:150px;" data-component="dropdown" required="">
            <option value="" disabled selected> Select </option>
            <option value="Skin"> Skin </option>
            <option value="Physicans"> Physicans </option>
          </select>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_dropdown" id="id_6">
        <label class="form-label form-label-left form-label-auto" id="label_6" for="input_6">
          Appointement Day
          <span class="form-required">
            *
          </span>
                      <%
            if(msg!=null){
            	//System.out.println("hello in jsp page");%>
            	<%= msg %>
            <% }
            else
            System.out.println("hey");
            %>
                </label>
        <div id="cid_6" class="form-input jf-required">
          <select class="form-dropdown validate[required]" id="input_6" name="a_day" style="width:150px;" data-component="dropdown" required="">
            <option value="" disabled selected>Select </option>
            <option value="Monday"> Monday </option>
            <option value="Tuesday"> Tuesday </option>
            <option value="Wednesday"> Wednesday </option>
            <option value="Thruesday"> Thruesday </option>
            <option value="Friday"> Friday </option>
            <option value="Saturday"> Saturday </option> 
            	<!-- System.out.println(error); -->
            <!--label class="form-sub-label" for="input_17" style="min-height:13px;"> </label>  -->
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
      <li class="form-line jf-required" data-type="control_phone" id="id_8">
        <label class="form-label form-label-left form-label-auto" id="label_8" for="input_8_full">
          Phone Number
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_8" class="form-input jf-required">
          <span class="form-sub-label-container" style="vertical-align:top;">
            <input type="tel" id="input_8_full" name="p_no" data-type="mask-number" class="mask-phone-number form-textbox validate[required, Fill Mask]" autocomplete="off" data-masked="true" value="" data-component="phone" required="" />
            <label class="form-sub-label" for="input_8_masked" id="sublabel_masked" style="min-height:13px;">  </label>
          </span>
        </div>
      </li>
      <li class="form-line" data-type="control_text" id="id_9">
        <div id="cid_9" class="form-input-wide">
          <div id="text_9" class="form-html" data-component="text">
            <h3>
              <span style="font-size: 14pt; color: #999999;">
                <strong>In case of Emergency</strong>
              </span>
            </h3>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_divider" id="id_10">
        <div id="cid_10" class="form-input-wide">
          <div data-component="divider" style="border-bottom:1px solid #e6e6e6;height:1px;margin-left:0px;margin-right:0px;margin-top:1px;margin-bottom:1px;">
          </div>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_fullname" id="id_11">
        <label class="form-label form-label-left form-label-auto" id="label_11" for="first_11">
          Parient Name
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_11" class="form-input jf-required">
          <div data-wrapper-react="true">
            <span class="form-sub-label-container" style="vertical-align:top;">
              <input type="text" id="first_11" name="parent_fn" class="form-textbox validate[required]" size="10" value="" data-component="first" required="" />
              <label class="form-sub-label" for="first_11" id="sublabel_first" style="min-height:13px;"> First Name </label>
            </span>
            <span class="form-sub-label-container" style="vertical-align:top;">
              <input type="text" id="last_11" name="parent_ln" class="form-textbox validate[required]" size="15" value="" data-component="last" required="" />
              <label class="form-sub-label" for="last_11" id="sublabel_last" style="min-height:13px;"> Last Name </label>
            </span>
          </div>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_phone" id="id_12">
        <label class="form-label form-label-left form-label-auto" id="label_12" for="input_12_full">
          Contact No
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_12" class="form-input jf-required">
          <span class="form-sub-label-container" style="vertical-align:top;">
            <input type="tel" id="input_12_full" name="parent_no" data-type="mask-number" class="mask-phone-number form-textbox validate[required, Fill Mask]" autocomplete="off" data-masked="true" value="" data-component="phone" required="" />
            <label class="form-sub-label" for="input_12_masked" id="sublabel_masked" style="min-height:13px;">  </label>
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
            <button id="input_13" type="submit" class="form-submit-button form-submit-button-simple_blue" data-component="button">
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
</form></body>
</html>