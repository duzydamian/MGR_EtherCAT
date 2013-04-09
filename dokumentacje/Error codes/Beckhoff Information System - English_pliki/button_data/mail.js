function sendpage()
{
mail_str = "mailto:?subject= Beckhoff: " + top.main.document.title;
mail_str += "&body=Here is an interesting article from Beckhoff: %0A" + top.main.document.title;
mail_str += "%0A" + top.main.location.href; 

str = mail_str.replace(/\"/g,"'");
location.href = str;
}
