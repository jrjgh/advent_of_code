(ns one.core
  (:gen-class)
  (:require [clojure.string :as str]))

(defn parse-floor
  "Given a string of opening and closing parens, count which floor is indicated."
  [parens]
  (as-> parens _
       (str/split _ #"")
       (map (fn [paren] (case paren
                          "(" 1
                          ")" -1
                          0)) _)
       (reductions + 0 _)
       (keep-indexed #(when (= -1 %2) %1) _)
       (first _)))

(defn -main
  "I don't do a whole lot ... yet."
  [& args]
  (let [input (slurp "resources/input.txt")
        answer (parse-floor input)]
    (println answer)))
