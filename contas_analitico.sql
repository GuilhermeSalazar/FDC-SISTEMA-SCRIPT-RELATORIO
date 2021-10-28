select a.idfilial, a.numeroduplicata,a.idfornecedor,a.dataemissao,a.vencimento,a.valorduplicata,
b.nomefornecedor,a.numeroboleto,a.observacao,a.status, c.descricaoportador, a.idcentrocusto,a.documento
 from pagar as a inner join fornecedor as b
 on a.idfornecedor = b.idfornecedor inner
 join portador as c on a.idportador = c.idportador  where a.vencimento between :data_inicial and :data_final
