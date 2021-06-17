.class abstract Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;
.super Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$Builder;
.source "ImmutableCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ArrayBasedBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$Builder<",
        "TE;>;"
    }
.end annotation


# instance fields
.field contents:[Ljava/lang/Object;

.field forceCopy:Z

.field size:I


# direct methods
.method constructor <init>(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initialCapacity"
        }
    .end annotation

    .line 444
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$Builder;-><init>()V

    .line 445
    const-string v0, "initialCapacity"

    invoke-static {p1, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 446
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->contents:[Ljava/lang/Object;

    .line 447
    const/4 p1, 0x0

    iput p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    .line 448
    return-void
.end method

.method private getReadyToExpandTo(I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minCapacity"
        }
    .end annotation

    .line 456
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->contents:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    if-ge v1, p1, :cond_14

    .line 457
    array-length v1, v0

    .line 458
    invoke-static {v1, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->expandedCapacity(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->contents:[Ljava/lang/Object;

    .line 459
    iput-boolean v2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->forceCopy:Z

    goto :goto_22

    .line 460
    :cond_14
    iget-boolean p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->forceCopy:Z

    if-eqz p1, :cond_22

    .line 461
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->contents:[Ljava/lang/Object;

    .line 462
    iput-boolean v2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->forceCopy:Z

    .line 464
    :cond_22
    :goto_22
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;
    .registers 5
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
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder<",
            "TE;>;"
        }
    .end annotation

    .line 469
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->getReadyToExpandTo(I)V

    .line 471
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->contents:[Ljava/lang/Object;

    iget v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    aput-object p1, v0, v1

    .line 472
    return-object p0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "element"
        }
    .end annotation

    .line 439
    invoke-virtual {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs add([Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$Builder;
    .registers 6
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

    .line 478
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ObjectArrays;->checkElementsNotNull([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 479
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->getReadyToExpandTo(I)V

    .line 480
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->contents:[Ljava/lang/Object;

    iget v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 481
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    .line 482
    return-object p0
.end method
