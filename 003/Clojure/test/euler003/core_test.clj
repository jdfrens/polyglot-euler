(ns euler003.core-test
  (:require [clojure.test :refer :all]
            [euler003.core :refer :all]))

(deftest greatest-prime-factor-test
  (testing "GPF of 2" (is (= 2 (greatest-prime-factor 2))))
  (testing "GPF of 4" (is (= 2 (greatest-prime-factor 4))))
  (testing "GPF of 6" (is (= 3 (greatest-prime-factor 6))))
  (testing "GPF of 13195" (is (= 29 (greatest-prime-factor 13195))))
  )
