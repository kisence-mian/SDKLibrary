.class final Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableSet;
.super Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;
.source "RegularImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final transient elements:[Ljava/lang/Object;

.field private final transient hashCode:I

.field private final transient mask:I

.field private final transient size:I

.field final transient table:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 31
    new-instance v6, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableSet;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableSet;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    sput-object v6, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableSet;->EMPTY:Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableSet;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "elements",
            "hashCode",
            "table",
            "mask",
            "size"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;-><init>()V

    .line 43
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    .line 44
    iput-object p3, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableSet;->table:[Ljava/lang/Object;

    .line 45
    iput p4, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableSet;->mask:I

    .line 46
    iput p2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableSet;->hashCode:I

    .line 47
    iput p5, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableSet;->size:I

    .line 48
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableSet;->table:[Ljava/lang/Object;

    .line 53
    const/4 v1, 0x0

    if-eqz p1, :cond_1f

    if-nez v0, :cond_8

    goto :goto_1f

    .line 56
    :cond_8
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v2

    .line 57
    :goto_c
    iget v3, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableSet;->mask:I

    and-int/2addr v2, v3

    .line 58
    aget-object v3, v0, v2

    .line 59
    if-nez v3, :cond_14

    .line 60
    return v1

    .line 61
    :cond_14
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 62
    const/4 p1, 0x1

    return p1

    .line 56
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 54
    :cond_1f
    :goto_1f
    return v1
.end method

.method copyIntoArray([Ljava/lang/Object;I)I
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dst",
            "offset"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    iget v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableSet;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iget p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableSet;->size:I

    add-int/2addr p2, p1

    return p2
.end method

.method createAsList()Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    iget v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableSet;->size:I

    invoke-static {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;I)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 110
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableSet;->hashCode:I

    return v0
.end method

.method internalArray()[Ljava/lang/Object;
    .registers 2

    .line 79
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    return-object v0
.end method

.method internalArrayEnd()I
    .registers 2

    .line 89
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableSet;->size:I

    return v0
.end method

.method internalArrayStart()I
    .registers 2

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method isHashCodeFast()Z
    .registers 2

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableSet;->asList()Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->iterator()Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 28
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableSet;->iterator()Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 69
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableSet;->size:I

    return v0
.end method
