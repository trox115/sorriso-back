require 'rails_helper'

RSpec.describe "documentos/new", type: :view do
  before(:each) do
    assign(:documento, Documento.new(
      cliente: nil,
      doc_categoria: nil
    ))
  end

  it "renders new documento form" do
    render

    assert_select "form[action=?][method=?]", documentos_path, "post" do

      assert_select "input[name=?]", "documento[cliente_id]"

      assert_select "input[name=?]", "documento[doc_categoria_id]"
    end
  end
end
