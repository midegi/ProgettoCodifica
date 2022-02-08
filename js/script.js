// Slider 
function changeSlide(action, i) {
    if (action == "N") {
        if (i == 1) {
            pictures[0].style.display = "none"
            container1.style.display = "none"
            pictures[1].style.display = "block"
            container2.style.display = "flex"
        } else if (i == 2) {
            pictures[1].style.display = "none"
            container2.style.display = "none"
            pictures[2].style.display = "block"
            container3.style.display = "flex"
        } else {
            pictures[2].style.display = "none"
            container3.style.display = "none"
            pictures[0].style.display = "block"
            container1.style.display = "flex"
        }
    } else {
        if (i == 1) {
            pictures[0].style.display = "none"
            container1.style.display = "none"
            pictures[2].style.display = "block"
            container3.style.display = "flex"
        } else if (i == 2) {
            pictures[1].style.display = "none"
            container2.style.display = "none"
            pictures[0].style.display = "block"
            container1.style.display = "flex"
        } else {
            pictures[2].style.display = "none"
            container3.style.display = "none"
            pictures[1].style.display = "block"
            container2.style.display = "flex"
        }
    }
}

// Highlight
function hightlight(area) {
    console.log(area)
    const text = document.getElementsByClassName("#" + area.className)[0]
    text.style.background = "#ddbea9"
}

function remove_hightlight(area) {
    const text = document.getElementsByClassName("#" + area.className)[0]
    text.style.background = "none"
}

const areas = document.getElementsByTagName("area")

const next_btn = document.querySelector(".control_next")
const back_btn = document.querySelector(".control_prev")
const pictures = document.querySelectorAll("li")
const container1 = document.querySelector("#container-1")
const container2 = document.querySelector("#container-2")
const container3 = document.querySelector("#container-3")
var i = 1

next_btn.addEventListener("click", (e) => {
    changeSlide("N", i)
    i++
    if (i == 4)
        i = 1
})

back_btn.addEventListener("click", (e) => {
    
    if (i == 0)
        i = 3
    changeSlide("B", i)
    i--
})

for (let area of areas) {
    area.addEventListener("onclick", (e) => {
        e.preventDefault()
    });
    
    area.addEventListener("mouseover", (e) => {
        hightlight(area);
    });

    area.addEventListener("mouseout", (e) => {
        remove_hightlight(area);
    });
}
