(in-package :mu-cl-resources)

(setf *include-count-in-paginated-responses* t)
(setf *supply-cache-headers-p* t)
(setf sparql:*experimental-no-application-graph-for-sudo-select-queries* t)
(setf *cache-model-properties-p* t)

(define-resource agendaitem ()
  :class (s-prefix "ext:Agendapunt")
  :properties `((:title :string ,(s-prefix "dct:title")))
                
                
  :has-one `((agendaitem :via ,(s-prefix "ext:aangebrachtNa")
                         :as "previous-item")
             )
  :resource-base (s-url "http://data.lblod.info/id/agendaitems/")
  :features '(include-uri)
  :on-path "agendaitems"
)
