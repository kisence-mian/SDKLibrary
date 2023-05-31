.class Lcom/tds/protobuf/Internal$MapAdapter$IteratorAdapter;
.super Ljava/lang/Object;
.source "Internal.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/Internal$MapAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IteratorAdapter"
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
.field private final realIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TRealValue;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tds/protobuf/Internal$MapAdapter;


# direct methods
.method public constructor <init>(Lcom/tds/protobuf/Internal$MapAdapter;Ljava/util/Iterator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TRealValue;>;>;)V"
        }
    .end annotation

    .line 528
    .local p0, "this":Lcom/tds/protobuf/Internal$MapAdapter$IteratorAdapter;, "Lcom/tds/protobuf/Internal$MapAdapter<TK;TV;TRealValue;>.IteratorAdapter;"
    .local p2, "realIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TRealValue;>;>;"
    iput-object p1, p0, Lcom/tds/protobuf/Internal$MapAdapter$IteratorAdapter;->this$0:Lcom/tds/protobuf/Internal$MapAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    iput-object p2, p0, Lcom/tds/protobuf/Internal$MapAdapter$IteratorAdapter;->realIterator:Ljava/util/Iterator;

    .line 530
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 534
    .local p0, "this":Lcom/tds/protobuf/Internal$MapAdapter$IteratorAdapter;, "Lcom/tds/protobuf/Internal$MapAdapter<TK;TV;TRealValue;>.IteratorAdapter;"
    iget-object v0, p0, Lcom/tds/protobuf/Internal$MapAdapter$IteratorAdapter;->realIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 524
    .local p0, "this":Lcom/tds/protobuf/Internal$MapAdapter$IteratorAdapter;, "Lcom/tds/protobuf/Internal$MapAdapter<TK;TV;TRealValue;>.IteratorAdapter;"
    invoke-virtual {p0}, Lcom/tds/protobuf/Internal$MapAdapter$IteratorAdapter;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 539
    .local p0, "this":Lcom/tds/protobuf/Internal$MapAdapter$IteratorAdapter;, "Lcom/tds/protobuf/Internal$MapAdapter<TK;TV;TRealValue;>.IteratorAdapter;"
    new-instance v0, Lcom/tds/protobuf/Internal$MapAdapter$EntryAdapter;

    iget-object v1, p0, Lcom/tds/protobuf/Internal$MapAdapter$IteratorAdapter;->this$0:Lcom/tds/protobuf/Internal$MapAdapter;

    iget-object v2, p0, Lcom/tds/protobuf/Internal$MapAdapter$IteratorAdapter;->realIterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-direct {v0, v1, v2}, Lcom/tds/protobuf/Internal$MapAdapter$EntryAdapter;-><init>(Lcom/tds/protobuf/Internal$MapAdapter;Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method public remove()V
    .registers 2

    .line 544
    .local p0, "this":Lcom/tds/protobuf/Internal$MapAdapter$IteratorAdapter;, "Lcom/tds/protobuf/Internal$MapAdapter<TK;TV;TRealValue;>.IteratorAdapter;"
    iget-object v0, p0, Lcom/tds/protobuf/Internal$MapAdapter$IteratorAdapter;->realIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 545
    return-void
.end method
