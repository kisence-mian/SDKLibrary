.class final Lcom/bytedance/sdk/a/a/a$a;
.super Ljava/lang/Thread;
.source "AsyncTimeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 324
    const-string v0, "Okio Watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 325
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/a/a$a;->setDaemon(Z)V

    .line 326
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 332
    :goto_0
    :try_start_0
    const-class v1, Lcom/bytedance/sdk/a/a/a;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_e

    .line 333
    :try_start_3
    invoke-static {}, Lcom/bytedance/sdk/a/a/a;->d()Lcom/bytedance/sdk/a/a/a;

    move-result-object v0

    .line 336
    if-nez v0, :cond_10

    monitor-exit v1

    goto :goto_0

    .line 344
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    :try_start_d
    throw v0
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_e} :catch_e

    .line 348
    :catch_e
    move-exception v0

    goto :goto_0

    .line 340
    :cond_10
    :try_start_10
    sget-object v2, Lcom/bytedance/sdk/a/a/a;->a:Lcom/bytedance/sdk/a/a/a;

    if-ne v0, v2, :cond_19

    .line 341
    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/sdk/a/a/a;->a:Lcom/bytedance/sdk/a/a/a;

    .line 342
    monitor-exit v1

    return-void

    .line 344
    :cond_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_b

    .line 347
    :try_start_1a
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/a;->a_()V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_e

    goto :goto_0
.end method
