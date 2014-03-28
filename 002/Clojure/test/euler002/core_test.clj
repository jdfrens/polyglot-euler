(ns euler002.core-test
  (:require [clojure.test :refer :all]
            [euler002.core :refer :all]))

(deftest even-fib-sum-test
  (testing "even-fib-sum up to  0" (is (= 0 (even-fib-sum 0))))
  (testing "even-fib-sum up to  1" (is (= 0 (even-fib-sum 1))))
  (testing "even-fib-sum up to  2" (is (= 2 (even-fib-sum  2))))
  (testing "even-fib-sum up to 33" (is (= 10 (even-fib-sum 33))))
  (testing "even-fib-sum up to 34" (is (= 44 (even-fib-sum 34))))
  (testing "even-fib-sum up to 35" (is (= 44 (even-fib-sum 35))))
  )


(deftest take-fibs-less-than-test
  (testing "take-fibs up to 0" (is (= [] (take-fibs-less-than 0))))
  (testing "take-fibs up to 1" (is (= [1] (take-fibs-less-than 1))))
  (testing "take-fibs up to 2" (is (= [1 2] (take-fibs-less-than 2))))
  (testing "take-fibs up to 33" (is (= [1 2 3 5 8 13 21] (take-fibs-less-than 33))))
  (testing "take-fibs up to 34" (is (= [1 2 3 5 8 13 21 34] (take-fibs-less-than 34))))
  )
