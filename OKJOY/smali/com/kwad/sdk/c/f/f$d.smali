.class Lcom/kwad/sdk/c/f/f$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/c/f/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kwad/sdk/c/f/g;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/kwad/sdk/c/f/g;",
            ">;>;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    add-int v1, v0, p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_21

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_18
    invoke-interface {p1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_6

    :cond_21
    move v2, v1

    goto :goto_18

    :cond_23
    return-object v3
.end method

.method private a(Ljava/util/List;)V
    .registers 7
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kwad/sdk/c/f/g;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0xc8

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/c/f/f$d;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_c
    if-ge v1, v3, :cond_21

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1d

    invoke-static {v0}, Lcom/kwad/sdk/c/f/f;->a(Ljava/util/List;)V

    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    :cond_21
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-static {}, Lcom/kwad/sdk/c/f/f;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ksad/download/k/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/kwad/sdk/c/f/f;->c()Lcom/kwad/sdk/c/f/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/c/f/h;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-direct {p0, v0}, Lcom/kwad/sdk/c/f/f$d;->a(Ljava/util/List;)V

    :cond_1d
    return-void
.end method
