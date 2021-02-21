document.querySelector("#button_read_prod").onclick = function () {
   var xhtp = new XMLHttpRequest();
   xhtp.open("GET", "assets/read_products/read_products.php");

   // S-au primit date de la scriptul de pe server
   xhtp.onload = function () {
      var sirObj = JSON.parse(this.responseText);
      var i = 1;
      var continut = '';

      var model_titlu = '<div class="text-center><h4 id="titlu_prod">';

      model_titlu = '<div class="row d-flex justify-content-center">';

      model_titlu += '<div class="col-lg-8"><table class="table table-hover">';

      model_titlu += '<thead><tr><th scope="col">Nr.</th><th scope="col">Product Name</th>';

      model_titlu += '<th scope="col">Description</th><th scope="col">Price</th>';

      sirObj.forEach(function(item) {
         
         var model = ' <tr> <td>{nr} </td> <td>{prodname} </td> <td>{description} </td> <td>{price} </td> </tr>';
       
         continut += model.replace('{nr}', i).
                           replace('{prodname}', item.name).
                           replace('{description}',item.description).
                           replace('{price}', item.price);
         i++;
      });
      var incheiere_model = '</tbody></table></div></div>';

      document.querySelector('#citeste-produsele').innerHTML = model_titlu + continut + incheiere_model;
         
   };

   // S-a produs o eroare
   xhtp.onerror = function () {
            alert('Hopa! Ceva n-a mers!');
   };

   xhtp.send();
};