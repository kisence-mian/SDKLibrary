.class public abstract Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering;
.super Ljava/lang/Object;
.source "Ordering.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Ljava/util/Comparator;)Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering<",
            "TT;>;"
        }
    .end annotation

    .line 179
    instance-of v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering;

    if-eqz v0, :cond_7

    .line 180
    check-cast p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering;

    goto :goto_d

    .line 181
    :cond_7
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/collect/ComparatorOrdering;

    invoke-direct {v0, p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ComparatorOrdering;-><init>(Ljava/util/Comparator;)V

    move-object p0, v0

    .line 179
    :goto_d
    return-object p0
.end method


# virtual methods
.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation
.end method

.method public onResultOf(Landroidx/test/espresso/core/internal/deps/guava/base/Function;)Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "function"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Function<",
            "TF;+TT;>;)",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering<",
            "TF;>;"
        }
    .end annotation

    .line 446
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/collect/ByFunctionOrdering;

    invoke-direct {v0, p1, p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ByFunctionOrdering;-><init>(Landroidx/test/espresso/core/internal/deps/guava/base/Function;Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering;)V

    return-object v0
.end method
