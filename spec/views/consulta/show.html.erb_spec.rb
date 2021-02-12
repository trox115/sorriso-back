require 'rails_helper'

RSpec.describe "consulta/show", type: :view do
  before(:each) do
    @consultum = assign(:consultum, Consultum.create!(
      cliente: nil,
      servico: nil,
      obs: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
  end
end
