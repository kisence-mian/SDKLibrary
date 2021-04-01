.class public Lcom/ksad/lottie/p/h/g;
.super Lcom/ksad/lottie/p/h/n;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ksad/lottie/p/h/n",
        "<",
        "Lcom/ksad/lottie/s/c;",
        "Lcom/ksad/lottie/s/c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    const/high16 v1, 0x3f800000    # 1.0f

    new-instance v0, Lcom/ksad/lottie/s/c;

    invoke-direct {v0, v1, v1}, Lcom/ksad/lottie/s/c;-><init>(FF)V

    invoke-direct {p0, v0}, Lcom/ksad/lottie/p/h/g;-><init>(Lcom/ksad/lottie/s/c;)V

    return-void
.end method

.method public constructor <init>(Lcom/ksad/lottie/s/c;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ksad/lottie/p/h/n;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/s/a",
            "<",
            "Lcom/ksad/lottie/s/c;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/ksad/lottie/p/h/n;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/ksad/lottie/n/b/a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksad/lottie/n/b/a",
            "<",
            "Lcom/ksad/lottie/s/c;",
            "Lcom/ksad/lottie/s/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/ksad/lottie/n/b/k;

    iget-object v1, p0, Lcom/ksad/lottie/p/h/n;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/ksad/lottie/n/b/k;-><init>(Ljava/util/List;)V

    return-object v0
.end method
