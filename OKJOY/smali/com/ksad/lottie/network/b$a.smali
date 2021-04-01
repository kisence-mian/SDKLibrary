.class Lcom/ksad/lottie/network/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksad/lottie/network/b;->b()Lcom/ksad/lottie/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic a:Lcom/ksad/lottie/network/b;


# direct methods
.method constructor <init>(Lcom/ksad/lottie/network/b;)V
    .registers 2

    iput-object p1, p0, Lcom/ksad/lottie/network/b$a;->a:Lcom/ksad/lottie/network/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/ksad/lottie/j;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksad/lottie/j",
            "<",
            "Lcom/ksad/lottie/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/network/b$a;->a:Lcom/ksad/lottie/network/b;

    invoke-virtual {v0}, Lcom/ksad/lottie/network/b;->a()Lcom/ksad/lottie/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/ksad/lottie/network/b$a;->call()Lcom/ksad/lottie/j;

    move-result-object v0

    return-object v0
.end method
