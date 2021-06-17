.class final Lcom/appsflyer/internal/z$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic valueOf:Lcom/appsflyer/internal/z;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/z;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/appsflyer/internal/z$3;->valueOf:Lcom/appsflyer/internal/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 69
    iget-object v0, p0, Lcom/appsflyer/internal/z$3;->valueOf:Lcom/appsflyer/internal/z;

    iget-object v0, v0, Lcom/appsflyer/internal/z;->valueOf:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_5
    iget-object v1, p0, Lcom/appsflyer/internal/z$3;->valueOf:Lcom/appsflyer/internal/z;

    iget-boolean v1, v1, Lcom/appsflyer/internal/z;->AFKeystoreWrapper:Z

    if-eqz v1, :cond_32

    .line 72
    iget-object v1, p0, Lcom/appsflyer/internal/z$3;->valueOf:Lcom/appsflyer/internal/z;

    iget-object v1, v1, Lcom/appsflyer/internal/z;->AFInAppEventParameterName:Landroid/os/Handler;

    iget-object v2, p0, Lcom/appsflyer/internal/z$3;->valueOf:Lcom/appsflyer/internal/z;

    iget-object v2, v2, Lcom/appsflyer/internal/z;->values:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 73
    iget-object v1, p0, Lcom/appsflyer/internal/z$3;->valueOf:Lcom/appsflyer/internal/z;

    iget-object v1, v1, Lcom/appsflyer/internal/z;->AFInAppEventParameterName:Landroid/os/Handler;

    iget-object v2, p0, Lcom/appsflyer/internal/z$3;->valueOf:Lcom/appsflyer/internal/z;

    iget-object v2, v2, Lcom/appsflyer/internal/z;->AFInAppEventType:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 75
    iget-object v1, p0, Lcom/appsflyer/internal/z$3;->valueOf:Lcom/appsflyer/internal/z;

    .line 1219
    iget-object v2, v1, Lcom/appsflyer/internal/z;->init:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/appsflyer/internal/z$6;

    invoke-direct {v3, v1}, Lcom/appsflyer/internal/z$6;-><init>(Lcom/appsflyer/internal/z;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 76
    iget-object v1, p0, Lcom/appsflyer/internal/z$3;->valueOf:Lcom/appsflyer/internal/z;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/appsflyer/internal/z;->AFKeystoreWrapper:Z

    .line 78
    :cond_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_34

    return-void

    :catchall_34
    move-exception v1

    monitor-exit v0

    throw v1
.end method
