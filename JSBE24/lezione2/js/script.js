class Utente{
    constructor(username,email,dataNascita){
        this.username = username;
        this.email = email;
        this.dataNascita = dataNascita;
    }
}

// # = è il simbolo dell'id
// querySelector recupera un solo elemento
let mioForm = document.querySelector("#mioForm");

let demo = document.querySelector("#demo");

// Creo la funzione di validazione. Determinerà se il form potrà essere inviato o no
function validate(){
    // qui dentro controllerò tutti i campi, l'# sta per id
    // queryselect recupera elemento con regole css
    let username = document.querySelector("#username").value;
    let email = document.querySelector("#email").value;
    let dataNascita = document.querySelector("#dataNascita").value;

    if(username == "" || email == "" || dataNascita == "")
        {
            // previene il lancio del form
            event.preventDefault();
            demo.innerHTML = "Caro utente, vedi che hai dimenticato un campo";
        } else 
        {
            // Creo un oggetto Utente per poi poterlo inviare
            // let utente = {
            //     username: username,
            //     email: email,
            //     dataNascita: dataNascita
            // }
            // console.log(utente);

            let utente = new Utente(username, email, dataNascita);
            console.log(utente);
            registraUtente(utente);
        }
}

// funzione che prenda un oggetto non definito utente e che restituisca un json
// javadoc indica che il tipo oggetto in entrata sia di tipo utente
/** 
 * @param {Utente} utente
 */
function registraUtente(utente){
    let utenteJSON = JSON.stringify(utente);
    console.log(utenteJSON);
}

// l'evento sul quale verrà lanciata la funzione validate è il submit del form
// submit influenza l'intero form
// quando viene passata una funzione ad un event listener viene richiamata senza ()
mioForm.addEventListener("submit", validate);