require 'spec_helper'

describe "clientes/new" do
  before(:each) do
    assign(:cliente, stub_model(Cliente,
      :DESC_Nome => "MyString",
      :NUMR_CPF => "MyString",
      :DESC_TelefoneCelular => "MyString",
      :DESC_TelefoneFixo => "MyString",
      :DESC_Email => "MyString",
      :DESC_Secao => "MyString",
      :DESC_Observacao => "MyString"
    ).as_new_record)
  end

  it "renders new cliente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", clientes_path, "post" do
      assert_select "input#cliente_DESC_Nome[name=?]", "cliente[DESC_Nome]"
      assert_select "input#cliente_NUMR_CPF[name=?]", "cliente[NUMR_CPF]"
      assert_select "input#cliente_DESC_TelefoneCelular[name=?]", "cliente[DESC_TelefoneCelular]"
      assert_select "input#cliente_DESC_TelefoneFixo[name=?]", "cliente[DESC_TelefoneFixo]"
      assert_select "input#cliente_DESC_Email[name=?]", "cliente[DESC_Email]"
      assert_select "input#cliente_DESC_Secao[name=?]", "cliente[DESC_Secao]"
      assert_select "input#cliente_DESC_Observacao[name=?]", "cliente[DESC_Observacao]"
    end
  end
end
