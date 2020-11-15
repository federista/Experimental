
(cl:in-package :asdf)

(defsystem "experimental_ass-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "string_message" :depends-on ("_package_string_message"))
    (:file "_package_string_message" :depends-on ("_package"))
  ))