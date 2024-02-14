# Калькулятор

Простое приложение-калькулятор для iOS, разработанное на Swift с использованием UIKit.

## Обзор

Это приложение позволяет пользователям выполнять базовые арифметические операции (сложение, вычитание, умножение, деление) с двумя введенными целыми числами.

## Особенности

- Ввод двух целых чисел с использованием текстовых полей.
- Выполнение операций сложения, вычитания, умножения и деления.
- Отображение результата на метке.
- Удобный интерфейс с кнопками для каждой операции.

## Скриншоты
![Alt Text][calgif](https://github.com/ShakirKadirov/HW1_CalculatorApp/assets/138371102/4e279821-559a-4b0b-ae75-d162a0d20f44))

## Как использовать

1. Клонируйте репозиторий на свой локальный компьютер.
2. Откройте проект в Xcode.
3. Запустите приложение в iOS симуляторе или на физическом устройстве.

## Зависимости

- Это приложение написано на Swift и использует UIKit.

## Структура кода

Основная логика приложения реализована в файле `ViewController.swift`. Приложение использует текстовые поля для ввода, стековый вид для организации кнопок и метку для отображения результата.

### Кнопки и Действия

- `addButton`, `subtractButton`, `multiplyButton` и `divideButton` настроены с использованием целевых действий для выполнения соответствующих вычислений.

```swift
@objc func addButtonTapped(_ sender: Any) {
    // Логика сложения
}

@objc func subtractButtonTapped(_ sender: Any) {
    // Логика вычитания
}

@objc func multiplyButtonTapped(_ sender: Any) {
    // Логика умножения
}

@objc func divideButtonTapped(_ sender: Any) {
    // Логика деления
}```
