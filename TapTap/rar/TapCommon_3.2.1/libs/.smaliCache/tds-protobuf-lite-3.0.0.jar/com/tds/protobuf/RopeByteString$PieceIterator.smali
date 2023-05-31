.class Lcom/tds/protobuf/RopeByteString$PieceIterator;
.super Ljava/lang/Object;
.source "RopeByteString.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/RopeByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PieceIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/tds/protobuf/ByteString$LeafByteString;",
        ">;"
    }
.end annotation


# instance fields
.field private final breadCrumbs:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/tds/protobuf/RopeByteString;",
            ">;"
        }
    .end annotation
.end field

.field private next:Lcom/tds/protobuf/ByteString$LeafByteString;


# direct methods
.method private constructor <init>(Lcom/tds/protobuf/ByteString;)V
    .registers 3
    .param p1, "root"    # Lcom/tds/protobuf/ByteString;

    .line 684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 680
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/tds/protobuf/RopeByteString$PieceIterator;->breadCrumbs:Ljava/util/Stack;

    .line 685
    invoke-direct {p0, p1}, Lcom/tds/protobuf/RopeByteString$PieceIterator;->getLeafByLeft(Lcom/tds/protobuf/ByteString;)Lcom/tds/protobuf/ByteString$LeafByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/protobuf/RopeByteString$PieceIterator;->next:Lcom/tds/protobuf/ByteString$LeafByteString;

    .line 686
    return-void
.end method

.method synthetic constructor <init>(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/RopeByteString$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/tds/protobuf/ByteString;
    .param p2, "x1"    # Lcom/tds/protobuf/RopeByteString$1;

    .line 678
    invoke-direct {p0, p1}, Lcom/tds/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/tds/protobuf/ByteString;)V

    return-void
.end method

.method private getLeafByLeft(Lcom/tds/protobuf/ByteString;)Lcom/tds/protobuf/ByteString$LeafByteString;
    .registers 5
    .param p1, "root"    # Lcom/tds/protobuf/ByteString;

    .line 689
    move-object v0, p1

    .line 690
    .local v0, "pos":Lcom/tds/protobuf/ByteString;
    :goto_1
    instance-of v1, v0, Lcom/tds/protobuf/RopeByteString;

    if-eqz v1, :cond_12

    .line 691
    move-object v1, v0

    check-cast v1, Lcom/tds/protobuf/RopeByteString;

    .line 692
    .local v1, "rbs":Lcom/tds/protobuf/RopeByteString;
    iget-object v2, p0, Lcom/tds/protobuf/RopeByteString$PieceIterator;->breadCrumbs:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    # getter for: Lcom/tds/protobuf/RopeByteString;->left:Lcom/tds/protobuf/ByteString;
    invoke-static {v1}, Lcom/tds/protobuf/RopeByteString;->access$400(Lcom/tds/protobuf/RopeByteString;)Lcom/tds/protobuf/ByteString;

    move-result-object v0

    .line 694
    .end local v1    # "rbs":Lcom/tds/protobuf/RopeByteString;
    goto :goto_1

    .line 695
    :cond_12
    move-object v1, v0

    check-cast v1, Lcom/tds/protobuf/ByteString$LeafByteString;

    return-object v1
.end method

.method private getNextNonEmptyLeaf()Lcom/tds/protobuf/ByteString$LeafByteString;
    .registers 3

    .line 702
    :goto_0
    iget-object v0, p0, Lcom/tds/protobuf/RopeByteString$PieceIterator;->breadCrumbs:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 703
    const/4 v0, 0x0

    return-object v0

    .line 705
    :cond_a
    iget-object v0, p0, Lcom/tds/protobuf/RopeByteString$PieceIterator;->breadCrumbs:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/protobuf/RopeByteString;

    # getter for: Lcom/tds/protobuf/RopeByteString;->right:Lcom/tds/protobuf/ByteString;
    invoke-static {v0}, Lcom/tds/protobuf/RopeByteString;->access$500(Lcom/tds/protobuf/RopeByteString;)Lcom/tds/protobuf/ByteString;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tds/protobuf/RopeByteString$PieceIterator;->getLeafByLeft(Lcom/tds/protobuf/ByteString;)Lcom/tds/protobuf/ByteString$LeafByteString;

    move-result-object v0

    .line 706
    .local v0, "result":Lcom/tds/protobuf/ByteString$LeafByteString;
    invoke-virtual {v0}, Lcom/tds/protobuf/ByteString$LeafByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_21

    .line 707
    return-object v0

    .line 709
    .end local v0    # "result":Lcom/tds/protobuf/ByteString$LeafByteString;
    :cond_21
    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 715
    iget-object v0, p0, Lcom/tds/protobuf/RopeByteString$PieceIterator;->next:Lcom/tds/protobuf/ByteString$LeafByteString;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public next()Lcom/tds/protobuf/ByteString$LeafByteString;
    .registers 3

    .line 726
    iget-object v0, p0, Lcom/tds/protobuf/RopeByteString$PieceIterator;->next:Lcom/tds/protobuf/ByteString$LeafByteString;

    if-eqz v0, :cond_d

    .line 729
    iget-object v0, p0, Lcom/tds/protobuf/RopeByteString$PieceIterator;->next:Lcom/tds/protobuf/ByteString$LeafByteString;

    .line 730
    .local v0, "result":Lcom/tds/protobuf/ByteString$LeafByteString;
    invoke-direct {p0}, Lcom/tds/protobuf/RopeByteString$PieceIterator;->getNextNonEmptyLeaf()Lcom/tds/protobuf/ByteString$LeafByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/protobuf/RopeByteString$PieceIterator;->next:Lcom/tds/protobuf/ByteString$LeafByteString;

    .line 731
    return-object v0

    .line 727
    .end local v0    # "result":Lcom/tds/protobuf/ByteString$LeafByteString;
    :cond_d
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 678
    invoke-virtual {p0}, Lcom/tds/protobuf/RopeByteString$PieceIterator;->next()Lcom/tds/protobuf/ByteString$LeafByteString;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .line 736
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
