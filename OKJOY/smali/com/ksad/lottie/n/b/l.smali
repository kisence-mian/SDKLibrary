.class public Lcom/ksad/lottie/n/b/l;
.super Lcom/ksad/lottie/n/b/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ksad/lottie/n/b/a",
        "<",
        "Lcom/ksad/lottie/model/content/h;",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final g:Lcom/ksad/lottie/model/content/h;

.field private final h:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/s/a",
            "<",
            "Lcom/ksad/lottie/model/content/h;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/ksad/lottie/n/b/a;-><init>(Ljava/util/List;)V

    new-instance v0, Lcom/ksad/lottie/model/content/h;

    invoke-direct {v0}, Lcom/ksad/lottie/model/content/h;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/n/b/l;->g:Lcom/ksad/lottie/model/content/h;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/n/b/l;->h:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public a(Lcom/ksad/lottie/s/a;F)Landroid/graphics/Path;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ksad/lottie/s/a",
            "<",
            "Lcom/ksad/lottie/model/content/h;",
            ">;F)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    iget-object v0, p1, Lcom/ksad/lottie/s/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ksad/lottie/model/content/h;

    iget-object v1, p1, Lcom/ksad/lottie/s/a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/ksad/lottie/model/content/h;

    iget-object v2, p0, Lcom/ksad/lottie/n/b/l;->g:Lcom/ksad/lottie/model/content/h;

    invoke-virtual {v2, v0, v1, p2}, Lcom/ksad/lottie/model/content/h;->a(Lcom/ksad/lottie/model/content/h;Lcom/ksad/lottie/model/content/h;F)V

    iget-object v0, p0, Lcom/ksad/lottie/n/b/l;->g:Lcom/ksad/lottie/model/content/h;

    iget-object v1, p0, Lcom/ksad/lottie/n/b/l;->h:Landroid/graphics/Path;

    invoke-static {v0, v1}, Lcom/ksad/lottie/r/e;->a(Lcom/ksad/lottie/model/content/h;Landroid/graphics/Path;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/b/l;->h:Landroid/graphics/Path;

    return-object v0
.end method

.method public bridge synthetic a(Lcom/ksad/lottie/s/a;F)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/ksad/lottie/n/b/l;->a(Lcom/ksad/lottie/s/a;F)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method
