// NestedParentsTree Functions
//////////////////////////////

function check_frame() {
	var host = location.host
	
	if (host == "") {
		cache = false;
	}
	else {
		cache = true;
	}
	
	if (top.frames.length == 0 && self.name != "popupwin")
	{ 
		location.replace("../default.htm"); 
	}
}

function change_color() { 
	var e = document.getElementsByTagName("a");
	var url = window.location.href;
	for(var i=0;i < e.length;i++)
	{	
		e[i].style.backgroundColor = "";
		e[i].style.fontWeight = "";
		e[i].style.color = "#000000";
	}
}

function setHighlight(targetID){
	var link = document.getElementById(targetID);
	//link.style.backgroundColor = "#990000";
	link.style.backgroundColor = "";
	link.style.fontWeight = "bold";
	//link.style.color = "#990000";	
	link.style.color = "#ef0000";	
}

function anchorRefresh(anchorName){ 
	location.replace = "#"+anchorName;
}