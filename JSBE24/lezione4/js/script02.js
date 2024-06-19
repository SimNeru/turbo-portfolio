const URL = "https://reqres.in/api/users?page=";

let count = 1;
let utenti = [];
let elListaUtenti = document.querySelector("#listaUtenti");
let btn = document.querySelector("#btn");
btn.addEventListener("click", mostraUtenti);

function mostraUtenti() {
  fetch(URL+count)
    .then((data) => {
      console.log(data);
      return data.json(); 
    })
    .then((response) => {
      console.log(response);
      ++count;
      response.data.forEach((user) => {
        console.log(user.first_name + " " + user.last_name + " " + user.avatar);
        elListaUtenti.innerHTML += stampaInfoUser(user);
      });
    });
} 

  function stampaInfoUser(user) {
    let info = `
        <li><img src= '${user.avatar}'/>
            <p>Nome: ${user.first_name}, Cognome: ${user.last_name}</p>
        </li>
        `;
    return info;
  }

