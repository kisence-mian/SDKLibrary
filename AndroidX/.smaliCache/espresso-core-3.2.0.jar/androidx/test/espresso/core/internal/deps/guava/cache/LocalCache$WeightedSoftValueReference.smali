.class final Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WeightedSoftValueReference;
.super Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$SoftValueReference;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeightedSoftValueReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$SoftValueReference<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final weight:I


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "queue",
            "referent",
            "entry",
            "weight"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;TV;",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;I)V"
        }
    .end annotation

    .line 1609
    invoke-direct {p0, p1, p2, p3}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$SoftValueReference;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V

    .line 1610
    iput p4, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WeightedSoftValueReference;->weight:I

    .line 1611
    return-void
.end method


# virtual methods
.method public copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "queue",
            "value",
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;TV;",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;)",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1621
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WeightedSoftValueReference;

    iget v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WeightedSoftValueReference;->weight:I

    invoke-direct {v0, p1, p2, p3, v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WeightedSoftValueReference;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;I)V

    return-object v0
.end method

.method public getWeight()I
    .registers 2

    .line 1615
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WeightedSoftValueReference;->weight:I

    return v0
.end method
