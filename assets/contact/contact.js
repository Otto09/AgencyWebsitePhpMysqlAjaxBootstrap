document.querySelector("#contact").onclick = function (event) {  
   var formElement = document.querySelector("#formcont"); 
   var formData = new FormData(formElement);

   var xhtp = new XMLHttpRequest();
   xhtp.open("POST", "assets/contact/contact.php");
   
   xhtp.onload = function () {

   var raspunsobiect = JSON.parse(this.responseText);
      console.log("raspunsobiect: " + raspunsobiect);
   var blocraspuns = document.querySelector("#rezmesaj");

   var continutbloc = '<p class="text-center "><strong>{name}</strong></p><p> Thank you for your message.Your opinions are important to us in maintaining quality standards.</p></br>';

   continutbloc = continutbloc.replace('{name}', raspunsobiect.name);
  
   blocraspuns.innerHTML = continutbloc;
   };


   // S-a produs o eroare
   xhtp.onerror = function () {
      alert('Hopa! Ceva n-a mers!');
   };

   xhtp.send(formData);
};
