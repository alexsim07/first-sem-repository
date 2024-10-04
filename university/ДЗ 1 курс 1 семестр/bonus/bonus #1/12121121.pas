program GuessNumber;

uses crt;

const
  MAX_STEPS = 15;

var
  lowerBound, upperBound, secretNumber, guess, attempts: Integer;

begin
  clrscr;

  // Ввод нижней границы
  Write('Введите нижнюю границу диапазона: ');
  ReadLn(lowerBound);

  // Ввод верхней границы с проверкой
  repeat
    Write('Введите верхнюю границу диапазона: ');
    ReadLn(upperBound);
    if upperBound < lowerBound then
      WriteLn('Ошибка: верхняя граница не может быть меньше нижней.');
  until upperBound >= lowerBound;

  // Генерация загаданного числа
  Randomize;
  secretNumber := Random(upperBound - lowerBound + 1) + lowerBound;

  // Начало игры
  attempts := Min(upperBound - lowerBound + 1, MAX_STEPS);
  WriteLn('Задан диапазон: ', lowerBound, '..', upperBound, '.');
  WriteLn('Компьютер загадал число. Попробуйте отгадать его! У вас есть ', attempts, ' попыток.');

  for var i := 1 to attempts do
  begin
    Write('Попытка #', i, '/', attempts, '. Введите число из диапазона ', lowerBound, '..', upperBound, ': ');
    ReadLn(guess);

    // Проверка на выход за пределы диапазона
    if (guess < lowerBound) or (guess > upperBound) then
    begin
      WriteLn('Вы проиграли! Число выходит за границы диапазона.');
      Exit;
    end;

    // Проверка угаданного числа
    if guess = secretNumber then
    begin
      WriteLn('Число отгадано! Это ', secretNumber, '.');
      WriteLn('Вы угадали число за ', i, ' ', IfThen(i = 1, 'шаг', IfThen(i in [2..4], 'шага', 'шагов'), ''));
      Exit;
    end
    else if guess < secretNumber then
      WriteLn('Загаданное число больше ', guess, '.')
    else
      WriteLn('Загаданное число меньше ', guess, '.');
      
    // Обновление диапазона (логика может быть добавлена по желанию)
    if guess < secretNumber then
      lowerBound := guess + 1
    else
      upperBound := guess - 1;
  end;

  // Если все попытки исчерпаны
  WriteLn('Вы проиграли! Исчерпано допустимое количество попыток. Было загадано число ', secretNumber, '.');
end.