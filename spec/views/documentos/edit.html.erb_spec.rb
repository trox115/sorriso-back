require 'rails_helper'

RSpec.describe "documentos/edit", type: :view do
  before(:each) do
    @documento = assign(:documento, Documento.create!(
      cliente: nil,
      doc_categoria: nil
    ))
  end

  it "renders the edit documento form" do
    render

    assert_select "form[action=?][method=?]", documento_path(@documento), "post" do

      assert_select "input[name=?]", "documento[cliente_id]"

      assert_select "input[name=?]", "documento[doc_categoria_id]"
    end
  end
end
