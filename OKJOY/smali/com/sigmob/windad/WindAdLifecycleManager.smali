.class public Lcom/sigmob/windad/WindAdLifecycleManager;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/sigmob/windad/WindAdLifecycleManager;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sigmob/windad/LifecycleListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->a:Ljava/util/Set;

    :try_start_a
    invoke-direct {p0, p1}, Lcom/sigmob/windad/WindAdLifecycleManager;->a(Landroid/app/Application;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_d
.end method

.method private a(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/windad/LifecycleListener;

    invoke-interface {v0, p1}, Lcom/sigmob/windad/LifecycleListener;->onCreate(Landroid/app/Activity;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private a(Landroid/app/Application;)V
    .registers 3

    if-nez p1, :cond_8

    const-string v0, "activityCallBack error, application is null"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    :goto_7
    return-void

    :cond_8
    new-instance v0, Lcom/sigmob/windad/WindAdLifecycleManager$1;

    invoke-direct {v0, p0}, Lcom/sigmob/windad/WindAdLifecycleManager$1;-><init>(Lcom/sigmob/windad/WindAdLifecycleManager;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_7
.end method

.method static synthetic a(Lcom/sigmob/windad/WindAdLifecycleManager;Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/windad/WindAdLifecycleManager;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private b(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/windad/LifecycleListener;

    invoke-interface {v0, p1}, Lcom/sigmob/windad/LifecycleListener;->onStart(Landroid/app/Activity;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method static synthetic b(Lcom/sigmob/windad/WindAdLifecycleManager;Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/windad/WindAdLifecycleManager;->b(Landroid/app/Activity;)V

    return-void
.end method

.method private c(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/windad/LifecycleListener;

    invoke-interface {v0, p1}, Lcom/sigmob/windad/LifecycleListener;->onPause(Landroid/app/Activity;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method static synthetic c(Lcom/sigmob/windad/WindAdLifecycleManager;Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/windad/WindAdLifecycleManager;->d(Landroid/app/Activity;)V

    return-void
.end method

.method private d(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/windad/LifecycleListener;

    invoke-interface {v0, p1}, Lcom/sigmob/windad/LifecycleListener;->onResume(Landroid/app/Activity;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method static synthetic d(Lcom/sigmob/windad/WindAdLifecycleManager;Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/windad/WindAdLifecycleManager;->c(Landroid/app/Activity;)V

    return-void
.end method

.method private e(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/windad/LifecycleListener;

    invoke-interface {v0, p1}, Lcom/sigmob/windad/LifecycleListener;->onStop(Landroid/app/Activity;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method static synthetic e(Lcom/sigmob/windad/WindAdLifecycleManager;Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/windad/WindAdLifecycleManager;->e(Landroid/app/Activity;)V

    return-void
.end method

.method private f(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/windad/LifecycleListener;

    invoke-interface {v0, p1}, Lcom/sigmob/windad/LifecycleListener;->onDestroy(Landroid/app/Activity;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method static synthetic f(Lcom/sigmob/windad/WindAdLifecycleManager;Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/windad/WindAdLifecycleManager;->f(Landroid/app/Activity;)V

    return-void
.end method

.method public static getInstance()Lcom/sigmob/windad/WindAdLifecycleManager;
    .registers 1

    sget-object v0, Lcom/sigmob/windad/WindAdLifecycleManager;->b:Lcom/sigmob/windad/WindAdLifecycleManager;

    return-object v0
.end method

.method public static initalize(Landroid/app/Application;)V
    .registers 3

    sget-object v0, Lcom/sigmob/windad/WindAdLifecycleManager;->b:Lcom/sigmob/windad/WindAdLifecycleManager;

    if-nez v0, :cond_15

    const-class v1, Lcom/sigmob/windad/WindAdLifecycleManager;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/sigmob/windad/WindAdLifecycleManager;->b:Lcom/sigmob/windad/WindAdLifecycleManager;

    if-nez v0, :cond_14

    if-eqz p0, :cond_14

    new-instance v0, Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-direct {v0, p0}, Lcom/sigmob/windad/WindAdLifecycleManager;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/sigmob/windad/WindAdLifecycleManager;->b:Lcom/sigmob/windad/WindAdLifecycleManager;

    :cond_14
    monitor-exit v1

    :cond_15
    return-void

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public addLifecycleListener(Lcom/sigmob/windad/LifecycleListener;)V
    .registers 3

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_a
.end method
