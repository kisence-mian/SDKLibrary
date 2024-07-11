.class public Lcom/kwai/filedownloader/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/j$b;,
        Lcom/kwai/filedownloader/j$a;
    }
.end annotation


# static fields
.field static a:I

.field static b:I


# instance fields
.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Landroid/os/Handler;

.field private final e:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/kwai/filedownloader/s;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Object;

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kwai/filedownloader/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xa

    sput v0, Lcom/kwai/filedownloader/j;->a:I

    const/4 v0, 0x5

    sput v0, Lcom/kwai/filedownloader/j;->b:I

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    const-string v1, "BlockCompleted"

    invoke-static {v0, v1}, Lcom/kwai/filedownloader/f/b;->a(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/j;->c:Ljava/util/concurrent/Executor;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/j;->f:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/j;->g:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/kwai/filedownloader/j$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/kwai/filedownloader/j$b;-><init>(Lcom/kwai/filedownloader/j$1;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/kwai/filedownloader/j;->d:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/j;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwai/filedownloader/j$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/kwai/filedownloader/j;-><init>()V

    return-void
.end method

.method public static a()Lcom/kwai/filedownloader/j;
    .registers 1

    invoke-static {}, Lcom/kwai/filedownloader/j$a;->a()Lcom/kwai/filedownloader/j;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/kwai/filedownloader/j;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwai/filedownloader/j;->c()V

    return-void
.end method

.method private b(Lcom/kwai/filedownloader/s;)V
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/j;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static b()Z
    .registers 1

    sget v0, Lcom/kwai/filedownloader/j;->a:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private c()V
    .registers 7

    iget-object v0, p0, Lcom/kwai/filedownloader/j;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/kwai/filedownloader/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    monitor-exit v0

    return-void

    :cond_d
    iget-object v1, p0, Lcom/kwai/filedownloader/j;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    monitor-exit v0

    return-void

    :cond_17
    invoke-static {}, Lcom/kwai/filedownloader/j;->b()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/kwai/filedownloader/j;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v3, p0, Lcom/kwai/filedownloader/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->drainTo(Ljava/util/Collection;)I

    goto :goto_45

    :cond_26
    sget v1, Lcom/kwai/filedownloader/j;->a:I

    iget-object v3, p0, Lcom/kwai/filedownloader/j;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v3

    sget v4, Lcom/kwai/filedownloader/j;->b:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_34
    if-ge v2, v3, :cond_44

    iget-object v4, p0, Lcom/kwai/filedownloader/j;->g:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/kwai/filedownloader/j;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :cond_44
    move v2, v1

    :goto_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_54

    iget-object v0, p0, Lcom/kwai/filedownloader/j;->d:Landroid/os/Handler;

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/kwai/filedownloader/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :catchall_54
    move-exception v1

    :try_start_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v1
.end method

.method private c(Lcom/kwai/filedownloader/s;)V
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/j;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/kwai/filedownloader/j;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-direct {p0}, Lcom/kwai/filedownloader/j;->c()V

    return-void

    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method


# virtual methods
.method a(Lcom/kwai/filedownloader/s;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/kwai/filedownloader/j;->a(Lcom/kwai/filedownloader/s;Z)V

    return-void
.end method

.method a(Lcom/kwai/filedownloader/s;Z)V
    .registers 6

    invoke-interface {p1}, Lcom/kwai/filedownloader/s;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Lcom/kwai/filedownloader/s;->b()V

    return-void

    :cond_a
    invoke-interface {p1}, Lcom/kwai/filedownloader/s;->d()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object p2, p0, Lcom/kwai/filedownloader/j;->c:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/kwai/filedownloader/j$1;

    invoke-direct {v0, p0, p1}, Lcom/kwai/filedownloader/j$1;-><init>(Lcom/kwai/filedownloader/j;Lcom/kwai/filedownloader/s;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1b
    invoke-static {}, Lcom/kwai/filedownloader/j;->b()Z

    move-result v0

    if-nez v0, :cond_54

    iget-object v0, p0, Lcom/kwai/filedownloader/j;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_54

    iget-object v0, p0, Lcom/kwai/filedownloader/j;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2c
    iget-object v1, p0, Lcom/kwai/filedownloader/j;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4a

    iget-object v1, p0, Lcom/kwai/filedownloader/j;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwai/filedownloader/s;

    invoke-direct {p0, v2}, Lcom/kwai/filedownloader/j;->b(Lcom/kwai/filedownloader/s;)V

    goto :goto_3a

    :cond_4a
    iget-object v1, p0, Lcom/kwai/filedownloader/j;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    monitor-exit v0

    goto :goto_54

    :catchall_51
    move-exception p1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_2c .. :try_end_53} :catchall_51

    throw p1

    :cond_54
    :goto_54
    invoke-static {}, Lcom/kwai/filedownloader/j;->b()Z

    move-result v0

    if-eqz v0, :cond_61

    if-eqz p2, :cond_5d

    goto :goto_61

    :cond_5d
    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/j;->c(Lcom/kwai/filedownloader/s;)V

    return-void

    :cond_61
    :goto_61
    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/j;->b(Lcom/kwai/filedownloader/s;)V

    return-void
.end method
