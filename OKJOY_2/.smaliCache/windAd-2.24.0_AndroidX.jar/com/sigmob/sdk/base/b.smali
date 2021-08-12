.class public Lcom/sigmob/sdk/base/b;
.super Ljava/lang/Object;


# direct methods
.method public static a()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    const-string v1, "sig_ad"

    const-string v2, "\u5e7f\u544a"

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/common/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a([Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    const-string v1, "sig_skip_args_1"

    const-string v2, "\u8df3\u8fc7 %d"

    invoke-virtual {v0, v1, v2, p0}, Lcom/sigmob/sdk/common/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    const-string v1, "sig_close"

    const-string v2, "\u8df3\u8fc7"

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/common/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs b([Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    const-string v1, "sig_skip_args_2"

    const-string v2, "%d \u8df3\u8fc7"

    invoke-virtual {v0, v1, v2, p0}, Lcom/sigmob/sdk/common/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    const-string v1, "sig_back"

    const-string v2, "\u8fd4\u56de"

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/common/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs c([Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    const-string v1, "sig_skip_ad_args"

    const-string v2, "\u8df3\u8fc7\u5e7f\u544a %d"

    invoke-virtual {v0, v1, v2, p0}, Lcom/sigmob/sdk/common/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    const-string v1, "sig_close_ad_message"

    const-string v2, "\u8fd8\u5269_SEC_\u79d2\uff0c\u60a8\u5c31\u53ef\u4ee5\u83b7\u5f97\u5956\u52b1\u4e86\u54e6!"

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/common/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs d([Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    const-string v1, "sig_close_args"

    const-string v2, "%s \u8df3\u8fc7"

    invoke-virtual {v0, v1, v2, p0}, Lcom/sigmob/sdk/common/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    const-string v1, "sig_close_ad_title"

    const-string v2, "\u5173\u95ed\u89c6\u9891?"

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/common/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    const-string v1, "sig_close_ad_cancel"

    const-string v2, "\u7ee7\u7eed\u64ad\u653e"

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/common/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    const-string v1, "sig_close_ad_ok"

    const-string v2, "\u786e\u5b9a\u5173\u95ed!"

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/common/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
