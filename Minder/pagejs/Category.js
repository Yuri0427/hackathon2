window.onload = function () {
    var picNum = 4;
    var img = [];

    for (var i = 0; i < picNum; i++) {
        img[i] = new Image();
        img[i].src = "./picture/" + (i + 1) + ".jpg";

    }

    //function slideshow() {
    //    if (++num == picNum) {
    //        num = 0;
    //    }
    //    document.imgQue.src = img[num].src;
    //}

    var btnSport = document.getElementById("btnSport");
    var btnLearn = document.getElementById("btnLearn");
    var btnEntertainment = document.getElementById("btnEntertainment");
    var btnGetTogether = document.getElementById("btnGetTogether");

    btnSport.onclick = clickCategory.bind(this, 0);
    btnLearn.onclick = clickCategory.bind(this, 1);
    btnEntertainment.onclick = clickCategory.bind(this, 2);
    btnGetTogether.onclick = clickCategory.bind(this, 3);

    function clickCategory(picNum) {
        document.imgCategory.src = img[picNum].src;
    }



    //btnNext.onclick = next;

    //function AddPoints(lbl) {
    //    lbl.innerHTML = Number(lbl.innerHTML) + 1;
    //    slideshow();
    //}

    //function next() {
    //    slideshow();
    //}
}