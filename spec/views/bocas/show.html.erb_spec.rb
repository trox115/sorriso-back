require 'rails_helper'

RSpec.describe "bocas/show", type: :view do
  before(:each) do
    @boca = assign(:boca, Boca.create!(
      cliente: nil,
      servico: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
