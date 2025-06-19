Для компиляции файлов `.asm` используйте:

1. Запускаем `cmd` (`Ctrl + J`)
2. Переходим в нужную директорию (`cd <name_dir>`)
3. В терминале вводим команду `ml64 name_file.asm /link /entry:main` (иногда придётся добавить флаг `/subsystem:console` перед `/entry:main`)
4. Запускает наш `.exe` (`name_file.exe`)
5. Проверка вывода (`echo %ERRORLEVEL%`)

### 1 РАЗДЕЛ
  `ml64 raz1.asm /link /entry:main /subsystem:console kernel32.lib`
  `echo %ERRORLEVEL%`

### 2 РАЗДЕЛ
  `ml64 raz2.asm /link /entry:main`
  `echo %ERRORLEVEL%`

### 3 РАЗДЕЛ
  `ml64 raz2.asm /link /entry:main`
  `echo %ERRORLEVEL%`

### 4 РАЗДЕЛ
  `ml64 raz4.asm /link /entry:main /subsystem:console kernel32.lib`
  `echo %ERRORLEVEL%`

### 5 РАЗДЕЛ
  `ml64 raz5.asm /link /entry:main /subsystem:console kernel32.lib`
  `echo %ERRORLEVEL%`

### 6 РАЗДЕЛ
  **В VISUAL STUDIO**
  `ml64 raz6.asm /link /entry:main /subsystem:console kernel32.lib`
  `echo %ERRORLEVEL%`

### 7 РАЗДЕЛ
  1. `ml64 /c raz7.asm`
  2. `cl /EHsc main.cpp raz7.obj`
  3. `echo %ERRORLEVEL%`

### 8 РАЗДЕЛ
  `ml64 raz8.asm /link /entry:main /subsystem:console kernel32.lib`
  `echo %ERRORLEVEL%`
