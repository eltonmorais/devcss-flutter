# GAME GENIUS/SIMON

Desafio de implementação da réplica do jogo Genius/Simon em Flutter

Direitos autorais (c)

A permissão é concedida, gratuitamente, a qualquer pessoa que obtenha uma cópia deste software e dos arquivos de documentação associados, para negociar no Software sem restrições, incluindo, sem limitação, os direitos de uso, cópia, modificação, fusão, publicar, distribuir, sublicenciar e / ou vender cópias do Software e permitir que as pessoas a quem o Software é fornecido o façam, sob as seguintes condições:

O aviso de direitos autorais acima e este aviso de permissão devem ser incluídos em todas as cópias ou partes substanciais do Software.

<i>O SOFTWARE É FORNECIDO "TAL COMO ESTÁ", SEM GARANTIA DE QUALQUER TIPO, EXPRESSA OU IMPLÍCITA, INCLUINDO MAS NÃO SE LIMITANDO A GARANTIAS DE COMERCIALIZAÇÃO, ADEQUAÇÃO A UMA FINALIDADE ESPECÍFICA E NÃO INFRACÇÃO. EM NENHUM CASO OS AUTORES OU TITULARES DOS DIREITOS DE DIREITOS AUTORAIS RESPONSABILIZARÃO POR QUALQUER RECLAMAÇÃO, DANOS OU OUTRA RESPONSABILIDADE, SEJA EM AÇÃO DE CONTRATO, TORT OU OUTRA FORMA, DECORRENTE DE, FORA DE OU EM CONEXÃO COM O SOFTWARE OU O USO OU OUTROS NEGÓCIOS NO PROGRAMAS.</i>

Copyright (c) <year> <copyright holders>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

<i>THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.</i>

<img src="https://github.com/claudneysessa/imagens/blob/master/genius-full-dev.png?raw=true"></img>

# O Genius

O Genius é um jogo eletrônico distribuído pela Estrela cópia do popular simon da HASBRO que estimula a memorização do jogador. Ele tem o formato de um disco que é separado em quatro metades por botões coloridos. Esse jogo se tornou muito popular na década de 80 e diverte muitas pessoas ainda hoje.

Quando o jogo é iniciado, o aparelho acende um dos botões e apresenta um efeito sonoro referente ao botão que acendeu. O jogador deve apertar no botão sinalizado. Com o tempo, a sequência de sinalizações aumenta, exigindo cada vez mais da memória do jogador, que deve apresentar a mesma sequência mostrada pelo jogo apertando nos botões.

O projeto ainda está em desenvolvimento, aceito todo tipo de ajuda, sugestões e críticas pois acredito que daí é que vem o sucesso! 

# Motivação

Atualmente minha esposa trabalha como professora e atua dando aula para crianças com necessidades especiais. Minha idéia é aprimorar meus conhecimentos no desenvolvimento de forma que eu tenha bagagem para o desenvolvimento de jogos possibilitando assim a criação e disponibilização de forma gratuita para pais, alunos e professores alguns jogos educativos para auxiliar no desenvolvimento de crianças com estes tipos de necessidades especiais.

Aprendizado até agora

* Utilização de packages
* Utilização de fontes true type externas
* Técnicas de Layout
* Animações com AnimationController
* MobX

Desafios encontrados

* Fazer com que as animações seja realizadas seguindo a lista de números gerado ao inicio de cada rodada
* Incluir o som junto a animação do click
* Fazer com que o som seja executado junto a animação dos botões no inicio de cada rodada
* Implementar o modo Multi Jogador
* Padronizar o projeto segundo as normas

Pretendo terminar a implementação dele com as seguintes funcionalidades:

* Multi Jogador Local
* Multi Jogador Online
* Modos Difícil, Intermediário e fácil
* Inclusão do som das teclas que já estão na pasta assets
* Inclusão de jogo por desafios e níveis (Tipo o esquema de fases dos atuais games do mercado)
* Possibilidade de mais layouts do board do game com formatos diferenciados (Ex: Quadrado, triângulo, estrela, etc...)
