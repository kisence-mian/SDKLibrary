.class public final Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/SettableFuture;
.super Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$TrustedFuture;
.source "SettableFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$TrustedFuture<",
        "TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$TrustedFuture;-><init>()V

    return-void
.end method

.method public static create()Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/SettableFuture;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/SettableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 42
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/SettableFuture;

    invoke-direct {v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/SettableFuture;-><init>()V

    return-object v0
.end method


# virtual methods
.method public set(Ljava/lang/Object;)Z
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
            "(TV;)Z"
        }
    .end annotation

    .line 48
    invoke-super {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$TrustedFuture;->set(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setException(Ljava/lang/Throwable;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 54
    invoke-super {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$TrustedFuture;->setException(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public setFuture(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "future"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 61
    invoke-super {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$TrustedFuture;->setFuture(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;)Z

    move-result p1

    return p1
.end method
