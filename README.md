### Чтобы запустить данные `.asm` файлы нужно сначала:
1. В `Visual Studio Installer` скачать пакет программ "Разработка классических приложений на C++" (см скриншот)

![изображение](https://github.com/user-attachments/assets/d8a6f1f5-34a1-4c1e-933e-be92deefe4df)

2. Скачать профиль `AssemblerDev` с курса "Системное программирование 3 курс". Либо с этого репозитория (`AssemblerDev.code-profile`)

![изображение](https://github.com/user-attachments/assets/6a94cd30-c727-4208-9271-39ad1bb81e58)

3. В `Visual Studio Code` создаём новый профиль:

![изображение](https://github.com/user-attachments/assets/ada78cef-49c7-440f-9bee-524f490017f7)

![изображение](https://github.com/user-attachments/assets/7a91aebd-0ccc-4158-b337-953a8306c0aa)

4. Нажимаем на стрелочку -> "Импортировать профиль" -> "Выберите файл". Выбираем наш скаченный `AssemblerDev`.
5. Ждём пока скачаются все плагины.

### Для компиляции файлов `.asm` используйте:

1. Запускаем `cmd` в `Visual Studio Code` (`Ctrl + J`)

![изображение](https://github.com/user-attachments/assets/1f840ca0-438e-4345-a678-984d651031b0)

2. Переходим в нужную директорию (`cd <name_dir>`)

![изображение](https://github.com/user-attachments/assets/8fc5baf0-74cd-4cf5-980d-44eec86d35bd)

3. В терминале вводим команду `ml64 name_file.asm /link /entry:main` (иногда придётся добавить флаг `/subsystem:console` перед `/entry:main`)

![изображение](https://github.com/user-attachments/assets/c61bded0-fc19-485c-a766-2acce2c9b7b6)

4. Запускаем наш `.exe` (`name_file.exe`)

![изображение](https://github.com/user-attachments/assets/b1176f4a-e435-49b9-8dbd-8e7c5d6b75ae)

5. Проверяем вывод (`echo %ERRORLEVEL%`)

![изображение](https://github.com/user-attachments/assets/1dd3eefb-5122-4122-b562-f0e8b1c3a41c)


### 1 РАЗДЕЛ
  1. `ml64 raz1.asm /link /entry:main /subsystem:console kernel32.lib`
  2. `echo %ERRORLEVEL%`

### 2 РАЗДЕЛ
  1. `ml64 raz2.asm /link /entry:main`
  2. `echo %ERRORLEVEL%`

### 3 РАЗДЕЛ
  1. `ml64 raz2.asm /link /entry:main`
  2.`echo %ERRORLEVEL%`

### 4 РАЗДЕЛ
  1. `ml64 raz4.asm /link /entry:main /subsystem:console kernel32.lib`
  2. `echo %ERRORLEVEL%`

### 5 РАЗДЕЛ
  1. `ml64 raz5.asm /link /entry:main /subsystem:console kernel32.lib`
  2. `echo %ERRORLEVEL%`

### 6 РАЗДЕЛ
  **В VISUAL STUDIO**
  1. `ml64 raz6.asm /link /entry:main /subsystem:console kernel32.lib`
  2. `echo %ERRORLEVEL%`

### 7 РАЗДЕЛ
  1. `ml64 /c raz7.asm`
  2. `cl /EHsc main.cpp raz7.obj`
  3. `echo %ERRORLEVEL%`

### 8 РАЗДЕЛ
  1. `ml64 raz8.asm /link /entry:main /subsystem:console kernel32.lib`
  2. `echo %ERRORLEVEL%`
