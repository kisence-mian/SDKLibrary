.class public final Landroidx/test/espresso/core/internal/deps/guava/primitives/Booleans;
.super Ljava/lang/Object;
.source "Booleans.java"


# direct methods
.method public static compare(ZZ)I
    .registers 2
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

    .line 127
    if-ne p0, p1, :cond_4

    const/4 p0, 0x0

    goto :goto_9

    :cond_4
    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, -0x1

    :goto_9
    return p0
.end method
