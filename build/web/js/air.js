function isNum(num){
   for(i=0;i<num.length;i++){
       c=num.charAt(i);
       if(c!='.' && (c>'9' || c<'0'))
           return false;
   }
   return true;
}
function check(){
if (document.form1.flightnumber.value=="")
     {window.alert("航班号不能为空！");
      document.form1.flightnumber.focus();
	  return false;
     }
if (document.form1.start.value=="")
     {window.alert("起飞地不能为空！");
      document.form1.start.focus();
	  return false;
     }
if (document.form1.finish.value=="")
     {window.alert("目的地不能为空！");
      document.form1.finish.focus();
	  return false;
     }
if (!isNum(document.form1.starttime.value))
     {window.alert("起飞时间必须为数值！");
      document.form1.starttime.focus();
	  return false;
     }
if(!isNum(document.form1.finishtime.value))
     {window.alert("目的时间必须为数值！");
      document.form1.finishtime.focus();
	  return false;
     }
return true; 
}
