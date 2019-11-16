;; 1. Вставка в список по номеру.
;; n - изначальный список
;; nn - список, который нужно вставить
;; ind - индекс, в который нужно вставить список
(defun ins(n nn ind)
(append (append (subseq n 0 ind) nn) (subseq n ind (length n)))
)

;; Пример
(ins (list 1 0 3 40 50) (list 11 33) 3)


;; 2. Удаление из списка по позиции
;; lst - изначальный список
;; ind - индекс, по которому нужно удалить элемент списка
(defun del_ind(lst ind)
    (append 
            (append 
                (subseq lst 0 ind) 
                (subseq lst (+ ind 1) (length lst))
            )
    )
)

;; Пример
(del_ind (list 1 0 3 40 50) 3)

;; 3. Поиск элемента по значению
;; lst - изначальный список
;; val - значение элемента, индекс которого нужно найти
;; ind - индекс начала поиска элемента (с какого индекса надо начнать искать)
;; Функция возвращает первый индекс данного элемента

(defun search_by_val(lst val ind)

    (if (eq (car lst) val)
        ind
        (search_by_val (cdr lst) val (+ ind 1))
    )
)

;; Пример
(search_by_val (list 1 0 3 40 50) 40 0)