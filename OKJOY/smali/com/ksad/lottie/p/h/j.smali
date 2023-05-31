.class public Lcom/ksad/lottie/p/h/j;
.super Lcom/ksad/lottie/p/h/n;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ksad/lottie/p/h/n",
        "<",
        "Lcom/ksad/lottie/p/b;",
        "Lcom/ksad/lottie/p/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/s/a",
            "<",
            "Lcom/ksad/lottie/p/b;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/ksad/lottie/p/h/n;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/ksad/lottie/n/b/a;
    .registers 2

    invoke-virtual {p0}, Lcom/ksad/lottie/p/h/j;->a()Lcom/ksad/lottie/n/b/n;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/ksad/lottie/n/b/n;
    .registers 3

    new-instance v0, Lcom/ksad/lottie/n/b/n;

    iget-object v1, p0, Lcom/ksad/lottie/p/h/n;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/ksad/lottie/n/b/n;-><init>(Ljava/util/List;)V

    return-object v0
.end method
