.class final Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteQueue;
.super Ljava/util/AbstractQueue;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WriteQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final head:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 3516
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 3517
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteQueue$1;

    invoke-direct {v0, p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteQueue$1;-><init>(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteQueue;)V

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteQueue;->head:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 3621
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteQueue;->head:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getNextInWriteQueue()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v0

    .line 3622
    :goto_6
    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteQueue;->head:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    if-eq v0, v1, :cond_14

    .line 3623
    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getNextInWriteQueue()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v1

    .line 3624
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->nullifyWriteOrder(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V

    .line 3625
    nop

    .line 3626
    move-object v0, v1

    goto :goto_6

    .line 3628
    :cond_14
    invoke-interface {v1, v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->setNextInWriteQueue(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V

    .line 3629
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteQueue;->head:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    invoke-interface {v0, v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->setPreviousInWriteQueue(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V

    .line 3630
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 3599
    check-cast p1, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    .line 3600
    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getNextInWriteQueue()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object p1

    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$NullEntry;->INSTANCE:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$NullEntry;

    if-eq p1, v0, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public isEmpty()Z
    .registers 3

    .line 3605
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteQueue;->head:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getNextInWriteQueue()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteQueue;->head:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 3634
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteQueue$2;

    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteQueue;->peek()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteQueue$2;-><init>(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteQueue;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V

    return-object v0
.end method

.method public offer(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 3558
    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getPreviousInWriteQueue()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v0

    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getNextInWriteQueue()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->connectWriteOrder(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V

    .line 3561
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteQueue;->head:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getPreviousInWriteQueue()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->connectWriteOrder(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V

    .line 3562
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteQueue;->head:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    invoke-static {p1, v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->connectWriteOrder(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V

    .line 3564
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "entry"
        }
    .end annotation

    .line 3516
    check-cast p1, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteQueue;->offer(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)Z

    move-result p1

    return p1
.end method

.method public peek()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3569
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteQueue;->head:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getNextInWriteQueue()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v0

    .line 3570
    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteQueue;->head:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    :cond_b
    return-object v0
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .registers 2

    .line 3516
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteQueue;->peek()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public poll()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3575
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteQueue;->head:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getNextInWriteQueue()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v0

    .line 3576
    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteQueue;->head:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    if-ne v0, v1, :cond_c

    .line 3577
    const/4 v0, 0x0

    return-object v0

    .line 3580
    :cond_c
    invoke-virtual {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteQueue;->remove(Ljava/lang/Object;)Z

    .line 3581
    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .registers 2

    .line 3516
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteQueue;->poll()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 3587
    check-cast p1, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    .line 3588
    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getPreviousInWriteQueue()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v0

    .line 3589
    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getNextInWriteQueue()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v1

    .line 3590
    invoke-static {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->connectWriteOrder(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V

    .line 3591
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->nullifyWriteOrder(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V

    .line 3593
    sget-object p1, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$NullEntry;->INSTANCE:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$NullEntry;

    if-eq v1, p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method public size()I
    .registers 4

    .line 3610
    nop

    .line 3611
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteQueue;->head:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getNextInWriteQueue()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v0

    const/4 v1, 0x0

    .line 3612
    :goto_8
    iget-object v2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteQueue;->head:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    if-eq v0, v2, :cond_13

    .line 3614
    add-int/lit8 v1, v1, 0x1

    .line 3613
    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getNextInWriteQueue()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v0

    goto :goto_8

    .line 3616
    :cond_13
    return v1
.end method
