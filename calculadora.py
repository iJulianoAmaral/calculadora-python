def somar(a, b):
    return a + b

def subtrair(a, b):
    return a - b

def multiplicar(a, b):
    return a * b

def dividir(a, b):
    if b == 0:
        return "Erro: Divisão por zero!"
    return a / b

def calculadora():
    print("Bem-vindo à Calculadora!")
    print("Escolha uma operação:")
    print("1 - Soma")
    print("2 - Subtração")
    print("3 - Multiplicação")
    print("4 - Divisão")
    
    operacao = input("Digite o número da operação: ")
    
    try:
        num1 = float(input("Digite o primeiro número: "))
        num2 = float(input("Digite o segundo número: "))
    except ValueError:
        print("Erro: Entrada inválida. Por favor, digite números.")
        return

    if operacao == "1":
        print(f"Resultado: {somar(num1, num2)}")
    elif operacao == "2":
        print(f"Resultado: {subtrair(num1, num2)}")
    elif operacao == "3":
        print(f"Resultado: {multiplicar(num1, num2)}")
    elif operacao == "4":
        print(f"Resultado: {dividir(num1, num2)}")
    else:
        print("Erro: Operação inválida.")

if __name__ == "__main__":
    calculadora()
