.class final Landroidx/test/espresso/core/internal/deps/guava/collect/ComparatorOrdering;
.super Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering;
.source "ComparatorOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TT;>;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering;-><init>()V

    .line 32
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    .line 33
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 42
    if-ne p1, p0, :cond_4

    .line 43
    const/4 p1, 0x1

    return p1

    .line 45
    :cond_4
    instance-of v0, p1, Landroidx/test/espresso/core/internal/deps/guava/collect/ComparatorOrdering;

    if-eqz v0, :cond_13

    .line 46
    check-cast p1, Landroidx/test/espresso/core/internal/deps/guava/collect/ComparatorOrdering;

    .line 47
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    iget-object p1, p1, Landroidx/test/espresso/core/internal/deps/guava/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 49
    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 54
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 59
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
