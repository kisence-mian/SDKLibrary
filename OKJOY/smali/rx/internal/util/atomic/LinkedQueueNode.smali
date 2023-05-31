.class public final Lrx/internal/util/atomic/LinkedQueueNode;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "LinkedQueueNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lrx/internal/util/atomic/LinkedQueueNode",
        "<TE;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x215dab4a52b27c94L


# instance fields
.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    .local p0, "this":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    .local p1, "val":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 31
    invoke-virtual {p0, p1}, Lrx/internal/util/atomic/LinkedQueueNode;->spValue(Ljava/lang/Object;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getAndNullValue()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/atomic/LinkedQueueNode;->lpValue()Ljava/lang/Object;

    move-result-object v0

    .line 40
    .local v0, "temp":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lrx/internal/util/atomic/LinkedQueueNode;->spValue(Ljava/lang/Object;)V

    .line 41
    return-object v0
.end method

.method public lpValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/LinkedQueueNode;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public lvNext()Lrx/internal/util/atomic/LinkedQueueNode;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/util/atomic/LinkedQueueNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/atomic/LinkedQueueNode;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/util/atomic/LinkedQueueNode;

    return-object v0
.end method

.method public soNext(Lrx/internal/util/atomic/LinkedQueueNode;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/util/atomic/LinkedQueueNode",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    .local p1, "n":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    invoke-virtual {p0, p1}, Lrx/internal/util/atomic/LinkedQueueNode;->lazySet(Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public spValue(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TE;"
    iput-object p1, p0, Lrx/internal/util/atomic/LinkedQueueNode;->value:Ljava/lang/Object;

    .line 50
    return-void
.end method
