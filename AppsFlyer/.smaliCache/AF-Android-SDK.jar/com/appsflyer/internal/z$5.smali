.class final Lcom/appsflyer/internal/z$5;
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
.field private synthetic values:Lcom/appsflyer/internal/z;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/z;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/appsflyer/internal/z$5;->values:Lcom/appsflyer/internal/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 50
    iget-object v0, p0, Lcom/appsflyer/internal/z$5;->values:Lcom/appsflyer/internal/z;

    iget-object v0, v0, Lcom/appsflyer/internal/z;->valueOf:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    :try_start_5
    iget-object v1, p0, Lcom/appsflyer/internal/z$5;->values:Lcom/appsflyer/internal/z;

    .line 1190
    iget-object v2, v1, Lcom/appsflyer/internal/z;->init:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/appsflyer/internal/z$4;

    invoke-direct {v3, v1}, Lcom/appsflyer/internal/z$4;-><init>(Lcom/appsflyer/internal/z;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 53
    iget-object v1, p0, Lcom/appsflyer/internal/z$5;->values:Lcom/appsflyer/internal/z;

    iget-object v1, v1, Lcom/appsflyer/internal/z;->AFInAppEventParameterName:Landroid/os/Handler;

    iget-object v2, p0, Lcom/appsflyer/internal/z$5;->values:Lcom/appsflyer/internal/z;

    invoke-static {v2}, Lcom/appsflyer/internal/z;->AFInAppEventParameterName(Lcom/appsflyer/internal/z;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    iget-object v1, p0, Lcom/appsflyer/internal/z$5;->values:Lcom/appsflyer/internal/z;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/appsflyer/internal/z;->AFKeystoreWrapper:Z

    .line 55
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_27

    return-void

    :catchall_27
    move-exception v1

    monitor-exit v0

    throw v1
.end method
