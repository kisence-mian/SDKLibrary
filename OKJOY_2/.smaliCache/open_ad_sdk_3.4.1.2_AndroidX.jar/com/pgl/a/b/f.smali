.class public Lcom/pgl/a/b/f;
.super Ljava/lang/Object;


# direct methods
.method public static a(J)V
    .registers 2

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    goto :goto_8

    :catchall_7
    move-exception p0

    :goto_8
    return-void
.end method
