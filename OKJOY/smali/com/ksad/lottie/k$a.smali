.class Lcom/ksad/lottie/k$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksad/lottie/k;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksad/lottie/k;


# direct methods
.method constructor <init>(Lcom/ksad/lottie/k;)V
    .registers 2

    iput-object p1, p0, Lcom/ksad/lottie/k$a;->a:Lcom/ksad/lottie/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/ksad/lottie/k$a;->a:Lcom/ksad/lottie/k;

    invoke-static {v0}, Lcom/ksad/lottie/k;->a(Lcom/ksad/lottie/k;)Lcom/ksad/lottie/j;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/ksad/lottie/k$a;->a:Lcom/ksad/lottie/k;

    invoke-static {v0}, Lcom/ksad/lottie/k;->b(Lcom/ksad/lottie/k;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_14
    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/ksad/lottie/k$a;->a:Lcom/ksad/lottie/k;

    invoke-static {v0}, Lcom/ksad/lottie/k;->a(Lcom/ksad/lottie/k;)Lcom/ksad/lottie/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/j;->b()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/ksad/lottie/k$a;->a:Lcom/ksad/lottie/k;

    invoke-virtual {v0}, Lcom/ksad/lottie/j;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ksad/lottie/k;->a(Lcom/ksad/lottie/k;Ljava/lang/Object;)V

    goto :goto_14

    :cond_2b
    iget-object v1, p0, Lcom/ksad/lottie/k$a;->a:Lcom/ksad/lottie/k;

    invoke-virtual {v0}, Lcom/ksad/lottie/j;->a()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ksad/lottie/k;->a(Lcom/ksad/lottie/k;Ljava/lang/Throwable;)V

    goto :goto_14
.end method
