.class public Lcom/bytedance/sdk/openadsdk/c/b;
.super Ljava/lang/Object;
.source "AdEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/c/b$b;,
        Lcom/bytedance/sdk/openadsdk/c/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/bytedance/sdk/openadsdk/c/i;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/c/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/c/g",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:Landroid/os/Handler;

.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/c/e;Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/c/g$b;Lcom/bytedance/sdk/openadsdk/c/g$a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/c/e",
            "<TT;>;",
            "Lcom/bytedance/sdk/openadsdk/core/p",
            "<TT;>;",
            "Lcom/bytedance/sdk/openadsdk/c/g$b;",
            "Lcom/bytedance/sdk/openadsdk/c/g$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/g;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/c/g;-><init>(Lcom/bytedance/sdk/openadsdk/c/e;Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/c/g$b;Lcom/bytedance/sdk/openadsdk/c/g$a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/b;->a:Lcom/bytedance/sdk/openadsdk/c/g;

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/c/e;Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/c/g$b;Lcom/bytedance/sdk/openadsdk/c/g$a;Lcom/bytedance/sdk/openadsdk/c/g;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/c/e",
            "<TT;>;",
            "Lcom/bytedance/sdk/openadsdk/core/p",
            "<TT;>;",
            "Lcom/bytedance/sdk/openadsdk/c/g$b;",
            "Lcom/bytedance/sdk/openadsdk/c/g$a;",
            "Lcom/bytedance/sdk/openadsdk/c/g",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/c/b;->a:Lcom/bytedance/sdk/openadsdk/c/g;

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    return-void
.end method

.method public static c()Lcom/bytedance/sdk/openadsdk/c/b$a;
    .registers 1

    .prologue
    .line 75
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/b$a;->e()Lcom/bytedance/sdk/openadsdk/c/b$a;

    move-result-object v0

    return-object v0
.end method

.method public static d()Lcom/bytedance/sdk/openadsdk/c/b$b;
    .registers 1

    .prologue
    .line 79
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/b$b;->e()Lcom/bytedance/sdk/openadsdk/c/b$b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 4

    .prologue
    .line 44
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_15

    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/b;->a:Lcom/bytedance/sdk/openadsdk/c/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/g;->getLooper()Landroid/os/Looper;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_4c

    move-result-object v0

    if-eqz v0, :cond_17

    .line 55
    :cond_15
    :goto_15
    monitor-exit p0

    return-void

    .line 47
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_15

    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/b;->a:Lcom/bytedance/sdk/openadsdk/c/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/g;->start()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/b;->a:Lcom/bytedance/sdk/openadsdk/c/g;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/c/g;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/b;->a:Lcom/bytedance/sdk/openadsdk/c/g;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/b;->b:Landroid/os/Handler;

    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/b;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 51
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 52
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/b;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_4b
    .catchall {:try_start_17 .. :try_end_4b} :catchall_4c

    goto :goto_15

    .line 44
    :catchall_4c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/c/i;)V
    .registers 4
    .param p1    # Lcom/bytedance/sdk/openadsdk/c/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    .line 72
    :goto_8
    return-void

    .line 68
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/b;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 69
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 70
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 71
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/b;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_8
.end method

.method public b()V
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/b;->a:Lcom/bytedance/sdk/openadsdk/c/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/g;->quit()Z

    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/b;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 61
    return-void
.end method
