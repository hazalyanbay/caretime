const initSweetAlert = () => {
  const policeConfirm = document.querySelector(".js-police")
  const chatConfirm = document.querySelector(".js-chat")
  const videoConfirm = document.querySelector(".js-video")
    if (policeConfirm) {
      policeConfirm.addEventListener('click', function(e) {
        var form = policeConfirm.form;
        e.preventDefault(); // <--- prevent form from submitting
        swal({
            title: "Are you sure?",
            text: "Police will come to your address!",
            icon: "warning",
            buttons: [
              'No, cancel it!',
              'Yes, I am sure!'
            ],
            dangerMode: true,
          }).then(function(isConfirm) {
            if (isConfirm) {

                form.submit(); // <--- submit form programmatically
            }
          })
      });
     }
      if (chatConfirm) {
      chatConfirm.addEventListener('click', function(e) {
        var form = chatConfirm.form;
        e.preventDefault(); // <--- prevent form from submitting
        swal({
            title: "",
            text: "You are gonna talk with us on live chat. Remember, you can hide chat and watch video for undercover",
            icon: "warning",
            buttons: [
              'No, cancel it!',
              'Okay!'
            ],
            dangerMode: true,
          }).then(function(isConfirm) {
            if (isConfirm) {

                form.submit(); // <--- submit form programmatically
            }
          })
      });
    }

     if (videoConfirm) {
      videoConfirm.addEventListener('click', function(e) {
        var form = videoConfirm.form;
        e.preventDefault(); // <--- prevent form from submitting
        swal({
            title: "",
            text: "You are gonna talk with us on video chat. Remember, you can hide chat and watch video for undercover",
            icon: "warning",
            buttons: [
              'No, cancel it!',
              'Okay!'
            ],
            dangerMode: true,
          }).then(function(isConfirm) {
            if (isConfirm) {

                form.submit(); // <--- submit form programmatically
            }
          })
      });
    }

}
export { initSweetAlert };