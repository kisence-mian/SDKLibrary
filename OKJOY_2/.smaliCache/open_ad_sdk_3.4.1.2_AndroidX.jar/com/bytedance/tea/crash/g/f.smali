.class public final Lcom/bytedance/tea/crash/g/f;
.super Ljava/lang/Object;
.source "IoUtil.java"


# direct methods
.method public static a(Ljava/io/Closeable;)V
    .registers 1

    .line 17
    if-eqz p0, :cond_8

    .line 18
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_8

    .line 20
    :catchall_6
    move-exception p0

    goto :goto_9

    .line 22
    :cond_8
    :goto_8
    nop

    .line 23
    :goto_9
    return-void
.end method
