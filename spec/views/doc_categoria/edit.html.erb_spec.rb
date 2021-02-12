require 'rails_helper'

RSpec.describe "doc_categoria/edit", type: :view do
  before(:each) do
    @doc_categorium = assign(:doc_categorium, DocCategorium.create!(
      nome: "MyString"
    ))
  end

  it "renders the edit doc_categorium form" do
    render

    assert_select "form[action=?][method=?]", doc_categorium_path(@doc_categorium), "post" do

      assert_select "input[name=?]", "doc_categorium[nome]"
    end
  end
end
