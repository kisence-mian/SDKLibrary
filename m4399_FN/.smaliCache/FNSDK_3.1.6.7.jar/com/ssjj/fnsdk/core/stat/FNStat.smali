.class public Lcom/ssjj/fnsdk/core/stat/FNStat;
.super Ljava/lang/Object;


# static fields
.field public static final TYPE_LOG_FILE_0:I

.field private static e:Lcom/ssjj/fnsdk/core/stat/FNStat;


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;

.field private b:Lcom/ssjj/fnsdk/core/stat/d;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/stat/FNStat;)Lcom/ssjj/fnsdk/core/stat/d;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/stat/FNStat;->b:Lcom/ssjj/fnsdk/core/stat/d;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/stat/FNStat;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/ssjj/fnsdk/core/stat/d;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/stat/d;-><init>()V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/stat/FNStat;->b:Lcom/ssjj/fnsdk/core/stat/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_gameId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_platformId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fnstat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/stat/FNStat;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/stat/FNStat;->b:Lcom/ssjj/fnsdk/core/stat/d;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Lcom/ssjj/fnsdk/core/stat/d;->a(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "path: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/FNStat;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method private a()Z
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/FNStat;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/FNStat;->b:Lcom/ssjj/fnsdk/core/stat/d;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public static getInstance()Lcom/ssjj/fnsdk/core/stat/FNStat;
    .registers 2

    sget-object v0, Lcom/ssjj/fnsdk/core/stat/FNStat;->e:Lcom/ssjj/fnsdk/core/stat/FNStat;

    if-nez v0, :cond_17

    const-class v0, Lcom/ssjj/fnsdk/core/stat/FNStat;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/ssjj/fnsdk/core/stat/FNStat;->e:Lcom/ssjj/fnsdk/core/stat/FNStat;

    if-nez v1, :cond_12

    new-instance v1, Lcom/ssjj/fnsdk/core/stat/FNStat;

    invoke-direct {v1}, Lcom/ssjj/fnsdk/core/stat/FNStat;-><init>()V

    sput-object v1, Lcom/ssjj/fnsdk/core/stat/FNStat;->e:Lcom/ssjj/fnsdk/core/stat/FNStat;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/ssjj/fnsdk/core/stat/FNStat;->e:Lcom/ssjj/fnsdk/core/stat/FNStat;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/stat/FNStat;->d:Landroid/content/Context;

    return-void
.end method

.method public recordEvent(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/stat/FNStat;->a()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/FNStat;->d:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/stat/FNStat;->a(Landroid/content/Context;)V

    :cond_b
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/FNStat;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ssjj/fnsdk/core/stat/b;

    invoke-direct {v1, p0, p1}, Lcom/ssjj/fnsdk/core/stat/b;-><init>(Lcom/ssjj/fnsdk/core/stat/FNStat;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public recordEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/stat/FNStat;->a()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/FNStat;->d:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/stat/FNStat;->a(Landroid/content/Context;)V

    :cond_b
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/FNStat;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ssjj/fnsdk/core/stat/a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/stat/a;-><init>(Lcom/ssjj/fnsdk/core/stat/FNStat;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendAllLog()V
    .registers 3

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/stat/FNStat;->a()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/FNStat;->d:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/stat/FNStat;->a(Landroid/content/Context;)V

    :cond_b
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/FNStat;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ssjj/fnsdk/core/stat/c;

    invoke-direct {v1, p0}, Lcom/ssjj/fnsdk/core/stat/c;-><init>(Lcom/ssjj/fnsdk/core/stat/FNStat;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
