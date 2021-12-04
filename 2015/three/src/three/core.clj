(ns three.core
  (:gen-class))

(defn move-coord
  [[x y] dir]
  (case dir
    \< [(- x 1) y]
    \> [(+ x 1) y]
    \v [x (- y 1)]
    \^ [x (+ y 1)]
    [x y]))

(defn -main
  "I don't do a whole lot ... yet."
  [& args]
  (let [input (slurp "input.txt")
        [coords1 coords2] (apply map list (partition 2 input))
        answer1 (reductions move-coord [0 0] coords1)
        answer2 (reductions move-coord [0 0] coords2)
        answer (count (distinct (concat answer1 answer2)))]
    (println answer)))
