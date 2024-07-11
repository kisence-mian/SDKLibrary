.class public Lcom/kwad/sdk/utils/n;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/util/List;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    if-gtz p1, :cond_e

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    :cond_e
    const/4 v1, 0x0

    :goto_f
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    add-int v2, v1, p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-le v2, v3, :cond_22

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_23

    :cond_22
    move v3, v2

    :goto_23
    invoke-interface {p0, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_f

    :cond_2c
    return-object v0
.end method
