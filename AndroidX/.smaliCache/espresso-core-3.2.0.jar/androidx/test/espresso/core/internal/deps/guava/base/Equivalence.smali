.class public abstract Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;
.super Ljava/lang/Object;
.source "Equivalence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence$Identity;,
        Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence$Equals;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equals()Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 313
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence$Equals;->INSTANCE:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence$Equals;

    return-object v0
.end method

.method public static identity()Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 325
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence$Identity;->INSTANCE:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence$Identity;

    return-object v0
.end method


# virtual methods
.method protected abstract doEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
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
            "(TT;TT;)Z"
        }
    .end annotation
.end method

.method protected abstract doHash(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public final equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
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
            "(TT;TT;)Z"
        }
    .end annotation

    .line 63
    if-ne p1, p2, :cond_4

    .line 64
    const/4 p1, 0x1

    return p1

    .line 66
    :cond_4
    if-eqz p1, :cond_e

    if-nez p2, :cond_9

    goto :goto_e

    .line 69
    :cond_9
    invoke-virtual {p0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;->doEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 67
    :cond_e
    :goto_e
    const/4 p1, 0x0

    return p1
.end method

.method public final hash(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 99
    if-nez p1, :cond_4

    .line 100
    const/4 p1, 0x0

    return p1

    .line 102
    :cond_4
    invoke-virtual {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;->doHash(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
