function miaFunzione()
{
    console.log("Ciao simo, come stai?")
    let eta = 32
    console.log("So che hai " + eta + " anni");
}

// click è un tipo di evento ne esistono vari
// document.getElementById("btn").addEventListener("click", miaFunzione, false);

document.getElementById("btn").addEventListener("click", function () {
    miaFunzione();
    console.log("su questi punti di pagina")
    console.log(event.pageX)
    console.log(event.pageY)
});