require './article'

RSpec.configure do |config| 
	config.color = true
end

describe Article do 
  let(:article){Article.new}
  let(:title){ "Testing"}
  let(:body){ "First sentence of the paragraph" }
  let(:author){"Queen"}

  it "checks title being empty" do
       expect(title).to eq("Testing")   
  end

  it "checks body being empty" do
       expect(body).to eq("First sentence of the paragraph")   
  end

  it "checks author's name starts with q" do
       expect(author[0].downcase).to eq("q")   
  end

  it "checks article as html" do
  	   article.title=title
  	   article.author=author
  	   article.body=body
  	   expect(article.article_as_html).to eq("<h1>Testing</h1><b>Queen</b><p>First sentence of the paragraph</p>")
  end

  it "checks title as html" do
  	   article.title=title
  	   expect(article.title_as_html).to eq("<h1>Testing</h1>")
  end

  it "checks author as html" do
  	   article.author=author
  	   expect(article.author_as_html).to eq("<b>Queen</b>")
  end

  it "checks body as html" do
  	   article.body=body
  	   expect(article.body_as_html).to eq("<p>First sentence of the paragraph</p>")
  end

end