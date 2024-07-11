.class abstract Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "HashIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field currentSegment:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field lastReturned:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteThroughEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache<",
            "TK;TV;>.WriteThroughEntry;"
        }
    .end annotation
.end field

.field nextEntry:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field nextExternal:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteThroughEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache<",
            "TK;TV;>.WriteThroughEntry;"
        }
    .end annotation
.end field

.field nextSegmentIndex:I

.field nextTableIndex:I

.field final synthetic this$0:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;


# direct methods
.method constructor <init>(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 4191
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->this$0:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4192
    iget-object p1, p1, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->segments:[Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->nextSegmentIndex:I

    .line 4193
    const/4 p1, -0x1

    iput p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->nextTableIndex:I

    .line 4194
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->advance()V

    .line 4195
    return-void
.end method


# virtual methods
.method final advance()V
    .registers 4

    .line 4201
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->nextExternal:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteThroughEntry;

    .line 4203
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->nextInChain()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4204
    return-void

    .line 4207
    :cond_a
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->nextInTable()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4208
    return-void

    .line 4211
    :cond_11
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->nextSegmentIndex:I

    if-ltz v0, :cond_3c

    .line 4212
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->this$0:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    iget-object v0, v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->segments:[Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;

    iget v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->nextSegmentIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->nextSegmentIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->currentSegment:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;

    .line 4213
    iget v0, v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->count:I

    if-eqz v0, :cond_11

    .line 4214
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->currentSegment:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;

    iget-object v0, v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 4215
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->nextTableIndex:I

    .line 4216
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->nextInTable()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4217
    return-void

    .line 4221
    :cond_3c
    return-void
.end method

.method advanceTo(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)Z
    .registers 6
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

    .line 4253
    :try_start_0
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->this$0:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    iget-object v0, v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->ticker:Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;->read()J

    move-result-wide v0

    .line 4254
    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 4255
    iget-object v3, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->this$0:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    invoke-virtual {v3, p1, v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->getLiveValue(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;J)Ljava/lang/Object;

    move-result-object p1

    .line 4256
    if-eqz p1, :cond_24

    .line 4257
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteThroughEntry;

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->this$0:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    invoke-direct {v0, v1, v2, p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteThroughEntry;-><init>(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->nextExternal:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteThroughEntry;
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_2b

    .line 4258
    const/4 p1, 0x1

    .line 4264
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->currentSegment:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postReadCleanup()V

    .line 4258
    return p1

    .line 4261
    :cond_24
    const/4 p1, 0x0

    .line 4264
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->currentSegment:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postReadCleanup()V

    .line 4261
    return p1

    .line 4264
    :catchall_2b
    move-exception p1

    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->currentSegment:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postReadCleanup()V

    throw p1
.end method

.method public hasNext()Z
    .registers 2

    .line 4270
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->nextExternal:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteThroughEntry;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method nextEntry()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteThroughEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache<",
            "TK;TV;>.WriteThroughEntry;"
        }
    .end annotation

    .line 4274
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->nextExternal:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteThroughEntry;

    if-eqz v0, :cond_c

    .line 4277
    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->lastReturned:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteThroughEntry;

    .line 4278
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->advance()V

    .line 4279
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->lastReturned:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteThroughEntry;

    return-object v0

    .line 4275
    :cond_c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method nextInChain()Z
    .registers 2

    .line 4225
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->nextEntry:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    if-eqz v0, :cond_1a

    .line 4226
    nop

    :goto_5
    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getNext()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->nextEntry:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->nextEntry:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    if-eqz v0, :cond_1a

    .line 4227
    invoke-virtual {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->advanceTo(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4228
    const/4 v0, 0x1

    return v0

    .line 4226
    :cond_17
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->nextEntry:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    goto :goto_5

    .line 4232
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method nextInTable()Z
    .registers 4

    .line 4237
    :cond_0
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->nextTableIndex:I

    if-ltz v0, :cond_22

    .line 4238
    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->nextTableIndex:I

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->nextEntry:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    if-eqz v0, :cond_0

    .line 4239
    invoke-virtual {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->advanceTo(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->nextInChain()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4240
    :cond_20
    const/4 v0, 0x1

    return v0

    .line 4244
    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public remove()V
    .registers 3

    .line 4284
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->lastReturned:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteThroughEntry;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(Z)V

    .line 4285
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->this$0:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->lastReturned:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteThroughEntry;

    invoke-virtual {v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteThroughEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4286
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;->lastReturned:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteThroughEntry;

    .line 4287
    return-void
.end method
