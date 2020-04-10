const navSlide = () => {
    const body = document.querySelector('body');
    const burger = document.querySelector('.burger');
    const mNav = document.querySelector('.nav-links');
    const navLinks = document.querySelectorAll('.nav-links li');

    burger.addEventListener('click', () => {
        // Toggle Nav
        mNav.classList.toggle('nav-active');
        body.classList.toggle('no-scrolling');
    });
}

navSlide();
