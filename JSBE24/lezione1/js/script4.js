// NOTAZIONE LETTERALE
let studente = {
  nome: "Dario",
  cognome: "Mennillo",
  eta: 35,
  presenza: true,

  //metodo
  salutaDocente: function () {
    return "Ciao Mauro!!!";
  }
};

// accedere alle prop e metodi con la notazione .
console.log(studente.nome);
console.log(studente.cognome);
console.log(studente.eta);
console.log(studente.presenza);
console.log(studente.salutaDocente());

console.log(studente["nome"]);
console.log(studente["cognome"]);
console.log(studente["eta"]);
console.log(studente["presenza"]);
console.log(studente["salutaDocente"]);

console.log("ATTENZIONE, INCREDIBILE: stampo un oggetto con un for")
function stampaInfo(persona){
    // LA KEY RAPPRESENTA PROPRIETA OGGETTO
    for (const key in persona) {
        if(typeof persona[key] != "function"){
        console.log(persona[key]);
        }
    }
}

stampaInfo(studente);