$( document ).ready(function () {
  if ($('.quiz-page').length > 0) {
    /* quiz countdown */
    var expiration = new Date().getTime() + (parseInt($('.countdown').data('seconds-remaining')) + 2) * 1000;

    var timeout;
    updateCountdown = function () {
      var timeLeft = Math.max(Math.floor((expiration - new Date().getTime())), 0);
      var duration = moment.duration(timeLeft, 'milliseconds');
      $('.countdown').text(moment(duration.asMilliseconds()).format('mm:ss'));
      if (timeLeft == 0) {
        clearTimeout(timeout);
        window.location.href = '/';
        return;
      }
      timeout = setTimeout(updateCountdown, 300);
    };

    updateCountdown();

    /* clicking answer image submits via post */
    $('.choices a').on('click', function(event) {
      jQuery.post('', {response_id: $(this).data('response-id'), answer_id: $(this).data('answer-id')}, function() {
        window.location.reload();
      });
      event.preventDefault();
      return false;
    });
  }

});