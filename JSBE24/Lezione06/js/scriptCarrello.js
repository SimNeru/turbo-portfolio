// clicco sul pulsante prodotto salvato su local storage, mi sposto nell'alra pagina che leggerà la local storage 
// e caricherò sulla pagina

let listaCarrello = document.querySelector("#listaCarrello");
let grandTotal = document.querySelector("#grandTotal");
let btnDelCarr = document.querySelector("#btnDelCarr");
let btnPaga = document.querySelector("#btnPaga");

function stampaListaCarrello()
{
    grandTotal.innerHTML = "";
    let totale = 0;
    // questa funzione legge local storage
    // prodotti carrello è un array di oggetti
    let prodottiCarrello = JSON.parse(localStorage.getItem("prodottiCarr"));

    prodottiCarrello.forEach(element => {
        listaCarrello.innerHTML += `<li>${element.title} - ${element.price} €</li>`
        totale += Number(element.price);
    });
    
    grandTotal.innerHTML = "Totale:" + totale.toFixed(2) + "€";
    /*for (const iterator of prodottiCarrello) {
        listaCarrello.innerHTML += `<li>${iterator["price"]} - ${iterator.price} €</li>`
    }*/
}

window.addEventListener("DOMContentLoaded", stampaListaCarrello);

function svuota(){
    localStorage.removeItem("prodottiCarr");
    location.reload();
}

// controlla campi pagamento poi va a svuotare il localStorage
function paga(){
    
}

btnPaga.addEventListener("click", paga);
btnDelCarr.addEventListener("click", svuota);


