.class public Lcom/mintegral/msdk/f/m;
.super Ljava/lang/Object;
.source "ProxyCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/f/m$a;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String;


# instance fields
.field private final a:Lcom/mintegral/msdk/f/p;

.field protected volatile c:Z

.field protected volatile d:Z

.field private final e:Lcom/mintegral/msdk/f/a;

.field private final f:Ljava/lang/Object;

.field private final g:Ljava/lang/Object;

.field private final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile i:Ljava/lang/Thread;

.field private volatile j:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/mintegral/msdk/f/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/f/m;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mintegral/msdk/f/p;Lcom/mintegral/msdk/f/a;)V
    .registers 4

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/f/m;->f:Ljava/lang/Object;

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/f/m;->g:Ljava/lang/Object;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/f/m;->d:Z

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/mintegral/msdk/f/m;->j:I

    .line 34
    invoke-static {p1}, Lcom/mintegral/msdk/f/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/f/p;

    iput-object v0, p0, Lcom/mintegral/msdk/f/m;->a:Lcom/mintegral/msdk/f/p;

    .line 35
    invoke-static {p2}, Lcom/mintegral/msdk/f/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/f/a;

    iput-object v0, p0, Lcom/mintegral/msdk/f/m;->e:Lcom/mintegral/msdk/f/a;

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/f/m;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 37
    return-void
.end method

.method private declared-synchronized a()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mintegral/msdk/f/n;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 103
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/mintegral/msdk/f/m;->i:Ljava/lang/Thread;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/mintegral/msdk/f/m;->i:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v1, v2, :cond_11

    const/4 v0, 0x1

    .line 104
    :cond_11
    iget-boolean v1, p0, Lcom/mintegral/msdk/f/m;->c:Z

    if-nez v1, :cond_42

    iget-object v1, p0, Lcom/mintegral/msdk/f/m;->e:Lcom/mintegral/msdk/f/a;

    invoke-interface {v1}, Lcom/mintegral/msdk/f/a;->d()Z

    move-result v1

    if-nez v1, :cond_42

    if-nez v0, :cond_42

    .line 105
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mintegral/msdk/f/m$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mintegral/msdk/f/m$a;-><init>(Lcom/mintegral/msdk/f/m;B)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Source reader for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mintegral/msdk/f/m;->a:Lcom/mintegral/msdk/f/p;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mintegral/msdk/f/m;->i:Ljava/lang/Thread;

    .line 106
    iget-object v0, p0, Lcom/mintegral/msdk/f/m;->i:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_42
    .catchall {:try_start_2 .. :try_end_42} :catchall_44

    .line 108
    :cond_42
    monitor-exit p0

    return-void

    .line 103
    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(JJ)V
    .registers 14

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    .line 185
    long-to-float v0, p1

    long-to-float v3, p3

    div-float/2addr v0, v3

    mul-float/2addr v0, v4

    .line 186
    cmpg-float v0, v0, v4

    if-gez v0, :cond_32

    .line 2129
    cmp-long v0, p3, v6

    if-nez v0, :cond_33

    move v0, v1

    .line 2130
    :goto_13
    if-eqz v0, :cond_35

    const/16 v0, 0x64

    .line 2131
    :goto_17
    iget v3, p0, Lcom/mintegral/msdk/f/m;->j:I

    if-eq v0, v3, :cond_3b

    move v3, v1

    .line 2132
    :goto_1c
    cmp-long v4, p3, v6

    if-ltz v4, :cond_3d

    .line 2133
    :goto_20
    if-eqz v1, :cond_27

    if-eqz v3, :cond_27

    .line 2134
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/f/m;->a(I)V

    .line 2136
    :cond_27
    iput v0, p0, Lcom/mintegral/msdk/f/m;->j:I

    .line 2123
    iget-object v1, p0, Lcom/mintegral/msdk/f/m;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 2124
    :try_start_2c
    iget-object v0, p0, Lcom/mintegral/msdk/f/m;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2125
    monitor-exit v1

    :cond_32
    return-void

    :cond_33
    move v0, v2

    .line 2129
    goto :goto_13

    .line 2130
    :cond_35
    long-to-float v0, p1

    long-to-float v3, p3

    div-float/2addr v0, v3

    mul-float/2addr v0, v4

    float-to-int v0, v0

    goto :goto_17

    :cond_3b
    move v3, v2

    .line 2131
    goto :goto_1c

    :cond_3d
    move v1, v2

    .line 2132
    goto :goto_20

    .line 2125
    :catchall_3f
    move-exception v0

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_2c .. :try_end_41} :catchall_3f

    throw v0
.end method

.method static synthetic a(Lcom/mintegral/msdk/f/m;)V
    .registers 11

    .prologue
    .line 2143
    const-string v0, "VideoCache baifenbi"

    const-string v1, "\u5f00\u8fdb\u8fdb\u6765"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2144
    const-wide/16 v4, -0x1

    .line 2145
    const-wide/16 v2, 0x0

    .line 2147
    :try_start_b
    iget-object v0, p0, Lcom/mintegral/msdk/f/m;->e:Lcom/mintegral/msdk/f/a;

    invoke-interface {v0}, Lcom/mintegral/msdk/f/a;->a()J

    move-result-wide v2

    .line 2148
    iget-object v0, p0, Lcom/mintegral/msdk/f/m;->a:Lcom/mintegral/msdk/f/p;

    invoke-interface {v0, v2, v3}, Lcom/mintegral/msdk/f/p;->a(J)V

    .line 2149
    iget-object v0, p0, Lcom/mintegral/msdk/f/m;->a:Lcom/mintegral/msdk/f/p;

    invoke-interface {v0}, Lcom/mintegral/msdk/f/p;->a()J

    move-result-wide v4

    .line 2150
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 2152
    const-string v1, "VideoCache baifenbi"

    const-string v6, "\u5230try\u91cc\u9762"

    invoke-static {v1, v6}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2153
    :goto_27
    iget-object v1, p0, Lcom/mintegral/msdk/f/m;->a:Lcom/mintegral/msdk/f/p;

    invoke-interface {v1, v0}, Lcom/mintegral/msdk/f/p;->a([B)I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_84

    .line 2156
    iget-object v6, p0, Lcom/mintegral/msdk/f/m;->g:Ljava/lang/Object;

    monitor-enter v6
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_33} :catch_54
    .catchall {:try_start_b .. :try_end_33} :catchall_75

    .line 2157
    :try_start_33
    invoke-direct {p0}, Lcom/mintegral/msdk/f/m;->e()Z

    move-result v7

    if-eqz v7, :cond_48

    .line 2158
    monitor-exit v6
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_72

    .line 2176
    invoke-direct {p0}, Lcom/mintegral/msdk/f/m;->f()V

    .line 2177
    const-string v0, "VideoCache"

    const-string v1, "finallyeleleleleelelelelel"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2179
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/mintegral/msdk/f/m;->a(JJ)V

    .line 2180
    :goto_47
    return-void

    .line 2160
    :cond_48
    :try_start_48
    iget-object v7, p0, Lcom/mintegral/msdk/f/m;->e:Lcom/mintegral/msdk/f/a;

    invoke-interface {v7, v0, v1}, Lcom/mintegral/msdk/f/a;->a([BI)V

    .line 2162
    monitor-exit v6
    :try_end_4e
    .catchall {:try_start_48 .. :try_end_4e} :catchall_72

    .line 2163
    int-to-long v6, v1

    add-long/2addr v2, v6

    .line 2164
    :try_start_50
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/mintegral/msdk/f/m;->a(JJ)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_53} :catch_54
    .catchall {:try_start_50 .. :try_end_53} :catchall_75

    goto :goto_27

    .line 2171
    :catch_54
    move-exception v0

    .line 2172
    :try_start_55
    iget-object v1, p0, Lcom/mintegral/msdk/f/m;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2173
    const-string v1, "VideoCache"

    const-string v6, "eleleleleelelelelel"

    invoke-static {v1, v6}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2174
    invoke-static {v0}, Lcom/mintegral/msdk/f/m;->a(Ljava/lang/Throwable;)V
    :try_end_64
    .catchall {:try_start_55 .. :try_end_64} :catchall_75

    .line 2176
    invoke-direct {p0}, Lcom/mintegral/msdk/f/m;->f()V

    .line 2177
    const-string v0, "VideoCache"

    const-string v1, "finallyeleleleleelelelelel"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2179
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/mintegral/msdk/f/m;->a(JJ)V

    goto :goto_47

    .line 2162
    :catchall_72
    move-exception v0

    :try_start_73
    monitor-exit v6
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    :try_start_74
    throw v0
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_75} :catch_54
    .catchall {:try_start_74 .. :try_end_75} :catchall_75

    .line 2176
    :catchall_75
    move-exception v0

    invoke-direct {p0}, Lcom/mintegral/msdk/f/m;->f()V

    .line 2177
    const-string v1, "VideoCache"

    const-string v6, "finallyeleleleleelelelelel"

    invoke-static {v1, v6}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2179
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/mintegral/msdk/f/m;->a(JJ)V

    throw v0

    .line 2199
    :cond_84
    :try_start_84
    iget-object v1, p0, Lcom/mintegral/msdk/f/m;->g:Ljava/lang/Object;

    monitor-enter v1
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_87} :catch_54
    .catchall {:try_start_84 .. :try_end_87} :catchall_75

    .line 2200
    :try_start_87
    invoke-direct {p0}, Lcom/mintegral/msdk/f/m;->e()Z

    move-result v0

    if-nez v0, :cond_a2

    iget-object v0, p0, Lcom/mintegral/msdk/f/m;->e:Lcom/mintegral/msdk/f/a;

    invoke-interface {v0}, Lcom/mintegral/msdk/f/a;->a()J

    move-result-wide v6

    iget-object v0, p0, Lcom/mintegral/msdk/f/m;->a:Lcom/mintegral/msdk/f/p;

    invoke-interface {v0}, Lcom/mintegral/msdk/f/p;->a()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-nez v0, :cond_a2

    .line 2201
    iget-object v0, p0, Lcom/mintegral/msdk/f/m;->e:Lcom/mintegral/msdk/f/a;

    invoke-interface {v0}, Lcom/mintegral/msdk/f/a;->c()V

    .line 2203
    :cond_a2
    monitor-exit v1
    :try_end_a3
    .catchall {:try_start_87 .. :try_end_a3} :catchall_bd

    .line 3193
    const/16 v0, 0x64

    :try_start_a5
    iput v0, p0, Lcom/mintegral/msdk/f/m;->j:I

    .line 3194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/f/m;->d:Z

    .line 3195
    iget v0, p0, Lcom/mintegral/msdk/f/m;->j:I

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/f/m;->a(I)V
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_a5 .. :try_end_af} :catch_54
    .catchall {:try_start_a5 .. :try_end_af} :catchall_75

    .line 2176
    invoke-direct {p0}, Lcom/mintegral/msdk/f/m;->f()V

    .line 2177
    const-string v0, "VideoCache"

    const-string v1, "finallyeleleleleelelelelel"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2179
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/mintegral/msdk/f/m;->a(JJ)V

    goto :goto_47

    .line 2203
    :catchall_bd
    move-exception v0

    :try_start_be
    monitor-exit v1
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bd

    :try_start_bf
    throw v0
    :try_end_c0
    .catch Ljava/lang/Throwable; {:try_start_bf .. :try_end_c0} :catch_54
    .catchall {:try_start_bf .. :try_end_c0} :catchall_75
.end method

.method private static a(Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 220
    instance-of v0, p0, Lcom/mintegral/msdk/f/j;

    .line 221
    if-eqz v0, :cond_c

    .line 222
    sget-object v0, Lcom/mintegral/msdk/f/m;->b:Ljava/lang/String;

    const-string v1, "ProxyCache is interrupted"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :goto_b
    return-void

    .line 224
    :cond_c
    sget-object v0, Lcom/mintegral/msdk/f/m;->b:Ljava/lang/String;

    const-string v1, "ProxyCache error"

    invoke-static {v0, v1, p0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method private e()Z
    .registers 2

    .prologue
    .line 207
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/mintegral/msdk/f/m;->c:Z

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private f()V
    .registers 5

    .prologue
    .line 212
    :try_start_0
    sget-object v0, Lcom/mintegral/msdk/f/m;->b:Ljava/lang/String;

    const-string v1, "close sources!"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/mintegral/msdk/f/m;->a:Lcom/mintegral/msdk/f/p;

    invoke-interface {v0}, Lcom/mintegral/msdk/f/p;->b()V
    :try_end_c
    .catch Lcom/mintegral/msdk/f/n; {:try_start_0 .. :try_end_c} :catch_d

    .line 217
    :goto_c
    return-void

    .line 214
    :catch_d
    move-exception v0

    .line 215
    new-instance v1, Lcom/mintegral/msdk/f/n;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error closing source "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mintegral/msdk/f/m;->a:Lcom/mintegral/msdk/f/p;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/mintegral/msdk/f/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/mintegral/msdk/f/m;->a(Ljava/lang/Throwable;)V

    goto :goto_c
.end method


# virtual methods
.method public final a([BJ)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mintegral/msdk/f/n;
        }
    .end annotation

    .prologue
    const/16 v4, 0x64

    .line 47
    invoke-static {p1, p2, p3}, Lcom/mintegral/msdk/f/o;->a([BJ)V

    .line 56
    :cond_5
    iget-object v0, p0, Lcom/mintegral/msdk/f/m;->e:Lcom/mintegral/msdk/f/a;

    invoke-interface {v0}, Lcom/mintegral/msdk/f/a;->d()Z

    move-result v0

    if-nez v0, :cond_61

    iget-object v0, p0, Lcom/mintegral/msdk/f/m;->e:Lcom/mintegral/msdk/f/a;

    invoke-interface {v0}, Lcom/mintegral/msdk/f/a;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x2000

    add-long/2addr v2, p2

    cmp-long v0, v0, v2

    if-gez v0, :cond_61

    iget-boolean v0, p0, Lcom/mintegral/msdk/f/m;->c:Z

    if-nez v0, :cond_61

    .line 58
    invoke-direct {p0}, Lcom/mintegral/msdk/f/m;->a()V

    .line 1111
    iget-object v1, p0, Lcom/mintegral/msdk/f/m;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 1113
    :try_start_24
    iget-object v0, p0, Lcom/mintegral/msdk/f/m;->f:Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_2b} :catch_55
    .catchall {:try_start_24 .. :try_end_2b} :catchall_5e

    .line 1117
    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_5e

    .line 2072
    iget-object v0, p0, Lcom/mintegral/msdk/f/m;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 2073
    if-lez v0, :cond_5

    .line 2074
    iget-object v1, p0, Lcom/mintegral/msdk/f/m;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2075
    new-instance v1, Lcom/mintegral/msdk/f/n;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error reading source "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " times"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mintegral/msdk/f/n;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1114
    :catch_55
    move-exception v0

    .line 1115
    :try_start_56
    new-instance v2, Lcom/mintegral/msdk/f/n;

    const-string v3, "Waiting source data is interrupted!"

    invoke-direct {v2, v3, v0}, Lcom/mintegral/msdk/f/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1117
    :catchall_5e
    move-exception v0

    monitor-exit v1
    :try_end_60
    .catchall {:try_start_56 .. :try_end_60} :catchall_5e

    throw v0

    .line 62
    :cond_61
    iget-object v0, p0, Lcom/mintegral/msdk/f/m;->e:Lcom/mintegral/msdk/f/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/mintegral/msdk/f/a;->a([BJ)I

    move-result v0

    .line 63
    iget-object v1, p0, Lcom/mintegral/msdk/f/m;->e:Lcom/mintegral/msdk/f/a;

    invoke-interface {v1}, Lcom/mintegral/msdk/f/a;->d()Z

    move-result v1

    if-eqz v1, :cond_78

    iget v1, p0, Lcom/mintegral/msdk/f/m;->j:I

    if-eq v1, v4, :cond_78

    .line 64
    iput v4, p0, Lcom/mintegral/msdk/f/m;->j:I

    .line 65
    invoke-virtual {p0, v4}, Lcom/mintegral/msdk/f/m;->a(I)V

    .line 67
    :cond_78
    return v0
.end method

.method protected a(I)V
    .registers 2

    .prologue
    .line 140
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/f/m;->d:Z

    .line 31
    return-void
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/f/m;->c:Z

    .line 84
    return-void
.end method

.method public final d()V
    .registers 5

    .prologue
    .line 87
    iget-object v1, p0, Lcom/mintegral/msdk/f/m;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    :try_start_3
    sget-object v0, Lcom/mintegral/msdk/f/m;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Shutdown proxy for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mintegral/msdk/f/m;->a:Lcom/mintegral/msdk/f/p;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_31

    .line 90
    const/4 v0, 0x1

    :try_start_1a
    iput-boolean v0, p0, Lcom/mintegral/msdk/f/m;->c:Z

    .line 91
    iget-object v0, p0, Lcom/mintegral/msdk/f/m;->i:Ljava/lang/Thread;

    if-eqz v0, :cond_25

    .line 92
    iget-object v0, p0, Lcom/mintegral/msdk/f/m;->i:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 94
    :cond_25
    iget-object v0, p0, Lcom/mintegral/msdk/f/m;->e:Lcom/mintegral/msdk/f/a;

    invoke-interface {v0}, Lcom/mintegral/msdk/f/a;->b()V
    :try_end_2a
    .catch Lcom/mintegral/msdk/f/n; {:try_start_1a .. :try_end_2a} :catch_2c
    .catchall {:try_start_1a .. :try_end_2a} :catchall_31

    .line 98
    :goto_2a
    :try_start_2a
    monitor-exit v1

    return-void

    .line 96
    :catch_2c
    move-exception v0

    invoke-static {v0}, Lcom/mintegral/msdk/f/m;->a(Ljava/lang/Throwable;)V

    goto :goto_2a

    .line 98
    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_31

    throw v0
.end method
