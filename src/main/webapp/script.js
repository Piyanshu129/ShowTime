document.addEventListener("DOMContentLoaded", function () {
    const carousel = document.querySelector(".carousel");
    let scrollAmount = 0;
    const scrollStep = 300; // Adjust the scroll step

    function scrollCarousel() {
        if (scrollAmount >= carousel.scrollWidth - carousel.clientWidth) {
            scrollAmount = 0;
        } else {
            scrollAmount += scrollStep;
        }
        carousel.scrollTo({
            left: scrollAmount,
            behavior: "smooth"
        });
    }

    setInterval(scrollCarousel, 3000);
});
