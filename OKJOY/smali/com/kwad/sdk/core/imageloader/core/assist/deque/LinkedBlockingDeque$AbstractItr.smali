.class abstract Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private lastRet:Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field next:Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque;)V
    .registers 4

    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->this$0:Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p1, Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_a
    invoke-virtual {p0}, Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->firstNode()Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->next:Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$Node;

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->next:Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$Node;

    if-nez v0, :cond_1b

    const/4 v0, 0x0

    :goto_15
    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->nextItem:Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_20

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->next:Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$Node;

    iget-object v0, v0, Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_20

    goto :goto_15

    :catchall_20
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private succ(Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$Node;)Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$Node",
            "<TE;>;)",
            "Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation

    :goto_0
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->nextNode(Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$Node;)Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$Node;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    iget-object v1, v0, Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    if-nez v1, :cond_7

    if-ne v0, p1, :cond_13

    invoke-virtual {p0}, Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->firstNode()Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$Node;

    move-result-object v0

    goto :goto_7

    :cond_13
    move-object p1, v0

    goto :goto_0
.end method


# virtual methods
.method advance()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->this$0:Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque;

    iget-object v1, v0, Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_7
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->next:Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$Node;

    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->succ(Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$Node;)Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->next:Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$Node;

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->next:Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$Node;

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    :goto_14
    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->nextItem:Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_1f

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->next:Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$Node;

    iget-object v0, v0, Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1f

    goto :goto_14

    :catchall_1f
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method abstract firstNode()Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->next:Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$Node;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->next:Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$Node;

    if-eqz v0, :cond_c

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->lastRet:Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$Node;

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->nextItem:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->advance()V

    return-object v0

    :cond_c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method abstract nextNode(Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$Node;)Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$Node",
            "<TE;>;)",
            "Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end method

.method public remove()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->lastRet:Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$Node;

    if-eqz v0, :cond_20

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->lastRet:Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$Node;

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->this$0:Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque;

    iget-object v1, v1, Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_e
    iget-object v2, v0, Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->this$0:Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque;

    invoke-virtual {v2, v0}, Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque;->unlink(Lcom/kwad/sdk/core/imageloader/core/assist/deque/LinkedBlockingDeque$Node;)V
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_1b

    :cond_17
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_1b
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
