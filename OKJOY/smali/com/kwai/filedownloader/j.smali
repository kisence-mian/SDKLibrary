.class public Lcom/kwai/filedownloader/j;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/j$c;,
        Lcom/kwai/filedownloader/j$b;
    }
.end annotation


# static fields
.field static f:I = 0xa

.field static g:I = 0x5


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Landroid/os/Handler;

.field private final c:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/kwai/filedownloader/t;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kwai/filedownloader/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    const-string v1, "BlockCompleted"

    invoke-static {v0, v1}, Lcom/kwai/filedownloader/h0/b;->a(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/j;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/j;->d:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/j;->e:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/kwai/filedownloader/j$c;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/kwai/filedownloader/j$c;-><init>(Lcom/kwai/filedownloader/j$a;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/kwai/filedownloader/j;->b:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/j;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwai/filedownloader/j$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/kwai/filedownloader/j;-><init>()V

    return-void
.end method

.method public static a()Lcom/kwai/filedownloader/j;
    .registers 1

    invoke-static {}, Lcom/kwai/filedownloader/j$b;->a()Lcom/kwai/filedownloader/j;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/kwai/filedownloader/j;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwai/filedownloader/j;->c()V

    return-void
.end method

.method private b(Lcom/kwai/filedownloader/t;)V
    .registers 4

    iget-object v1, p0, Lcom/kwai/filedownloader/j;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/kwai/filedownloader/j;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-direct {p0}, Lcom/kwai/filedownloader/j;->c()V

    return-void

    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public static b()Z
    .registers 1

    sget v0, Lcom/kwai/filedownloader/j;->f:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private c()V
    .registers 7

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/kwai/filedownloader/j;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v1, p0, Lcom/kwai/filedownloader/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    monitor-exit v2

    :goto_d
    return-void

    :cond_e
    iget-object v1, p0, Lcom/kwai/filedownloader/j;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    monitor-exit v2

    goto :goto_d

    :catchall_18
    move-exception v0

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_18

    throw v0

    :cond_1b
    :try_start_1b
    invoke-static {}, Lcom/kwai/filedownloader/j;->b()Z

    move-result v1

    if-nez v1, :cond_37

    iget-object v1, p0, Lcom/kwai/filedownloader/j;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v3, p0, Lcom/kwai/filedownloader/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->drainTo(Ljava/util/Collection;)I

    :goto_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_18

    iget-object v1, p0, Lcom/kwai/filedownloader/j;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/kwai/filedownloader/j;->e:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_d

    :cond_37
    :try_start_37
    sget v1, Lcom/kwai/filedownloader/j;->f:I

    iget-object v3, p0, Lcom/kwai/filedownloader/j;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v3

    sget v4, Lcom/kwai/filedownloader/j;->g:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_45
    if-ge v0, v3, :cond_55

    iget-object v4, p0, Lcom/kwai/filedownloader/j;->e:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/kwai/filedownloader/j;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_52
    .catchall {:try_start_37 .. :try_end_52} :catchall_18

    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    :cond_55
    move v0, v1

    goto :goto_28
.end method

.method private c(Lcom/kwai/filedownloader/t;)V
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/j;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method a(Lcom/kwai/filedownloader/t;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/kwai/filedownloader/j;->a(Lcom/kwai/filedownloader/t;Z)V

    return-void
.end method

.method a(Lcom/kwai/filedownloader/t;Z)V
    .registers 6

    invoke-interface {p1}, Lcom/kwai/filedownloader/t;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Lcom/kwai/filedownloader/t;->d()V

    :goto_9
    return-void

    :cond_a
    invoke-interface {p1}, Lcom/kwai/filedownloader/t;->e()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/kwai/filedownloader/j;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/kwai/filedownloader/j$a;

    invoke-direct {v1, p0, p1}, Lcom/kwai/filedownloader/j$a;-><init>(Lcom/kwai/filedownloader/j;Lcom/kwai/filedownloader/t;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_9

    :cond_1b
    invoke-static {}, Lcom/kwai/filedownloader/j;->b()Z

    move-result v0

    if-nez v0, :cond_53

    iget-object v0, p0, Lcom/kwai/filedownloader/j;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_53

    iget-object v1, p0, Lcom/kwai/filedownloader/j;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2c
    iget-object v0, p0, Lcom/kwai/filedownloader/j;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/kwai/filedownloader/j;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/t;

    invoke-direct {p0, v0}, Lcom/kwai/filedownloader/j;->c(Lcom/kwai/filedownloader/t;)V

    goto :goto_3a

    :catchall_4a
    move-exception v0

    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_2c .. :try_end_4c} :catchall_4a

    throw v0

    :cond_4d
    :try_start_4d
    iget-object v0, p0, Lcom/kwai/filedownloader/j;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_4d .. :try_end_53} :catchall_4a

    :cond_53
    invoke-static {}, Lcom/kwai/filedownloader/j;->b()Z

    move-result v0

    if-eqz v0, :cond_5b

    if-eqz p2, :cond_5f

    :cond_5b
    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/j;->c(Lcom/kwai/filedownloader/t;)V

    goto :goto_9

    :cond_5f
    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/j;->b(Lcom/kwai/filedownloader/t;)V

    goto :goto_9
.end method
