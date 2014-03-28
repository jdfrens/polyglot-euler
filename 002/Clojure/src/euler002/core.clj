(ns euler002.core)

(def fib-seq (lazy-seq (map + (cons 0 (cons 1 fib-seq)) (cons 1 fib-seq))))

(defn take-fibs-less-than [n]
  (take-while (partial >= n) fib-seq))

(defn filter-evens [ns] (filter even? ns))

(defn even-fib-sum [n]
  (apply + (filter-evens (take-fibs-less-than n))))
