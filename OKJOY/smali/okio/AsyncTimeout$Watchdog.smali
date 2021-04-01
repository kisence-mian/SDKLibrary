.class final Lokio/AsyncTimeout$Watchdog;
.super Ljava/lang/Thread;
.source "AsyncTimeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/AsyncTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Watchdog"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 303
    const-string v0, "Okio Watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 304
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokio/AsyncTimeout$Watchdog;->setDaemon(Z)V

    .line 305
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 311
    :goto_0
    :try_start_0
    const-class v2, Lokio/AsyncTimeout;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_e

    .line 312
    :try_start_3
    invoke-static {}, Lokio/AsyncTimeout;->awaitTimeout()Lokio/AsyncTimeout;

    move-result-object v0

    .line 315
    .local v0, "timedOut":Lokio/AsyncTimeout;
    if-nez v0, :cond_10

    monitor-exit v2

    goto :goto_0

    .line 323
    .end local v0    # "timedOut":Lokio/AsyncTimeout;
    :catchall_b
    move-exception v1

    monitor-exit v2
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    :try_start_d
    throw v1
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_e} :catch_e

    .line 327
    :catch_e
    move-exception v1

    goto :goto_0

    .line 319
    .restart local v0    # "timedOut":Lokio/AsyncTimeout;
    :cond_10
    :try_start_10
    sget-object v1, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    if-ne v0, v1, :cond_19

    .line 320
    const/4 v1, 0x0

    sput-object v1, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    .line 321
    monitor-exit v2

    return-void

    .line 323
    :cond_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_b

    .line 326
    :try_start_1a
    invoke-virtual {v0}, Lokio/AsyncTimeout;->timedOut()V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_e

    goto :goto_0
.end method
