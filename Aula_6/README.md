# Aula 6 - Código Morse

Nesta aula foi desenvolvido um tradutor de código morse, escrevia letras pré-selecionadas (A ao H) em seu respectivo código. Foram utilizados 3 inputs para a seleção da letra e 1 led para escrita do código. 
Para controle do tempo, foi utilizada a lógica de uso do clock da placa, desenvolvido na aula passada. Foram atríbuidos os valores de 0.5 segundos para o ponto e de 1.5 segundos para o traço. O código de cada letra foi armazenado em um vetor binário, sendo '0' representante de um ponto e '1' representante dos traços. Foi utilizada uma máquina de estados para a manutenção da lógica da escrita do código.
