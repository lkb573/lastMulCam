
function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}

function toggle(no){

	//var iObject = eval("document.all.sub"+no);
	var iObject = document.getElementById("sub"+no);
	if (iObject.style.display != "none") {
		iObject.style.display = "none" ;

	}
	else {
		for(i=1;i<=10;i++){

			//var obj  = eval("document.all.sub"+i);
			var obj  = document.getElementById("sub"+i);

			if(obj!=null && obj.style.display != "none"){
				obj.style.display = "none" ;
				//eval("document.all.menu"+i+".className='Depth02off'");
				document.getElementById("menu"+i).className='Depth02off';
				break;
			}
		}
		iObject.style.display = "" ;
		//eval("document.all.menu"+no+".className='Depth02on'");
		document.getElementById("menu"+no).className='Depth02on';
	}

}

function overColor(td){
if(document.getElementById||(document.all && !(document.getElementById))){
td.style.backgroundColor="#fdf2e3";
}
}

function outColor(td){
if(document.getElementById||(document.all && !(document.getElementById))){
td.style.backgroundColor="#ffffff";//���콺�� ������������ ���� ����
}
}
