

function Search_Gridview(strKey, strGV) { //sökfunktion för specifika värden 
    var strData = strKey.value.toLowerCase().split(" ");
    var tblData = document.getElementById(strGV);
    var rowData;
    for (var i = 1; i < tblData.rows.length; i++) {
        rowData = tblData.rows[i].innerHTML;
        var styleDisplay = 'none';
        for (var j = 0; j < strData.length; j++) {
            if (rowData.toLowerCase().indexOf(strData[j]) >= 0)
                styleDisplay = '';
            else {
                styleDisplay = 'none';

            }
        }
        tblData.rows[i].style.display = styleDisplay;
    }
}











//function alerttest() {
//    alert("Don leave blank!");

//}

//function klickas() {
//    validate();
//}

//function checkvalue()
//{ 
//    var 1 = document.getelementbyid("userinputvalue1").value; //hur hämtar vi textrutans id från html till js
//    var 2 = document.getelementbyid("userinputvalue2").value;
//    if (userinputvalue1 < userinputvalue2)
//    {
//        alert(userinputvalue1 + "är mindre än" + userinputvalue2);
//        return true;
//    }
//    else {
//        alert(userinputvalue1 + "är inte mindre än" + userinputvalue2);
//        return false;
//    }
//}

//function omvardeharmindre()
//{
//    if (checkvalue() = true)
//    {
//        if (checkvalue() < userinputvalue3) {
//            alert(checkvalue() + "är mindre än" + userinputvalue3);

//        }
//        else {
//            alert(checkvalue() + "är större än" + userinputvalue3);
//        }


//    }

//}
//function omvardeharstorre() {
//    if (checkvalue() = false) {
//        if (checkvalue() > userinputvalue3) {
//            alert(checkvalue() + "är större" + userinputvalue3);

//        }
//        else {
//            alert(checkvalue() + "ar mindre an" + userinputvalue3);
//        }


//    }

//}

//function klicka() {
//    omvardeharmindre();


//}

