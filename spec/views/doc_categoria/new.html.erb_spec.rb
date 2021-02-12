require 'rails_helper'

RSpec.describe "doc_categoria/new", type: :view do
  before(:each) do
    assign(:doc_categorium, DocCategorium.new(
      nome: "MyString"
    ))
  end

  it "renders new doc_categorium form" do
    render

    assert_select "form[action=?][method=?]", doc_categoria_path, "post" do

      assert_select "input[name=?]", "doc_categorium[nome]"
    end
  end
end
