.class final enum Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause$4;
.super Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;
.source "RemovalCause.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;-><init>(Ljava/lang/String;ILandroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause$1;)V

    return-void
.end method


# virtual methods
.method wasEvicted()Z
    .registers 2

    .line 74
    const/4 v0, 0x1

    return v0
.end method
