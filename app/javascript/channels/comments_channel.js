import consumer from "./consumer"

document.addEventListener("DOMContentLoaded", () => {
  const commentsContainer = document.querySelector("#comments");

  if (!commentsContainer) {
    console.error("Seletor #comments não encontrado na página.");
  } else {
    // Obtém o ID do post para criar a assinatura do canal
    const postId = commentsContainer.getAttribute("data-post-id");

    // Criação da assinatura do canal
    consumer.subscriptions.create({ channel: "CommentsChannel", post_id: postId }, {
      connected() {
        console.log("Conectado ao CommentsChannel");
      },

      disconnected() {
        console.log("Desconectado do CommentsChannel");
      },

      received(data) {
        if (data.comment) {
          // Novo comentário foi recebido
          commentsContainer.insertAdjacentHTML("beforeend", data.comment);
        } else if (data.deleted_comment_id) {
          // Comentário excluído
          const commentElement = document.getElementById(`comment_${data.deleted_comment_id}`);
          if (commentElement) {
            commentElement.remove();
          }
        }
      }
    });
  }
});
