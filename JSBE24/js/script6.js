let student = {
    nome: "Pippo",
    cognome: "Rossi",
    matr:123,

    studia: function()
    {
        return this.nome + " " + this.cognome + " " + this.matr;
    }
}

class Docente {
    constructor(nome, cognome, corso) {
        this.nome = nome;
        this.cognome =cognome;
        this.corso = corso;

        this.insegna = function() {
            return "Il docente "+ this.nome + " " + this.cognome + 
            " insegna " + this.corso;
        };
    }
}


let docenteJAVA = new Docente("Mauro", "Bogliaccino", "JAVABE");
let docenteJS = new Docente("Dario", "Mennillo", "TSS");
let docente = new Docente("Oscar", "Vecchione", "JAVAWEB");

// Adesso voglio trasformare i miei oggetti in formato JSON
// perché poi lo vorrò inviare come POST che verrà specificato nella fetch
let studenteJSON = JSON.stringify(student); // questo è l'oggetto in JS
console.log(student);
console.log(studenteJSON);

console.log(docenteJAVA.insegna());

// Posso anche trasformare il mio docente in JSON
console.log(JSON.stringify(docenteJS));

// IMMAGINO DI VOLER PASSARE UN OGGETTO FORMATO IN JSON, QUINDI UNA STRINGA
let studente4JSON = '{"nome": "Anna", "cognome": "Verdi", "matricola": "321"}';

//trasformo la stringa in un oggetto
let studente4 = JSON.parse(studente4JSON);
console.log(studente4);

// Faccio la stessa cosa con il docente
let docente4JSON = '{"nome": "Luca", "cognome": "Ceroni", "corso": "Sicurezza"}';
let docente4OBJ = JSON.parse(docente4JSON);
console.log(docente4OBJ);
let docente4 = new Docente(docente4OBJ.nome, docente4OBJ.cognome, docente4OBJ.corso);
console.log(docente4);
console.log(docente4.insegna());

let listaDocenti = [
    docenteJAVA,
    docenteJS,
    docente,
    docente4
];

let elListaDoc = document.getElementById("elListaDoc");
listaDocenti.forEach( docente => {
    elListaDoc.innerHTML += "<li>" + docente.insegna() + "</i>";
})
