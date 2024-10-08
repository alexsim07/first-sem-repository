﻿(*[htask-7-while.pas] Дано целое число N
 (N>1
). Вывести наибольшее из целых чисел K
, для которых сумма 1+2+...+K
 будет меньше или равна N
, и саму эту сумму.*)
var
  k, sum: Integer;(*Инициализируем переменные*)

begin
  var n := ReadInteger('Введите n: ');(*Считываем n*)
  Assert(n > 1);(*Проверяем n>1*)
  k := 0;(*Приравниваем первое число арифм. прогрессии к 0*)
  sum := 0; (*Приравниваем сумму арифм. прогрессии к 0*)
  while sum + (k + 1) <= n do(*Инициализируем цикл while, который будет работать пока сумма будет меньше n*)
  begin
    k := k + 1;(*С каждым шагом цикла увеличиваем k на 1*) 
    sum := sum + k; (*Прибавляем новые члены арифм. прогрессии к сумме*)
  end;
  WriteLn('Наибольшее k: ', k);(*Выводим макс. k*)
  WriteLn('Сумма 1 + 2 + ... + k: ', sum);(*Выводим итоговую сумму*)
end.