module PostsHelper
 # Method of cut article
 def short_body(post)
    HTML_Truncator.truncate(strip_tags(post), 5).html_safe
 end
end
