(ns four.core
  (:import java.security.MessageDigest
           java.math.BigInteger)
  (:gen-class))

(defn md5 [s]
  (let [algorithm (MessageDigest/getInstance "MD5")
        raw (.digest algorithm (.getBytes s))]
    (format "%032x" (BigInteger. 1 raw))))

(defn five-leading-zeroes?
  [str]
  (not (nil? (re-matches #"^00000.*" str))))

(defn six-leading-zeroes?
  [str]
  (not (nil? (re-matches #"^000000.*" str))))

(defn -main
  "I don't do a whole lot ... yet."
  [& args]
  (let [secret "ckczppom"
        answer (first (filter #(six-leading-zeroes? (md5 (str secret %))) (range)))]
    (println answer)))
