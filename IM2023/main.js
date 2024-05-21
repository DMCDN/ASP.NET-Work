const imageContainer = document.getElementById('image-container');
const prevBtn = document.getElementById('prev-btn');
const nextBtn = document.getElementById('next-btn');
const totalImages = imageContainer.children.length;
const intervalTime = 4000;
let currentIndex = 0;
let slideInterval;



var slideIndex = 1; // 初始圖片索引
showSlides(slideIndex); // 初始化顯示圖片

function currentSlide(n) {
    showSlides(slideIndex = n);
}

function showSlides(n) {

    // 更新激活的點狀態
    var dots = document.getElementsByClassName("dot");
    for (var i = 0; i < dots.length; i++) {
        dots[i].classList.remove("active");
    }
    dots[slideIndex - 1].classList.add("active");
}

// Function to show the current image
function showImage(index) {
    const translateValue = -index * 100 + '%';
    imageContainer.style.transform = 'translateX(' + translateValue + ')';
}

function startSlide() {
    slideInterval = setInterval(nextSlide, intervalTime);
}


function nextSlide(event) {
    currentIndex = (currentIndex + 1) % totalImages;
    showImage(currentIndex);
    updateCounter();
    if (event) {
        event.preventDefault();
    }
}

function updateCounter() {
    const counter = document.getElementById('image-counter');
    counter.innerHTML = '';
    for (let i = 0; i < totalImages; i++) {
        const dot = document.createElement('span');
        dot.className = `dot${i === currentIndex ? ' active' : ''}`;
        counter.appendChild(dot);
        stopSlide();
        startSlide();
    }
}

function stopSlide() {
    clearInterval(slideInterval);
}



function prevSide(event) {
    currentIndex = (currentIndex - 1 + totalImages) % totalImages;
    showImage(currentIndex);
    updateCounter();
    if (event) {
        event.preventDefault();
    }
}

function stopSlide() {
    clearInterval(slideInterval);
}

document.getElementById('prev-btn').addEventListener('click', (event) => {
    prevSide(event);
    stopSlide();
    startSlide();
});

document.getElementById('next-btn').addEventListener('click', (event) => {
    nextSlide(event);
    stopSlide();
    startSlide();
});

// 在文檔準備就緒後執行初始偏移和其他初始化邏輯
document.addEventListener("DOMContentLoaded", function () {
    startSlide();
    updateCounter();

    // 添加事件監聽器
    document.getElementById('image-container').addEventListener('mouseover', stopSlide);
    document.getElementById('image-container').addEventListener('mouseout', startSlide);
});