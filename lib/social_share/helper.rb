module SocialShare
  module Helper
    def social_share(title, url, services = [:facebook, :twitter])
      content = ""
      services.each { |service| content += self.send("#{service}_share", title, url) }
      content += "#{javascript_tag 'SocialShare.openUrl()'}"
      content_tag(:div, content.html_safe, class: 'social-share')
    end

    def facebook_share(title, url)
      link_to(tag(:span, class: 'ss-icon-facebook'), "http://www.facebook.com/sharer/sharer.php?u=#{url}&title=#{title}", class: 'ss-facebook-share-button', title: 'Share to Facebook')
    end

    def google_plus_share(title, url)
      link_to(tag(:span, class: 'ss-icon-google-plus'), "http://plus.google.com/share?url=#{url}", class: 'ss-google-plus-share-button', title: 'Share to Google Plus')
    end

    def pinterest_share(title, url)
      link_to(tag(:span, class: 'ss-icon-pinterest'), "http://pinterest.com/pin/create/button/?url=#{url}&description=#{title}", class: 'ss-pinterest-share-button', title: 'Share to Pinterest')
    end

    def reddit_share(title, url)
      link_to(tag(:span, class: 'ss-icon-reddit'), "http://www.reddit.com/submit?url=#{title}&title=#{url}", class: 'ss-reddit-share-button', title: 'Share to reddit')
    end

    def stumbleupon_share(title, url)
      link_to(tag(:span, class: 'ss-icon-stumbleupon'), "http://www.stumbleupon.com/submit?url=#{url}&title=#{title}", class: 'ss-stumbleupon-share-button', title: 'Share to StumbleUpon')
    end

    def twitter_share(title, url)
      link_to(tag(:span, class: 'ss-icon-twitter'), "http://twitter.com/share?text=#{title}", class: 'ss-twitter-share-button', title: 'Share to Twitter')
    end

    def tumblr_share(title, url)
      link_to(tag(:span, class: 'ss-icon-tumblr'), "http://www.tumblr.com/share?v=3&u=#{url}&t=#{title}", class: 'ss-tumblr-share-button', title: 'Share to Tumblr')
    end
  end
end
