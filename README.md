# Problemas

## 1-RecWind teste broke
Ao rodar o comando (após as variáveis de ambiente NF_DESIGN_DIR e NF_ROOT apontarem para o lugar correto)
```
nf_test.py --major recwind --minor read sim
```
o seguinte erro é mostrado na tela:
![Run.py broke](https://github.com/dcardos/NetFPGA-Danilo/blob/master/Pictures/RecWindTesteErro.PNG)

Mas o que tudo indica não é um problema no código uma vez que rodando o mesmo não há aviso de erro:

![Python sem erro](https://github.com/dcardos/NetFPGA-Danilo/blob/master/Pictures/RecWindTestePythonSemErro.PNG)

PS: era esperado que o mesmo mostrasse o que está no 'display' do código verilog em src, mas aparentemente ele parece não simular o verilog.

### Solução
Commit: https://github.com/dcardos/NetFPGA-Danilo/commit/aba048b0f3c6b44364284e42f562ac8d893478ad

recwind_modifier.v apresentava um erro na linha 226, ordem inversa nos bits:

```verilog
$display("Old cheksum: %h, Old receive window: %d", 
								in_fifo_data_dout[32:47], in_fifo_data_dout[48:63]);
```

## 2-RecWind teste checksum não esperado
No teste *run_AosPoucos.py* um pacote é montado com o seguinte tcp header:
```python
hdr=scapy.TCP(sport=1025, dport=80, window=9001, chksum=0xc30a)
```

Porém o log mostra:
![Recwindo log](https://github.com/dcardos/NetFPGA-Danilo/blob/master/Pictures/RecWindLogChkSum.PNG)
Valor que é alterado a cada execução do teste.

### Hipótese
O pacote tem o valor do *window* alterado antes de passar pelo *user_data_path* e logo seu valor de checksum. 

PS: foi testado que de fato o que está sendo mostrado é de fato dados da 7ª palavra (como esperado com o payload)

### Solução
