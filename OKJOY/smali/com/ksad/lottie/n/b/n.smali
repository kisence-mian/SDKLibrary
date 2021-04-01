.class public Lcom/ksad/lottie/n/b/n;
.super Lcom/ksad/lottie/n/b/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ksad/lottie/n/b/f",
        "<",
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

    invoke-direct {p0, p1}, Lcom/ksad/lottie/n/b/f;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method a(Lcom/ksad/lottie/s/a;F)Lcom/ksad/lottie/p/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ksad/lottie/s/a",
            "<",
            "Lcom/ksad/lottie/p/b;",
            ">;F)",
            "Lcom/ksad/lottie/p/b;"
        }
    .end annotation

    iget-object v0, p1, Lcom/ksad/lottie/s/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ksad/lottie/p/b;

    return-object v0
.end method

.method bridge synthetic a(Lcom/ksad/lottie/s/a;F)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/ksad/lottie/n/b/n;->a(Lcom/ksad/lottie/s/a;F)Lcom/ksad/lottie/p/b;

    move-result-object v0

    return-object v0
.end method
