document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  const favoriteSubmit = (e) => {
    e.preventDefault();

    const favoriteInput = document.querySelector('.favorite-input');
    const favorite = favoriteInput.value;
    favoriteInput.value = '';

    const restLi = document.createElement('li');
    restLi.textContent = favorite;

    const favoritesList = document.getElementById('restaurants');
    favoritesList.appendChild(restLi);
  };

  const listSubmitButton = document.querySelector('.favorite-submit');
  listSubmitButton.addEventListener('click', favoriteSubmit);



  // adding new photos

  const showPhotoForm = (e) => {
   const photoFormDiv = document.querySelector(".photo-form-container");

   if (photoFormDiv.className === "photo-form-container") {
     photoFormDiv.className = "photo-form-container hidden";
   } else {
     photoFormDiv.className = "photo-form-container";
   }
 };

  const photoFormShowButton = document.querySelector(".photo-show-button");
  photoFormShowButton.addEventListener("click", showPhotoForm);


  const handlePhotoSubmit = (e) => {
   e.preventDefault();

   const photoUrlInput = document.querySelector(".photo-url-input");
   const photoUrl = photoUrlInput.value;
   photoUrlInput.value = "";

   const newImg = document.createElement("img");
   newImg.src = photoUrl;

   const newPhotoLi = document.createElement("li");
   newPhotoLi.appendChild(newImg);

   const dogPhotosList = document.querySelector(".dog-photos");
   dogPhotosList.appendChild(newPhotoLi);
 };

 const photoSubmitButton = document.querySelector(".photo-url-submit");
 photoSubmitButton.addEventListener("click", handlePhotoSubmit);



});
