// onerror = stopError;	
function stopError() { return true; }
document.write("");// muss unbedingt sein, denn sonnst macht nn4 probleme mit setTimeout !!!

function Werteliste(querystring) {
  if(querystring == '') return;
  var wertestring = unescape(querystring);
  wertestring = wertestring.slice(1);
  var paare = wertestring.split("&");
  for (var i=0; i < paare.length; i++) {
    var name = paare[i].substring(0, paare[i].indexOf("="));
    var wert = paare[i].substring(paare[i].indexOf("=")+1, paare[i].length);
    this[name] = wert;
  }
}

// Get id from url
var liste = new Werteliste(location.search);
var id = "";

for(eigenschaft in liste) {
	if (eigenschaft == "id") {
		id = liste[eigenschaft];
	}
}

// Get content and menu dir
var content = "../.." + document.location.pathname;
var dir;
if(document.location.href.indexOf('1031') > 0) { dir = "german"; }
else if(document.location.href.indexOf('1033') > 0) { dir = "english"; }
else if(document.location.href.indexOf('1040') > 0) { dir = "italiano"; }
else if(document.location.href.indexOf('1034') > 0) { dir = "espanol"; }
else{ dir = "english"; }

////////////////////////////////////////
////////////////////////////////////////
////////////////////////////////////////
eval('parent.menue_' + self.name + ' = \"nicht geladen\";'); // menue_seiten als nicht geladen markieren
var local = location.href.slice(0,(location.href.indexOf('german') - 1));

var url = location.pathname;
var url_english = location.pathname;
var url_espanol = location.pathname;
var url_italiano = location.pathname;
var url_1031 = location.pathname;
var url_1033 = location.pathname;
var url_1034 = location.pathname;
var url_1040 = location.pathname;
var size = url.length;
var server = "http://" + location.host //"http://infosys.beckhoff.com";
url = url.substring(url.indexOf('german')+7, size) + location.hash;
url_english = url_english.substring(url_english.indexOf('english')+8, size) + location.hash;
url_espanol = url_espanol.substring(url_espanol.indexOf('espanol')+8, size) + location.hash;
url_italiano = url_italiano.substring(url_italiano.indexOf('italiano')+9, size) + location.hash;
url_1031 = "../" + url_1031.substring(url_1031.indexOf('content/1031/')+0, size) + location.hash;
url_1033 = "../" + url_1033.substring(url_1033.indexOf('content/1033/')+0, size) + location.hash;
url_1034 = "../" + url_1034.substring(url_1034.indexOf('content/1034/')+0, size) + location.hash;
url_1040 = "../" + url_1040.substring(url_1040.indexOf('content/1040/')+0, size) + location.hash;


// frame_wrapper_teil für BKINFOSYS
//if (top.location.href.indexOf('bkinfosys.beckhoff.com') != -1 || top.location.href.indexOf('tcinfosys.beckhoff.com') != -1 || top.location.href.indexOf('infosys.beckhoff.de') != -1 || top.location.href.indexOf('tcinfosys.beckhoff.de') != -1)
//{ 
	//top.location.replace("http://infosys.beckhoff.com/");
	//if (location.href.indexOf('content/1031/') != -1)
	//{ top.location.replace(server + "/index.php?content=" + url_1031 + "&id=" + id); }
	//else if (location.href.indexOf('content/1033/') != -1)
	//{ top.location.replace(server + "/english.php?content=" + url_1033 + "&id=" + id); }
	//else if (location.href.indexOf('content/1034/') != -1)
	//{ top.location.replace(server + "/index_es.htm?" + url_1034 + "&id=" + id); }
	//else if (location.href.indexOf('content/1040/') != -1)
	//{ top.location.replace(server + "/index_it.htm?" + url_1040 + "&id=" + id); }
	//else if (location.href.indexOf('') != -1)
	//{ top.location.replace("http://infosys.beckhoff.com/"); }
//}

// frame_wrapper_teil +++ wenn meneu fehlt, nicht popup und keine index_datei
if ( top.frames.length == 0 && self.name != "popupwin" && location.href.indexOf('german') != -1)
{ location.replace(server + "/german/default.htm?" + url); }
if ( top.frames.length == 0 && self.name != "popupwin" && location.href.indexOf('english') != -1)
{ location.replace(server + "/english/default.htm?" + url_english); }
if ( top.frames.length == 0 && self.name != "popupwin" && location.href.indexOf('espanol') != -1)
{ location.replace(server + "/espanol/default.htm?" + url_espanol); }
if ( top.frames.length == 0 && self.name != "popupwin" && location.href.indexOf('italiano') != -1)
{ location.replace(server + "/italiano/default.htm?" + url_italiano); }

if ( top.frames.length == 0 && self.name != "popupwin" && location.href.indexOf('content/1031/') != -1)
{ location.replace(server + "/index.php?content=" + url_1031 + "&id=" + id); }
if ( top.frames.length == 0 && self.name != "popupwin" && location.href.indexOf('content/1033/') != -1)
{ location.replace(server + "/english.php?content=" + url_1033 + "&id=" + id); }
if ( top.frames.length == 0 && self.name != "popupwin" && location.href.indexOf('content/1034/') != -1)
{ location.replace(server + "/espanol.php?content=" + url_1034 + "&id=" + id); }
if ( top.frames.length == 0 && self.name != "popupwin" && location.href.indexOf('content/1040/') != -1)
{ location.replace(server + "/italiano.php?content=" + url_1040 + "&id=" + id); }
////////////////////////////////////////
////////////////////////////////////////
////////////////////////////////////////


// Navigation nachladen, wenn die Seite direkt aufgerufen wurde.
if(parent.frame_left != undefined && document.referrer.indexOf("menu.php")<0)
{	
	parent.frame_left.location.href = server+"/"+dir+"/menu/menu.php?content="+content+"&id="+id+"&ancRel=1";
}