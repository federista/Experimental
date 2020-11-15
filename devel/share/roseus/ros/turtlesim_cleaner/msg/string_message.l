;; Auto-generated. Do not edit!


(when (boundp 'turtlesim_cleaner::string_message)
  (if (not (find-package "TURTLESIM_CLEANER"))
    (make-package "TURTLESIM_CLEANER"))
  (shadow 'string_message (find-package "TURTLESIM_CLEANER")))
(unless (find-package "TURTLESIM_CLEANER::STRING_MESSAGE")
  (make-package "TURTLESIM_CLEANER::STRING_MESSAGE"))

(in-package "ROS")
;;//! \htmlinclude string_message.msg.html


(defclass turtlesim_cleaner::string_message
  :super ros::object
  :slots (_custom_msg ))

(defmethod turtlesim_cleaner::string_message
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

(setf (get turtlesim_cleaner::string_message :md5sum-) "34bc0b7b6938cfa2480828862cdaf1a1")
(setf (get turtlesim_cleaner::string_message :datatype-) "turtlesim_cleaner/string_message")
(setf (get turtlesim_cleaner::string_message :definition-)
      "string custom_msg

")



(provide :turtlesim_cleaner/string_message "34bc0b7b6938cfa2480828862cdaf1a1")


