.class Lcom/bytedance/sdk/adnet/core/g;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/face/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/adnet/core/g$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/util/concurrent/Executor;

.field private c:Lcom/bytedance/sdk/adnet/c/c;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/bytedance/sdk/adnet/core/g$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/adnet/core/g$1;-><init>(Lcom/bytedance/sdk/adnet/core/g;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/g;->a:Ljava/util/concurrent/Executor;

    .line 57
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/g;->b:Ljava/util/concurrent/Executor;

    .line 58
    invoke-static {}, Lcom/bytedance/sdk/adnet/c/f;->a()Lcom/bytedance/sdk/adnet/c/f;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/g;->c:Lcom/bytedance/sdk/adnet/c/c;

    .line 59
    return-void
.end method

.method private a(Lcom/bytedance/sdk/adnet/core/Request;)Ljava/util/concurrent/Executor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;)",
            "Ljava/util/concurrent/Executor;"
        }
    .end annotation

    .line 72
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->isResponseOnMain()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_c

    :cond_9
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/core/g;->b:Ljava/util/concurrent/Executor;

    goto :goto_e

    :cond_c
    :goto_c
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/core/g;->a:Ljava/util/concurrent/Executor;

    :goto_e
    return-object p1
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "*>;)V"
        }
    .end annotation

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/sdk/adnet/core/g;->a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/core/m;Ljava/lang/Runnable;)V

    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/g;->c:Lcom/bytedance/sdk/adnet/c/c;

    if-eqz v0, :cond_b

    .line 79
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/adnet/c/c;->a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/core/m;)V

    .line 81
    :cond_b
    return-void
.end method

.method public a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/core/m;Ljava/lang/Runnable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 85
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->markDelivered()V

    .line 86
    const-string v0, "post-response"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/adnet/core/Request;->addMarker(Ljava/lang/String;)V

    .line 87
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/core/g;->a(Lcom/bytedance/sdk/adnet/core/Request;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/adnet/core/g$a;

    invoke-direct {v1, p1, p2, p3}, Lcom/bytedance/sdk/adnet/core/g$a;-><init>(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/core/m;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 88
    iget-object p3, p0, Lcom/bytedance/sdk/adnet/core/g;->c:Lcom/bytedance/sdk/adnet/c/c;

    if-eqz p3, :cond_1b

    .line 89
    invoke-interface {p3, p1, p2}, Lcom/bytedance/sdk/adnet/c/c;->a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/core/m;)V

    .line 91
    :cond_1b
    return-void
.end method

.method public a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/err/VAdError;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;",
            "Lcom/bytedance/sdk/adnet/err/VAdError;",
            ")V"
        }
    .end annotation

    .line 95
    const-string v0, "post-error"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/adnet/core/Request;->addMarker(Ljava/lang/String;)V

    .line 96
    invoke-static {p2}, Lcom/bytedance/sdk/adnet/core/m;->a(Lcom/bytedance/sdk/adnet/err/VAdError;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v0

    .line 97
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/core/g;->a(Lcom/bytedance/sdk/adnet/core/Request;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/adnet/core/g$a;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v0, v3}, Lcom/bytedance/sdk/adnet/core/g$a;-><init>(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/core/m;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/g;->c:Lcom/bytedance/sdk/adnet/c/c;

    if-eqz v0, :cond_1d

    .line 99
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/adnet/c/c;->a(Lcom/bytedance/sdk/adnet/core/Request;Ljava/lang/Exception;)V

    .line 101
    :cond_1d
    return-void
.end method
