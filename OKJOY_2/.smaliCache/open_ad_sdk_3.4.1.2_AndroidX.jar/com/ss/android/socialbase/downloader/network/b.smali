.class public Lcom/ss/android/socialbase/downloader/network/b;
.super Ljava/lang/Object;
.source "DeviceBandwidthSampler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/network/b$a;
    }
.end annotation


# static fields
.field public static volatile a:Z

.field private static final b:Ljava/lang/String;

.field private static g:J

.field private static volatile h:Lcom/ss/android/socialbase/downloader/network/b;


# instance fields
.field private final c:Lcom/ss/android/socialbase/downloader/network/k;

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final e:Lcom/ss/android/socialbase/downloader/network/b$a;

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 21
    const-class v0, Lcom/ss/android/socialbase/downloader/network/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/network/b;->b:Ljava/lang/String;

    .line 34
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/ss/android/socialbase/downloader/network/b;->g:J

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/ss/android/socialbase/downloader/network/b;->h:Lcom/ss/android/socialbase/downloader/network/b;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/k;->a()Lcom/ss/android/socialbase/downloader/network/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/network/b;->c:Lcom/ss/android/socialbase/downloader/network/k;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/network/b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 55
    new-instance v0, Lcom/ss/android/socialbase/downloader/network/b$a;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/h/e;->a()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ss/android/socialbase/downloader/network/b$a;-><init>(Lcom/ss/android/socialbase/downloader/network/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/network/b;->e:Lcom/ss/android/socialbase/downloader/network/b$a;

    .line 56
    return-void
.end method

.method public static a()Lcom/ss/android/socialbase/downloader/network/b;
    .registers 2

    .line 43
    sget-object v0, Lcom/ss/android/socialbase/downloader/network/b;->h:Lcom/ss/android/socialbase/downloader/network/b;

    if-nez v0, :cond_17

    .line 44
    const-class v0, Lcom/ss/android/socialbase/downloader/network/b;

    monitor-enter v0

    .line 45
    :try_start_7
    sget-object v1, Lcom/ss/android/socialbase/downloader/network/b;->h:Lcom/ss/android/socialbase/downloader/network/b;

    if-nez v1, :cond_12

    .line 46
    new-instance v1, Lcom/ss/android/socialbase/downloader/network/b;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/network/b;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/network/b;->h:Lcom/ss/android/socialbase/downloader/network/b;

    .line 47
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 49
    :cond_17
    :goto_17
    sget-object v0, Lcom/ss/android/socialbase/downloader/network/b;->h:Lcom/ss/android/socialbase/downloader/network/b;

    return-object v0
.end method

.method public static d()J
    .registers 4

    .line 90
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static e()V
    .registers 1

    .line 94
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->b(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/ss/android/socialbase/downloader/network/b;->a:Z

    .line 95
    return-void
.end method


# virtual methods
.method public b()V
    .registers 4

    .line 63
    :try_start_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/network/b;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSampling: mSamplingCounter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/network/b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_2d

    .line 65
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/b;->e:Lcom/ss/android/socialbase/downloader/network/b$a;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/network/b$a;->a()V

    .line 66
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/network/b;->f:J
    :try_end_2d
    .catchall {:try_start_0 .. :try_end_2d} :catchall_2e

    .line 70
    :cond_2d
    goto :goto_2f

    .line 68
    :catchall_2e
    move-exception v0

    .line 71
    :goto_2f
    return-void
.end method

.method public c()V
    .registers 4

    .line 79
    :try_start_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/network/b;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopSampling: mSamplingCounter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/network/b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_2a

    .line 81
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/b;->e:Lcom/ss/android/socialbase/downloader/network/b$a;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/network/b$a;->b()V

    .line 82
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/network/b;->g()V
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_2b

    .line 86
    :cond_2a
    goto :goto_2c

    .line 84
    :catchall_2b
    move-exception v0

    .line 87
    :goto_2c
    return-void
.end method

.method protected f()V
    .registers 10

    .line 104
    :try_start_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/b;->e()V

    .line 107
    sget-boolean v0, Lcom/ss/android/socialbase/downloader/network/b;->a:Z

    if-eqz v0, :cond_c

    .line 108
    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/b;->d()J

    move-result-wide v0

    goto :goto_10

    .line 110
    :cond_c
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    .line 112
    :goto_10
    sget-wide v2, Lcom/ss/android/socialbase/downloader/network/b;->g:J

    sub-long v4, v0, v2

    .line 113
    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-ltz v2, :cond_2f

    .line 114
    monitor-enter p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_32

    .line 115
    :try_start_1b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 116
    iget-object v6, p0, Lcom/ss/android/socialbase/downloader/network/b;->c:Lcom/ss/android/socialbase/downloader/network/k;

    iget-wide v7, p0, Lcom/ss/android/socialbase/downloader/network/b;->f:J

    sub-long v7, v2, v7

    invoke-virtual {v6, v4, v5, v7, v8}, Lcom/ss/android/socialbase/downloader/network/k;->a(JJ)V

    .line 118
    iput-wide v2, p0, Lcom/ss/android/socialbase/downloader/network/b;->f:J

    .line 119
    monitor-exit p0

    goto :goto_2f

    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1b .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw v0

    .line 121
    :cond_2f
    :goto_2f
    sput-wide v0, Lcom/ss/android/socialbase/downloader/network/b;->g:J
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_32

    .line 124
    goto :goto_36

    .line 122
    :catch_32
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    :goto_36
    return-void
.end method

.method protected g()V
    .registers 3

    .line 133
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/network/b;->f()V

    .line 134
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/ss/android/socialbase/downloader/network/b;->g:J

    .line 135
    return-void
.end method
