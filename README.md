# FizzBuzz

Implementação do clássico desafio FizzBuzz em Elixir, lendo números de um arquivo CSV para estudo da linguagem e da programação funcional.

## Regras

- Divisível por 3 → `:fizz`
- Divisível por 5 → `:buzz`
- Divisível por 3 e 5 → `:fizz_buzz`
- Caso contrário → número original

## Uso

```elixir
# Crie um arquivo com números separados por vírgula
File.write!("numbers.csv", "1,2,3,5,15")

# Execute o FizzBuzz
FizzBuzz.build("numbers.csv")
# {:ok, [1, 2, :fizz, :buzz, :fizz_buzz]}
```

## Testes

```bash
mix test
```
