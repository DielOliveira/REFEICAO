require 'spec_helper'

describe "clientes/index" do
  before(:each) do
    assign(:clientes, [
      stub_model(Cliente,
        :DESC_Nome => "Desc Nome",
        :NUMR_CPF => "Numr Cpf",
        :DESC_TelefoneCelular => "Desc Telefone Celular",
        :DESC_TelefoneFixo => "Desc Telefone Fixo",
        :DESC_Email => "Desc Email",
        :DESC_Secao => "Desc Secao",
        :DESC_Observacao => "Desc Observacao"
      ),
      stub_model(Cliente,
        :DESC_Nome => "Desc Nome",
        :NUMR_CPF => "Numr Cpf",
        :DESC_TelefoneCelular => "Desc Telefone Celular",
        :DESC_TelefoneFixo => "Desc Telefone Fixo",
        :DESC_Email => "Desc Email",
        :DESC_Secao => "Desc Secao",
        :DESC_Observacao => "Desc Observacao"
      )
    ])
  end

  it "renders a list of clientes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Desc Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Numr Cpf".to_s, :count => 2
    assert_select "tr>td", :text => "Desc Telefone Celular".to_s, :count => 2
    assert_select "tr>td", :text => "Desc Telefone Fixo".to_s, :count => 2
    assert_select "tr>td", :text => "Desc Email".to_s, :count => 2
    assert_select "tr>td", :text => "Desc Secao".to_s, :count => 2
    assert_select "tr>td", :text => "Desc Observacao".to_s, :count => 2
  end
end
