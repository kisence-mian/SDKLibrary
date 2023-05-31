.class public Lcom/ss/android/socialbase/downloader/m/d;
.super Ljava/lang/Object;
.source "DownloadHttpUtils.java"


# direct methods
.method public static a(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 5
    sparse-switch p0, :sswitch_data_c0

    .line 121
    const-string v0, ""

    :goto_5
    return-object v0

    .line 7
    :sswitch_6
    const-string v0, "Continue"

    goto :goto_5

    .line 9
    :sswitch_9
    const-string v0, "Switching Protocols"

    goto :goto_5

    .line 11
    :sswitch_c
    const-string v0, "Processing"

    goto :goto_5

    .line 13
    :sswitch_f
    const-string v0, "OK"

    goto :goto_5

    .line 15
    :sswitch_12
    const-string v0, "Created"

    goto :goto_5

    .line 17
    :sswitch_15
    const-string v0, "Accepted"

    goto :goto_5

    .line 19
    :sswitch_18
    const-string v0, "Non-Authoritative Information"

    goto :goto_5

    .line 21
    :sswitch_1b
    const-string v0, "No Content"

    goto :goto_5

    .line 23
    :sswitch_1e
    const-string v0, "Reset Content"

    goto :goto_5

    .line 25
    :sswitch_21
    const-string v0, "Partial Content"

    goto :goto_5

    .line 27
    :sswitch_24
    const-string v0, "Multi-Status"

    goto :goto_5

    .line 29
    :sswitch_27
    const-string v0, "Multiple Choices"

    goto :goto_5

    .line 31
    :sswitch_2a
    const-string v0, "Moved Permanently"

    goto :goto_5

    .line 33
    :sswitch_2d
    const-string v0, "Move Temporarily"

    goto :goto_5

    .line 35
    :sswitch_30
    const-string v0, "See Other"

    goto :goto_5

    .line 37
    :sswitch_33
    const-string v0, "Not Modified"

    goto :goto_5

    .line 39
    :sswitch_36
    const-string v0, "Use Proxy"

    goto :goto_5

    .line 41
    :sswitch_39
    const-string v0, "Switch Proxy"

    goto :goto_5

    .line 43
    :sswitch_3c
    const-string v0, "Temporary Redirect"

    goto :goto_5

    .line 45
    :sswitch_3f
    const-string v0, "Bad Request"

    goto :goto_5

    .line 47
    :sswitch_42
    const-string v0, "Unauthorized"

    goto :goto_5

    .line 49
    :sswitch_45
    const-string v0, "Payment Required"

    goto :goto_5

    .line 51
    :sswitch_48
    const-string v0, "Forbidden"

    goto :goto_5

    .line 53
    :sswitch_4b
    const-string v0, "Not Found"

    goto :goto_5

    .line 55
    :sswitch_4e
    const-string v0, "Method Not Allowed"

    goto :goto_5

    .line 57
    :sswitch_51
    const-string v0, "Not Acceptable"

    goto :goto_5

    .line 59
    :sswitch_54
    const-string v0, "Proxy Authentication Required"

    goto :goto_5

    .line 61
    :sswitch_57
    const-string v0, "Request Timeout"

    goto :goto_5

    .line 63
    :sswitch_5a
    const-string v0, "Conflict"

    goto :goto_5

    .line 65
    :sswitch_5d
    const-string v0, "Gone"

    goto :goto_5

    .line 67
    :sswitch_60
    const-string v0, "Length Required"

    goto :goto_5

    .line 69
    :sswitch_63
    const-string v0, "Precondition Failed"

    goto :goto_5

    .line 71
    :sswitch_66
    const-string v0, "Request Entity Too Large"

    goto :goto_5

    .line 73
    :sswitch_69
    const-string v0, "Request-URI Too Long"

    goto :goto_5

    .line 75
    :sswitch_6c
    const-string v0, "Unsupported Media Type"

    goto :goto_5

    .line 77
    :sswitch_6f
    const-string v0, "Requested Range Not Satisfiable"

    goto :goto_5

    .line 79
    :sswitch_72
    const-string v0, "Expectation Failed"

    goto :goto_5

    .line 81
    :sswitch_75
    const-string v0, "I\'m a teapot"

    goto :goto_5

    .line 83
    :sswitch_78
    const-string v0, "Too Many Connections"

    goto :goto_5

    .line 85
    :sswitch_7b
    const-string v0, "Unprocessable Entity"

    goto :goto_5

    .line 87
    :sswitch_7e
    const-string v0, "Locked"

    goto :goto_5

    .line 89
    :sswitch_81
    const-string v0, "Failed Dependency"

    goto :goto_5

    .line 91
    :sswitch_84
    const-string v0, "Unordered Collection"

    goto/16 :goto_5

    .line 93
    :sswitch_88
    const-string v0, "Upgrade Required"

    goto/16 :goto_5

    .line 95
    :sswitch_8c
    const-string v0, "Retry With"

    goto/16 :goto_5

    .line 97
    :sswitch_90
    const-string v0, "Unavailable For Legal Reasons"

    goto/16 :goto_5

    .line 99
    :sswitch_94
    const-string v0, "Internal Server Error"

    goto/16 :goto_5

    .line 101
    :sswitch_98
    const-string v0, "Not Implemented"

    goto/16 :goto_5

    .line 103
    :sswitch_9c
    const-string v0, "Bad Gateway"

    goto/16 :goto_5

    .line 105
    :sswitch_a0
    const-string v0, "Service Unavailable"

    goto/16 :goto_5

    .line 107
    :sswitch_a4
    const-string v0, "Gateway Timeout"

    goto/16 :goto_5

    .line 109
    :sswitch_a8
    const-string v0, "HTTP Version Not Supported"

    goto/16 :goto_5

    .line 111
    :sswitch_ac
    const-string v0, "Variant Also Negotiates"

    goto/16 :goto_5

    .line 113
    :sswitch_b0
    const-string v0, "Insufficient Storage"

    goto/16 :goto_5

    .line 115
    :sswitch_b4
    const-string v0, "Bandwidth Limit Exceeded"

    goto/16 :goto_5

    .line 117
    :sswitch_b8
    const-string v0, "Not Extended"

    goto/16 :goto_5

    .line 119
    :sswitch_bc
    const-string v0, "Unparseable Response Headers"

    goto/16 :goto_5

    .line 5
    :sswitch_data_c0
    .sparse-switch
        0x64 -> :sswitch_6
        0x65 -> :sswitch_9
        0x66 -> :sswitch_c
        0xc8 -> :sswitch_f
        0xc9 -> :sswitch_12
        0xca -> :sswitch_15
        0xcb -> :sswitch_18
        0xcc -> :sswitch_1b
        0xcd -> :sswitch_1e
        0xce -> :sswitch_21
        0xcf -> :sswitch_24
        0x12c -> :sswitch_27
        0x12d -> :sswitch_2a
        0x12e -> :sswitch_2d
        0x12f -> :sswitch_30
        0x130 -> :sswitch_33
        0x131 -> :sswitch_36
        0x132 -> :sswitch_39
        0x133 -> :sswitch_3c
        0x190 -> :sswitch_3f
        0x191 -> :sswitch_42
        0x192 -> :sswitch_45
        0x193 -> :sswitch_48
        0x194 -> :sswitch_4b
        0x195 -> :sswitch_4e
        0x196 -> :sswitch_51
        0x197 -> :sswitch_54
        0x198 -> :sswitch_57
        0x199 -> :sswitch_5a
        0x19a -> :sswitch_5d
        0x19b -> :sswitch_60
        0x19c -> :sswitch_63
        0x19d -> :sswitch_66
        0x19e -> :sswitch_69
        0x19f -> :sswitch_6c
        0x1a0 -> :sswitch_6f
        0x1a1 -> :sswitch_72
        0x1a2 -> :sswitch_75
        0x1a5 -> :sswitch_78
        0x1a6 -> :sswitch_7b
        0x1a7 -> :sswitch_7e
        0x1a8 -> :sswitch_81
        0x1a9 -> :sswitch_84
        0x1aa -> :sswitch_88
        0x1c1 -> :sswitch_8c
        0x1c3 -> :sswitch_90
        0x1f4 -> :sswitch_94
        0x1f5 -> :sswitch_98
        0x1f6 -> :sswitch_9c
        0x1f7 -> :sswitch_a0
        0x1f8 -> :sswitch_a4
        0x1f9 -> :sswitch_a8
        0x1fa -> :sswitch_ac
        0x1fb -> :sswitch_b0
        0x1fd -> :sswitch_b4
        0x1fe -> :sswitch_b8
        0x258 -> :sswitch_bc
    .end sparse-switch
.end method
