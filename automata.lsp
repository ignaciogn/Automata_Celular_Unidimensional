(defun binario-a-decimal (lista-binaria)
  (let ((potencias '(4 2 1))) 
	(apply '+ (mapcar '*
                    	lista-binaria
                    	potencias))))

(defun bina (num)
  (let ((binary-list (binario num)))
    (append (pone-ceros binary-list))))

(defun binario (num)
  (if (= num 0)
      '()
      (append (binario (floor (/ num 2)))
              (list (mod num 2)))))

(defun pone-ceros (lst)
  (if (< (length lst) 8)
      (append (pone-ceros (cons 0 lst)))
      lst))

(defun aplicar-regla (vecindad reglas)
  (nth (binario-a-decimal vecindad) (reverse reglas)))


(defun generar-proxima-generacion-rec (estado indice longitud nueva-generacion reglas)
  (if (>= indice longitud)
      (reverse nueva-generacion)
      (let* ((left-neighbor (if (= indice 0) (nth (1- longitud) estado) (nth (1- indice) estado)))
    		 (right-neighbor (if (= indice (1- longitud)) (first estado) (nth (1+ indice) estado)))
    		 (nuevo-estado (aplicar-regla (list left-neighbor (nth indice estado) right-neighbor) reglas)))
   	 (generar-proxima-generacion-rec estado (1+ indice) longitud (cons nuevo-estado nueva-generacion) reglas))))

(defun generar-proxima-generacion (estado reglas)
  (generar-proxima-generacion-rec estado 0 (length estado) '() reglas))

(defun imprimir-generacion (numero-generacion estado reglas max-gen)
  (format t "~a~%" (subst '_ '0 (subst '@ '1 estado)))
  (generar-proxima-generacion estado reglas))

(defun imprimir-generaciones-rec (estado num-generaciones reglas max-gen)
  (if (= num-generaciones 0)
      'FIN
    (imprimir-generaciones-rec (imprimir-generacion num-generaciones estado reglas max-gen)
                               (1- num-generaciones)
                               reglas max-gen)))


(defun automata-celular (estado-inicial reglas-o-numero-generaciones num-generaciones)
  (if (and (listp reglas-o-numero-generaciones) (= (length reglas-o-numero-generaciones) 8))
      (let ((reglas reglas-o-numero-generaciones))
    	(imprimir-generaciones-rec estado-inicial (1+ num-generaciones) reglas (1+ num-generaciones)))
    (if (and (integerp reglas-o-numero-generaciones) (<= 0 reglas-o-numero-generaciones 255))
      	(let ((reglas (bina reglas-o-numero-generaciones)))
          (imprimir-generaciones-rec estado-inicial (1+ num-generaciones) reglas (1+ num-generaciones)))
      (format t "Error: Las reglas deben ser una lista de longitud 8 o un número entero entre 0 y 255."))))


