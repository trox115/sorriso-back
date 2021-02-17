require 'rails_helper'

RSpec.describe "consulta_details/new", type: :view do
  before(:each) do
    assign(:consulta_detail, ConsultaDetail.new(
      tratamento: nil,
      consulta: nil
    ))
  end

  it "renders new consulta_detail form" do
    render

    assert_select "form[action=?][method=?]", consulta_details_path, "post" do

      assert_select "input[name=?]", "consulta_detail[tratamento_id]"

      assert_select "input[name=?]", "consulta_detail[consulta_id]"
    end
  end
end
