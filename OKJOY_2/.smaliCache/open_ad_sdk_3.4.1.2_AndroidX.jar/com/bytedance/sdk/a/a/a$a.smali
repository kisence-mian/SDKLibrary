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

    .line 328
    const-string v0, "Okio Watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 329
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/a/a$a;->setDaemon(Z)V

    .line 330
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 336
    :goto_0
    :try_start_0
    const-class v0, Lcom/bytedance/sdk/a/a/a;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_1c

    .line 337
    :try_start_3
    invoke-static {}, Lcom/bytedance/sdk/a/a/a;->d()Lcom/bytedance/sdk/a/a/a;

    move-result-object v1

    .line 340
    if-nez v1, :cond_b

    monitor-exit v0

    goto :goto_0

    .line 344
    :cond_b
    sget-object v2, Lcom/bytedance/sdk/a/a/a;->a:Lcom/bytedance/sdk/a/a/a;

    if-ne v1, v2, :cond_14

    .line 345
    const/4 v1, 0x0

    sput-object v1, Lcom/bytedance/sdk/a/a/a;->a:Lcom/bytedance/sdk/a/a/a;

    .line 346
    monitor-exit v0

    return-void

    .line 348
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_19

    .line 351
    :try_start_15
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/a/a;->a_()V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_1c

    goto :goto_1d

    .line 348
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    :try_start_1b
    throw v1
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1c} :catch_1c

    .line 352
    :catch_1c
    move-exception v0

    .line 353
    :goto_1d
    goto :goto_0
.end method
