.class public final Lcom/bytedance/tea/crash/g/f;
.super Ljava/lang/Object;
.source "IoUtil.java"


# direct methods
.method public static a(Ljava/io/Closeable;)V
    .registers 2

    .prologue
    .line 17
    if-eqz p0, :cond_5

    .line 18
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    .line 23
    :cond_5
    :goto_5
    return-void

    .line 20
    :catch_6
    move-exception v0

    goto :goto_5
.end method
