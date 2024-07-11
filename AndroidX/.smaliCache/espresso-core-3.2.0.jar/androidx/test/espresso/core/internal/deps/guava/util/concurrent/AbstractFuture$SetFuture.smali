.class final Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$SetFuture;
.super Ljava/lang/Object;
.source "AbstractFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SetFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final future:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture<",
            "+TV;>;"
        }
    .end annotation
.end field

.field final owner:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "owner",
            "future"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture<",
            "TV;>;",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture<",
            "+TV;>;)V"
        }
    .end annotation

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$SetFuture;->owner:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;

    .line 318
    iput-object p2, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$SetFuture;->future:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    .line 319
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 323
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$SetFuture;->owner:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;

    # getter for: Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->access$400(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_9

    .line 325
    return-void

    .line 327
    :cond_9
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$SetFuture;->future:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    # invokes: Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->getFutureValue(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->access$500(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v0

    .line 328
    # getter for: Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->access$200()Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;

    move-result-object v1

    iget-object v2, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$SetFuture;->owner:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;

    invoke-virtual {v1, v2, p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 329
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$SetFuture;->owner:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;

    # invokes: Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->complete(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;)V
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->access$600(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;)V

    .line 331
    :cond_20
    return-void
.end method
