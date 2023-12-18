(ns weight-converter.core
  (:gen-class))

(defn convert [kg-base lbs-base]
  (let [conversion (read-line)]
    (println "What type of conversion do you need?")
    (println "1. KG to LBS")
    (println "2. LBS to KG")
    (println "Select an option using numbers (1 or 2): ")
    (case conversion
      "1"
      (do
        (print "Enter the amount of KG to convert: ")
        (let [weight (Double/parseDouble (read-line))
              converted-weight (Math/floor (* weight lbs-base 10.0) / 10.0)]
          (println (str "\n" weight " KG = " converted-weight " LBS"))))
      "2"
      (do
        (print "Enter the amount of LBS to convert: ")
        (let [weight (Double/parseDouble (read-line))
              converted-weight (Math/floor (* weight kg-base 10.0) / 10.0)]
          (println (str "\n" weight " LBS = " converted-weight " KG"))))
      (println "Invalid option"))))

(defn -main []
  (let [kg-base 0.453592
        lbs-base 2.20462]
    (convert kg-base lbs-base)))
