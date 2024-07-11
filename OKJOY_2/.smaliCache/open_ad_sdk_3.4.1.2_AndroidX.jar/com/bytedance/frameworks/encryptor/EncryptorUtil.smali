.class public Lcom/bytedance/frameworks/encryptor/EncryptorUtil;
.super Ljava/lang/Object;
.source "EncryptorUtil.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 6
    :try_start_0
    const-string v0, "Encryptor"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_6

    .line 9
    goto :goto_a

    .line 7
    :catch_6
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 10
    :goto_a
    return-void
.end method

.method public static a([BI)[B
    .registers 4

    .line 14
    const/4 v0, 0x0

    if-eqz p0, :cond_10

    if-lez p1, :cond_10

    :try_start_5
    array-length v1, p0

    if-eq v1, p1, :cond_9

    goto :goto_10

    .line 17
    :cond_9
    invoke-static {p0, p1}, Lcom/bytedance/frameworks/encryptor/EncryptorUtil;->ttEncrypt([BI)[B

    move-result-object p0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_e

    return-object p0

    .line 18
    :catchall_e
    move-exception p0

    .line 21
    return-object v0

    .line 15
    :cond_10
    :goto_10
    return-object v0
.end method

.method private static native ttEncrypt([BI)[B
.end method
