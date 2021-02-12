require 'rails_helper'

RSpec.describe "documentos/show", type: :view do
  before(:each) do
    @documento = assign(:documento, Documento.create!(
      cliente: nil,
      doc_categoria: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
