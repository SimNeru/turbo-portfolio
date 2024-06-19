
let boxContainer = document.querySelector("#boxContainer");

function prendiProdotti()
{
    // definisco variabile
    let prodotti;
    
    if(localStorage.length != 0){
        prodottiPerCarrello = JSON.parse(localStorage.getItem("prodottiCarr"));
    }

    // dentro funzione svolgo la fetch
    // ATT: le fetch hanno di default il metodo get
    const URL = "https://fakestoreapi.com/products";
    fetch(URL)
        .then(rispostaDelServer => {
        console.log(rispostaDelServer);
        return rispostaDelServer.json();
        }) // return perché passa il dato al then successivo
        .then(datiVeri => {
            // come sono questi dati? un array di oggetti è un array
            console.log(datiVeri);
            prodotti = datiVeri; // cesserà di essere visibile
            for (const iterator of datiVeri) {
                //boxContainer.innerHTML += creaCard(iterator);
                boxContainer.appendChild(creaCard(iterator));
            }
        })
    // programmazione asincrona eseguita solo al termine del precedente con successo

    // il metodo then della fetch sono le ultime cose eseguite
    // prima viene esguito tutto il codice e infine le fetch
    console.log(prodotti); 
}

// Questo array salvato su local storage (ATT: localStorage acquisisce solo formato json)
let prodottiPerCarrello = [];

// metodo per appendere alla pagina il dato
function creaCard(prodotto){
    /*let card = 
    `<div class="card">
        <img src=${prodotto.image} class="dimImg">
        <h3>${prodotto.title}</h3>
        <p>${prodotto.price} €</p>
        <button>Acquista</button>
    </div>`;*/

    let card = document.createElement("div");
    card.setAttribute("class","card");
    card.innerHTML = 
        `<img src=${prodotto.image} class="dimImg">
        <h3>${prodotto.title}</h3>
        <p>${prodotto.price} €</p>`;

        // creo un oggetto con create Element di tipo HTML al qule posso richiamare metodi
        let button = document.createElement("button");
        button.addEventListener("click", function(){
            // questa è la funzione che aggiunge al carrello
            prodottiPerCarrello.push(prodotto);
            // lo rende stringa nel local storage, il browser lo mostrerà come oggetto ma non è
            let prodCarJSON = JSON.stringify(prodottiPerCarrello);
            localStorage.setItem("prodottiCarr", prodCarJSON)      
        })

        button.innerHTML = "Acquista";

        // presuppone che manipoliamo oggetti e non stringhe
        card.appendChild(button);

    return card;
}

// l'evento DOMContentLoaded scatta al caricamento della pagina
window.addEventListener("DOMContentLoaded", prendiProdotti);