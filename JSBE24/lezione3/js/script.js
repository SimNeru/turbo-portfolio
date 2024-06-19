    // Sintassi CSS
    // #valore ==> ID di un elemento html
    // .valore ==> Class di un elemento
    let formReg = document.querySelector("#formReg");
    let demo = document.querySelector("#demo");

    function validate()
    {   
        demo.innerHTML="";

        //Pulisco i bordi dei campi colorati
        let inputsColorati = document.querySelectorAll("input.borderRed");
        inputsColorati.forEach(inputsColorato => {
            inputsColorato.removeAttribute("class");
        })

        // Qui raccolgo tutti i valori dei campi input
        let nome = document.querySelector("#nome").value;
        let cognome = document.querySelector("#cognome").value;
        let eta = document.querySelector("#eta").value;
        let email = document.querySelector("#email").value;
        let password = document.querySelector("#password").value;
        let termCond = document.querySelector("#termCond");

        validateName(nome, event);
        validateCognome(cognome, event);
        validateEta(eta, event);
        validateEmail(email, event);
        validatePassword(password, event);

        if(!termCond.checked){
            demo.innerHTML += "<p> Non hai spuntato termini e condizioni</p>";
            event.preventDefault();
        }
    }    

    function validateName(nome, event){
        if(nome == "" || nome.length <= 2){
            demo.innerHTML += "<p> Hai dimenticato il nome</p>";
            document.querySelector("#nome").setAttribute("class", "borderRed");
            // interrompe che venga restituita la risposta
            event.preventDefault();
            // interrompe il metodo
            event.stopImmediatePropagation();
        } else {
            // salva i dati inseriti all'interno della memoria del browser
            localStorage.setItem("nomeUser", nome);
        }
    }

    function validateCognome(cognome, event){
        if(cognome == "" || cognome.length <= 2){
            demo.innerHTML += "<p> Hai dimenticato il cognome</p>";
            document.querySelector("#cognome").setAttribute("class", "borderRed");
            event.preventDefault();
            event.stopImmediatePropagation();
        } else {
            localStorage.setItem("cognomeUser", cognome);
        }
    }

    function validateEta(eta, event){
        if(eta < 18){
            demo.innerHTML += "Non sei abbastanza adulto";
            document.querySelector("#eta").setAttribute("class", "borderRed");
            event.preventDefault();
            event.stopImmediatePropagation();
        } else {
            localStorage.setItem("etaUser", eta);
        }
    }

    // regex (regular expression)
    function validateEmail(email, event){
        let regexEmail= /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
        if(!email.match(regexEmail)){
            demo.innerHTML += "<p>La tua mail non è valida</p>";
            document.querySelector("#email").setAttribute("class", "borderRed");
            event.preventDefault();
            event.stopImmediatePropagation();
        } else {
            localStorage.setItem("emailUser", email)
        }
    }

    function validatePassword(password, event){
        let regexPassword= /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$/;
        if(!password.match(regexPassword)){
            demo.innerHTML += "<p>La tua password non è valida</p>";
            document.querySelector("#password").setAttribute("class", "borderRed");
            event.preventDefault();
            event.stopImmediatePropagation();
        } else {
            localStorage.setItem("passwordUser", password)
        }
    }

    formReg.addEventListener("submit", validate);

    // adesso voglio recuperare direttamente i campi input
    let elNome = document.querySelector("#nome");
    let elCognome = document.querySelector("#cognome");
    let elEta = document.querySelector("#eta");
    let elEmail = document.querySelector("#email");
    let elPassword = document.querySelector("#password");

    // blue evento campo input, focus sul campo (clicco sul campo è in focus, clicco esterno in blur)
    elNome.addEventListener("blur", function(){
        validateName(this.value, event);
    });
    elCognome.addEventListener("blur", function(){
        validateCognome(this.value, event);
    });
    elEta.addEventListener("blur", function(){
        validateEta(this.value, event);
    });
    elEmail.addEventListener("blur", function(){
        validateEmail(this.value, event);
    });
    elPassword.addEventListener("blur", function(){
        validatePassword(this.value, event);
    });
    
    window.addEventListener("DOMContentLoaded", formReg.querySelectorAll().forEach(e => e.remove));
