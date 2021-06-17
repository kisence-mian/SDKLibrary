.class final Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$BelowAll;
.super Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;
.source "Cut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BelowAll"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/test/espresso/core/internal/deps/guava/collect/Cut<",
        "Ljava/lang/Comparable<",
        "*>;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$BelowAll;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 120
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$BelowAll;

    invoke-direct {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$BelowAll;-><init>()V

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$BelowAll;->INSTANCE:Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$BelowAll;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;-><init>(Ljava/lang/Comparable;)V

    .line 124
    return-void
.end method

.method static synthetic access$000()Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$BelowAll;
    .registers 1

    .line 119
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$BelowAll;->INSTANCE:Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$BelowAll;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .line 203
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$BelowAll;->INSTANCE:Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$BelowAll;

    return-object v0
.end method


# virtual methods
.method public compareTo(Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Cut<",
            "Ljava/lang/Comparable<",
            "*>;>;)I"
        }
    .end annotation

    .line 189
    if-ne p1, p0, :cond_4

    const/4 p1, 0x0

    goto :goto_5

    :cond_4
    const/4 p1, -0x1

    :goto_5
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "o"
        }
    .end annotation

    .line 119
    check-cast p1, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut$BelowAll;->compareTo(Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;)I

    move-result p1

    return p1
.end method

.method describeAsLowerBound(Ljava/lang/StringBuilder;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sb"
        }
    .end annotation

    .line 160
    const-string v0, "(-\u221e"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    return-void
.end method

.method describeAsUpperBound(Ljava/lang/StringBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sb"
        }
    .end annotation

    .line 165
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public hashCode()I
    .registers 2

    .line 194
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method isLessThan(Ljava/lang/Comparable;)Z
    .registers 2
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
            "(",
            "Ljava/lang/Comparable<",
            "*>;)Z"
        }
    .end annotation

    .line 133
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 199
    const-string v0, "-\u221e"

    return-object v0
.end method
