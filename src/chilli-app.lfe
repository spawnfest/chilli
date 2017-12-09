#|
@doc
  chilli public API
@end
|#

(defmodule chilli-app
  (behaviour application)

  ;; Application callbacks
  (export (start 2)
          (stop 1)))

;;; API

(defun start [_type _args]
  (chilli-sup:start_link))

(defun stop [_state]
  'ok)
