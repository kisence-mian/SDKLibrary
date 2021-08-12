.class public Lcom/sigmob/volley/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/volley/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/volley/e$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sigmob/volley/e$1;

    invoke-direct {v0, p0, p1}, Lcom/sigmob/volley/e$1;-><init>(Lcom/sigmob/volley/e;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sigmob/volley/e;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/volley/m;Lcom/sigmob/volley/o;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/m<",
            "*>;",
            "Lcom/sigmob/volley/o<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sigmob/volley/e;->a(Lcom/sigmob/volley/m;Lcom/sigmob/volley/o;Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/sigmob/volley/m;Lcom/sigmob/volley/o;Ljava/lang/Runnable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/m<",
            "*>;",
            "Lcom/sigmob/volley/o<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sigmob/volley/m;->v()V

    const-string v0, "post-response"

    invoke-virtual {p1, v0}, Lcom/sigmob/volley/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/volley/e;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sigmob/volley/e$a;

    invoke-direct {v1, p1, p2, p3}, Lcom/sigmob/volley/e$a;-><init>(Lcom/sigmob/volley/m;Lcom/sigmob/volley/o;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/sigmob/volley/m;Lcom/sigmob/volley/t;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/m<",
            "*>;",
            "Lcom/sigmob/volley/t;",
            ")V"
        }
    .end annotation

    const-string v0, "post-error"

    invoke-virtual {p1, v0}, Lcom/sigmob/volley/m;->a(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/sigmob/volley/o;->a(Lcom/sigmob/volley/t;)Lcom/sigmob/volley/o;

    move-result-object p2

    iget-object v0, p0, Lcom/sigmob/volley/e;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sigmob/volley/e$a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/sigmob/volley/e$a;-><init>(Lcom/sigmob/volley/m;Lcom/sigmob/volley/o;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
