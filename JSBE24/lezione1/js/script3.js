// Voglio scrivere qualcosa all'interno di demo

// 1. Recupero il div con id = "demo"
// let demo = document.getElementById("demo");
// demo.innerHTML = "Ciao, Mondo!!!";

// control + ù, shortcut comment

// dichiaro una funzione
function saluta() {
  let demo = document.getElementById("demo");
  demo.innerHTML = "Ciao, Mondo";
}

// richiamo funzione
saluta();

// richiamo funzione, vale solo per funzione non per variabili
// javascript programmazione funzionale (non procedurale)
salutaStudente();

// ATT: richiamo funzione indipendente dalla sua dichiarazione
function salutaStudente() {
  let demo = document.getElementById("demo");
  let nome = "Maria";
  demo.innerHTML = "Ciao, " + nome;
}

// funzione richiamabili da altre funzioni
function aggiungiParole() {
  let feed = document.getElementById("feed");
  feed.innerHTML = "Queste sono le prime parole";
  aggiungiAltreParole(feed);
}

/** JSDOC
 *  @param {HTMLElement} elementoHtml
 */
function aggiungiAltreParole(elementoHtml) {
  elementoHtml.innerHTML += ", questo è il resto delle parole";
}

// richiamo la funzione
aggiungiParole();

//OSS: var globali
let mioNome = "Dario";
function prendiNome() {
  let mioNome = "Anna";
  console.log(mioNome);
}
prendiNome();
console.log(mioNome);

// FUNZIONI CON PARAMETRI
function calcolaArea(base, altezza) {
  let area = base * altezza;
  return area;
}

let base = 6;
let altezza = 9.5;
let area = calcolaArea(base, altezza);
console.log(area);

// ESPRESSIONE FUNZIONALE
let calcArea = function (base, altezza) {
  let area = base * altezza;
  console.log(area);
  return area;
};

// richiamo la variabile a cui ho assegnato la funzione
calcArea(5, 7);

function calcolaVolume(base, altezza, profondita) {
  let area = calcArea(base, altezza);
  let volume = area * profondita;
  return volume;
}

console.log(calcolaVolume(5, 6, 7));

function calcolaVolume2(area, profondita) {
  let volume = area * profondita;
  return volume;
}

let result = calcolaVolume2(calcArea(5, 6), 7);
console.log(result);

// CLOSURE
function calcolaVolume3(base, altezza, profondita) {
  let volume;
  let area;

  function calcArea() {
    area = base * altezza;
  }

  calcArea();
  volume = area * profondita;
  return volume;
}
console.log(calcolaVolume3(5, 6, 7));

// variabile conta totale click
let counter = 0;

// ESEMPIO
let numeri = [34, 15, 22, 10, 1, 3, 8];
function calcolaPari(numero) {
  if (numero % 2 == 0) {
    return numero;
  } else {
    return "dispari";
  }
}

// function(parametro)
function eseguiCalcolo() {
  counter++;
  if (counter <= 10) {
    gioco.innerHTML = "";
    gioco.innerHTML + "<ol>";
    numeri.forEach((numero) => {
      gioco.innerHTML += "<li>" + calcolaPari(numero) + "</li>";
    });
    gioco.innerHTML + "</ol>";
  } else {
    window.alert("HAI ROTTO IL CAZZO");
    counter = 0;
  }
}

let gioco = document.getElementById("gioco");
// recupero il pulsante
let btn = document.getElementById("btn");
// collego il pulsante tramite addEventListener alla funzione
// ATT: quando richiamo una funzione col l'EventListener Non devo inserire parentesi tonde

btn.addEventListener("click", eseguiCalcolo);
