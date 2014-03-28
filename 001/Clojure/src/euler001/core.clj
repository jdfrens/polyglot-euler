(ns euler001.core)

(defn interesting-number? [n]
  (or (zero? (mod n 3)) (zero? (mod n 5))))

(defn sum35 [n]
  (apply + (for [x (range 0 (inc n)) :when (interesting-number? x)] x))
  )
