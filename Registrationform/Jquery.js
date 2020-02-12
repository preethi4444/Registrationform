function funValid() {
    var name = $.trim($("#TextBox1").val()); 
    if (!name) {
        $("#Label4").text("*Please enter your first name")
        return false;
    }
    var lname = $.trim($("#TextBox2").val());
    if (!lname) {
        $("#Label5").text("*Please enter your last name")
        return false;
    }
    return true;
}