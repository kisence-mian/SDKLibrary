.class public final Lcom/mintegral/msdk/base/utils/s;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public static a(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 22
    const/4 v0, 0x0

    .line 23
    if-eqz p0, :cond_15

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 24
    :cond_15
    const/4 v0, 0x1

    .line 26
    :cond_16
    return v0
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 36
    const/4 v0, 0x1

    .line 37
    if-eqz p0, :cond_15

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 38
    :cond_15
    const/4 v0, 0x0

    .line 40
    :cond_16
    return v0
.end method
