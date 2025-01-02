# Função para exibir o menu
exibir_menu() {
    echo "===== Calculadora ====="
    echo "1. Adição"
    echo "2. Subtração"
    echo "3. Multiplicação"
    echo "4. Divisão"
    echo "5. Sair"
    echo "======================="
}

# Função para obter os números do usuário
obter_numeros() {
    read -p "Digite o primeiro número: " num1
    read -p "Digite o segundo número: " num2
}

# Função da calculadora
calculadora() {
    opcao=0
    while [[ $opcao -ne 5 ]]; do
        exibir_menu
        read -p "Escolha uma operação (1-5): " opcao

        case $opcao in
            1)  # Adição
                obter_numeros
                resultado=$(echo "$num1 + $num2" | bc)
                echo "Resultado da Adição: $resultado"
                ;;
            2)  # Subtração
                obter_numeros
                resultado=$(echo "$num1 - $num2" | bc)
                echo "Resultado da Subtração: $resultado"
                ;;
            3)  # Multiplicação
                obter_numeros
                resultado=$(echo "$num1 * $num2" | bc)
                echo "Resultado da Multiplicação: $resultado"
                ;;
            4)  # Divisão
                obter_numeros
                if [ "$num2" -eq 0 ]; then
                    echo "Erro: Divisão por zero não é permitida."
                else
                    resultado=$(echo "scale=2; $num1 / $num2" | bc)
                    echo "Resultado da Divisão: $resultado"
                fi
                ;;
            5)  # Sair
                echo "Saindo da calculadora..."
                ;;
            *)  # Opção inválida
                echo "Opção inválida. Tente novamente."
                ;;
        esac
        echo ""
    done
}

# Executa a calculadora
calculadora
