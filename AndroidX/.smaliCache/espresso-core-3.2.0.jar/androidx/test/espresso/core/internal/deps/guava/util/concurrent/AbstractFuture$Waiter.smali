.class final Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;
.super Ljava/lang/Object;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Waiter"
.end annotation


# static fields
.field static final TOMBSTONE:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;


# instance fields
.field volatile next:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;

.field volatile thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 178
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;-><init>(Z)V

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    # getter for: Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->access$200()Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;->putThread(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;Ljava/lang/Thread;)V

    .line 192
    return-void
.end method

.method constructor <init>(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unused"
        }
    .end annotation

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method setNext(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "next"
        }
    .end annotation

    .line 197
    # getter for: Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;->access$200()Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$AtomicHelper;->putNext(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;)V

    .line 198
    return-void
.end method

.method unpark()V
    .registers 3

    .line 204
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    .line 205
    if-eqz v0, :cond_a

    .line 206
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    .line 207
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 209
    :cond_a
    return-void
.end method
