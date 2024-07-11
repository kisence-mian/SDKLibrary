.class public abstract Lcom/bytedance/sdk/openadsdk/i/e/a;
.super Ljava/lang/Object;
.source "AbsResponseWrapper.java"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/i/i$b;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/bytedance/sdk/openadsdk/i/e/f;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method protected a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/i$b;
    .registers 6

    .line 48
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 49
    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/e/a;->a:Ljava/util/List;

    if-eqz v1, :cond_2a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2a

    .line 50
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/e/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/i/i$b;

    .line 51
    iget-object v3, v2, Lcom/bytedance/sdk/openadsdk/i/i$b;->a:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 52
    return-object v2

    .line 54
    :cond_29
    goto :goto_14

    .line 56
    :cond_2a
    return-object v0
.end method

.method protected a(I)Ljava/lang/String;
    .registers 2

    .line 60
    nop

    .line 61
    sparse-switch p1, :sswitch_data_a0

    const-string p1, ""

    goto/16 :goto_9f

    .line 165
    :sswitch_8
    const-string p1, "HTTP Version Not Supported"

    goto/16 :goto_9f

    .line 162
    :sswitch_c
    nop

    .line 163
    const-string p1, "Gateway Timeout"

    goto/16 :goto_9f

    .line 159
    :sswitch_11
    nop

    .line 160
    const-string p1, "Service Unavailable"

    goto/16 :goto_9f

    .line 156
    :sswitch_16
    nop

    .line 157
    const-string p1, "Bad Gateway"

    goto/16 :goto_9f

    .line 153
    :sswitch_1b
    nop

    .line 154
    const-string p1, "Not Implemented"

    goto/16 :goto_9f

    .line 150
    :sswitch_20
    nop

    .line 151
    const-string p1, "Internal Server Error"

    goto/16 :goto_9f

    .line 147
    :sswitch_25
    nop

    .line 148
    const-string p1, "Unsupported Media Type"

    goto/16 :goto_9f

    .line 144
    :sswitch_2a
    nop

    .line 145
    const-string p1, "Request-URI Too Large"

    goto/16 :goto_9f

    .line 141
    :sswitch_2f
    nop

    .line 142
    const-string p1, "Request Entity Too Large"

    goto/16 :goto_9f

    .line 138
    :sswitch_34
    nop

    .line 139
    const-string p1, "Precondition Failed"

    goto/16 :goto_9f

    .line 135
    :sswitch_39
    nop

    .line 136
    const-string p1, "Length Required"

    goto/16 :goto_9f

    .line 132
    :sswitch_3e
    nop

    .line 133
    const-string p1, "Gone"

    goto/16 :goto_9f

    .line 129
    :sswitch_43
    nop

    .line 130
    const-string p1, "Conflict"

    goto/16 :goto_9f

    .line 126
    :sswitch_48
    nop

    .line 127
    const-string p1, "Request Time-Out"

    goto :goto_9f

    .line 123
    :sswitch_4c
    nop

    .line 124
    const-string p1, "Proxy Authentication Required"

    goto :goto_9f

    .line 120
    :sswitch_50
    nop

    .line 121
    const-string p1, "Not Acceptable"

    goto :goto_9f

    .line 117
    :sswitch_54
    nop

    .line 118
    const-string p1, "Method Not Allowed"

    goto :goto_9f

    .line 114
    :sswitch_58
    nop

    .line 115
    const-string p1, "Not Found"

    goto :goto_9f

    .line 111
    :sswitch_5c
    nop

    .line 112
    const-string p1, "Forbidden"

    goto :goto_9f

    .line 108
    :sswitch_60
    nop

    .line 109
    const-string p1, "Payment Required"

    goto :goto_9f

    .line 105
    :sswitch_64
    nop

    .line 106
    const-string p1, "Unauthorized"

    goto :goto_9f

    .line 102
    :sswitch_68
    nop

    .line 103
    const-string p1, "Bad Request"

    goto :goto_9f

    .line 99
    :sswitch_6c
    nop

    .line 100
    const-string p1, "Use Proxy"

    goto :goto_9f

    .line 96
    :sswitch_70
    nop

    .line 97
    const-string p1, "Not Modified"

    goto :goto_9f

    .line 93
    :sswitch_74
    nop

    .line 94
    const-string p1, "See Other"

    goto :goto_9f

    .line 90
    :sswitch_78
    nop

    .line 91
    const-string p1, "Temporary Redirect"

    goto :goto_9f

    .line 87
    :sswitch_7c
    nop

    .line 88
    const-string p1, "Moved Permanently"

    goto :goto_9f

    .line 84
    :sswitch_80
    nop

    .line 85
    const-string p1, "Multiple Choices"

    goto :goto_9f

    .line 81
    :sswitch_84
    nop

    .line 82
    const-string p1, "Partial Content"

    goto :goto_9f

    .line 78
    :sswitch_88
    nop

    .line 79
    const-string p1, "Reset Content"

    goto :goto_9f

    .line 75
    :sswitch_8c
    nop

    .line 76
    const-string p1, "No Content"

    goto :goto_9f

    .line 72
    :sswitch_90
    nop

    .line 73
    const-string p1, "Non-Authoritative"

    goto :goto_9f

    .line 69
    :sswitch_94
    nop

    .line 70
    const-string p1, "Accepted"

    goto :goto_9f

    .line 66
    :sswitch_98
    nop

    .line 67
    const-string p1, "Created"

    goto :goto_9f

    .line 63
    :sswitch_9c
    nop

    .line 64
    const-string p1, "OK"

    .line 168
    :goto_9f
    return-object p1

    :sswitch_data_a0
    .sparse-switch
        0xc8 -> :sswitch_9c
        0xc9 -> :sswitch_98
        0xca -> :sswitch_94
        0xcb -> :sswitch_90
        0xcc -> :sswitch_8c
        0xcd -> :sswitch_88
        0xce -> :sswitch_84
        0x12c -> :sswitch_80
        0x12d -> :sswitch_7c
        0x12e -> :sswitch_78
        0x12f -> :sswitch_74
        0x130 -> :sswitch_70
        0x131 -> :sswitch_6c
        0x190 -> :sswitch_68
        0x191 -> :sswitch_64
        0x192 -> :sswitch_60
        0x193 -> :sswitch_5c
        0x194 -> :sswitch_58
        0x195 -> :sswitch_54
        0x196 -> :sswitch_50
        0x197 -> :sswitch_4c
        0x198 -> :sswitch_48
        0x199 -> :sswitch_43
        0x19a -> :sswitch_3e
        0x19b -> :sswitch_39
        0x19c -> :sswitch_34
        0x19d -> :sswitch_2f
        0x19e -> :sswitch_2a
        0x19f -> :sswitch_25
        0x1f4 -> :sswitch_20
        0x1f5 -> :sswitch_1b
        0x1f6 -> :sswitch_16
        0x1f7 -> :sswitch_11
        0x1f8 -> :sswitch_c
        0x1f9 -> :sswitch_8
    .end sparse-switch
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract b()Z
.end method

.method public abstract c()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/i/i$b;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d()Ljava/io/InputStream;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public g()Lcom/bytedance/sdk/openadsdk/i/e/f;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/e/a;->b:Lcom/bytedance/sdk/openadsdk/i/e/f;

    return-object v0
.end method
