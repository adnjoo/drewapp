module ApplicationHelper
  def markdown(text)
    renderer = Redcarpet::Render::HTML.new(filter_html: true, hard_wrap: true)
    markdown = Redcarpet::Markdown.new(renderer, autolink: true, tables: true, fenced_code_blocks: true)
    markdown.render(text).html_safe
  end

  def flash_class(level)
    case level
    when "notice" then "bg-green-500"
    when "alert"  then "bg-red-500"
    when "error"  then "bg-red-600"
    else "bg-blue-500"
    end
  end
end
