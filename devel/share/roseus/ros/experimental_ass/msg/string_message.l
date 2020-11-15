;; Auto-generated. Do not edit!


(when (boundp 'experimental_ass::string_message)
  (if (not (find-package "EXPERIMENTAL_ASS"))
    (make-package "EXPERIMENTAL_ASS"))
  (shadow 'string_message (find-package "EXPERIMENTAL_ASS")))
(unless (find-package "EXPERIMENTAL_ASS::STRING_MESSAGE")
  (make-package "EXPERIMENTAL_ASS::STRING_MESSAGE"))

(in-package "ROS")
;;//! \htmlinclude string_message.msg.html


(defclass experimental_ass::string_message
  :super ros::object
  :slots (_custom_msg ))

(defmethod experimental_ass::string_message
  (:init
   (&key
    ((:custom_msg __custom_msg) "")
    )
   (send-super :init)
   (setq _custom_msg (string __custom_msg))
   self)
  (:custom_msg
   (&optional __custom_msg)
   (if __custom_msg (setq _custom_msg __custom_msg)) _custom_msg)
  (:serialization-length
   ()
   (+
    ;; string _custom_msg
    4 (length _custom_msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _custom_msg
       (write-long (length _custom_msg) s) (princ _custom_msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _custom_msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _custom_msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get experimental_ass::string_message :md5sum-) "34bc0b7b6938cfa2480828862cdaf1a1")
(setf (get experimental_ass::string_message :datatype-) "experimental_ass/string_message")
(setf (get experimental_ass::string_message :definition-)
      "string custom_msg

")



(provide :experimental_ass/string_message "34bc0b7b6938cfa2480828862cdaf1a1")


