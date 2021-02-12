require 'rails_helper'

RSpec.describe "doc_categoria/index", type: :view do
  before(:each) do
    assign(:doc_categoria, [
      DocCategorium.create!(
        nome: "Nome"
      ),
      DocCategorium.create!(
        nome: "Nome"
      )
    ])
  end

  it "renders a list of doc_categoria" do
    render
    assert_select "tr>td", text: "Nome".to_s, count: 2
  end
end
