.class public Lcom/ss/android/socialbase/downloader/i/a;
.super Ljava/lang/Object;
.source "DeviceBandwidthSampler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/i/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static f:J

.field private static volatile g:Lcom/ss/android/socialbase/downloader/i/a;


# instance fields
.field private final b:Lcom/ss/android/socialbase/downloader/i/g;

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final d:Lcom/ss/android/socialbase/downloader/i/a$a;

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 21
    const-class v0, Lcom/ss/android/socialbase/downloader/i/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/i/a;->a:Ljava/lang/String;

    .line 32
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/ss/android/socialbase/downloader/i/a;->f:J

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/ss/android/socialbase/downloader/i/a;->g:Lcom/ss/android/socialbase/downloader/i/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/g;->a()Lcom/ss/android/socialbase/downloader/i/g;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/i/a;->b:Lcom/ss/android/socialbase/downloader/i/g;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/i/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ParseThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 55
    new-instance v1, Lcom/ss/android/socialbase/downloader/i/a$a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/ss/android/socialbase/downloader/i/a$a;-><init>(Lcom/ss/android/socialbase/downloader/i/a;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/i/a;->d:Lcom/ss/android/socialbase/downloader/i/a$a;

    .line 56
    return-void
.end method

.method public static a()Lcom/ss/android/socialbase/downloader/i/a;
    .registers 2

    .prologue
    .line 41
    sget-object v0, Lcom/ss/android/socialbase/downloader/i/a;->g:Lcom/ss/android/socialbase/downloader/i/a;

    if-nez v0, :cond_13

    .line 42
    const-class v1, Lcom/ss/android/socialbase/downloader/i/a;

    monitor-enter v1

    .line 43
    :try_start_7
    sget-object v0, Lcom/ss/android/socialbase/downloader/i/a;->g:Lcom/ss/android/socialbase/downloader/i/a;

    if-nez v0, :cond_12

    .line 44
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/a;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/i/a;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/i/a;->g:Lcom/ss/android/socialbase/downloader/i/a;

    .line 45
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 47
    :cond_13
    sget-object v0, Lcom/ss/android/socialbase/downloader/i/a;->g:Lcom/ss/android/socialbase/downloader/i/a;

    return-object v0

    .line 45
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static d()J
    .registers 4

    .prologue
    .line 94
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public b()V
    .registers 3

    .prologue
    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_20

    .line 64
    invoke-static {}, Lcom/ss/android/socialbase/downloader/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 65
    sget-object v0, Lcom/ss/android/socialbase/downloader/i/a;->a:Ljava/lang/String;

    const-string v1, "startSampling"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_15
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/a;->d:Lcom/ss/android/socialbase/downloader/i/a$a;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/i/a$a;->a()V

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/i/a;->e:J
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_20} :catch_21

    .line 73
    :cond_20
    :goto_20
    return-void

    .line 70
    :catch_21
    move-exception v0

    goto :goto_20
.end method

.method public c()V
    .registers 3

    .prologue
    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1d

    .line 82
    invoke-static {}, Lcom/ss/android/socialbase/downloader/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 83
    sget-object v0, Lcom/ss/android/socialbase/downloader/i/a;->a:Ljava/lang/String;

    const-string v1, "stopSampling"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_15
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/a;->d:Lcom/ss/android/socialbase/downloader/i/a$a;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/i/a$a;->b()V

    .line 86
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/i/a;->f()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 91
    :cond_1d
    :goto_1d
    return-void

    .line 88
    :catch_1e
    move-exception v0

    goto :goto_1d
.end method

.method protected e()V
    .registers 11

    .prologue
    .line 104
    :try_start_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/f;->a(Landroid/content/Context;)Z

    move-result v0

    .line 107
    if-eqz v0, :cond_2e

    .line 108
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/a;->d()J

    move-result-wide v0

    .line 111
    :goto_e
    sget-wide v2, Lcom/ss/android/socialbase/downloader/i/a;->f:J

    sub-long v2, v0, v2

    .line 112
    sget-wide v4, Lcom/ss/android/socialbase/downloader/i/a;->f:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2b

    .line 113
    monitor-enter p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_36

    .line 114
    :try_start_1b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 115
    iget-object v6, p0, Lcom/ss/android/socialbase/downloader/i/a;->b:Lcom/ss/android/socialbase/downloader/i/g;

    iget-wide v8, p0, Lcom/ss/android/socialbase/downloader/i/a;->e:J

    sub-long v8, v4, v8

    invoke-virtual {v6, v2, v3, v8, v9}, Lcom/ss/android/socialbase/downloader/i/g;->a(JJ)V

    .line 117
    iput-wide v4, p0, Lcom/ss/android/socialbase/downloader/i/a;->e:J

    .line 118
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_33

    .line 120
    :cond_2b
    :try_start_2b
    sput-wide v0, Lcom/ss/android/socialbase/downloader/i/a;->f:J

    .line 125
    :goto_2d
    return-void

    .line 110
    :cond_2e
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_31} :catch_36

    move-result-wide v0

    goto :goto_e

    .line 118
    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    :try_start_35
    throw v0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_36} :catch_36

    .line 121
    :catch_36
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d
.end method

.method protected f()V
    .registers 3

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/i/a;->e()V

    .line 133
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/ss/android/socialbase/downloader/i/a;->f:J

    .line 134
    return-void
.end method
