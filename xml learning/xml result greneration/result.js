let sn = document.getElementsByClassName("sn");
let math = document.getElementsByClassName("math");
let science = document.getElementsByClassName("science");
let social = document.getElementsByClassName("social");
let total = document.getElementsByClassName("total");
let percentage = document.getElementsByClassName("percentage");
let result = document.getElementsByClassName("result");
let division = document.getElementsByClassName("division");
// console.log(math.length);

for(let i=0; i<math.length; i++){
    sn[i].textContent = i+1;
    let numMath = parseFloat(math[i].textContent);
    let numScience = parseFloat(science[i].textContent);
    let numSocial = parseFloat(science[i].textContent);
    let numTotal = numMath+numScience+numSocial;
    total[i].textContent = numTotal;
    let numPercentage = numTotal/3;
    percentage[i].textContent = (numTotal/3).toFixed(2) + " %";
    let boolResult;
    if(numMath>=40 && numScience>=40 && numSocial>=40){
        result[i].textContent = "Pass";
        boolResult = true;
    }else{
        result[i].textContent = "Fail";
        boolResult = false;
    }
    
    let strDivision = "";
    if(numPercentage>=75)
        strDivision = "Distinction";
    else if(numPercentage>=60 && numPercentage<75)
        strDivision = "First";
    else if(numPercentage>=50 && numPercentage<60)
        strDivision = "Second";
    else if(numPercentage>=40 && numPercentage<50)
        strDivision = "Third";
    else
        strDivision = "Failed";
    
    division[i].textContent = strDivision;
}


