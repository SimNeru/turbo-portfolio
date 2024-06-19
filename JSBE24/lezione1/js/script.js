let nomeAutore = "SIMO";
let eta = 32;

// recuperto l'elemento html con un particolare id
let infoAutore = document.getElementById("infoAutore");

// Scrivo all'interno del tag p appena recuperato, anzi, vado a modificare la prop del suo contenuto testuale
infoAutore.innerHTML = nomeAutore + " età: " + eta;

// Voglio leggere contenuto titolo
let titolo = document.getElementById("titolo");
console.log(titolo);
console.log(titolo.innerHTML);

let num1 = 10;
let num2 = 5;

let resSomma = num1 + num2;
let resSottr = num1 - num2;
let resMolt = num1 * num2;
let resDivisione = num1 / num2;

document.getElementById("resSomma").innerHTML = "La somma vale: " + resSomma;

document.getElementById("resSottr").innerHTML = "La sotr vale: " + resSottr;

document.getElementById("resMolt").innerHTML = "La molt vale: " + resMolt.toPrecision(3);

document.getElementById("resDivisione").innerHTML = "La div vale: " + resDivisione.toPrecision(3);