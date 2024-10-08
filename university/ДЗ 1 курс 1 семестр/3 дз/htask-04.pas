﻿(*4. [htask-04.pas] Дано вещественное число eps > 0. Последовательность вещественных чисел Ak определяется следующим образом:
A1=1,A2=2,Ak=Ak−2+2⋅Ak−13,k=3,4,…

Найти первый из номеров k, для которых выполняется условие |Ak−Ak−1|<eps
, и вывести этот номер, а также числа Ak-1 и Ak.*)
begin
  var eps := ReadReal('Введите eps:');//Ввод
  Assert((eps > 0) and (eps < 1));//Проверка входных данных
  var (a1, a2, count) := (2.0, 2.5, 2);//Инициализируем перменные членов посл-ти и счетчика
  while abs(a2 - a1) >= eps do//Цикл который работает пока модуль а2 - а1 меньше эпсилон
  begin
    count += 1;//Прибавляем к счетчику 1
    (a1, a2) := (a2, 2 + 1 / a2);//Считаем новый член посл-ти
  end;
  Writeln($'Номер искомого элемента -> {count}, Ak-1 -> {a1}, Ak -> {a2}');//Вывод
end.
(*Введите eps: 0.52
Номер искомого элемента -> 2, Ak-1 -> 2, Ak -> 2.5
*)
(*Введите eps: 0.000005
Номер искомого элемента -> 9, Ak-1 -> 2.41421568627451, Ak -> 2.41421319796954
*)