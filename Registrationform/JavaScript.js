function userValid() {
    var Name, EmailId, emailExp, fld, cnr, mm, ff, s1, s2;
    Name = document.getElementById("TextBox1").value;
    con = document.getElementById("TextBox2").value;
    EmailId = document.getElementById("TextBox3").value;
    fld = document.getElementById("TextBox4");
    cnr = document.getElementById("DropDownList4").value;
    mm = document.getElementById("radiomale").checked;
    ff = document.getElementById("radiofemale").checked;
    s1 = document.getElementById("javacheck").checked;
    s2 = document.getElementById("netcheck").checked;
    //cl = document.getElementById("datepicker1").selec;
    //var valid = false;
    //var x = document.myform.genderr;

    emailExp = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/; // to validate email id 
    //for (var i = 0; i < x.length; i++) {
    //    if (x[i].checked) {
    //        valid = true;           
    //        break;
    //    }
    //}
    //if (!valid) {
    //    alert("please a gender.");
    //    return false;
    //}
    //if ('<%= datepicker1.SelectedDate==DateTime.MinValue  %>' == "True") {
    //    alert('select a date');
    //    return false;
    //}
    //if (Name == '' && con == '' && EmailId == '') {
    //    alert("Enter All Fields");
    //    return false;
    //}
    //if (Name == '') {
    //    alert("Please Enter first name");
    //    return false;
    //}

    if (con == '') {
        alert("Please Enter last name");
        return false;
    }
    if (EmailId == '') {
        alert("Email Id Is Required");
        return false;
    }
    if (EmailId != '') {
        if (!EmailId.match(emailExp)) {
            alert("Invalid Email Id");
            return false;
        }
    }
    if (cnr == 0) {
        alert("Enter country");
        return false;

    }
    //alert(c1);
    if (!mm && !ff) {
        alert("please enter gender.");
        return false;
    }
    if (!s1 && !s2) {
        alert("please enter stream.");
        return false;
    }

    
   

    //var ddlImageFormatVal = document.getElementById("<%=DropDownList4.ClientID%>").value;
    //if (ddlImageFormatVal <= 0) {

    //    //Not selected so alert user to select any option
    //    alert("Please select image format from the list.");
    //    return false;
    //}
    //if (document.getElementById("DropDownList4").value == "") {
    //    alert("You didn't enter country field.");
    //    document.getElementById("DropDownList4").focus();
    //    return false;
    //}
    

    if (fld.value == "") {
        alert("You didn't enter a phone number.");
        fld.value = "";
        fld.focus();
        return false;
    }
    else if (isNaN(fld.value)) {
        alert("The phone number contains illegal characters.");
        fld.value = "";
        fld.focus();
        return false;
    }
    else if (!(fld.value.length == 10)) {
        alert("The phone number is the wrong length. \nPlease enter 10 digit mobile no.");
        fld.value = "";
        fld.focus();
        return false;
    }


    return true;
} 