# Aula 4 & 5 - Contadores

- **`part1`**:
     Aplicação de circuito com contador de 8 bits (e 4 bits na pasta 1.5), utilizando flip flops do tipo T. Foi desenvolvido o código VHDL do flip-flop, e aproveitado o código do display de 7 segmentos desenvolvido na disciplina de Prática em Lógica Digital, inicialmente desenvolvido em blocos e posteriormente convertido para VHDL
- **`part2`**:
    Aplicação de circuito com contador de 16 bits, usando registradores. Se compararmos as estruturas desse componente com a do anteriormente desenvolvido, pode-se observar que cada bit possui seu próprio contador. Além disso, percebe-se que o circuito com registradores é mais simples do que o que utiliza flip-flops T, possuindo menos estruturas e portas lógicas para realizar o mesmo tipo de problema.
- **`part3`**:
    Aplicação de circuito com contadores, utilizando o clock da placa FPGA. Foi necessário considerar que a placa opera em uma frequência de 50MHz, portanto 50 milhões de alterações no clock da placa correspondem a 1 segundo.
- **`part4`**:
    Aplicação de circuito com contadores, rotacionando letras entre 3 displays. Para alterações nos valores rotacionados foi utilizada a lógica da parte 3.
- **`part5`**:
    Aplicação de circuito com contadores, rotacionando entre 6 displays. Semelhante ao anterior, só que para esse exercício, foi necessário realizar uma adaptação no display usado anteriormente: adicionando uma verificação para apagar o display quando fosse enviado “1111”, pois no caso não era necessário escrever no display a letra ‘F’.
