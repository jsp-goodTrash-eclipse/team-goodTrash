const div = document.querySelector("div.banner");
var count = 0;

setInterval(autoSlide,3000);

function autoSlide(){
    count++;
    if(count==6){
        count=0;
    }
    div.style.transform = "translate(-" + 83 * count +"vw)"
    div.style.transition = "transform 0.5s";
    }
