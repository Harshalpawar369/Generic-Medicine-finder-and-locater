let navbar = document.querySelector('.header_bottom .container-fluid .navbar.navbar-expand-lg.custom_nav-container');
let profile = document.querySelector('.header_bottom .container-fluid .profile');

document.querySelector('#menu-btn').onclick = () =>{
   navbar.classList.toggle('active');
   profile.classList.remove('active');
}

document.querySelector('#user-btn').onclick = () =>{
   profile.classList.toggle('active');
   navbar.classList.remove('active');
}

window.onscroll = () => {
   // Check if navbar and profile elements exist before removing classes
   if (navbar && profile) {
       navbar.classList.remove('active');
       profile.classList.remove('active');
   }
};

let mainImage = document.querySelector('.quick-view .box .row .image-container .main-image img');
let subImages = document.querySelectorAll('.quick-view .box .row .image-container .sub-image img');

subImages.forEach(image =>{
   image.onclick = () =>{
      let src = image.getAttribute('src');
      mainImage.src = src;
   }
});
