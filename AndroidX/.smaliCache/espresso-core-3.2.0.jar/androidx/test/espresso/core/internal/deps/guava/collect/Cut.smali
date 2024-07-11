.class abstract Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;
.super Ljava/lang/Object;
.source "Cut.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$AboveValue;,
        Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$BelowValue;,
        Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$AboveAll;,
        Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$BelowAll;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Landroidx/test/espresso/core/internal/deps/guava/collect/Cut<",
        "TC;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final endpoint:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Comparable;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endpoint"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->endpoint:Ljava/lang/Comparable;

    .line 40
    return-void
.end method

.method static aboveAll()Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Cut<",
            "TC;>;"
        }
    .end annotation

    .line 215
    # getter for: Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$AboveAll;->INSTANCE:Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$AboveAll;
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$AboveAll;->access$100()Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$AboveAll;

    move-result-object v0

    return-object v0
.end method

.method static aboveValue(Ljava/lang/Comparable;)Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endpoint"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(TC;)",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Cut<",
            "TC;>;"
        }
    .end annotation

    .line 383
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$AboveValue;

    invoke-direct {v0, p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$AboveValue;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method

.method static belowAll()Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Cut<",
            "TC;>;"
        }
    .end annotation

    .line 114
    # getter for: Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$BelowAll;->INSTANCE:Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$BelowAll;
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$BelowAll;->access$000()Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$BelowAll;

    move-result-object v0

    return-object v0
.end method

.method static belowValue(Ljava/lang/Comparable;)Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endpoint"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(TC;)",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Cut<",
            "TC;>;"
        }
    .end annotation

    .line 300
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$BelowValue;

    invoke-direct {v0, p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$BelowValue;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "that"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Cut<",
            "TC;>;)I"
        }
    .end annotation

    .line 71
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->belowAll()Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    move-result-object v0

    if-ne p1, v0, :cond_8

    .line 72
    const/4 p1, 0x1

    return p1

    .line 74
    :cond_8
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->aboveAll()Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    move-result-object v0

    if-ne p1, v0, :cond_10

    .line 75
    const/4 p1, -0x1

    return p1

    .line 77
    :cond_10
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->endpoint:Ljava/lang/Comparable;

    iget-object v1, p1, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->endpoint:Ljava/lang/Comparable;

    invoke-static {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->compareOrThrow(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 78
    if-eqz v0, :cond_1b

    .line 79
    return v0

    .line 82
    :cond_1b
    instance-of v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$AboveValue;

    instance-of p1, p1, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$AboveValue;

    invoke-static {v0, p1}, Landroidx/test/espresso/core/internal/deps/guava/primitives/Booleans;->compare(ZZ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "that"
        }
    .end annotation

    .line 34
    check-cast p1, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->compareTo(Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;)I

    move-result p1

    return p1
.end method

.method abstract describeAsLowerBound(Ljava/lang/StringBuilder;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sb"
        }
    .end annotation
.end method

.method abstract describeAsUpperBound(Ljava/lang/StringBuilder;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sb"
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 92
    instance-of v0, p1, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 94
    check-cast p1, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    .line 96
    :try_start_7
    invoke-virtual {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->compareTo(Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;)I

    move-result p1
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_b} :catch_f

    .line 97
    if-nez p1, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1

    .line 98
    :catch_f
    move-exception p1

    .line 101
    :cond_10
    return v1
.end method

.method public abstract hashCode()I
.end method

.method abstract isLessThan(Ljava/lang/Comparable;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation
.end method
