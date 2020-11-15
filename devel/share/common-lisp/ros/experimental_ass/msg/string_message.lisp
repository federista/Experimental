; Auto-generated. Do not edit!


(cl:in-package experimental_ass-msg)


;//! \htmlinclude string_message.msg.html

(cl:defclass <string_message> (roslisp-msg-protocol:ros-message)
  ((custom_msg
    :reader custom_msg
    :initarg :custom_msg
    :type cl:string
    :initform ""))
)

(cl:defclass string_message (<string_message>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <string_message>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'string_message)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name experimental_ass-msg:<string_message> is deprecated: use experimental_ass-msg:string_message instead.")))

(cl:ensure-generic-function 'custom_msg-val :lambda-list '(m))
(cl:defmethod custom_msg-val ((m <string_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader experimental_ass-msg:custom_msg-val is deprecated.  Use experimental_ass-msg:custom_msg instead.")
  (custom_msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <string_message>) ostream)
  "Serializes a message object of type '<string_message>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'custom_msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'custom_msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <string_message>) istream)
  "Deserializes a message object of type '<string_message>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'custom_msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'custom_msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<string_message>)))
  "Returns string type for a message object of type '<string_message>"
  "experimental_ass/string_message")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'string_message)))
  "Returns string type for a message object of type 'string_message"
  "experimental_ass/string_message")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<string_message>)))
  "Returns md5sum for a message object of type '<string_message>"
  "34bc0b7b6938cfa2480828862cdaf1a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'string_message)))
  "Returns md5sum for a message object of type 'string_message"
  "34bc0b7b6938cfa2480828862cdaf1a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<string_message>)))
  "Returns full string definition for message of type '<string_message>"
  (cl:format cl:nil "string custom_msg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'string_message)))
  "Returns full string definition for message of type 'string_message"
  (cl:format cl:nil "string custom_msg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <string_message>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'custom_msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <string_message>))
  "Converts a ROS message object to a list"
  (cl:list 'string_message
    (cl:cons ':custom_msg (custom_msg msg))
))
