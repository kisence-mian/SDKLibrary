.class public final Landroidx/test/espresso/core/internal/deps/guava/primitives/Ints;
.super Ljava/lang/Object;
.source "Ints.java"


# direct methods
.method public static saturatedCast(J)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 99
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    if-lez v2, :cond_b

    .line 100
    const p0, 0x7fffffff

    return p0

    .line 102
    :cond_b
    const-wide/32 v0, -0x80000000

    cmp-long v2, p0, v0

    if-gez v2, :cond_15

    .line 103
    const/high16 p0, -0x80000000

    return p0

    .line 105
    :cond_15
    long-to-int p1, p0

    return p1
.end method
