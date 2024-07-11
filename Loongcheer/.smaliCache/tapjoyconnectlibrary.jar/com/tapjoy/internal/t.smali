.class public final Lcom/tapjoy/internal/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/os/Handler;


# direct methods
.method public static declared-synchronized a()Landroid/os/Handler;
    .registers 3

    const-class v0, Lcom/tapjoy/internal/t;

    monitor-enter v0

    .line 24
    :try_start_3
    sget-object v1, Lcom/tapjoy/internal/t;->a:Landroid/os/Handler;

    if-nez v1, :cond_12

    .line 25
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/tapjoy/internal/t;->a:Landroid/os/Handler;

    .line 27
    :cond_12
    sget-object v1, Lcom/tapjoy/internal/t;->a:Landroid/os/Handler;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v0

    return-object v1

    .line 23
    :catchall_16
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Landroid/os/Handler;)Lcom/tapjoy/internal/av;
    .registers 2

    .line 60
    new-instance v0, Lcom/tapjoy/internal/t$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/t$1;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method
