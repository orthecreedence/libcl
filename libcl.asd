(asdf:defsystem libcl
  :author "Andrew Danger Lyon <orthecreedence@gmail.com>"
  :license "MIT"
  :version "0.3.13"
  :description "An evented webserver for Common Lisp."
  :depends-on ()
  :components
  ((:file "core")
   (:file "bind")
   (:file "math")
   (:file "structure")
   (:file "array")
   (:file "hash")
   (:file "clos")
   (:file "io")))

