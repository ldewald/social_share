module SocialShare
  module Helper
    SERVICES = [:facebook, :twitter, :google_plus, :pinterest, :reddit, :tumblr, :stumbleupon]

    def social_share(title, url, options = {})
      services = options[:services] || [:facebook, :twitter]
      content = generate_buttons(services, title, url)
      more_services = options[:more_services] || SERVICES - services
      if more_services.present?
        content += generate_more_buttons(more_services, title, url)
      end
      content_tag(:div, content.html_safe, class: 'social-share')
    end

    def facebook_share(title, url)
      link_to(tag(:span, class: 'ss-icon-facebook'), "http://www.facebook.com/sharer/sharer.php?u=#{url}&title=#{title}", class: 'ss-button ss-facebook-share-button', title: 'Share to Facebook')
    end

    def google_plus_share(title, url)
      link_to(tag(:span, class: 'ss-icon-google-plus'), "http://plus.google.com/share?url=#{url}", class: 'ss-button ss-google-plus-share-button', title: 'Share to Google Plus')
    end

    def pinterest_share(title, url)
      link_to(tag(:span, class: 'ss-icon-pinterest'), "http://pinterest.com/pin/create/button/?url=#{url}&description=#{title}", class: 'ss-button ss-pinterest-share-button', title: 'Share to Pinterest')
    end

    def reddit_share(title, url)
      link_to(tag(:span, class: 'ss-icon-reddit'), "http://www.reddit.com/submit?url=#{title}&title=#{url}", class: 'ss-button ss-reddit-share-button', title: 'Share to reddit')
    end

    def stumbleupon_share(title, url)
      link_to(tag(:span, class: 'ss-icon-stumbleupon'), "http://www.stumbleupon.com/submit?url=#{url}&title=#{title}", class: 'ss-button ss-stumbleupon-share-button', title: 'Share to StumbleUpon')
    end

    def twitter_share(title, url)
      link_to(tag(:span, class: 'ss-icon-twitter'), "http://twitter.com/share?text=#{title}", class: 'ss-button ss-twitter-share-button', title: 'Share to Twitter')
    end

    def tumblr_share(title, url)
      link_to(tag(:span, class: 'ss-icon-tumblr'), "http://www.tumblr.com/share?v=3&u=#{url}&t=#{title}", class: 'ss-button ss-tumblr-share-button', title: 'Share to Tumblr')
    end

    private

    def generate_buttons(services, title, url)
      content = ''
      services.each { |service| content += self.send("#{service}_share", title, url) }
      content
    end

    def generate_more_buttons(services, title, url)
      more_content = link_to(tag(:span, class: 'ss-icon-plus'), "#", class: 'ss-more-button', title: 'More sharing options')
      more_buttons = content_tag(:div, generate_buttons(services, title, url).html_safe, class: 'ss-more-buttons')
      more_content += "#{more_buttons} #{javascript_tag 'SocialShare.openMore()'}".html_safe
      "#{content_tag(:div, more_content.html_safe, class: 'social-share-more')} #{javascript_tag 'SocialShare.openUrl()'}"
    end
  end
end
