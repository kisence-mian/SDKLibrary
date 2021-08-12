.class public Lcom/ss/android/downloadlib/a/b/b;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# direct methods
.method public static a()Ljava/lang/String;
    .registers 1

    .line 25
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/a/b/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 17
    :try_start_0
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/b;->a()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MD5"

    invoke-static {p0, v0}, Lcom/ss/android/downloadlib/a/b/c;->a(Ljava/lang/CharSequence;Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/ss/android/downloadlib/a/b/b;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    .line 18
    :catch_f
    move-exception p0

    .line 19
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a([B)Ljava/lang/String;
    .registers 1

    .line 43
    invoke-static {p0}, Lcom/ss/android/downloadlib/a/b/a;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 30
    nop

    .line 32
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_c

    .line 35
    goto :goto_11

    .line 33
    :catch_c
    move-exception p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 36
    :goto_11
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 37
    const-string p0, ""

    return-object p0

    .line 39
    :cond_1a
    return-object p0
.end method
