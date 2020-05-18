document.addEventListener('turbolinks:load', () => {
  (document.querySelectorAll('.message .delete') || []).forEach(($delete) => {
    var $message = $delete.parentNode.parentNode;

    $delete.addEventListener('click', () => {
      $message.parentNode.removeChild($message);
    });
  });
});
