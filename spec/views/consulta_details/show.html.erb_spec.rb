require 'rails_helper'

RSpec.describe "consulta_details/show", type: :view do
  before(:each) do
    @consulta_detail = assign(:consulta_detail, ConsultaDetail.create!(
      tratamento: nil,
      consulta: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
