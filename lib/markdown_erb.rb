module MarkdownErb
  def markdown(md_text)
    md_renderer.render(md_text)
  end

  def md_renderer
    Redcarpet::Markdown.new(Redcarpet::Render::HTML)
  end
end
