const initHideBtn = () => {
  const hideBtn = document.querySelector(".js-hidebtn")
    if (hideBtn) {
      hideBtn.addEventListener("click", (event) => {
      event.preventDefault();
      const hiddenChat = document.querySelector(".js-hiddenchat");
      hiddenChat.classList.toggle("d-none");
      document.documentElement.scrollTop = 0;
      });
  }
}

export { initHideBtn };
