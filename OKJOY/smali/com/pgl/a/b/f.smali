.class public Lcom/pgl/a/b/f;
.super Ljava/lang/Object;


# direct methods
.method public static a(J)V
    .registers 4

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_7

    :goto_6
    return-void

    :catch_7
    move-exception v0

    goto :goto_6
.end method
