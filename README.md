# Problemas

## RecWind teste
Ao rodar o comando (após as variáveis de ambiente NF_DESIGN_DIR e NF_ROOT apontarem para o lugar correto)
```
nf_test.py --major recwind --minor read sim
```
o seguinte erro é mostrado na tela:
![Run.py broke](https://github.com/dcardos/NetFPGA-Danilo/blob/master/Pictures/RecWindTesteErro.PNG)

Mas o que tudo indica não é um problema no código uma vez que rodando o mesmo não há aviso de erro:

![Python sem erro](https://github.com/dcardos/NetFPGA-Danilo/blob/master/Pictures/RecWindTestePythonSemErro.PNG)

### Solução
