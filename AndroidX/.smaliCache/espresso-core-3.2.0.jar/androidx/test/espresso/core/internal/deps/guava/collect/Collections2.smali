.class public final Landroidx/test/espresso/core/internal/deps/guava/collect/Collections2;
.super Ljava/lang/Object;
.source "Collections2.java"


# direct methods
.method static cast(Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iterable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 334
    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method static newStringBuilderForCollection(I)Ljava/lang/StringBuilder;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 328
    const-string v0, "size"

    invoke-static {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    int-to-long v1, p0

    const-wide/16 v3, 0x8

    mul-long v1, v1, v3

    const-wide/32 v3, 0x40000000

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int p0, v1

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    return-object v0
.end method
