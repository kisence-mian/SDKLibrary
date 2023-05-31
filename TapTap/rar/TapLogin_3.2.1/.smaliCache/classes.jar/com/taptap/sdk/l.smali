.class public Lcom/taptap/sdk/l;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static a:Ljava/util/concurrent/Executor;

.field private static b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;F)I
    .registers 2

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "drawable"

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static declared-synchronized a()Ljava/util/concurrent/Executor;
    .registers 2

    const-class v0, Lcom/taptap/sdk/l;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/taptap/sdk/l;->a:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_e

    const/4 v1, 0x2

    .line 2
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/taptap/sdk/l;->a:Ljava/util/concurrent/Executor;

    .line 4
    :cond_e
    sget-object v1, Lcom/taptap/sdk/l;->a:Ljava/util/concurrent/Executor;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 0
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Ljava/lang/Runnable;)V
    .registers 2

    .line 5
    invoke-static {}, Lcom/taptap/sdk/l;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "layout"

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/taptap/sdk/l;->b:Landroid/os/Handler;

    if-nez v0, :cond_1b

    .line 2
    const-class v0, Lcom/taptap/sdk/l;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcom/taptap/sdk/l;->b:Landroid/os/Handler;

    if-nez v1, :cond_16

    .line 4
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/taptap/sdk/l;->b:Landroid/os/Handler;

    .line 6
    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0

    .line 8
    :cond_1b
    :goto_1b
    sget-object v0, Lcom/taptap/sdk/l;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "id"

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
