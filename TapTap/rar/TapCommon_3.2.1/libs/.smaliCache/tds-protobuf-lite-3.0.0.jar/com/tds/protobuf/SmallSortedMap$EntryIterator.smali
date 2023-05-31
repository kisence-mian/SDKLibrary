.class Lcom/tds/protobuf/SmallSortedMap$EntryIterator;
.super Ljava/lang/Object;
.source "SmallSortedMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/SmallSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private lazyOverflowIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private nextCalledBeforeRemove:Z

.field private pos:I

.field final synthetic this$0:Lcom/tds/protobuf/SmallSortedMap;


# direct methods
.method private constructor <init>(Lcom/tds/protobuf/SmallSortedMap;)V
    .registers 2

    .line 532
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap$EntryIterator;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>.EntryIterator;"
    iput-object p1, p0, Lcom/tds/protobuf/SmallSortedMap$EntryIterator;->this$0:Lcom/tds/protobuf/SmallSortedMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    const/4 p1, -0x1

    iput p1, p0, Lcom/tds/protobuf/SmallSortedMap$EntryIterator;->pos:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/tds/protobuf/SmallSortedMap;Lcom/tds/protobuf/SmallSortedMap$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/tds/protobuf/SmallSortedMap;
    .param p2, "x1"    # Lcom/tds/protobuf/SmallSortedMap$1;

    .line 532
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap$EntryIterator;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>.EntryIterator;"
    invoke-direct {p0, p1}, Lcom/tds/protobuf/SmallSortedMap$EntryIterator;-><init>(Lcom/tds/protobuf/SmallSortedMap;)V

    return-void
.end method

.method private getOverflowIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 577
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap$EntryIterator;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>.EntryIterator;"
    iget-object v0, p0, Lcom/tds/protobuf/SmallSortedMap$EntryIterator;->lazyOverflowIterator:Ljava/util/Iterator;

    if-nez v0, :cond_14

    .line 578
    iget-object v0, p0, Lcom/tds/protobuf/SmallSortedMap$EntryIterator;->this$0:Lcom/tds/protobuf/SmallSortedMap;

    # getter for: Lcom/tds/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;
    invoke-static {v0}, Lcom/tds/protobuf/SmallSortedMap;->access$600(Lcom/tds/protobuf/SmallSortedMap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/protobuf/SmallSortedMap$EntryIterator;->lazyOverflowIterator:Ljava/util/Iterator;

    .line 580
    :cond_14
    iget-object v0, p0, Lcom/tds/protobuf/SmallSortedMap$EntryIterator;->lazyOverflowIterator:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .registers 4

    .line 540
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap$EntryIterator;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>.EntryIterator;"
    iget v0, p0, Lcom/tds/protobuf/SmallSortedMap$EntryIterator;->pos:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/tds/protobuf/SmallSortedMap$EntryIterator;->this$0:Lcom/tds/protobuf/SmallSortedMap;

    # getter for: Lcom/tds/protobuf/SmallSortedMap;->entryList:Ljava/util/List;
    invoke-static {v2}, Lcom/tds/protobuf/SmallSortedMap;->access$400(Lcom/tds/protobuf/SmallSortedMap;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1d

    .line 541
    invoke-direct {p0}, Lcom/tds/protobuf/SmallSortedMap$EntryIterator;->getOverflowIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    nop

    :goto_1e
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 532
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap$EntryIterator;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Lcom/tds/protobuf/SmallSortedMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 546
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap$EntryIterator;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>.EntryIterator;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/protobuf/SmallSortedMap$EntryIterator;->nextCalledBeforeRemove:Z

    .line 549
    iget v1, p0, Lcom/tds/protobuf/SmallSortedMap$EntryIterator;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/tds/protobuf/SmallSortedMap$EntryIterator;->pos:I

    iget-object v0, p0, Lcom/tds/protobuf/SmallSortedMap$EntryIterator;->this$0:Lcom/tds/protobuf/SmallSortedMap;

    # getter for: Lcom/tds/protobuf/SmallSortedMap;->entryList:Ljava/util/List;
    invoke-static {v0}, Lcom/tds/protobuf/SmallSortedMap;->access$400(Lcom/tds/protobuf/SmallSortedMap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    .line 550
    iget-object v0, p0, Lcom/tds/protobuf/SmallSortedMap$EntryIterator;->this$0:Lcom/tds/protobuf/SmallSortedMap;

    # getter for: Lcom/tds/protobuf/SmallSortedMap;->entryList:Ljava/util/List;
    invoke-static {v0}, Lcom/tds/protobuf/SmallSortedMap;->access$400(Lcom/tds/protobuf/SmallSortedMap;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/tds/protobuf/SmallSortedMap$EntryIterator;->pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    .line 552
    :cond_23
    invoke-direct {p0}, Lcom/tds/protobuf/SmallSortedMap$EntryIterator;->getOverflowIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public remove()V
    .registers 4

    .line 557
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap$EntryIterator;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>.EntryIterator;"
    iget-boolean v0, p0, Lcom/tds/protobuf/SmallSortedMap$EntryIterator;->nextCalledBeforeRemove:Z

    if-eqz v0, :cond_2e

    .line 560
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tds/protobuf/SmallSortedMap$EntryIterator;->nextCalledBeforeRemove:Z

    .line 561
    iget-object v0, p0, Lcom/tds/protobuf/SmallSortedMap$EntryIterator;->this$0:Lcom/tds/protobuf/SmallSortedMap;

    # invokes: Lcom/tds/protobuf/SmallSortedMap;->checkMutable()V
    invoke-static {v0}, Lcom/tds/protobuf/SmallSortedMap;->access$200(Lcom/tds/protobuf/SmallSortedMap;)V

    .line 563
    iget v0, p0, Lcom/tds/protobuf/SmallSortedMap$EntryIterator;->pos:I

    iget-object v1, p0, Lcom/tds/protobuf/SmallSortedMap$EntryIterator;->this$0:Lcom/tds/protobuf/SmallSortedMap;

    # getter for: Lcom/tds/protobuf/SmallSortedMap;->entryList:Ljava/util/List;
    invoke-static {v1}, Lcom/tds/protobuf/SmallSortedMap;->access$400(Lcom/tds/protobuf/SmallSortedMap;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 564
    iget-object v0, p0, Lcom/tds/protobuf/SmallSortedMap$EntryIterator;->this$0:Lcom/tds/protobuf/SmallSortedMap;

    iget v1, p0, Lcom/tds/protobuf/SmallSortedMap$EntryIterator;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/tds/protobuf/SmallSortedMap$EntryIterator;->pos:I

    # invokes: Lcom/tds/protobuf/SmallSortedMap;->removeArrayEntryAt(I)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/tds/protobuf/SmallSortedMap;->access$500(Lcom/tds/protobuf/SmallSortedMap;I)Ljava/lang/Object;

    goto :goto_2d

    .line 566
    :cond_26
    invoke-direct {p0}, Lcom/tds/protobuf/SmallSortedMap$EntryIterator;->getOverflowIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 568
    :goto_2d
    return-void

    .line 558
    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() was called before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
