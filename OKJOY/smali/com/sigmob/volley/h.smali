.class public Lcom/sigmob/volley/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/volley/aa;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sigmob/volley/h$1;

    invoke-direct {v0, p0, p1}, Lcom/sigmob/volley/h$1;-><init>(Lcom/sigmob/volley/h;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sigmob/volley/h;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/volley/h;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/volley/q;Lcom/sigmob/volley/ae;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/q",
            "<*>;",
            "Lcom/sigmob/volley/ae;",
            ")V"
        }
    .end annotation

    const-string v0, "post-error"

    invoke-virtual {p1, v0}, Lcom/sigmob/volley/q;->a(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/sigmob/volley/x;->a(Lcom/sigmob/volley/ae;)Lcom/sigmob/volley/x;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/volley/h;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/sigmob/volley/i;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v0, v3}, Lcom/sigmob/volley/i;-><init>(Lcom/sigmob/volley/q;Lcom/sigmob/volley/x;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/sigmob/volley/q;Lcom/sigmob/volley/x;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/q",
            "<*>;",
            "Lcom/sigmob/volley/x",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sigmob/volley/h;->a(Lcom/sigmob/volley/q;Lcom/sigmob/volley/x;Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/sigmob/volley/q;Lcom/sigmob/volley/x;Ljava/lang/Runnable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/q",
            "<*>;",
            "Lcom/sigmob/volley/x",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sigmob/volley/q;->A()V

    const-string v0, "post-response"

    invoke-virtual {p1, v0}, Lcom/sigmob/volley/q;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/volley/h;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sigmob/volley/i;

    invoke-direct {v1, p1, p2, p3}, Lcom/sigmob/volley/i;-><init>(Lcom/sigmob/volley/q;Lcom/sigmob/volley/x;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
