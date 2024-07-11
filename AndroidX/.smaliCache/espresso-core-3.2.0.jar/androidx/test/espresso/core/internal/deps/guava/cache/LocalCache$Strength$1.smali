.class final enum Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength$1;
.super Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .line 378
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;-><init>(Ljava/lang/String;ILandroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$1;)V

    return-void
.end method


# virtual methods
.method defaultEquivalence()Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 389
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;->equals()Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;

    move-result-object v0

    return-object v0
.end method

.method referenceValue(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Ljava/lang/Object;I)Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "segment",
            "entry",
            "value",
            "weight"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment<",
            "TK;TV;>;",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;TV;I)",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 382
    const/4 p1, 0x1

    if-ne p4, p1, :cond_9

    .line 383
    new-instance p1, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$StrongValueReference;

    invoke-direct {p1, p3}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$StrongValueReference;-><init>(Ljava/lang/Object;)V

    goto :goto_e

    .line 384
    :cond_9
    new-instance p1, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WeightedStrongValueReference;

    invoke-direct {p1, p3, p4}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WeightedStrongValueReference;-><init>(Ljava/lang/Object;I)V

    .line 382
    :goto_e
    return-object p1
.end method
