.class final Lcom/ksad/lottie/e$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksad/lottie/e;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/ksad/lottie/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/ksad/lottie/j",
        "<",
        "Lcom/ksad/lottie/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ksad/lottie/d;


# direct methods
.method constructor <init>(Lcom/ksad/lottie/d;)V
    .registers 2

    iput-object p1, p0, Lcom/ksad/lottie/e$e;->a:Lcom/ksad/lottie/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/ksad/lottie/j;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksad/lottie/j",
            "<",
            "Lcom/ksad/lottie/d;",
            ">;"
        }
    .end annotation

    const-string v0, "Gabe"

    const-string v1, "call\treturning from cache"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/ksad/lottie/j;

    iget-object v1, p0, Lcom/ksad/lottie/e$e;->a:Lcom/ksad/lottie/d;

    invoke-direct {v0, v1}, Lcom/ksad/lottie/j;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/ksad/lottie/e$e;->call()Lcom/ksad/lottie/j;

    move-result-object v0

    return-object v0
.end method
