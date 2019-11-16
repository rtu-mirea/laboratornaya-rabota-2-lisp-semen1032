;; Задание 2. Открытие файла и вывод его содержимого
;; f - путь файла
(defun read_f(f)
    (let ((f_data (open f)))
        (when f_data
            (loop for line = (read-line f_data nil)
                while line do (format t "~a~%" line)
            )
        (close f_data) 
        )
    )
)

;; Пример
(read_f "C:/Users/semen1032/temp/t.txt")