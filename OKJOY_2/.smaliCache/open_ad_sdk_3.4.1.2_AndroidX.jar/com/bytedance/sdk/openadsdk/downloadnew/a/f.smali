.class public Lcom/bytedance/sdk/openadsdk/downloadnew/a/f;
.super Ljava/lang/Object;
.source "DownloadUtils.java"


# direct methods
.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Ljava/lang/String;
    .registers 4

    .line 11
    const-string v0, ""

    if-nez p0, :cond_5

    .line 12
    return-object v0

    .line 14
    :cond_5
    nop

    .line 15
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v1

    .line 16
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 17
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_47

    .line 18
    :cond_1b
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->S()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 19
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->S()Ljava/lang/String;

    move-result-object v0

    goto :goto_47

    .line 20
    :cond_2a
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ae()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 21
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ae()Ljava/lang/String;

    move-result-object v0

    goto :goto_47

    .line 22
    :cond_39
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->az()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 23
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->az()Ljava/lang/String;

    move-result-object v0

    .line 25
    :cond_47
    :goto_47
    return-object v0
.end method
