    const toggle = document.getElementById('menu-toggle');
const menu = document.getElementById('menu-content');
const hamburger = document.querySelector('.hamburger');

toggle.addEventListener('click', () => {
    // Toggle the hamburger button animation
    hamburger.classList.toggle('open');
    
    if (menu.classList.contains('menu-hidden')) {
        menu.classList.remove('menu-hidden');
        // delay to allow display before animation
        setTimeout(() => menu.classList.add('show'), 10);
    } else {
        menu.classList.remove('show');
        setTimeout(() => menu.classList.add('menu-hidden'), 300);
    }
});
