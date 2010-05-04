module ParagraphsHelper
  def photo1_not_missing(paragraph)
    paragraph.photo1.url != "/photo1s/original/missing.png"
  end
  
  def photo2_not_missing(paragraph)
    paragraph.photo2.url != "/photo2s/original/missing.png"
  end
  
  def photo3_not_missing(paragraph)
    paragraph.photo3.url != "/photo3s/original/missing.png"
  end
end