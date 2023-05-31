.class public abstract Lcom/tencent/turingfd/sdk/ams/ad/synchronized;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/turingfd/sdk/ams/ad/volatile;


# instance fields
.field public sc:Lcom/tencent/turingfd/sdk/ams/ad/transient;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/os/IBinder;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/content/ServiceConnection;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    .line 3
    check-cast v0, Lcom/tencent/turingfd/sdk/ams/ad/Aquila;

    .line 4
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/tencent/turingfd/sdk/ams/ad/long;->W:[I

    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/long;->get([I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    sget-object v2, Lcom/tencent/turingfd/sdk/ams/ad/long;->Q:[I

    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/long;->get([I)Ljava/lang/String;

    move-result-object v2

    .line 6
    sget-object v3, Lcom/tencent/turingfd/sdk/ams/ad/long;->R:[I

    invoke-static {v3}, Lcom/tencent/turingfd/sdk/ams/ad/long;->get([I)Ljava/lang/String;

    move-result-object v3

    .line 7
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 8
    new-instance v2, Lcom/tencent/turingfd/sdk/ams/ad/implements;

    invoke-direct {v2, p0, p2, p3, v1}, Lcom/tencent/turingfd/sdk/ams/ad/implements;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/synchronized;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)V

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_36

    const/16 v0, -0x64

    .line 13
    :goto_35
    return v0

    .line 9
    :cond_36
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_43

    .line 10
    monitor-enter v1

    const-wide/16 v2, 0x3e8

    .line 11
    :try_start_3f
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_42} :catch_51
    .catchall {:try_start_3f .. :try_end_42} :catchall_4c

    .line 12
    :goto_42
    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_4c

    .line 13
    :cond_43
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4f

    const/16 v0, -0x69

    goto :goto_35

    .line 11
    :catchall_4c
    move-exception v0

    .line 12
    :try_start_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v0

    .line 13
    :cond_4f
    const/4 v0, 0x0

    goto :goto_35

    :catch_51
    move-exception v0

    goto :goto_42
.end method

.method public final a(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/os/IBinder;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/content/ServiceConnection;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 14
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 16
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/instanceof;

    move-object v1, p0

    move-object v2, p2

    move-object v4, p4

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/tencent/turingfd/sdk/ams/ad/instanceof;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/synchronized;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)V

    .line 17
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 18
    monitor-enter v7

    const-wide/16 v0, 0x3e8

    .line 19
    :try_start_1f
    invoke-virtual {v7, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_22} :catch_31
    .catchall {:try_start_1f .. :try_end_22} :catchall_2e

    .line 20
    :goto_22
    :try_start_22
    monitor-exit v7
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_2e

    .line 21
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 19
    :catchall_2e
    move-exception v0

    .line 22
    :try_start_2f
    monitor-exit v7
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v0

    :catch_31
    move-exception v0

    goto :goto_22
.end method

.method public abstract a(Landroid/os/IBinder;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public a(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/turingfd/sdk/ams/ad/synchronized;->x(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/transient;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/synchronized;->sc:Lcom/tencent/turingfd/sdk/ams/ad/transient;

    return-void
.end method

.method public b(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/transient;
    .registers 3

    .prologue
    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/synchronized;->sc:Lcom/tencent/turingfd/sdk/ams/ad/transient;

    if-eqz v0, :cond_8

    .line 2
    iget v0, v0, Lcom/tencent/turingfd/sdk/ams/ad/transient;->Sb:I

    if-eqz v0, :cond_e

    .line 3
    :cond_8
    invoke-virtual {p0, p1}, Lcom/tencent/turingfd/sdk/ams/ad/synchronized;->x(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/transient;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/synchronized;->sc:Lcom/tencent/turingfd/sdk/ams/ad/transient;

    .line 4
    :cond_e
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/synchronized;->sc:Lcom/tencent/turingfd/sdk/ams/ad/transient;

    return-object v0
.end method

.method public final x(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/transient;
    .registers 6

    .prologue
    const/4 v0, -0x1

    .line 1
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const-string v1, ""

    .line 2
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3
    :try_start_b
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 4
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 5
    invoke-virtual {p0, p1, v1, v3}, Lcom/tencent/turingfd/sdk/ams/ad/synchronized;->a(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)I
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_18} :catch_31

    move-result v0

    if-nez v0, :cond_2f

    .line 6
    :try_start_1b
    invoke-virtual {p0, p1, v1, v3, v2}, Lcom/tencent/turingfd/sdk/ams/ad/synchronized;->a(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)I
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1e} :catch_2c

    move-result v0

    move v1, v0

    .line 7
    :goto_20
    new-instance v3, Lcom/tencent/turingfd/sdk/ams/ad/transient;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/transient;-><init>(Ljava/lang/String;I)V

    return-object v3

    .line 6
    :catch_2c
    move-exception v1

    move v1, v0

    goto :goto_20

    :cond_2f
    move v1, v0

    goto :goto_20

    :catch_31
    move-exception v1

    move v1, v0

    goto :goto_20
.end method
