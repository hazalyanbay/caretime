import consumer from "./consumer";

const initChatroomCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.chatroomId;
    console.log(id)
    console.log("messanger container found")
    consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
      received(data) {
         messagesContainer.insertAdjacentHTML('beforeend', data);
         window.scrollTo(0,document.body.scrollHeight);
      },
    });
  }
}


export { initChatroomCable };
