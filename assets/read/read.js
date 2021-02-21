document.querySelector("#button_read").onclick = function () {
   var xhtp = new XMLHttpRequest();
   xhtp.open("GET", "assets/read/read.php");

   // S-au primit date de la scriptul de pe server
   xhtp.onload = function () {
      var sirObj = JSON.parse(this.responseText);
      var i = 1;
      var continut = '';

      var model_titlu = '<div class="text-center><h4 id="titlu">'

      model_titlu += 'Read previous messages</h4></div>';

      model_titlu = '<div class="row d-flex justify-content-center">';

      model_titlu += '<div class="col-lg-8"><table class="table table-hover">';

      model_titlu += '<thead><tr><th scope="col">Nr.</th><th scope="col">Name</th>';

      model_titlu += '<th scope="col">Email</th><th scope="col">Phone</th>';

      model_titlu += '<th scope="col">Message</th></tr></thead><tbody>';

      sirObj.forEach(function(item) {

         var model = ' <tr> <td>{nr} </td> <td>{name} </td> <td>{email} </td> <td>{phone} </td> <td>{message} </td> </tr>';

         continut += model.replace('{nr}', i).
                           replace('{name}', item.name).
                           replace('{email}',item.email).
                           replace('{phone}', item.phone).
                           replace('{message}', item.message);
         i++;
      });

      var incheiere_model = '</tbody></table></div></div>';

      document.querySelector('#citeste').innerHTML = model_titlu + continut + incheiere_model;
         
   };

   // S-a produs o eroare
   xhtp.onerror = function () {
            alert('Hopa! Ceva n-a mers!');
   };

   xhtp.send();
};