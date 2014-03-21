class CreateRefeicaos < ActiveRecord::Migration
  def change
    create_table :refeicaos do |t|
      t.date :DATE_Refeicao
      t.string :DESC_Refeicao
      t.string :TIPO_Refeicao
      t.string :DESC_Acompanhamento
      t.decimal :VALOR_Refeicao
      t.decimal :VALOR_Acompanhamento
      t.string :DESC_Observacao

      t.timestamps
    end
  end
end
