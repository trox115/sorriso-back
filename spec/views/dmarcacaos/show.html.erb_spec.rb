require 'rails_helper'

RSpec.describe "dmarcacaos/show", type: :view do
  before(:each) do
    @dmarcacao = assign(:dmarcacao, Dmarcacao.create!(
      cliente: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
