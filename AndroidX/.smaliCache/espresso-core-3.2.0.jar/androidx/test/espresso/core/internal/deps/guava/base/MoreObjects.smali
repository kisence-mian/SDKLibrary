.class public final Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects;
.super Ljava/lang/Object;
.source "MoreObjects.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;
    }
.end annotation


# direct methods
.method public static firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "first",
            "second"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 55
    if-eqz p0, :cond_3

    .line 56
    return-object p0

    .line 58
    :cond_3
    if-eqz p1, :cond_6

    .line 59
    return-object p1

    .line 61
    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Both parameters are null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toStringHelper(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "self"
        }
    .end annotation

    .line 105
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$1;)V

    return-object v0
.end method
