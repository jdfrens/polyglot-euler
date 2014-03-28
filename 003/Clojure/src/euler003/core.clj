(ns euler003.core)

(defn greatest-prime-factor
  [n]
  (loop [n n, factor 2]
    (cond
     (= factor n)           n
     (zero? (mod n factor)) (recur (/ n factor) factor)
     :else                  (recur n (inc factor)))))
