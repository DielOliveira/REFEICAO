require 'spec_helper'

describe "clientes/show" do
  before(:each) do
    @cliente = assign(:cliente, stub_model(Cliente,
      :DESC_Nome => "Desc Nome",
      :NUMR_CPF => "Numr Cpf",
      :DESC_TelefoneCelular => "Desc Telefone Celular",
      :DESC_TelefoneFixo => "Desc Telefone Fixo",
      :DESC_Email => "Desc Email",
      :DESC_Secao => "Desc Secao",
      :DESC_Observacao => "Desc Observacao"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Desc Nome/)
    rendered.should match(/Numr Cpf/)
    rendered.should match(/Desc Telefone Celular/)
    rendered.should match(/Desc Telefone Fixo/)
    rendered.should match(/Desc Email/)
    rendered.should match(/Desc Secao/)
    rendered.should match(/Desc Observacao/)
  end
end
