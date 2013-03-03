module ApplicationHelper
  def javascript(*files)
    content_for(:head) { javascript_include_tag(*files) }
  end

  def inline_javascript(code)
    content_for(:head) { code }
  end

  def stylesheet(*files)
    content_for(:head) { stylesheet_link_tag(*files) }
  end

  def meta_tag(name, content)
    content_for(:head) {
      tag :meta, :name => name, :content => content
    }
  end
end