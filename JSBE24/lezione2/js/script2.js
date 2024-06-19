class Studente{
    constructor(nome,cognome,corso,matricola)
    {
        this.nome = nome;
        this.cognome = cognome;
        this.corso = corso;
        this.matricola = matricola;

        this.dettagli = function(){
            return "Nome: " + this.nome + " | Cognome: " + this.cognome + " | Corso: " + this.corso + " | Matricola: " + this.matricola;
        };
    }
}

let arrayStudenti = new Array();

let lastUser = document.querySelector("#lastUser");
let testoStudente = document.querySelector("#testoStudente");
let btnReg = document.querySelector("#btn");

function registra()
{
    let nome = document.querySelector("#nome").value;
    let cognome = document.querySelector("#cognome").value;
    let corso = document.querySelector("#corso").value;
    let matricola = document.querySelector("#matricola").value;

    if (nome == "" || cognome == "" || corso == "" || matricola == "") {
        event.preventDefault;
        alert("Nessun campo deve essere vuoto");
    } else {
        lastUser.innerHTML = "";
        let studente = new Studente(nome,cognome,corso,matricola);
        lastUser.innerHTML += studente.dettagli();
        console.log(studente);
        arrayStudenti.push(studente);
    }
}
/**
 * @param {Studente} studente
 */
function registraStudente(studente)
{
    JSON.stringify(studente);
}

let elListaStudenti = document.getElementById("elencoStudenti");
function mostra(){
    elListaStudenti.innerHTML = "";
    arrayStudenti.forEach(studente => {
        elListaStudenti.innerHTML += "<i>" + studente.dettagli() + "</i>";
    })
}

let elListaStudentiJSON = document.getElementById("elencoStudentiJSON");
function mostraJSON(){
    elListaStudentiJSON.innerHTML = "";
    arrayStudenti.forEach(studente => {
        console.log(registra(studente));
        elListaStudentiJSON.innerHTML += "<i>" + registra(studente) + "</i>";
    })
}

btnReg.addEventListener("click", registra);
btnShowStudenti.addEventListener("click", mostra);
btnShowStudentiJSON.addEventListener("click", mostraJSON);
