(ns euler004.core-test
  (:require [clojure.test :refer :all]
            [euler004.core :refer :all]))

(deftest palindrome?-test
  (testing "simple palindrome" (is (true? (palindrome? 9))))
  (testing "simple palindrome" (is (true? (palindrome? 33))))
  (testing "simple palindrome" (is (true? (palindrome? 101))))
  (testing "simple palindrome" (is (true? (palindrome? 127848721))))
  (testing "simple palindrome" (is (true? (palindrome? 23233232))))
  (testing "simple palindrome" (is (false? (palindrome? 93))))
  (testing "simple palindrome" (is (false? (palindrome? 331))))
  (testing "simple palindrome" (is (false? (palindrome? 1019))))
  (testing "simple palindrome" (is (false? (palindrome? 12748721))))
  (testing "simple palindrome" (is (false? (palindrome? 23232323))))
  )

(deftest find-palindrome-product-test
  (testing "two-digit-factors palindrome" (is (= 9009 (find-palindrome-product 10))))
  )
