require 'rails_helper'

RSpec.describe "dentes/show", type: :view do
  before(:each) do
    @dente = assign(:dente, Dente.create!(
      nome: "Nome"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
  end
end
