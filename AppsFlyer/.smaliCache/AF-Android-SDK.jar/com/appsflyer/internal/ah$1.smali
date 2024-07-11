.class final Lcom/appsflyer/internal/ah$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/ah;->AFInAppEventType(Landroid/content/Context;Lcom/appsflyer/internal/ah$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic AFInAppEventParameterName:Lcom/appsflyer/internal/ah$e;

.field private AFInAppEventType:Ljava/util/concurrent/Executor;

.field valueOf:Z

.field values:Z


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/ah$e;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/appsflyer/internal/ah$1;->AFInAppEventParameterName:Lcom/appsflyer/internal/ah$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/appsflyer/internal/ah$1;->valueOf:Z

    .line 28
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/ah$1;->AFInAppEventType:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    .line 77
    iget-object p2, p0, Lcom/appsflyer/internal/ah$1;->AFInAppEventType:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/appsflyer/internal/ah$1$1;

    invoke-direct {v0, p1}, Lcom/appsflyer/internal/ah$1$1;-><init>(Landroid/app/Activity;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    .line 99
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 4

    .line 49
    iget-object v0, p0, Lcom/appsflyer/internal/ah$1;->AFInAppEventType:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/appsflyer/internal/ah$1$3;

    invoke-direct {v1, p0, p1}, Lcom/appsflyer/internal/ah$1$3;-><init>(Lcom/appsflyer/internal/ah$1;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 73
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 4

    .line 32
    iget-object v0, p0, Lcom/appsflyer/internal/ah$1;->AFInAppEventType:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/appsflyer/internal/ah$1$5;

    invoke-direct {v1, p0, p1}, Lcom/appsflyer/internal/ah$1$5;-><init>(Lcom/appsflyer/internal/ah$1;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 45
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 95
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    .line 87
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    .line 91
    return-void
.end method
