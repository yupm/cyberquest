var allcookies = document.cookie;
    document.write ("All Cookies : " + allcookies);
    cookiearray = allcookies.split(";");

    for(var i=0; i<cookiearray.length; i++){

        name = cookiearray[i].split('=')[0];
        value = cookiearray[i].split('=')[1];
        

    }

    if (value == "grunt13") {

        window.location = "grunt12Password.html";

    }

    else{

        window.location = "nope.html"

    }

