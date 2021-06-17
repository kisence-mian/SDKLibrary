.class public abstract Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;
.super Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ForwardingListenableFuture;
.source "ForwardingListenableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ForwardingListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleForwardingListenableFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ForwardingListenableFuture<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final delegate:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture<",
            "TV;>;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ForwardingListenableFuture;-><init>()V

    .line 60
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;->delegate:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    .line 61
    return-void
.end method


# virtual methods
.method protected final delegate()Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;->delegate:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .line 55
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;->delegate()Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/concurrent/Future;
    .registers 2

    .line 55
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;->delegate()Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
