.class Lcom/sigmob/sdk/base/c/u;
.super Ljava/lang/Object;


# instance fields
.field final a:I

.field final b:Landroid/os/Handler;

.field final c:Ljava/lang/Runnable;

.field final synthetic d:Lcom/sigmob/sdk/base/c/t;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/c/t;Lcom/sigmob/volley/q;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/q",
            "<*>;I)V"
        }
    .end annotation

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sigmob/sdk/base/c/u;-><init>(Lcom/sigmob/sdk/base/c/t;Lcom/sigmob/volley/q;ILandroid/os/Handler;)V

    return-void
.end method

.method constructor <init>(Lcom/sigmob/sdk/base/c/t;Lcom/sigmob/volley/q;ILandroid/os/Handler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/q",
            "<*>;I",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/c/u;->d:Lcom/sigmob/sdk/base/c/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/sigmob/sdk/base/c/u;->a:I

    iput-object p4, p0, Lcom/sigmob/sdk/base/c/u;->b:Landroid/os/Handler;

    new-instance v0, Lcom/sigmob/sdk/base/c/u$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/sigmob/sdk/base/c/u$1;-><init>(Lcom/sigmob/sdk/base/c/u;Lcom/sigmob/sdk/base/c/t;Lcom/sigmob/volley/q;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/c/u;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method a()V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/u;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sigmob/sdk/base/c/u;->c:Ljava/lang/Runnable;

    iget v2, p0, Lcom/sigmob/sdk/base/c/u;->a:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method b()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/u;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sigmob/sdk/base/c/u;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
