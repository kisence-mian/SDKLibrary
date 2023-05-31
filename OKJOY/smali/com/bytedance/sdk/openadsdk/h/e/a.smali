.class public abstract Lcom/bytedance/sdk/openadsdk/h/e/a;
.super Ljava/lang/Object;
.source "AbsResponseWrapper.java"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/h/i$b;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/bytedance/sdk/openadsdk/h/e/f;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method protected a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/h/i$b;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 48
    if-nez p1, :cond_5

    move-object v0, v1

    .line 56
    :goto_4
    return-object v0

    .line 49
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/e/a;->a:Ljava/util/List;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/e/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2c

    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/e/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/h/i$b;

    .line 51
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/h/i$b;->a:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_4

    :cond_2c
    move-object v0, v1

    .line 56
    goto :goto_4
.end method

.method protected a(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 60
    const-string v0, ""

    .line 61
    sparse-switch p1, :sswitch_data_70

    .line 168
    :goto_5
    return-object v0

    .line 63
    :sswitch_6
    const-string v0, "OK"

    goto :goto_5

    .line 66
    :sswitch_9
    const-string v0, "Created"

    goto :goto_5

    .line 69
    :sswitch_c
    const-string v0, "Accepted"

    goto :goto_5

    .line 72
    :sswitch_f
    const-string v0, "Non-Authoritative"

    goto :goto_5

    .line 75
    :sswitch_12
    const-string v0, "No Content"

    goto :goto_5

    .line 78
    :sswitch_15
    const-string v0, "Reset Content"

    goto :goto_5

    .line 81
    :sswitch_18
    const-string v0, "Partial Content"

    goto :goto_5

    .line 84
    :sswitch_1b
    const-string v0, "Multiple Choices"

    goto :goto_5

    .line 87
    :sswitch_1e
    const-string v0, "Moved Permanently"

    goto :goto_5

    .line 90
    :sswitch_21
    const-string v0, "Temporary Redirect"

    goto :goto_5

    .line 93
    :sswitch_24
    const-string v0, "See Other"

    goto :goto_5

    .line 96
    :sswitch_27
    const-string v0, "Not Modified"

    goto :goto_5

    .line 99
    :sswitch_2a
    const-string v0, "Use Proxy"

    goto :goto_5

    .line 102
    :sswitch_2d
    const-string v0, "Bad Request"

    goto :goto_5

    .line 105
    :sswitch_30
    const-string v0, "Unauthorized"

    goto :goto_5

    .line 108
    :sswitch_33
    const-string v0, "Payment Required"

    goto :goto_5

    .line 111
    :sswitch_36
    const-string v0, "Forbidden"

    goto :goto_5

    .line 114
    :sswitch_39
    const-string v0, "Not Found"

    goto :goto_5

    .line 117
    :sswitch_3c
    const-string v0, "Method Not Allowed"

    goto :goto_5

    .line 120
    :sswitch_3f
    const-string v0, "Not Acceptable"

    goto :goto_5

    .line 123
    :sswitch_42
    const-string v0, "Proxy Authentication Required"

    goto :goto_5

    .line 126
    :sswitch_45
    const-string v0, "Request Time-Out"

    goto :goto_5

    .line 129
    :sswitch_48
    const-string v0, "Conflict"

    goto :goto_5

    .line 132
    :sswitch_4b
    const-string v0, "Gone"

    goto :goto_5

    .line 135
    :sswitch_4e
    const-string v0, "Length Required"

    goto :goto_5

    .line 138
    :sswitch_51
    const-string v0, "Precondition Failed"

    goto :goto_5

    .line 141
    :sswitch_54
    const-string v0, "Request Entity Too Large"

    goto :goto_5

    .line 144
    :sswitch_57
    const-string v0, "Request-URI Too Large"

    goto :goto_5

    .line 147
    :sswitch_5a
    const-string v0, "Unsupported Media Type"

    goto :goto_5

    .line 150
    :sswitch_5d
    const-string v0, "Internal Server Error"

    goto :goto_5

    .line 153
    :sswitch_60
    const-string v0, "Not Implemented"

    goto :goto_5

    .line 156
    :sswitch_63
    const-string v0, "Bad Gateway"

    goto :goto_5

    .line 159
    :sswitch_66
    const-string v0, "Service Unavailable"

    goto :goto_5

    .line 162
    :sswitch_69
    const-string v0, "Gateway Timeout"

    goto :goto_5

    .line 165
    :sswitch_6c
    const-string v0, "HTTP Version Not Supported"

    goto :goto_5

    .line 61
    nop

    :sswitch_data_70
    .sparse-switch
        0xc8 -> :sswitch_6
        0xc9 -> :sswitch_9
        0xca -> :sswitch_c
        0xcb -> :sswitch_f
        0xcc -> :sswitch_12
        0xcd -> :sswitch_15
        0xce -> :sswitch_18
        0x12c -> :sswitch_1b
        0x12d -> :sswitch_1e
        0x12e -> :sswitch_21
        0x12f -> :sswitch_24
        0x130 -> :sswitch_27
        0x131 -> :sswitch_2a
        0x190 -> :sswitch_2d
        0x191 -> :sswitch_30
        0x192 -> :sswitch_33
        0x193 -> :sswitch_36
        0x194 -> :sswitch_39
        0x195 -> :sswitch_3c
        0x196 -> :sswitch_3f
        0x197 -> :sswitch_42
        0x198 -> :sswitch_45
        0x199 -> :sswitch_48
        0x19a -> :sswitch_4b
        0x19b -> :sswitch_4e
        0x19c -> :sswitch_51
        0x19d -> :sswitch_54
        0x19e -> :sswitch_57
        0x19f -> :sswitch_5a
        0x1f4 -> :sswitch_5d
        0x1f5 -> :sswitch_60
        0x1f6 -> :sswitch_63
        0x1f7 -> :sswitch_66
        0x1f8 -> :sswitch_69
        0x1f9 -> :sswitch_6c
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
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/h/i$b;",
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

.method public g()Lcom/bytedance/sdk/openadsdk/h/e/f;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/e/a;->b:Lcom/bytedance/sdk/openadsdk/h/e/f;

    return-object v0
.end method
