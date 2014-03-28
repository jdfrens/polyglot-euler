(ns euler001.core-test
  (:require [clojure.test :refer :all]
            [euler001.core :refer :all]))

(deftest sum35-test
  (testing "sum up to 0"
    (is (= 0 (sum35 0))))
  (testing "sum up to 3"
    (is (= 3 (sum35 3))))
  (testing "sum up to 5"
    (is (= 8 (sum35 5))))
  (testing "sum up to 9"
    (is (= 23 (sum35 9))))
  )
