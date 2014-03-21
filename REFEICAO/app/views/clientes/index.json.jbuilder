json.array!(@clientes) do |cliente|
  json.extract! cliente, :DESC_Nome, :NUMR_CPF, :DESC_TelefoneCelular, :DESC_TelefoneFixo, :DESC_Email, :DESC_Secao, :DESC_Observacao
  json.url cliente_url(cliente, format: :json)
end