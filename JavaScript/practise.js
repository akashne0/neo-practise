window.onload = function () {
    //Reference the DropDownList.
    var years = document.getElementById("birth-year");

    //Determine the Current Year.
    var currentYear = (new Date()).getFullYear();

    //Loop and add the Year values to DropDownList.
    for (var i = 1950; i <= currentYear; i++) {
        var option = document.createElement("option");
        option.innerHTML = i;
        option.value = i;
        years.appendChild(option);
    }
};

   

 


function validate(){
    let  day= document.getElementById("birth-day").value;
    let  month= document.getElementById("birth-month").value;
    let   year= document.getElementById("birth-year").value;

    if( day != "day" && month != "month" && year != "year" ){
        var stringDate = month + "/" + day + "/" + year 
        var timestamp = Date.parse(stringDate);
        var dateObject = new Date(timestamp);

        var currentYear = new Date().getFullYear();
        var birthYear = dateObject.getFullYear();
        var age = currentYear - birthYear;
        
        var msg = "You are " + age + " years old";
        document.getElementById("msg-age").innerHTML= msg;

    } else{
        document.getElementById("msg-age").innerHTML= "please select proper date format";
    };

    
}
        