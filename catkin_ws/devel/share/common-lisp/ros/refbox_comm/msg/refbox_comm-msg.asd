
(cl:in-package :asdf)

(defsystem "refbox_comm-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "RefboxData" :depends-on ("_package_RefboxData"))
    (:file "_package_RefboxData" :depends-on ("_package"))
    (:file "RefboxMsg" :depends-on ("_package_RefboxMsg"))
    (:file "_package_RefboxMsg" :depends-on ("_package"))
  ))