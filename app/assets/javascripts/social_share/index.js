window.SocialShare = {
  openUrl: function() {
    $('.social-share a.ss-button').click(function(event) {
      event.preventDefault()
      windowName = $(event.target).attr('title')
      var width  = 575,
          height = 400,
          left   = ($(window).width()  - width)  / 2,
          top    = ($(window).height() - height) / 2,
          url    = this.href,
          opts   = 'status=1' +
                   ',width='  + width  +
                   ',height=' + height +
                   ',top='    + top    +
                   ',left='   + left   +
                   ',popupwindow';

       window.open(url, windowName, opts);
    })
  },

  openMore: function() {
    $('.ss-more-button').mouseover(function(event) {
      event.preventDefault()
      $('.ss-more-buttons').show()
    })

    $('.social-share-more').mouseleave(function () {
        $('.ss-more-buttons').hide();
    });
  }
};
