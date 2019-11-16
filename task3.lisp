;; Задание 3. Сжатие/разжатие списка

;; Фнкция compress сжимает список, используя функцию rec, после чего дожимает
;; подсписок с одним элементом, после возвращает сжатый список.
;; lst - изначальный список
;; new_lst - сжатый список
(defun compress(lst)
  (let ((f_stage (rec lst nil)))
    (loop for i from 1 to (length f_stage)
      do 
        (if (eq (car (car f_stage)) 1)
          (setf f_stage (append (cdr f_stage) (cdr (car f_stage))))
          (setf f_stage (append (cdr f_stage) (list (car f_stage))))
        )
    )
    f_stage
  )
)

;; Фнкция rec рекурсивно сжимает список. При этом сжатие происходит и для одного элемента,
;; после возвращает сжатый список.
;; lst - изначальный список
;; new_lst - сжатый список
(defun rec(lst new_lst)
  (if (eq (car lst) (car (cdr (car new_lst))))
    (setf new_lst 
            (append 
                    (list (list (+ (car (car new_lst)) 1) (car lst)))
                    (cdr new_lst)
            )
    )
    (setf new_lst (append (list (list 1 (car lst))) new_lst))
  )
  (if (eq (cdr lst) nil)
    (reverse new_lst)
    (rec(cdr lst) new_lst)
  )
)

;; Пример
(compress `(1 1 1 0 1 0 0 1 1 3))