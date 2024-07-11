.class final Lcom/appsflyer/internal/z$1;
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

    .line 83
    iput-object p1, p0, Lcom/appsflyer/internal/z$1;->values:Lcom/appsflyer/internal/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 86
    iget-object v0, p0, Lcom/appsflyer/internal/z$1;->values:Lcom/appsflyer/internal/z;

    iget-object v0, v0, Lcom/appsflyer/internal/z;->valueOf:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_5
    iget-object v1, p0, Lcom/appsflyer/internal/z$1;->values:Lcom/appsflyer/internal/z;

    invoke-static {v1}, Lcom/appsflyer/internal/z;->valueOf(Lcom/appsflyer/internal/z;)I

    move-result v1

    if-nez v1, :cond_13

    .line 88
    iget-object v1, p0, Lcom/appsflyer/internal/z$1;->values:Lcom/appsflyer/internal/z;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/appsflyer/internal/z;->valueOf(Lcom/appsflyer/internal/z;I)I

    .line 91
    :cond_13
    iget-object v1, p0, Lcom/appsflyer/internal/z$1;->values:Lcom/appsflyer/internal/z;

    iget-object v1, v1, Lcom/appsflyer/internal/z;->AFInAppEventParameterName:Landroid/os/Handler;

    iget-object v2, p0, Lcom/appsflyer/internal/z$1;->values:Lcom/appsflyer/internal/z;

    iget-object v2, v2, Lcom/appsflyer/internal/z;->AFInAppEventType:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    iget-object v5, p0, Lcom/appsflyer/internal/z$1;->values:Lcom/appsflyer/internal/z;

    invoke-static {v5}, Lcom/appsflyer/internal/z;->valueOf(Lcom/appsflyer/internal/z;)I

    move-result v5

    int-to-long v5, v5

    mul-long v5, v5, v3

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2b

    return-void

    :catchall_2b
    move-exception v1

    monitor-exit v0

    throw v1
.end method
