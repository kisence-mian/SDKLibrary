.class public Lcom/bytedance/sdk/openadsdk/i/a;
.super Ljava/lang/Object;
.source "TTExecutor.java"


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/i/a;

.field private static volatile b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static volatile c:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static volatile d:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static volatile e:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static volatile f:Ljava/util/concurrent/ScheduledExecutorService;

.field private static g:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/i/c;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/i/c;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/i/c;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/i/c;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/i/a;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/i/a;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/i/a;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/i/a;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/a;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_f

    .line 63
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/i/a;->a(Z)V

    .line 65
    :cond_f
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/i/a;
    .registers 2

    .prologue
    .line 51
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/a;->a:Lcom/bytedance/sdk/openadsdk/i/a;

    if-nez v0, :cond_13

    .line 52
    const-class v1, Lcom/bytedance/sdk/openadsdk/i/a;

    monitor-enter v1

    .line 53
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/a;->a:Lcom/bytedance/sdk/openadsdk/i/a;

    if-nez v0, :cond_12

    .line 54
    new-instance v0, Lcom/bytedance/sdk/openadsdk/i/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/i/a;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/i/a;->a:Lcom/bytedance/sdk/openadsdk/i/a;

    .line 56
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 58
    :cond_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/a;->a:Lcom/bytedance/sdk/openadsdk/i/a;

    return-object v0

    .line 56
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static a(Z)V
    .registers 3

    .prologue
    .line 38
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/a;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 48
    :goto_8
    return-void

    .line 39
    :cond_9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/e;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/i/a;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 40
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/e;->b()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/i/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 41
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/e;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/i/a;->f:Ljava/util/concurrent/ScheduledExecutorService;

    .line 42
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/e;->e()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/i/a;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 43
    if-eqz p0, :cond_30

    .line 44
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/e;->d()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/i/a;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/i/a;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 47
    :cond_30
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/a;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_8
.end method

.method private c()V
    .registers 2

    .prologue
    .line 108
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/a;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_11

    .line 109
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/e;->d()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/i/a;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 110
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/i/a;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 112
    :cond_11
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J)",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 251
    if-nez p1, :cond_11

    .line 252
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/t;->c()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 253
    const-string v1, ""

    const-string v2, "delayExecuteTask->runnable param is not be null"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_10
    :goto_10
    return-object v0

    .line 258
    :cond_11
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-gtz v1, :cond_1d

    .line 259
    sget-object v1, Lcom/bytedance/sdk/openadsdk/i/a;->f:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_10

    .line 261
    :cond_1d
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/a;->f:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, p3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    goto :goto_10
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/i/c;)V
    .registers 4

    .prologue
    .line 116
    if-nez p1, :cond_10

    .line 117
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/t;->c()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 118
    const-string v0, ""

    const-string v1, "executeApiTask->TTRunnable param is not be null"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_f
    :goto_f
    return-void

    .line 122
    :cond_10
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/a;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_f

    .line 123
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/a;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_f
.end method

.method public a(Ljava/lang/Runnable;I)V
    .registers 5

    .prologue
    .line 91
    if-nez p1, :cond_10

    .line 92
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/t;->c()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 93
    const-string v0, ""

    const-string v1, "executeAIDLTask -> runnable param is not be null"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_f
    :goto_f
    return-void

    .line 97
    :cond_10
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/a;->c()V

    .line 98
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/a;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/i/a$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/i/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/i/a;ILjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_f
.end method

.method public b()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .prologue
    .line 72
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/a;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_a

    .line 73
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/e;->e()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/i/a;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 75
    :cond_a
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/a;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/i/c;)V
    .registers 4

    .prologue
    .line 144
    if-nez p1, :cond_10

    .line 145
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/t;->c()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 146
    const-string v0, ""

    const-string v1, "executeDefaultTask -> runnable param is not be null"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_f
    :goto_f
    return-void

    .line 150
    :cond_10
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_f

    .line 151
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_f
.end method

.method public b(Ljava/lang/Runnable;I)V
    .registers 5

    .prologue
    .line 127
    if-nez p1, :cond_10

    .line 128
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/t;->c()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 129
    const-string v0, ""

    const-string v1, "executeApiTask->runnable param is not be null"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_f
    :goto_f
    return-void

    .line 133
    :cond_10
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/a;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_f

    .line 134
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/a;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/i/a$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/i/a$2;-><init>(Lcom/bytedance/sdk/openadsdk/i/a;ILjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_f
.end method

.method public c(Ljava/lang/Runnable;I)V
    .registers 5

    .prologue
    .line 155
    if-nez p1, :cond_10

    .line 156
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/t;->c()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 157
    const-string v0, ""

    const-string v1, "executeDefaultTask -> runnable param is not be null"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_f
    :goto_f
    return-void

    .line 162
    :cond_10
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_f

    .line 163
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/i/a$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/i/a$3;-><init>(Lcom/bytedance/sdk/openadsdk/i/a;ILjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_f
.end method

.method public d(Ljava/lang/Runnable;I)V
    .registers 5

    .prologue
    .line 172
    if-nez p1, :cond_10

    .line 173
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/t;->c()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 174
    const-string v0, ""

    const-string v1, "executeLogUploadTask\uff08Runnable\uff09 -> runnable param is not be null"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_f
    :goto_f
    return-void

    .line 179
    :cond_10
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/a;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_f

    .line 180
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/a;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/i/a$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/i/a$4;-><init>(Lcom/bytedance/sdk/openadsdk/i/a;ILjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_f
.end method
