.class Lcom/sigmob/volley/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/volley/c;->a(Lcom/sigmob/volley/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/volley/m;

.field final synthetic b:Lcom/sigmob/volley/c;


# direct methods
.method constructor <init>(Lcom/sigmob/volley/c;Lcom/sigmob/volley/m;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/volley/c$1;->b:Lcom/sigmob/volley/c;

    iput-object p2, p0, Lcom/sigmob/volley/c$1;->a:Lcom/sigmob/volley/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/volley/c$1;->b:Lcom/sigmob/volley/c;

    invoke-static {v0}, Lcom/sigmob/volley/c;->a(Lcom/sigmob/volley/c;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/volley/c$1;->a:Lcom/sigmob/volley/m;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_14
    return-void
.end method
