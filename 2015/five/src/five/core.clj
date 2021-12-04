(ns five.core
  (:require [clojure.string :as string])
  (:gen-class))

(defn has-three-or-more-vowels?
  [str]
  (<= 3 (count (filter #{\a \A \e \E \i \I \o \O \u \U} str))))

(defn has-a-double-letter?
  [str]
  (<= 2 (apply max (map count (partition-by identity str)))))

(defn no-naughty-strings?
  [str]
  (and (not (re-matches #".*ab.*" str))
       (not (re-matches #".*cd.*" str))
       (not (re-matches #".*pq.*" str))
       (not (re-matches #".*xy.*" str))))

(defn has-two-matching-pairs?
  [str]
                                        ;replace 3plets with 2plets
  (if (re-matches #"\w\w\w\w" str) true
      (let [sans-trips (string/replace str #"\w\w\w" #(subs % 0 2))
            ])))

(defn has-spaced-pair?
  "A pair of letters with one in between, like 'aba' or 'xyx' or 'aaa'"
  [str]
  
  )

(has-two-matching-pairs? "aba")
(has-two-matching-pairs? "aaaabbbccc")

(has-two-matching-pairs? "abab")

(re-matches #"(\w\w\w)" "baaa")


(defn nicestr?
  [str]
  (and (has-three-or-more-vowels? str)
       (has-a-double-letter? str)
       (no-naughty-strings? str))
  )
(defn -main
  "I don't do a whole lot ... yet."
  [& args]
  (let [input (slurp "input.txt")
        lines (string/split input #"\n")
        answer (count (filter nicestr? lines))]
    (println answer)))
