document.querySelector("#product").onclick = function (event) {  
   var formElement = document.querySelector("#formprod"); 
   var formData = new FormData(formElement);

   var xhtp = new XMLHttpRequest();
   xhtp.open("POST", "assets/products/products.php");
   
   xhtp.onload = function () {

   var raspunsobiect = JSON.parse(this.responseText);
      console.log("raspunsobiect: " + raspunsobiect);
   var blocraspuns = document.querySelector("#rezproduse");

   var continutbloc = '<p class="text-center">The product <strong>{prodname} </strong> has been added to database.';

   continutbloc = continutbloc.replace('{prodname}', raspunsobiect.prodname);
  
   blocraspuns.innerHTML = continutbloc;
   };


   // S-a produs o eroare
   xhtp.onerror = function () {
      alert('Hopa! Ceva n-a mers!');
   };

   xhtp.send(formData);
};
