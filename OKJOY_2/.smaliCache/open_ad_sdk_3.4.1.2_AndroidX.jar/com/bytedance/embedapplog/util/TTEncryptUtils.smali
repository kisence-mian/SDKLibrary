.class public Lcom/bytedance/embedapplog/util/TTEncryptUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    :try_start_0
    const-string v0, "tobEmbedEncrypt"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_6

    .line 16
    goto :goto_a

    .line 14
    :catch_6
    move-exception v0

    .line 15
    invoke-static {v0}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 17
    :goto_a
    return-void
.end method

.method public static a([BI)[B
    .registers 2

    .line 21
    :try_start_0
    invoke-static {p0, p1}, Lcom/bytedance/embedapplog/util/TTEncryptUtils;->ttEncrypt([BI)[B

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object p0

    .line 22
    :catchall_5
    move-exception p0

    .line 25
    const/4 p0, 0x0

    return-object p0
.end method

.method private static native ttEncrypt([BI)[B
.end method
