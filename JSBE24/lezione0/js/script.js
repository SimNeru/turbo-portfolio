// commento JS
/**
 * commento multi riga
 */

let saluto = "Ciao mondo";
console.log(saluto);

let mioNome = "Simo";
let eta = 31;
let presenza = true;
var corso = "JavaBackEnd";

console.log("Ciao " + mioNome + ", età: " + eta + ", presenza: " + presenza + ", corso: " + corso);

// Java è debolmente tipizzato
let miaVariabile = 42;
console.log(miaVariabile)

miaVariabile = 40;
console.log(miaVariabile)

// Qui sto cambiando il tipo di una riassegnazione. Si fa? NOOO
miaVariabile = "Un numero a caso";
console.log(miaVariabile)

let numero1 = 5;
let numero2 = 9;
let somma = numero1 + numero2;
console.log("La somma tra i due numeri vale: " + somma);

console.log(typeof numero1);
console.log(typeof 0.45646346723746);
console.log(typeof "numero1");

let valoreNull = null;
console.log(typeof valoreNull);

// ARRAY 
let colori = ["giallo", "rosso", "verde", "blue"]
// ARRAY MISTO FATTIBILE SI, SI FA NO
// push aggiunge un elemento
colori.push("arancione");
console.log(colori);
// sort ordina array
colori.sort();
console.log(colori);
// elimino l'ultimo elemento
colori.pop();
console.log(colori);

// mdmJavascript ECMAscript per tutta la documentazioni

for (let i = 0; i < colori.length; i++) {
    console.log(colori[i]);
}

// ciclabili n parametri in simultanea
console.log("Foreach");
colori.forEach((colore, par1, par2) => {
    console.log(colore);
});

// per scorrere un oggetto non iterable servono le quadre
console.log("For in, tipico per oggetti");
for (const colore in colori) {
    console.log(colori[colore]);
}

// simile al for each di java
console.log("For of, per gli array");
for (let iterator of colori) {
    console.log(iterator);
}

//IF uguali a Java
let miaEta = 18;

if (miaEta <= 18) {
    console.log("Non puoi entrare");
} else if (miaEta >= 18 && miaEta <= 60) {
    console.log("Puoi entrare");
} else {
    console.log("Non puoi entrare, sei oltre i 60 anni");
}

// TRIPLO UGUALE
let num1 = 10;
let num2 = "10";

if (num1 == num2) {
    console.log("I numeri sono uguali");
}
else {
    console.log("I numeri sono diversi");
}

if (num1 === num2) {
    console.log("I numeri sono uguali");
}
else {
    console.log("I numeri sono diversi");
}

let num3 = 10;
let num4 = 8;

if (num3 !== num4) {
    console.log("I due numeri sono diversi nel tipo o nel valore");
}
else if (num3 != num4){
    console.log("I due numeri sono diversi solo nel valore");
}
else {
    console.log("I due numeri sono uguali");
}

//esempio . la mia variabile deve oobligatoriamente essere una stringa
let miaNuovaVar = 7;

if (typeof miaNuovaVar != "string") {
    console.log("la variabile non è una stringa");
}
else {
    console.log("la variabile è una stringa");
}