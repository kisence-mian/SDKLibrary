.class public Lcom/bytedance/sdk/openadsdk/multipro/c;
.super Ljava/lang/Object;
.source "ParamEncode.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 12
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 13
    const-string v0, ""

    .line 16
    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 20
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 21
    const-string v0, ""

    .line 24
    :goto_8
    return-object v0

    .line 23
    :cond_9
    const/16 v0, 0xa

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 24
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_8
.end method
