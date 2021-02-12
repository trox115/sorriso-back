require 'rails_helper'

RSpec.describe "doc_categoria/show", type: :view do
  before(:each) do
    @doc_categorium = assign(:doc_categorium, DocCategorium.create!(
      nome: "Nome"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
  end
end
