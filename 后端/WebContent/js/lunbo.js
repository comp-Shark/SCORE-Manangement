// 获取元素
const slides = document.querySelectorAll('.slide');
const dots = document.querySelector('.dots');
let currentIndex = 0;

// 创建小圆点
slides.forEach((_, index) => {
    const dot = document.createElement('div');
    dot.classList.add('dot');
    if (index === 0) {
        dot.classList.add('active');
    }
    dot.addEventListener('click', () => {
        currentIndex = index;
        updateSlider();
    });
    dots.appendChild(dot);
});

// 自动轮播函数
function autoSlide() {
    setInterval(() => {
        currentIndex = (currentIndex + 1) % slides.length;
        updateSlider();
    }, 3000); 
}

// 更新轮播图状态函数
function updateSlider() {
    // 移动图片
    document.querySelector('.slides').style.transform = `translateX(-${currentIndex * 100}%)`;
    // 更新小圆点状态
    document.querySelectorAll('.dot').forEach((dot, index) => {
        if (index === currentIndex) {
            dot.classList.add('active');
        } else {
            dot.classList.remove('active');
        }
    });
}

// 启动自动轮播
autoSlide();