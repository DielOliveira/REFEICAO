class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :DESC_Nome
      t.string :NUMR_CPF
      t.string :DESC_TelefoneCelular
      t.string :DESC_TelefoneFixo
      t.string :DESC_Email
      t.string :DESC_Secao
      t.string :DESC_Observacao

      t.timestamps
    end
  end
end
