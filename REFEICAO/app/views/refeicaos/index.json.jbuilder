json.array!(@refeicaos) do |refeicao|
  json.extract! refeicao, :id, :DATE_Refeicao, :DESC_Refeicao, :TIPO_Refeicao, :DESC_Acompanhamento, :VALOR_Refeicao, :VALOR_Acompanhamento, :DESC_Observacao
  json.url refeicao_url(refeicao, format: :json)
end
