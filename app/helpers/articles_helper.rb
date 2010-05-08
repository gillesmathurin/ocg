module ArticlesHelper
  include ParagraphsHelper
  
  def with_document?(article)
    article.document.url != "/documents/original/missing.png"
  end
end
