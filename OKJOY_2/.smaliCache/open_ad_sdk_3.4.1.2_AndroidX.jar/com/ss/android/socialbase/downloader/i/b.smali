.class public Lcom/ss/android/socialbase/downloader/i/b;
.super Ljava/lang/Object;
.source "DownloadHttpUtils.java"


# direct methods
.method public static a(I)Ljava/lang/String;
    .registers 1

    .line 5
    sparse-switch p0, :sswitch_data_b2

    .line 121
    const-string p0, ""

    return-object p0

    .line 119
    :sswitch_6
    const-string p0, "Unparseable Response Headers"

    return-object p0

    .line 117
    :sswitch_9
    const-string p0, "Not Extended"

    return-object p0

    .line 115
    :sswitch_c
    const-string p0, "Bandwidth Limit Exceeded"

    return-object p0

    .line 113
    :sswitch_f
    const-string p0, "Insufficient Storage"

    return-object p0

    .line 111
    :sswitch_12
    const-string p0, "Variant Also Negotiates"

    return-object p0

    .line 109
    :sswitch_15
    const-string p0, "HTTP Version Not Supported"

    return-object p0

    .line 107
    :sswitch_18
    const-string p0, "Gateway Timeout"

    return-object p0

    .line 105
    :sswitch_1b
    const-string p0, "Service Unavailable"

    return-object p0

    .line 103
    :sswitch_1e
    const-string p0, "Bad Gateway"

    return-object p0

    .line 101
    :sswitch_21
    const-string p0, "Not Implemented"

    return-object p0

    .line 99
    :sswitch_24
    const-string p0, "Internal Server Error"

    return-object p0

    .line 97
    :sswitch_27
    const-string p0, "Unavailable For Legal Reasons"

    return-object p0

    .line 95
    :sswitch_2a
    const-string p0, "Retry With"

    return-object p0

    .line 93
    :sswitch_2d
    const-string p0, "Upgrade Required"

    return-object p0

    .line 91
    :sswitch_30
    const-string p0, "Unordered Collection"

    return-object p0

    .line 89
    :sswitch_33
    const-string p0, "Failed Dependency"

    return-object p0

    .line 87
    :sswitch_36
    const-string p0, "Locked"

    return-object p0

    .line 85
    :sswitch_39
    const-string p0, "Unprocessable Entity"

    return-object p0

    .line 83
    :sswitch_3c
    const-string p0, "Too Many Connections"

    return-object p0

    .line 81
    :sswitch_3f
    const-string p0, "I\'m a teapot"

    return-object p0

    .line 79
    :sswitch_42
    const-string p0, "Expectation Failed"

    return-object p0

    .line 77
    :sswitch_45
    const-string p0, "Requested Range Not Satisfiable"

    return-object p0

    .line 75
    :sswitch_48
    const-string p0, "Unsupported Media Type"

    return-object p0

    .line 73
    :sswitch_4b
    const-string p0, "Request-URI Too Long"

    return-object p0

    .line 71
    :sswitch_4e
    const-string p0, "Request Entity Too Large"

    return-object p0

    .line 69
    :sswitch_51
    const-string p0, "Precondition Failed"

    return-object p0

    .line 67
    :sswitch_54
    const-string p0, "Length Required"

    return-object p0

    .line 65
    :sswitch_57
    const-string p0, "Gone"

    return-object p0

    .line 63
    :sswitch_5a
    const-string p0, "Conflict"

    return-object p0

    .line 61
    :sswitch_5d
    const-string p0, "Request Timeout"

    return-object p0

    .line 59
    :sswitch_60
    const-string p0, "Proxy Authentication Required"

    return-object p0

    .line 57
    :sswitch_63
    const-string p0, "Not Acceptable"

    return-object p0

    .line 55
    :sswitch_66
    const-string p0, "Method Not Allowed"

    return-object p0

    .line 53
    :sswitch_69
    const-string p0, "Not Found"

    return-object p0

    .line 51
    :sswitch_6c
    const-string p0, "Forbidden"

    return-object p0

    .line 49
    :sswitch_6f
    const-string p0, "Payment Required"

    return-object p0

    .line 47
    :sswitch_72
    const-string p0, "Unauthorized"

    return-object p0

    .line 45
    :sswitch_75
    const-string p0, "Bad Request"

    return-object p0

    .line 43
    :sswitch_78
    const-string p0, "Temporary Redirect"

    return-object p0

    .line 41
    :sswitch_7b
    const-string p0, "Switch Proxy"

    return-object p0

    .line 39
    :sswitch_7e
    const-string p0, "Use Proxy"

    return-object p0

    .line 37
    :sswitch_81
    const-string p0, "Not Modified"

    return-object p0

    .line 35
    :sswitch_84
    const-string p0, "See Other"

    return-object p0

    .line 33
    :sswitch_87
    const-string p0, "Move Temporarily"

    return-object p0

    .line 31
    :sswitch_8a
    const-string p0, "Moved Permanently"

    return-object p0

    .line 29
    :sswitch_8d
    const-string p0, "Multiple Choices"

    return-object p0

    .line 27
    :sswitch_90
    const-string p0, "Multi-Status"

    return-object p0

    .line 25
    :sswitch_93
    const-string p0, "Partial Content"

    return-object p0

    .line 23
    :sswitch_96
    const-string p0, "Reset Content"

    return-object p0

    .line 21
    :sswitch_99
    const-string p0, "No Content"

    return-object p0

    .line 19
    :sswitch_9c
    const-string p0, "Non-Authoritative Information"

    return-object p0

    .line 17
    :sswitch_9f
    const-string p0, "Accepted"

    return-object p0

    .line 15
    :sswitch_a2
    const-string p0, "Created"

    return-object p0

    .line 13
    :sswitch_a5
    const-string p0, "OK"

    return-object p0

    .line 11
    :sswitch_a8
    const-string p0, "Processing"

    return-object p0

    .line 9
    :sswitch_ab
    const-string p0, "Switching Protocols"

    return-object p0

    .line 7
    :sswitch_ae
    const-string p0, "Continue"

    return-object p0

    nop

    :sswitch_data_b2
    .sparse-switch
        0x64 -> :sswitch_ae
        0x65 -> :sswitch_ab
        0x66 -> :sswitch_a8
        0xc8 -> :sswitch_a5
        0xc9 -> :sswitch_a2
        0xca -> :sswitch_9f
        0xcb -> :sswitch_9c
        0xcc -> :sswitch_99
        0xcd -> :sswitch_96
        0xce -> :sswitch_93
        0xcf -> :sswitch_90
        0x12c -> :sswitch_8d
        0x12d -> :sswitch_8a
        0x12e -> :sswitch_87
        0x12f -> :sswitch_84
        0x130 -> :sswitch_81
        0x131 -> :sswitch_7e
        0x132 -> :sswitch_7b
        0x133 -> :sswitch_78
        0x190 -> :sswitch_75
        0x191 -> :sswitch_72
        0x192 -> :sswitch_6f
        0x193 -> :sswitch_6c
        0x194 -> :sswitch_69
        0x195 -> :sswitch_66
        0x196 -> :sswitch_63
        0x197 -> :sswitch_60
        0x198 -> :sswitch_5d
        0x199 -> :sswitch_5a
        0x19a -> :sswitch_57
        0x19b -> :sswitch_54
        0x19c -> :sswitch_51
        0x19d -> :sswitch_4e
        0x19e -> :sswitch_4b
        0x19f -> :sswitch_48
        0x1a0 -> :sswitch_45
        0x1a1 -> :sswitch_42
        0x1a2 -> :sswitch_3f
        0x1a5 -> :sswitch_3c
        0x1a6 -> :sswitch_39
        0x1a7 -> :sswitch_36
        0x1a8 -> :sswitch_33
        0x1a9 -> :sswitch_30
        0x1aa -> :sswitch_2d
        0x1c1 -> :sswitch_2a
        0x1c3 -> :sswitch_27
        0x1f4 -> :sswitch_24
        0x1f5 -> :sswitch_21
        0x1f6 -> :sswitch_1e
        0x1f7 -> :sswitch_1b
        0x1f8 -> :sswitch_18
        0x1f9 -> :sswitch_15
        0x1fa -> :sswitch_12
        0x1fb -> :sswitch_f
        0x1fd -> :sswitch_c
        0x1fe -> :sswitch_9
        0x258 -> :sswitch_6
    .end sparse-switch
.end method
