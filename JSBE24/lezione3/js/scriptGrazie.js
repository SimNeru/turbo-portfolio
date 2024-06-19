class User{
    constructor(nome, cognome, eta, email, password, termCond){
        this.nome = nome;
        this.cognome = cognome;
        this.eta = eta;
        this.email = email;
        this.password = password;
        this.termCond = termCond;
    }
}    

let dettagliUtente = document.querySelector("#dettagliUtente");
let btn = document.querySelector("#btn");
let headline = document.querySelector("#h1");

// Compongo lo user
function creaUser(){
    let utente;
    if (localStorage.length != 0){
        utente = new User(
            localStorage.getItem("nomeUser"),
            localStorage.getItem("cognomeUser"),
            localStorage.getItem("etaUser"),
            localStorage.getItem("emailUser"),
            localStorage.getItem("passwordUser"),
        )
        printUser(utente);
    } else {
        console.log("Non c'è nessun utente registrato");
    }
}

    /**
     * 
     * @param {Utente} user 
     */
    function printUser(user){
    dettagliUtente.innerHTML = 
        `<p> 
        Nome: ${user.nome} |
        Cognome: ${user.cognome} | 
        Età: ${user.eta} </p> 
        <p>Email: ${user.email} </p>
        <p>Password: ******** </p>`;
    }

    function clear()
    {
        localStorage.removeItem("nomeUser"),
        localStorage.removeItem("cognomeUser"),
        localStorage.removeItem("etaUser"),
        localStorage.removeItem("emailUser"),
        localStorage.removeItem("passwordUser");
        h1.innerHTML = "Grazie e vaffanculo!";
        dettagliUtente.innerHTML = "";
        location.href="./01-formRegistrazione.html";
    }

    window.addEventListener("DOMContentLoaded", creaUser);
    btn.addEventListener("click", clear);
