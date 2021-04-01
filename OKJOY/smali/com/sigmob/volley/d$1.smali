.class Lcom/sigmob/volley/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/volley/d;->a(Lcom/sigmob/volley/q;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/volley/q;

.field final synthetic b:Lcom/sigmob/volley/d;


# direct methods
.method constructor <init>(Lcom/sigmob/volley/d;Lcom/sigmob/volley/q;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/volley/d$1;->b:Lcom/sigmob/volley/d;

    iput-object p2, p0, Lcom/sigmob/volley/d$1;->a:Lcom/sigmob/volley/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/volley/d$1;->b:Lcom/sigmob/volley/d;

    invoke-static {v0}, Lcom/sigmob/volley/d;->a(Lcom/sigmob/volley/d;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/volley/d$1;->a:Lcom/sigmob/volley/q;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_b
.end method
