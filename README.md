# Alternância de LEDs com PIC16F877A em Assembly

Este projeto implementa a alternância entre os quatro LEDs menos e mais significativos do PORTD no microcontrolador PIC16F877A, utilizando linguagem Assembly. O tempo entre cada troca de LEDs é de aproximadamente 0,4 segundos, realizado por meio de uma sub-rotina de atraso em software.

## Funcionalidades

- Acende alternadamente os LEDs RD0–RD3 e RD4–RD7.
- Delay aproximado de 0,4 segundos entre os estados.
- Código 100% em Assembly compatível com MPLAB X IDE.

## Objetivo

O objetivo deste projeto foi desenvolver um programa didático em Assembly que demonstre o controle de saídas digitais com alternância sequencial e temporização baseada em software, utilizando o microcontrolador PIC16F877A.

## Materiais Utilizados

-MPLAB X IDE
- Simulador PICgenios
- Microcontrolador PIC16F877A

## Conexões

- PORTD.0 a PORTD.3: LEDs menos significativos
- PORTD.4 a PORTD.7: LEDs mais significativos

## Lógica de Funcionamento

1. Liga os LEDs RD0–RD3 por 0,4 segundos.
2. Em seguida, liga os LEDs RD4–RD7 por 0,4 segundos.
3. Repete o ciclo indefinidamente.

## Arquivos

- TIMER1: Código-fonte principal em Assembly.
- README.md: Este arquivo de descrição.

## Link do vídeo de simulação

https://www.canva.com/design/DAGnFrBLIkI/QRToD4thpN1Mao5HKEPDPw/watch?utm_content=DAGnFrBLIkI&utm_campaign=designshare&utm_medium=link2&utm_source=uniquelinks&utlId=hff9ff2a825
