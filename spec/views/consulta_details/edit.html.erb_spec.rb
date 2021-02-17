require 'rails_helper'

RSpec.describe "consulta_details/edit", type: :view do
  before(:each) do
    @consulta_detail = assign(:consulta_detail, ConsultaDetail.create!(
      tratamento: nil,
      consulta: nil
    ))
  end

  it "renders the edit consulta_detail form" do
    render

    assert_select "form[action=?][method=?]", consulta_detail_path(@consulta_detail), "post" do

      assert_select "input[name=?]", "consulta_detail[tratamento_id]"

      assert_select "input[name=?]", "consulta_detail[consulta_id]"
    end
  end
end
