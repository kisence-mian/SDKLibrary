.class public Lcom/umeng/analytics/pro/l;
.super Ljava/lang/Object;
.source "BackgroundMonitor.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/l$a;
    }
.end annotation


# static fields
.field private static a:Lcom/umeng/analytics/pro/l;


# instance fields
.field private final b:I

.field private c:Z

.field private d:Z

.field private e:Landroid/os/Handler;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/umeng/analytics/pro/m;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/umeng/analytics/pro/l$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Lcom/umeng/analytics/pro/l;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/l;-><init>()V

    sput-object v0, Lcom/umeng/analytics/pro/l;->a:Lcom/umeng/analytics/pro/l;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/umeng/analytics/pro/l;->b:I

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/analytics/pro/l;->c:Z

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/analytics/pro/l;->d:Z

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/umeng/analytics/pro/l;->e:Landroid/os/Handler;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/l;->f:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Lcom/umeng/analytics/pro/l$a;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/pro/l$a;-><init>(Lcom/umeng/analytics/pro/l;)V

    iput-object v0, p0, Lcom/umeng/analytics/pro/l;->g:Lcom/umeng/analytics/pro/l$a;

    .line 68
    return-void
.end method

.method public static a()Lcom/umeng/analytics/pro/l;
    .registers 1

    .line 65
    sget-object v0, Lcom/umeng/analytics/pro/l;->a:Lcom/umeng/analytics/pro/l;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    .line 59
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_b

    .line 60
    check-cast p0, Landroid/app/Application;

    sget-object v0, Lcom/umeng/analytics/pro/l;->a:Lcom/umeng/analytics/pro/l;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 62
    :cond_b
    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/pro/l;)Z
    .registers 1

    .line 21
    iget-boolean p0, p0, Lcom/umeng/analytics/pro/l;->c:Z

    return p0
.end method

.method static synthetic a(Lcom/umeng/analytics/pro/l;Z)Z
    .registers 2

    .line 21
    iput-boolean p1, p0, Lcom/umeng/analytics/pro/l;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/umeng/analytics/pro/l;)Z
    .registers 1

    .line 21
    iget-boolean p0, p0, Lcom/umeng/analytics/pro/l;->d:Z

    return p0
.end method

.method static synthetic c(Lcom/umeng/analytics/pro/l;)Ljava/util/ArrayList;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/umeng/analytics/pro/l;->f:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/umeng/analytics/pro/m;)V
    .registers 3

    monitor-enter p0

    .line 71
    if-eqz p1, :cond_c

    .line 72
    :try_start_3
    iget-object v0, p0, Lcom/umeng/analytics/pro/l;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    goto :goto_c

    .line 70
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1

    .line 74
    :cond_c
    :goto_c
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b(Lcom/umeng/analytics/pro/m;)V
    .registers 4

    monitor-enter p0

    .line 77
    if-eqz p1, :cond_1f

    .line 78
    const/4 v0, 0x0

    :goto_4
    :try_start_4
    iget-object v1, p0, Lcom/umeng/analytics/pro/l;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 79
    iget-object v1, p0, Lcom/umeng/analytics/pro/l;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_19

    .line 80
    iget-object v1, p0, Lcom/umeng/analytics/pro/l;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_1c

    .line 78
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 76
    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1

    .line 84
    :cond_1f
    monitor-exit p0

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 89
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    .line 127
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 5

    .line 107
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/umeng/analytics/pro/l;->d:Z

    .line 108
    iget-object p1, p0, Lcom/umeng/analytics/pro/l;->g:Lcom/umeng/analytics/pro/l$a;

    if-eqz p1, :cond_15

    .line 109
    iget-object v0, p0, Lcom/umeng/analytics/pro/l;->e:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 110
    iget-object p1, p0, Lcom/umeng/analytics/pro/l;->e:Landroid/os/Handler;

    iget-object v0, p0, Lcom/umeng/analytics/pro/l;->g:Lcom/umeng/analytics/pro/l$a;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    :cond_15
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 3

    .line 98
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/umeng/analytics/pro/l;->d:Z

    .line 99
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/umeng/analytics/pro/l;->c:Z

    .line 100
    iget-object p1, p0, Lcom/umeng/analytics/pro/l;->g:Lcom/umeng/analytics/pro/l$a;

    if-eqz p1, :cond_f

    .line 101
    iget-object v0, p0, Lcom/umeng/analytics/pro/l;->e:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 103
    :cond_f
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 122
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    .line 94
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    .line 117
    return-void
.end method
