.class Lcom/ksad/lottie/k$b;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksad/lottie/k;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lcom/ksad/lottie/k;


# direct methods
.method constructor <init>(Lcom/ksad/lottie/k;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/ksad/lottie/k$b;->b:Lcom/ksad/lottie/k;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ksad/lottie/k$b;->a:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/ksad/lottie/k$b;->a:Z

    if-eqz v0, :cond_b

    :cond_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/ksad/lottie/k$b;->b:Lcom/ksad/lottie/k;

    invoke-static {v0}, Lcom/ksad/lottie/k;->b(Lcom/ksad/lottie/k;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_17
    iget-object v1, p0, Lcom/ksad/lottie/k$b;->b:Lcom/ksad/lottie/k;

    iget-object v0, p0, Lcom/ksad/lottie/k$b;->b:Lcom/ksad/lottie/k;

    invoke-static {v0}, Lcom/ksad/lottie/k;->b(Lcom/ksad/lottie/k;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/j;

    invoke-static {v1, v0}, Lcom/ksad/lottie/k;->a(Lcom/ksad/lottie/k;Lcom/ksad/lottie/j;)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_28} :catch_31
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_17 .. :try_end_28} :catch_3d

    :goto_28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ksad/lottie/k$b;->a:Z

    iget-object v0, p0, Lcom/ksad/lottie/k$b;->b:Lcom/ksad/lottie/k;

    invoke-static {v0}, Lcom/ksad/lottie/k;->c(Lcom/ksad/lottie/k;)V

    goto :goto_0

    :catch_31
    move-exception v0

    :goto_32
    iget-object v1, p0, Lcom/ksad/lottie/k$b;->b:Lcom/ksad/lottie/k;

    new-instance v2, Lcom/ksad/lottie/j;

    invoke-direct {v2, v0}, Lcom/ksad/lottie/j;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1, v2}, Lcom/ksad/lottie/k;->a(Lcom/ksad/lottie/k;Lcom/ksad/lottie/j;)V

    goto :goto_28

    :catch_3d
    move-exception v0

    goto :goto_32
.end method
