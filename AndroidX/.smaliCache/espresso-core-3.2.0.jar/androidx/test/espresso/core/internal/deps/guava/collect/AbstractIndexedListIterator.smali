.class abstract Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIndexedListIterator;
.super Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableListIterator;
.source "AbstractIndexedListIterator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private position:I

.field private final size:I


# direct methods
.method protected constructor <init>(II)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "size",
            "position"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableListIterator;-><init>()V

    .line 62
    invoke-static {p2, p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkPositionIndex(II)I

    .line 63
    iput p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIndexedListIterator;->size:I

    .line 64
    iput p2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIndexedListIterator;->position:I

    .line 65
    return-void
.end method


# virtual methods
.method protected abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public final hasNext()Z
    .registers 3

    .line 69
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIndexedListIterator;->position:I

    iget v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIndexedListIterator;->size:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final hasPrevious()Z
    .registers 2

    .line 87
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIndexedListIterator;->position:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIndexedListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 77
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIndexedListIterator;->position:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIndexedListIterator;->position:I

    invoke-virtual {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIndexedListIterator;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 75
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final nextIndex()I
    .registers 2

    .line 82
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIndexedListIterator;->position:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIndexedListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 95
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIndexedListIterator;->position:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIndexedListIterator;->position:I

    invoke-virtual {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIndexedListIterator;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 93
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final previousIndex()I
    .registers 2

    .line 100
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIndexedListIterator;->position:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
