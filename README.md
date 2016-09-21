		 diranytoany - Script Personalizável 

### Informações: ####
- O script usa o FFMPEG.
- Foi utilizado para converter áudios.
- Interação Mínima.
- [Garanta que seu FFMPEG foi compilado corretamente.](http://trac.ffmpeg.org/wiki/TheoraVorbisEncodingGuide)
- Fiz de qualquer jeito mesmo. :P
- Sinta-se livre para cloná-lo e modificá-lo a sua vontade.

### Modo de usar ###
- Execute-o da seguinte forma: **sh diranytoany.sh formatoalvo**
- Em *formatoalvo* coloque o formato dos arquivos que deseja converter, seja ele flac, mp3 ou até mesmo ogg.
- Ele irá pedir o endereço total da pasta com os arquivos, o padrão - tecla 'enter' diretamente - é a pasta em que o script está executando.

      **ATENÇÃO, NÃO DEIXEI ESPAÇO NO INÍCIO E NEM NO FINAL DO ENDEREÇO DA PASTA ESCOLHIDA**, o programa foi feito pra reconhecer o caractere vazio, com o objetivo de englobar pastas e arquivos com espaços no nome. Ele  também checa a existência de arquivos na pasta - e também do formato, mas não expressa corretamente - o objetivo final funciona de qualquer forma.

- Ele irá perguntar qual o formato final, o padrão - tecla 'enter' - é o ogg.
- Será pedido também qual a taxa de bits escolhida, o padrão - tecla 'enter' diretamente - é 220k, se preferir maior, não esquecer de colocar o k ao lado do número escolhido.
- Após a conversão completa, ele irá perguntar se desejas excluir os arquivos com o formato alvo (aquele que fora convertido). Reconhece tanto s como S, qualquer outra tecla ele irá negar.

					*** Ao decidir excluir ele executará como SUDO e pedirá a senha ***
