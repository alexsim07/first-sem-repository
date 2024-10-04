(*[htask-03-case.pas] Дано целое число - номер месяца. Вывести название сезона.*)
begin
  var m := ReadInteger('Введите номер месяца: ');(*Считываем номер месяца*)
  Assert((m > 0) and (m < 13));(*Проверяем, существует ли такой номер месяца*)
  if ((m = 12) or (m = 1) or (m = 2)) then Writeln('Зима')(*Проверяем номер месяца с номерами месяцев в каждом сезоне*)
  else if ((m = 3) or (m = 4) or (m = 5)) then Writeln('Весна')
  else if ((m = 6) or (m = 7) or (m = 8)) then Writeln('Лето')
  else if ((m = 9) or (m = 10) or (m = 11)) then Writeln('Осень')
end.