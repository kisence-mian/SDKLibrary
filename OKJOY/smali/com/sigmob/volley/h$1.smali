.class Lcom/sigmob/volley/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/volley/h;-><init>(Landroid/os/Handler;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/sigmob/volley/h;


# direct methods
.method constructor <init>(Lcom/sigmob/volley/h;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/volley/h$1;->b:Lcom/sigmob/volley/h;

    iput-object p2, p0, Lcom/sigmob/volley/h$1;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/volley/h$1;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
