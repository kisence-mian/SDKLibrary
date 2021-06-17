.class public abstract Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$Builder;
.super Ljava/lang/Object;
.source "ImmutableCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static expandedCapacity(II)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldCapacity",
            "minCapacity"
        }
    .end annotation

    .line 346
    if-ltz p1, :cond_17

    .line 350
    shr-int/lit8 v0, p0, 0x1

    add-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    .line 351
    if-ge p0, p1, :cond_11

    .line 352
    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    .line 354
    :cond_11
    if-gez p0, :cond_16

    .line 355
    const p0, 0x7fffffff

    .line 358
    :cond_16
    return p0

    .line 347
    :cond_17
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "cannot store more than MAX_VALUE elements"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public abstract add(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$Builder<",
            "TE;>;"
        }
    .end annotation
.end method

.method public varargs add([Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 387
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-object v2, p1, v1

    .line 388
    invoke-virtual {p0, v2}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$Builder;->add(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$Builder;

    .line 387
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 390
    :cond_c
    return-object p0
.end method
