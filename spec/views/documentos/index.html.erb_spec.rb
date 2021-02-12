require 'rails_helper'

RSpec.describe "documentos/index", type: :view do
  before(:each) do
    assign(:documentos, [
      Documento.create!(
        cliente: nil,
        doc_categoria: nil
      ),
      Documento.create!(
        cliente: nil,
        doc_categoria: nil
      )
    ])
  end

  it "renders a list of documentos" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
