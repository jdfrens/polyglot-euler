(ns euler004.core)

(defn palindrome? [n]
  (= (clojure.string/reverse (.toString n)) (.toString n)))

(defn palindrome-products [values]
  (for [x values
        y values
        :when (palindrome? (* x y))]
    (* x y)))

(defn find-palindrome-product [n]
  (apply max (palindrome-products (range n (* n 10)))))
