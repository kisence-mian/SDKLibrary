.class public Lcom/ksad/lottie/n/b/d;
.super Lcom/ksad/lottie/n/b/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ksad/lottie/n/b/f",
        "<",
        "Lcom/ksad/lottie/model/content/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final g:Lcom/ksad/lottie/model/content/c;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/s/a",
            "<",
            "Lcom/ksad/lottie/model/content/c;",
            ">;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/ksad/lottie/n/b/f;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/s/a;

    iget-object v0, v0, Lcom/ksad/lottie/s/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ksad/lottie/model/content/c;

    if-nez v0, :cond_1d

    move v0, v1

    :goto_11
    new-instance v1, Lcom/ksad/lottie/model/content/c;

    new-array v2, v0, [F

    new-array v0, v0, [I

    invoke-direct {v1, v2, v0}, Lcom/ksad/lottie/model/content/c;-><init>([F[I)V

    iput-object v1, p0, Lcom/ksad/lottie/n/b/d;->g:Lcom/ksad/lottie/model/content/c;

    return-void

    :cond_1d
    invoke-virtual {v0}, Lcom/ksad/lottie/model/content/c;->c()I

    move-result v0

    goto :goto_11
.end method


# virtual methods
.method a(Lcom/ksad/lottie/s/a;F)Lcom/ksad/lottie/model/content/c;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ksad/lottie/s/a",
            "<",
            "Lcom/ksad/lottie/model/content/c;",
            ">;F)",
            "Lcom/ksad/lottie/model/content/c;"
        }
    .end annotation

    iget-object v2, p0, Lcom/ksad/lottie/n/b/d;->g:Lcom/ksad/lottie/model/content/c;

    iget-object v0, p1, Lcom/ksad/lottie/s/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ksad/lottie/model/content/c;

    iget-object v1, p1, Lcom/ksad/lottie/s/a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/ksad/lottie/model/content/c;

    invoke-virtual {v2, v0, v1, p2}, Lcom/ksad/lottie/model/content/c;->a(Lcom/ksad/lottie/model/content/c;Lcom/ksad/lottie/model/content/c;F)V

    iget-object v0, p0, Lcom/ksad/lottie/n/b/d;->g:Lcom/ksad/lottie/model/content/c;

    return-object v0
.end method

.method bridge synthetic a(Lcom/ksad/lottie/s/a;F)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/ksad/lottie/n/b/d;->a(Lcom/ksad/lottie/s/a;F)Lcom/ksad/lottie/model/content/c;

    move-result-object v0

    return-object v0
.end method
