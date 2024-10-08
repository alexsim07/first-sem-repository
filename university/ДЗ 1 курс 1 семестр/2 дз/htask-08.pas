﻿(*8. [htask-08.pas] Вычислить значение суммы, заданной следующей формулой (N>0
):

Y=∑k=1Nxk+cosxk2k
Проверьте правильность вашей программы не менее чем на двух наборах данных. Обязательно проверьте случай N = 1.

Пример

N = 1, X = 1   >>> Y = 0.77015115293407
N = 5, X = 2.5 >>> Y = 9.96623609478878*)
begin
  var n := ReadInteger('Введите n: ');//Ввод
  Assert(n > 0);//Проверка входных данных
  var x := ReadReal('Введите х: ');
  var y := 0.0;//Переменная рез-тата
  var termX := 1.0;//Переменная для х в степени k
  var power2 := 1;//Переменная для степеней двойки
  for var k := 1 to n do//Цикл от 1 до n
  begin
    termX := termX * x;//Вычисляем x**k
    var termCos := cos(termX);//Вычисляем cos(x)**k
    power2 := power2 * 2;//Вычисляем 2**k
    y := y + (termX + termCos) / power2;//Обновляем сумму y
  end;
  WriteLn('Значение y: ', y);//Вывод
end.
(*Введите n:  1
Введите х: 1 
Значение y: 0.77015115293407
*)
(*Введите n:  5
Введите х:  2.5
Значение y: 9.96623609478878
*)
(*Введите n:  8
Введите х:  0.5
Значение y: 1.25932662818876
*)
(*Введите n:  1
Введите х:  0.5
Значение y: 0.688791280945186
*)
