.class public abstract Lcom/umeng/commonsdk/utils/a;
.super Ljava/lang/Object;
.source "CountDownTimer.java"


# static fields
.field private static final e:I = 0x1


# instance fields
.field private final a:J

.field private final b:J

.field private c:J

.field private d:Z

.field private f:Landroid/os/HandlerThread;

.field private g:Landroid/os/Handler;

.field private h:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>(JJ)V
    .registers 6

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/commonsdk/utils/a;->d:Z

    .line 171
    new-instance v0, Lcom/umeng/commonsdk/utils/a$1;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/utils/a$1;-><init>(Lcom/umeng/commonsdk/utils/a;)V

    iput-object v0, p0, Lcom/umeng/commonsdk/utils/a;->h:Landroid/os/Handler$Callback;

    .line 80
    iput-wide p1, p0, Lcom/umeng/commonsdk/utils/a;->a:J

    .line 81
    iput-wide p3, p0, Lcom/umeng/commonsdk/utils/a;->b:J

    .line 82
    invoke-direct {p0}, Lcom/umeng/commonsdk/utils/a;->d()Z

    move-result p1

    if-nez p1, :cond_33

    .line 83
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "CountDownTimerThread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/umeng/commonsdk/utils/a;->f:Landroid/os/HandlerThread;

    .line 84
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 85
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/umeng/commonsdk/utils/a;->f:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object p3, p0, Lcom/umeng/commonsdk/utils/a;->h:Landroid/os/Handler$Callback;

    invoke-direct {p1, p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/umeng/commonsdk/utils/a;->g:Landroid/os/Handler;

    goto :goto_3c

    .line 87
    :cond_33
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/umeng/commonsdk/utils/a;->h:Landroid/os/Handler$Callback;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/umeng/commonsdk/utils/a;->g:Landroid/os/Handler;

    .line 89
    :goto_3c
    return-void
.end method

.method static synthetic a(Lcom/umeng/commonsdk/utils/a;)Z
    .registers 1

    .line 53
    iget-boolean p0, p0, Lcom/umeng/commonsdk/utils/a;->d:Z

    return p0
.end method

.method static synthetic b(Lcom/umeng/commonsdk/utils/a;)J
    .registers 3

    .line 53
    iget-wide v0, p0, Lcom/umeng/commonsdk/utils/a;->c:J

    return-wide v0
.end method

.method static synthetic c(Lcom/umeng/commonsdk/utils/a;)Landroid/os/HandlerThread;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/umeng/commonsdk/utils/a;->f:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic d(Lcom/umeng/commonsdk/utils/a;)J
    .registers 3

    .line 53
    iget-wide v0, p0, Lcom/umeng/commonsdk/utils/a;->b:J

    return-wide v0
.end method

.method private d()Z
    .registers 3

    .line 115
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/umeng/commonsdk/utils/a;)Landroid/os/Handler;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/umeng/commonsdk/utils/a;->g:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 3

    monitor-enter p0

    .line 95
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/umeng/commonsdk/utils/a;->d:Z

    .line 96
    iget-object v1, p0, Lcom/umeng/commonsdk/utils/a;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 97
    monitor-exit p0

    return-void

    .line 94
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract a(J)V
.end method

.method public final declared-synchronized b()Lcom/umeng/commonsdk/utils/a;
    .registers 6

    monitor-enter p0

    .line 103
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/umeng/commonsdk/utils/a;->d:Z

    .line 104
    iget-wide v0, p0, Lcom/umeng/commonsdk/utils/a;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_11

    .line 105
    invoke-virtual {p0}, Lcom/umeng/commonsdk/utils/a;->c()V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_26

    .line 106
    monitor-exit p0

    return-object p0

    .line 108
    :cond_11
    :try_start_11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/umeng/commonsdk/utils/a;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/umeng/commonsdk/utils/a;->c:J

    .line 109
    iget-object v0, p0, Lcom/umeng/commonsdk/utils/a;->g:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_26

    .line 110
    monitor-exit p0

    return-object p0

    .line 102
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract c()V
.end method
