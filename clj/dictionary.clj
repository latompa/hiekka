(defn new-dict
  [x]
  'nil)

(defn add-to-dict
  [dict key val]
  #(if (= key %) val (dict %)))

(def mydict (add-to-dict (add-to-dict new-dict "b" 42) "a" 10))

(mydict "b")
(mydict "a")
(mydict "c")
