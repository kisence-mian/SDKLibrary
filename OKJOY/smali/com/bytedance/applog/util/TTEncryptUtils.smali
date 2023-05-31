.class public Lcom/bytedance/applog/util/TTEncryptUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    :try_start_0
    const-string v0, "tobEncrypt"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_6

    .line 17
    :goto_5
    return-void

    .line 14
    :catch_6
    move-exception v0

    .line 15
    invoke-static {v0}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method public static a([BI)[B
    .registers 3

    .prologue
    .line 21
    :try_start_0
    invoke-static {p0, p1}, Lcom/bytedance/applog/util/TTEncryptUtils;->ttEncrypt([BI)[B
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 25
    :goto_4
    return-object v0

    .line 22
    :catch_5
    move-exception v0

    .line 25
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static b([BI)[B
    .registers 3

    .prologue
    .line 30
    :try_start_0
    invoke-static {p0, p1}, Lcom/bytedance/applog/util/TTEncryptUtils;->ttDecrypt([BI)[B
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 34
    :goto_4
    return-object v0

    .line 31
    :catch_5
    move-exception v0

    .line 34
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private static native ttDecrypt([BI)[B
.end method

.method private static native ttEncrypt([BI)[B
.end method
