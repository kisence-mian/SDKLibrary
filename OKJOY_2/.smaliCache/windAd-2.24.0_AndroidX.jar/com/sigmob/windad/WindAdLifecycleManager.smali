.class public Lcom/sigmob/windad/WindAdLifecycleManager;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/sigmob/windad/WindAdLifecycleManager;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sigmob/windad/LifecycleListener;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:J

.field private j:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->c:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->d:Z

    iput-boolean v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->e:Z

    iput-boolean v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->f:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->h:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->i:J

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->a:Ljava/util/Set;

    :try_start_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->i:J

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "session_start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    const-string v0, "session_start"

    iget-object v1, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->j:Ljava/lang/String;

    const-string v2, "0"

    iget-wide v3, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->i:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/sigmob/sdk/common/mta/PointEntityActive;->ActiveTracking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/common/mta/PointEntityActive;

    invoke-direct {p0, p1}, Lcom/sigmob/windad/WindAdLifecycleManager;->a(Landroid/app/Application;)V
    :try_end_65
    .catchall {:try_start_1f .. :try_end_65} :catchall_66

    goto :goto_6e

    :catchall_66
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :goto_6e
    return-void
.end method

.method static synthetic a(Lcom/sigmob/windad/WindAdLifecycleManager;J)J
    .registers 3

    iput-wide p1, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->i:J

    return-wide p1
.end method

.method static synthetic a(Lcom/sigmob/windad/WindAdLifecycleManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/sigmob/windad/WindAdLifecycleManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->g:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/windad/LifecycleListener;

    invoke-interface {v1, p1}, Lcom/sigmob/windad/LifecycleListener;->onCreate(Landroid/app/Activity;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private a(Landroid/app/Application;)V
    .registers 3

    if-nez p1, :cond_8

    const-string p1, "activityCallBack error, application is null"

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void

    :cond_8
    new-instance v0, Lcom/sigmob/windad/WindAdLifecycleManager$1;

    invoke-direct {v0, p0}, Lcom/sigmob/windad/WindAdLifecycleManager$1;-><init>(Lcom/sigmob/windad/WindAdLifecycleManager;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/windad/WindAdLifecycleManager;Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/windad/WindAdLifecycleManager;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/windad/WindAdLifecycleManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/sigmob/windad/WindAdLifecycleManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/sigmob/windad/WindAdLifecycleManager;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->h:Ljava/util/Map;

    return-object p0
.end method

.method private b(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/windad/LifecycleListener;

    invoke-interface {v1, p1}, Lcom/sigmob/windad/LifecycleListener;->onStart(Landroid/app/Activity;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method static synthetic b(Lcom/sigmob/windad/WindAdLifecycleManager;Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/windad/WindAdLifecycleManager;->b(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic b(Lcom/sigmob/windad/WindAdLifecycleManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->e:Z

    return p1
.end method

.method static synthetic c(Lcom/sigmob/windad/WindAdLifecycleManager;)I
    .registers 3

    iget v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->c:I

    return v0
.end method

.method private c(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/windad/LifecycleListener;

    invoke-interface {v1, p1}, Lcom/sigmob/windad/LifecycleListener;->onPause(Landroid/app/Activity;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method static synthetic c(Lcom/sigmob/windad/WindAdLifecycleManager;Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/windad/WindAdLifecycleManager;->d(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic c(Lcom/sigmob/windad/WindAdLifecycleManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->f:Z

    return p1
.end method

.method private d(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/windad/LifecycleListener;

    invoke-interface {v1, p1}, Lcom/sigmob/windad/LifecycleListener;->onResume(Landroid/app/Activity;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method static synthetic d(Lcom/sigmob/windad/WindAdLifecycleManager;Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/windad/WindAdLifecycleManager;->c(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic d(Lcom/sigmob/windad/WindAdLifecycleManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->d:Z

    return p0
.end method

.method private e(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/windad/LifecycleListener;

    invoke-interface {v1, p1}, Lcom/sigmob/windad/LifecycleListener;->onStop(Landroid/app/Activity;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method static synthetic e(Lcom/sigmob/windad/WindAdLifecycleManager;Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/windad/WindAdLifecycleManager;->e(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic e(Lcom/sigmob/windad/WindAdLifecycleManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->f:Z

    return p0
.end method

.method static synthetic f(Lcom/sigmob/windad/WindAdLifecycleManager;)J
    .registers 3

    iget-wide v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->i:J

    return-wide v0
.end method

.method private f(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/windad/LifecycleListener;

    invoke-interface {v1, p1}, Lcom/sigmob/windad/LifecycleListener;->onDestroy(Landroid/app/Activity;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method static synthetic f(Lcom/sigmob/windad/WindAdLifecycleManager;Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/windad/WindAdLifecycleManager;->f(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic g(Lcom/sigmob/windad/WindAdLifecycleManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->j:Ljava/lang/String;

    return-object p0
.end method

.method public static getInstance()Lcom/sigmob/windad/WindAdLifecycleManager;
    .registers 1

    sget-object v0, Lcom/sigmob/windad/WindAdLifecycleManager;->b:Lcom/sigmob/windad/WindAdLifecycleManager;

    return-object v0
.end method

.method static synthetic h(Lcom/sigmob/windad/WindAdLifecycleManager;)I
    .registers 3

    iget v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->c:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->c:I

    return v0
.end method

.method static synthetic i(Lcom/sigmob/windad/WindAdLifecycleManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->e:Z

    return p0
.end method

.method public static initalize(Landroid/app/Application;)V
    .registers 3

    sget-object v0, Lcom/sigmob/windad/WindAdLifecycleManager;->b:Lcom/sigmob/windad/WindAdLifecycleManager;

    if-nez v0, :cond_19

    const-class v0, Lcom/sigmob/windad/WindAdLifecycleManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/sigmob/windad/WindAdLifecycleManager;->b:Lcom/sigmob/windad/WindAdLifecycleManager;

    if-nez v1, :cond_14

    if-eqz p0, :cond_14

    new-instance v1, Lcom/sigmob/windad/WindAdLifecycleManager;

    invoke-direct {v1, p0}, Lcom/sigmob/windad/WindAdLifecycleManager;-><init>(Landroid/app/Application;)V

    sput-object v1, Lcom/sigmob/windad/WindAdLifecycleManager;->b:Lcom/sigmob/windad/WindAdLifecycleManager;

    :cond_14
    monitor-exit v0

    goto :goto_19

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw p0

    :cond_19
    :goto_19
    return-void
.end method


# virtual methods
.method public addLifecycleListener(Lcom/sigmob/windad/LifecycleListener;)V
    .registers 3

    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_10

    :cond_b
    iget-object v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_10
    :goto_10
    return-void
.end method

.method public getActivityCount()I
    .registers 2

    iget v0, p0, Lcom/sigmob/windad/WindAdLifecycleManager;->c:I

    return v0
.end method
