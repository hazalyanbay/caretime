const initHideBtn = () => {
  const hideBtn = document.querySelector(".js-hidebtn")
  hideBtn.addEventListener("click", (event) => {
    event.preventDefault();
    const hiddenChat = document.querySelector(".js-hiddenchat");
    hiddenChat.classList.toggle("d-none");
    document.documentElement.scrollTop = 0;

  });
}



export { initHideBtn };
