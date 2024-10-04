﻿(*8. [htask-08-loop-dig.pas] Дано целое число N ≥ 0 и N целых чисел. Для каждого числа вывести минимальный и максимальный разряды десятичной записи числа.*)
begin
  var n := ReadInteger('Введите n: ');
  Assert(n >= 0);
  for var i := 1 to N do
  begin
    var number := ReadInteger('Введите число: ');//Считываем каждое число
    var minDigit := 9;//Инициализируем минимальный разряд
    var maxDigit := 0;//Инициализируем максимальный разряд
    // Находим минимальный и максимальный разряды
    while number > 0 do
    begin
      var digit := number mod 10;//Получаем последний разряд
      if digit < minDigit then
        minDigit := digit;//Обновляем минимальный разряд
      if digit > maxDigit then
        maxDigit := digit;// Обновляем максимальный разряд
      number := number div 10;// Убираем последний разряд
    end;
    Writeln('Минимальный разряд: ', minDigit, ', Максимальный разряд: ', maxDigit);//Вывод
  end;
end.
(*Введите n:  3
Введите число:  2332
Минимальный разряд: 2, Максимальный разряд: 3
Введите число:  5434531
Минимальный разряд: 1, Максимальный разряд: 5
Введите число:  4242335
Минимальный разряд: 2, Максимальный разряд: 5
*)