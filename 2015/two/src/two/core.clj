(ns two.core
  (:gen-class)
  (:require [clojure.string :as str]))


(defn paper-needed
  "Used in part one."
  [[l w h]]
  (let [sides [(* l w) (* l h) (* w h)]]
    (+ (apply min sides) (* 2 (reduce + sides)))))

(defn ribbon-needed
  [[l w h]]
  (let [perimeters [(* 2 (+ l w)) (* 2 (+ l h)) (* 2 (+ w h))]]
    (+ (apply min perimeters) (reduce * [l w h]))))

(defn -main
  "I don't do a whole lot ... yet."
  [& args]
  (let [lines (-> "resources/input.txt"
                  slurp
                  (str/split #"\n"))
        dimensions (map (fn [line] (map
                                    #(Integer/parseInt %)
                                    (str/split line #"x")))
                        lines)
        total-ribbon-needed (->> dimensions
                                (map ribbon-needed)
                                (reduce +))]
    (println total-ribbon-needed)))
