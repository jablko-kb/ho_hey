module ApplicationHelper

  @@markdown = Redcarpet::Markdown.new Redcarpet::Render::HTML,
    autolink: true,
    space_after_headers: true,
    no_intra_emphasis: true,
    fenced_code_blocks: true,
    tables: true,
    hard_wrap: true,
    xhtml: true,
    lax_html_blocks: true,
    strikethrough: true

  def markdown(text)
    @@markdown.render(text).html_safe
  end
  
  # ページごとの完全なタイトルを返します。
  def full_title(page_title)
    base_title = "HO! HEY!"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

end
