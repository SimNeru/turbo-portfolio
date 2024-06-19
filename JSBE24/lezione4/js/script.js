const URL = "https://reqres.in/api/users?page=2";

// Utilizzo fetch API per poter chiamare i dati ed ottenerli
// Applico il metodo GET

let utenti = [];
let elListaUtenti = document.querySelector("#listaUtenti")

// la fetch è l'ultima cosa eseguita al caricamento pagina
fetch(URL)
    .then(
        data => {
            console.log(data);
            return data.json(); // il metodo converte il json in obj
        }
    )
    .then(response =>{
        console.log(response);
        // stampo il nome degli utenti che mi arrivano (data è il nome della proprietà array di oggetti)
        response.data.forEach(user => {
            console.log(user.first_name + " " + user.last_name + " " + user.avatar);
            elListaUtenti.innerHTML += stampaInfoUser(user);
        });
    });

    function stampaInfoUser(user){
        let info = `
        <li><img src= '${user.avatar}'/>
            <p>Nome: ${user.first_name}, Cognome: ${user.last_name}</p>
        </li>
        `
        return info;
    }

    // funzione temporizza 
    setTimeout(() => {
    console.log(utenti);
    }, 5000);