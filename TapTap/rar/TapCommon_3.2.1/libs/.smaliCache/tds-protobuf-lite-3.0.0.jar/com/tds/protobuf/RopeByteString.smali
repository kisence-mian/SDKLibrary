.class final Lcom/tds/protobuf/RopeByteString;
.super Lcom/tds/protobuf/ByteString;
.source "RopeByteString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/protobuf/RopeByteString$RopeInputStream;,
        Lcom/tds/protobuf/RopeByteString$PieceIterator;,
        Lcom/tds/protobuf/RopeByteString$Balancer;
    }
.end annotation


# static fields
.field private static final minLengthByDepth:[I

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final left:Lcom/tds/protobuf/ByteString;

.field private final leftLength:I

.field private final right:Lcom/tds/protobuf/ByteString;

.field private final totalLength:I

.field private final treeDepth:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v0, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    .line 97
    .local v1, "f1":I
    const/4 v2, 0x1

    .line 100
    .local v2, "f2":I
    :goto_7
    if-lez v2, :cond_15

    .line 101
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    add-int v3, v1, v2

    .line 103
    .local v3, "temp":I
    move v1, v2

    .line 104
    move v2, v3

    .line 105
    .end local v3    # "temp":I
    goto :goto_7

    .line 109
    :cond_15
    const v3, 0x7fffffff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [I

    sput-object v3, Lcom/tds/protobuf/RopeByteString;->minLengthByDepth:[I

    .line 111
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_28
    sget-object v4, Lcom/tds/protobuf/RopeByteString;->minLengthByDepth:[I

    array-length v5, v4

    if-ge v3, v5, :cond_3c

    .line 113
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v3

    .line 111
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 115
    .end local v0    # "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1    # "f1":I
    .end local v2    # "f2":I
    .end local v3    # "i":I
    :cond_3c
    return-void
.end method

.method private constructor <init>(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ByteString;)V
    .registers 5
    .param p1, "left"    # Lcom/tds/protobuf/ByteString;
    .param p2, "right"    # Lcom/tds/protobuf/ByteString;

    .line 132
    invoke-direct {p0}, Lcom/tds/protobuf/ByteString;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/tds/protobuf/RopeByteString;->left:Lcom/tds/protobuf/ByteString;

    .line 134
    iput-object p2, p0, Lcom/tds/protobuf/RopeByteString;->right:Lcom/tds/protobuf/ByteString;

    .line 135
    invoke-virtual {p1}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v0

    iput v0, p0, Lcom/tds/protobuf/RopeByteString;->leftLength:I

    .line 136
    invoke-virtual {p2}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tds/protobuf/RopeByteString;->totalLength:I

    .line 137
    invoke-virtual {p1}, Lcom/tds/protobuf/ByteString;->getTreeDepth()I

    move-result v0

    invoke-virtual {p2}, Lcom/tds/protobuf/ByteString;->getTreeDepth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tds/protobuf/RopeByteString;->treeDepth:I

    .line 138
    return-void
.end method

.method synthetic constructor <init>(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/RopeByteString$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/tds/protobuf/ByteString;
    .param p2, "x1"    # Lcom/tds/protobuf/ByteString;
    .param p3, "x2"    # Lcom/tds/protobuf/RopeByteString$1;

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/tds/protobuf/RopeByteString;-><init>(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/tds/protobuf/RopeByteString;)Lcom/tds/protobuf/ByteString;
    .registers 2
    .param p0, "x0"    # Lcom/tds/protobuf/RopeByteString;

    .line 73
    iget-object v0, p0, Lcom/tds/protobuf/RopeByteString;->left:Lcom/tds/protobuf/ByteString;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tds/protobuf/RopeByteString;)Lcom/tds/protobuf/ByteString;
    .registers 2
    .param p0, "x0"    # Lcom/tds/protobuf/RopeByteString;

    .line 73
    iget-object v0, p0, Lcom/tds/protobuf/RopeByteString;->right:Lcom/tds/protobuf/ByteString;

    return-object v0
.end method

.method static synthetic access$600()[I
    .registers 1

    .line 73
    sget-object v0, Lcom/tds/protobuf/RopeByteString;->minLengthByDepth:[I

    return-object v0
.end method

.method static concatenate(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ByteString;)Lcom/tds/protobuf/ByteString;
    .registers 7
    .param p0, "left"    # Lcom/tds/protobuf/ByteString;
    .param p1, "right"    # Lcom/tds/protobuf/ByteString;

    .line 156
    invoke-virtual {p1}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 157
    return-object p0

    .line 160
    :cond_7
    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 161
    return-object p1

    .line 164
    :cond_e
    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 165
    .local v0, "newLength":I
    const/16 v1, 0x80

    if-ge v0, v1, :cond_20

    .line 168
    invoke-static {p0, p1}, Lcom/tds/protobuf/RopeByteString;->concatenateBytes(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ByteString;)Lcom/tds/protobuf/ByteString;

    move-result-object v1

    return-object v1

    .line 171
    :cond_20
    instance-of v2, p0, Lcom/tds/protobuf/RopeByteString;

    if-eqz v2, :cond_69

    .line 172
    move-object v2, p0

    check-cast v2, Lcom/tds/protobuf/RopeByteString;

    .line 173
    .local v2, "leftRope":Lcom/tds/protobuf/RopeByteString;
    iget-object v3, v2, Lcom/tds/protobuf/RopeByteString;->right:Lcom/tds/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v3

    invoke-virtual {p1}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v3, v1, :cond_42

    .line 184
    iget-object v1, v2, Lcom/tds/protobuf/RopeByteString;->right:Lcom/tds/protobuf/ByteString;

    invoke-static {v1, p1}, Lcom/tds/protobuf/RopeByteString;->concatenateBytes(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ByteString;)Lcom/tds/protobuf/ByteString;

    move-result-object v1

    .line 185
    .local v1, "newRight":Lcom/tds/protobuf/ByteString;
    new-instance v3, Lcom/tds/protobuf/RopeByteString;

    iget-object v4, v2, Lcom/tds/protobuf/RopeByteString;->left:Lcom/tds/protobuf/ByteString;

    invoke-direct {v3, v4, v1}, Lcom/tds/protobuf/RopeByteString;-><init>(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ByteString;)V

    return-object v3

    .line 188
    .end local v1    # "newRight":Lcom/tds/protobuf/ByteString;
    :cond_42
    iget-object v1, v2, Lcom/tds/protobuf/RopeByteString;->left:Lcom/tds/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/tds/protobuf/ByteString;->getTreeDepth()I

    move-result v1

    iget-object v3, v2, Lcom/tds/protobuf/RopeByteString;->right:Lcom/tds/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/tds/protobuf/ByteString;->getTreeDepth()I

    move-result v3

    if-le v1, v3, :cond_69

    .line 189
    invoke-virtual {v2}, Lcom/tds/protobuf/RopeByteString;->getTreeDepth()I

    move-result v1

    invoke-virtual {p1}, Lcom/tds/protobuf/ByteString;->getTreeDepth()I

    move-result v3

    if-le v1, v3, :cond_69

    .line 195
    new-instance v1, Lcom/tds/protobuf/RopeByteString;

    iget-object v3, v2, Lcom/tds/protobuf/RopeByteString;->right:Lcom/tds/protobuf/ByteString;

    invoke-direct {v1, v3, p1}, Lcom/tds/protobuf/RopeByteString;-><init>(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ByteString;)V

    .line 196
    .restart local v1    # "newRight":Lcom/tds/protobuf/ByteString;
    new-instance v3, Lcom/tds/protobuf/RopeByteString;

    iget-object v4, v2, Lcom/tds/protobuf/RopeByteString;->left:Lcom/tds/protobuf/ByteString;

    invoke-direct {v3, v4, v1}, Lcom/tds/protobuf/RopeByteString;-><init>(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ByteString;)V

    return-object v3

    .line 201
    .end local v1    # "newRight":Lcom/tds/protobuf/ByteString;
    .end local v2    # "leftRope":Lcom/tds/protobuf/RopeByteString;
    :cond_69
    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString;->getTreeDepth()I

    move-result v1

    invoke-virtual {p1}, Lcom/tds/protobuf/ByteString;->getTreeDepth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 202
    .local v1, "newDepth":I
    sget-object v2, Lcom/tds/protobuf/RopeByteString;->minLengthByDepth:[I

    aget v2, v2, v1

    if-lt v0, v2, :cond_83

    .line 204
    new-instance v2, Lcom/tds/protobuf/RopeByteString;

    invoke-direct {v2, p0, p1}, Lcom/tds/protobuf/RopeByteString;-><init>(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ByteString;)V

    return-object v2

    .line 207
    :cond_83
    new-instance v2, Lcom/tds/protobuf/RopeByteString$Balancer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/tds/protobuf/RopeByteString$Balancer;-><init>(Lcom/tds/protobuf/RopeByteString$1;)V

    # invokes: Lcom/tds/protobuf/RopeByteString$Balancer;->balance(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ByteString;)Lcom/tds/protobuf/ByteString;
    invoke-static {v2, p0, p1}, Lcom/tds/protobuf/RopeByteString$Balancer;->access$100(Lcom/tds/protobuf/RopeByteString$Balancer;Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ByteString;)Lcom/tds/protobuf/ByteString;

    move-result-object v2

    return-object v2
.end method

.method private static concatenateBytes(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ByteString;)Lcom/tds/protobuf/ByteString;
    .registers 6
    .param p0, "left"    # Lcom/tds/protobuf/ByteString;
    .param p1, "right"    # Lcom/tds/protobuf/ByteString;

    .line 220
    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v0

    .line 221
    .local v0, "leftSize":I
    invoke-virtual {p1}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v1

    .line 222
    .local v1, "rightSize":I
    add-int v2, v0, v1

    new-array v2, v2, [B

    .line 223
    .local v2, "bytes":[B
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3, v0}, Lcom/tds/protobuf/ByteString;->copyTo([BIII)V

    .line 224
    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/tds/protobuf/ByteString;->copyTo([BIII)V

    .line 225
    invoke-static {v2}, Lcom/tds/protobuf/ByteString;->wrap([B)Lcom/tds/protobuf/ByteString;

    move-result-object v3

    return-object v3
.end method

.method private equalsFragments(Lcom/tds/protobuf/ByteString;)Z
    .registers 14
    .param p1, "other"    # Lcom/tds/protobuf/ByteString;

    .line 482
    const/4 v0, 0x0

    .line 483
    .local v0, "thisOffset":I
    new-instance v1, Lcom/tds/protobuf/RopeByteString$PieceIterator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tds/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/RopeByteString$1;)V

    .line 484
    .local v1, "thisIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/tds/protobuf/ByteString$LeafByteString;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tds/protobuf/ByteString$LeafByteString;

    .line 486
    .local v3, "thisString":Lcom/tds/protobuf/ByteString$LeafByteString;
    const/4 v4, 0x0

    .line 487
    .local v4, "thatOffset":I
    new-instance v5, Lcom/tds/protobuf/RopeByteString$PieceIterator;

    invoke-direct {v5, p1, v2}, Lcom/tds/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/RopeByteString$1;)V

    move-object v2, v5

    .line 488
    .local v2, "thatIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/tds/protobuf/ByteString$LeafByteString;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tds/protobuf/ByteString$LeafByteString;

    .line 490
    .local v5, "thatString":Lcom/tds/protobuf/ByteString$LeafByteString;
    const/4 v6, 0x0

    .line 492
    .local v6, "pos":I
    :goto_1b
    invoke-virtual {v3}, Lcom/tds/protobuf/ByteString$LeafByteString;->size()I

    move-result v7

    sub-int/2addr v7, v0

    .line 493
    .local v7, "thisRemaining":I
    invoke-virtual {v5}, Lcom/tds/protobuf/ByteString$LeafByteString;->size()I

    move-result v8

    sub-int/2addr v8, v4

    .line 494
    .local v8, "thatRemaining":I
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 497
    .local v9, "bytesToCompare":I
    if-nez v0, :cond_30

    .line 498
    invoke-virtual {v3, v5, v4, v9}, Lcom/tds/protobuf/ByteString$LeafByteString;->equalsRange(Lcom/tds/protobuf/ByteString;II)Z

    move-result v10

    goto :goto_34

    .line 499
    :cond_30
    invoke-virtual {v5, v3, v0, v9}, Lcom/tds/protobuf/ByteString$LeafByteString;->equalsRange(Lcom/tds/protobuf/ByteString;II)Z

    move-result v10

    :goto_34
    nop

    .line 500
    .local v10, "stillEqual":Z
    if-nez v10, :cond_39

    .line 501
    const/4 v11, 0x0

    return v11

    .line 504
    :cond_39
    add-int/2addr v6, v9

    .line 505
    iget v11, p0, Lcom/tds/protobuf/RopeByteString;->totalLength:I

    if-lt v6, v11, :cond_48

    .line 506
    if-ne v6, v11, :cond_42

    .line 507
    const/4 v11, 0x1

    return v11

    .line 509
    :cond_42
    new-instance v11, Ljava/lang/IllegalStateException;

    invoke-direct {v11}, Ljava/lang/IllegalStateException;-><init>()V

    throw v11

    .line 512
    :cond_48
    if-ne v9, v7, :cond_53

    .line 513
    const/4 v0, 0x0

    .line 514
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v3, v11

    check-cast v3, Lcom/tds/protobuf/ByteString$LeafByteString;

    goto :goto_54

    .line 516
    :cond_53
    add-int/2addr v0, v9

    .line 518
    :goto_54
    if-ne v9, v8, :cond_5f

    .line 519
    const/4 v4, 0x0

    .line 520
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v5, v11

    check-cast v5, Lcom/tds/protobuf/ByteString$LeafByteString;

    goto :goto_60

    .line 522
    :cond_5f
    add-int/2addr v4, v9

    .line 524
    .end local v7    # "thisRemaining":I
    .end local v8    # "thatRemaining":I
    .end local v9    # "bytesToCompare":I
    .end local v10    # "stillEqual":Z
    :goto_60
    goto :goto_1b
.end method

.method static newInstanceForTest(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ByteString;)Lcom/tds/protobuf/RopeByteString;
    .registers 3
    .param p0, "left"    # Lcom/tds/protobuf/ByteString;
    .param p1, "right"    # Lcom/tds/protobuf/ByteString;

    .line 240
    new-instance v0, Lcom/tds/protobuf/RopeByteString;

    invoke-direct {v0, p0, p1}, Lcom/tds/protobuf/RopeByteString;-><init>(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ByteString;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 750
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "RopeByteStream instances are not to be serialized directly"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    .line 366
    invoke-virtual {p0}, Lcom/tds/protobuf/RopeByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 367
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public asReadOnlyByteBufferList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    new-instance v1, Lcom/tds/protobuf/RopeByteString$PieceIterator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tds/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/RopeByteString$1;)V

    .line 376
    .local v1, "pieces":Lcom/tds/protobuf/RopeByteString$PieceIterator;
    :goto_b
    invoke-virtual {v1}, Lcom/tds/protobuf/RopeByteString$PieceIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 377
    invoke-virtual {v1}, Lcom/tds/protobuf/RopeByteString$PieceIterator;->next()Lcom/tds/protobuf/ByteString$LeafByteString;

    move-result-object v2

    .line 378
    .local v2, "byteString":Lcom/tds/protobuf/ByteString$LeafByteString;
    invoke-virtual {v2}, Lcom/tds/protobuf/ByteString$LeafByteString;->asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    .end local v2    # "byteString":Lcom/tds/protobuf/ByteString$LeafByteString;
    goto :goto_b

    .line 380
    :cond_1d
    return-object v0
.end method

.method public byteAt(I)B
    .registers 4
    .param p1, "index"    # I

    .line 255
    iget v0, p0, Lcom/tds/protobuf/RopeByteString;->totalLength:I

    invoke-static {p1, v0}, Lcom/tds/protobuf/RopeByteString;->checkIndex(II)V

    .line 258
    iget v0, p0, Lcom/tds/protobuf/RopeByteString;->leftLength:I

    if-ge p1, v0, :cond_10

    .line 259
    iget-object v0, p0, Lcom/tds/protobuf/RopeByteString;->left:Lcom/tds/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/tds/protobuf/ByteString;->byteAt(I)B

    move-result v0

    return v0

    .line 262
    :cond_10
    iget-object v1, p0, Lcom/tds/protobuf/RopeByteString;->right:Lcom/tds/protobuf/ByteString;

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Lcom/tds/protobuf/ByteString;->byteAt(I)B

    move-result v0

    return v0
.end method

.method public copyTo(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "target"    # Ljava/nio/ByteBuffer;

    .line 360
    iget-object v0, p0, Lcom/tds/protobuf/RopeByteString;->left:Lcom/tds/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/tds/protobuf/ByteString;->copyTo(Ljava/nio/ByteBuffer;)V

    .line 361
    iget-object v0, p0, Lcom/tds/protobuf/RopeByteString;->right:Lcom/tds/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/tds/protobuf/ByteString;->copyTo(Ljava/nio/ByteBuffer;)V

    .line 362
    return-void
.end method

.method protected copyToInternal([BIII)V
    .registers 10
    .param p1, "target"    # [B
    .param p2, "sourceOffset"    # I
    .param p3, "targetOffset"    # I
    .param p4, "numberToCopy"    # I

    .line 345
    add-int v0, p2, p4

    iget v1, p0, Lcom/tds/protobuf/RopeByteString;->leftLength:I

    if-gt v0, v1, :cond_c

    .line 346
    iget-object v0, p0, Lcom/tds/protobuf/RopeByteString;->left:Lcom/tds/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tds/protobuf/ByteString;->copyToInternal([BIII)V

    goto :goto_26

    .line 347
    :cond_c
    if-lt p2, v1, :cond_16

    .line 348
    iget-object v0, p0, Lcom/tds/protobuf/RopeByteString;->right:Lcom/tds/protobuf/ByteString;

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/tds/protobuf/ByteString;->copyToInternal([BIII)V

    goto :goto_26

    .line 351
    :cond_16
    sub-int/2addr v1, p2

    .line 352
    .local v1, "leftLength":I
    iget-object v0, p0, Lcom/tds/protobuf/RopeByteString;->left:Lcom/tds/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/tds/protobuf/ByteString;->copyToInternal([BIII)V

    .line 353
    iget-object v0, p0, Lcom/tds/protobuf/RopeByteString;->right:Lcom/tds/protobuf/ByteString;

    const/4 v2, 0x0

    add-int v3, p3, v1

    sub-int v4, p4, v1

    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/tds/protobuf/ByteString;->copyToInternal([BIII)V

    .line 356
    .end local v1    # "leftLength":I
    :goto_26
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 443
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 444
    return v0

    .line 446
    :cond_4
    instance-of v1, p1, Lcom/tds/protobuf/ByteString;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 447
    return v2

    .line 450
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/tds/protobuf/ByteString;

    .line 451
    .local v1, "otherByteString":Lcom/tds/protobuf/ByteString;
    iget v3, p0, Lcom/tds/protobuf/RopeByteString;->totalLength:I

    invoke-virtual {v1}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v4

    if-eq v3, v4, :cond_16

    .line 452
    return v2

    .line 454
    :cond_16
    iget v3, p0, Lcom/tds/protobuf/RopeByteString;->totalLength:I

    if-nez v3, :cond_1b

    .line 455
    return v0

    .line 463
    :cond_1b
    invoke-virtual {p0}, Lcom/tds/protobuf/RopeByteString;->peekCachedHashCode()I

    move-result v0

    .line 464
    .local v0, "thisHash":I
    invoke-virtual {v1}, Lcom/tds/protobuf/ByteString;->peekCachedHashCode()I

    move-result v3

    .line 465
    .local v3, "thatHash":I
    if-eqz v0, :cond_2a

    if-eqz v3, :cond_2a

    if-eq v0, v3, :cond_2a

    .line 466
    return v2

    .line 469
    :cond_2a
    invoke-direct {p0, v1}, Lcom/tds/protobuf/RopeByteString;->equalsFragments(Lcom/tds/protobuf/ByteString;)Z

    move-result v2

    return v2
.end method

.method protected getTreeDepth()I
    .registers 2

    .line 275
    iget v0, p0, Lcom/tds/protobuf/RopeByteString;->treeDepth:I

    return v0
.end method

.method protected isBalanced()Z
    .registers 4

    .line 288
    iget v0, p0, Lcom/tds/protobuf/RopeByteString;->totalLength:I

    sget-object v1, Lcom/tds/protobuf/RopeByteString;->minLengthByDepth:[I

    iget v2, p0, Lcom/tds/protobuf/RopeByteString;->treeDepth:I

    aget v1, v1, v2

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isValidUtf8()Z
    .registers 5

    .line 419
    iget-object v0, p0, Lcom/tds/protobuf/RopeByteString;->left:Lcom/tds/protobuf/ByteString;

    iget v1, p0, Lcom/tds/protobuf/RopeByteString;->leftLength:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/tds/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v0

    .line 420
    .local v0, "leftPartial":I
    iget-object v1, p0, Lcom/tds/protobuf/RopeByteString;->right:Lcom/tds/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/tds/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v1

    .line 421
    .local v1, "state":I
    if-nez v1, :cond_16

    const/4 v2, 0x1

    :cond_16
    return v2
.end method

.method public newCodedInput()Lcom/tds/protobuf/CodedInputStream;
    .registers 2

    .line 546
    new-instance v0, Lcom/tds/protobuf/RopeByteString$RopeInputStream;

    invoke-direct {v0, p0}, Lcom/tds/protobuf/RopeByteString$RopeInputStream;-><init>(Lcom/tds/protobuf/RopeByteString;)V

    invoke-static {v0}, Lcom/tds/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/tds/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public newInput()Ljava/io/InputStream;
    .registers 2

    .line 551
    new-instance v0, Lcom/tds/protobuf/RopeByteString$RopeInputStream;

    invoke-direct {v0, p0}, Lcom/tds/protobuf/RopeByteString$RopeInputStream;-><init>(Lcom/tds/protobuf/RopeByteString;)V

    return-object v0
.end method

.method protected partialHash(III)I
    .registers 10
    .param p1, "h"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 529
    add-int v0, p2, p3

    .line 530
    .local v0, "toIndex":I
    iget v1, p0, Lcom/tds/protobuf/RopeByteString;->leftLength:I

    if-gt v0, v1, :cond_d

    .line 531
    iget-object v1, p0, Lcom/tds/protobuf/RopeByteString;->left:Lcom/tds/protobuf/ByteString;

    invoke-virtual {v1, p1, p2, p3}, Lcom/tds/protobuf/ByteString;->partialHash(III)I

    move-result v1

    return v1

    .line 532
    :cond_d
    if-lt p2, v1, :cond_18

    .line 533
    iget-object v2, p0, Lcom/tds/protobuf/RopeByteString;->right:Lcom/tds/protobuf/ByteString;

    sub-int v1, p2, v1

    invoke-virtual {v2, p1, v1, p3}, Lcom/tds/protobuf/ByteString;->partialHash(III)I

    move-result v1

    return v1

    .line 535
    :cond_18
    sub-int/2addr v1, p2

    .line 536
    .local v1, "leftLength":I
    iget-object v2, p0, Lcom/tds/protobuf/RopeByteString;->left:Lcom/tds/protobuf/ByteString;

    invoke-virtual {v2, p1, p2, v1}, Lcom/tds/protobuf/ByteString;->partialHash(III)I

    move-result v2

    .line 537
    .local v2, "leftPartial":I
    iget-object v3, p0, Lcom/tds/protobuf/RopeByteString;->right:Lcom/tds/protobuf/ByteString;

    const/4 v4, 0x0

    sub-int v5, p3, v1

    invoke-virtual {v3, v2, v4, v5}, Lcom/tds/protobuf/ByteString;->partialHash(III)I

    move-result v3

    return v3
.end method

.method protected partialIsValidUtf8(III)I
    .registers 10
    .param p1, "state"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 426
    add-int v0, p2, p3

    .line 427
    .local v0, "toIndex":I
    iget v1, p0, Lcom/tds/protobuf/RopeByteString;->leftLength:I

    if-gt v0, v1, :cond_d

    .line 428
    iget-object v1, p0, Lcom/tds/protobuf/RopeByteString;->left:Lcom/tds/protobuf/ByteString;

    invoke-virtual {v1, p1, p2, p3}, Lcom/tds/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v1

    return v1

    .line 429
    :cond_d
    if-lt p2, v1, :cond_18

    .line 430
    iget-object v2, p0, Lcom/tds/protobuf/RopeByteString;->right:Lcom/tds/protobuf/ByteString;

    sub-int v1, p2, v1

    invoke-virtual {v2, p1, v1, p3}, Lcom/tds/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v1

    return v1

    .line 432
    :cond_18
    sub-int/2addr v1, p2

    .line 433
    .local v1, "leftLength":I
    iget-object v2, p0, Lcom/tds/protobuf/RopeByteString;->left:Lcom/tds/protobuf/ByteString;

    invoke-virtual {v2, p1, p2, v1}, Lcom/tds/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v2

    .line 434
    .local v2, "leftPartial":I
    iget-object v3, p0, Lcom/tds/protobuf/RopeByteString;->right:Lcom/tds/protobuf/ByteString;

    const/4 v4, 0x0

    sub-int v5, p3, v1

    invoke-virtual {v3, v2, v4, v5}, Lcom/tds/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v3

    return v3
.end method

.method public size()I
    .registers 2

    .line 267
    iget v0, p0, Lcom/tds/protobuf/RopeByteString;->totalLength:I

    return v0
.end method

.method public substring(II)Lcom/tds/protobuf/ByteString;
    .registers 8
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 307
    iget v0, p0, Lcom/tds/protobuf/RopeByteString;->totalLength:I

    invoke-static {p1, p2, v0}, Lcom/tds/protobuf/RopeByteString;->checkRange(III)I

    move-result v0

    .line 309
    .local v0, "length":I
    if-nez v0, :cond_b

    .line 311
    sget-object v1, Lcom/tds/protobuf/ByteString;->EMPTY:Lcom/tds/protobuf/ByteString;

    return-object v1

    .line 314
    :cond_b
    iget v1, p0, Lcom/tds/protobuf/RopeByteString;->totalLength:I

    if-ne v0, v1, :cond_10

    .line 316
    return-object p0

    .line 320
    :cond_10
    iget v1, p0, Lcom/tds/protobuf/RopeByteString;->leftLength:I

    if-gt p2, v1, :cond_1b

    .line 322
    iget-object v1, p0, Lcom/tds/protobuf/RopeByteString;->left:Lcom/tds/protobuf/ByteString;

    invoke-virtual {v1, p1, p2}, Lcom/tds/protobuf/ByteString;->substring(II)Lcom/tds/protobuf/ByteString;

    move-result-object v1

    return-object v1

    .line 325
    :cond_1b
    if-lt p1, v1, :cond_28

    .line 327
    iget-object v2, p0, Lcom/tds/protobuf/RopeByteString;->right:Lcom/tds/protobuf/ByteString;

    sub-int v3, p1, v1

    sub-int v1, p2, v1

    invoke-virtual {v2, v3, v1}, Lcom/tds/protobuf/ByteString;->substring(II)Lcom/tds/protobuf/ByteString;

    move-result-object v1

    return-object v1

    .line 331
    :cond_28
    iget-object v1, p0, Lcom/tds/protobuf/RopeByteString;->left:Lcom/tds/protobuf/ByteString;

    invoke-virtual {v1, p1}, Lcom/tds/protobuf/ByteString;->substring(I)Lcom/tds/protobuf/ByteString;

    move-result-object v1

    .line 332
    .local v1, "leftSub":Lcom/tds/protobuf/ByteString;
    iget-object v2, p0, Lcom/tds/protobuf/RopeByteString;->right:Lcom/tds/protobuf/ByteString;

    const/4 v3, 0x0

    iget v4, p0, Lcom/tds/protobuf/RopeByteString;->leftLength:I

    sub-int v4, p2, v4

    invoke-virtual {v2, v3, v4}, Lcom/tds/protobuf/ByteString;->substring(II)Lcom/tds/protobuf/ByteString;

    move-result-object v2

    .line 336
    .local v2, "rightSub":Lcom/tds/protobuf/ByteString;
    new-instance v3, Lcom/tds/protobuf/RopeByteString;

    invoke-direct {v3, v1, v2}, Lcom/tds/protobuf/RopeByteString;-><init>(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ByteString;)V

    return-object v3
.end method

.method protected toStringInternal(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 411
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tds/protobuf/RopeByteString;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 2

    .line 746
    invoke-virtual {p0}, Lcom/tds/protobuf/RopeByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tds/protobuf/ByteString;->wrap([B)Lcom/tds/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method writeTo(Lcom/tds/protobuf/ByteOutput;)V
    .registers 3
    .param p1, "output"    # Lcom/tds/protobuf/ByteOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lcom/tds/protobuf/RopeByteString;->left:Lcom/tds/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/tds/protobuf/ByteString;->writeTo(Lcom/tds/protobuf/ByteOutput;)V

    .line 406
    iget-object v0, p0, Lcom/tds/protobuf/RopeByteString;->right:Lcom/tds/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/tds/protobuf/ByteString;->writeTo(Lcom/tds/protobuf/ByteOutput;)V

    .line 407
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lcom/tds/protobuf/RopeByteString;->left:Lcom/tds/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/tds/protobuf/ByteString;->writeTo(Ljava/io/OutputStream;)V

    .line 386
    iget-object v0, p0, Lcom/tds/protobuf/RopeByteString;->right:Lcom/tds/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/tds/protobuf/ByteString;->writeTo(Ljava/io/OutputStream;)V

    .line 387
    return-void
.end method

.method writeToInternal(Ljava/io/OutputStream;II)V
    .registers 8
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "sourceOffset"    # I
    .param p3, "numberToWrite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    add-int v0, p2, p3

    iget v1, p0, Lcom/tds/protobuf/RopeByteString;->leftLength:I

    if-gt v0, v1, :cond_c

    .line 393
    iget-object v0, p0, Lcom/tds/protobuf/RopeByteString;->left:Lcom/tds/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tds/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    goto :goto_24

    .line 394
    :cond_c
    if-lt p2, v1, :cond_16

    .line 395
    iget-object v0, p0, Lcom/tds/protobuf/RopeByteString;->right:Lcom/tds/protobuf/ByteString;

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/tds/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    goto :goto_24

    .line 397
    :cond_16
    sub-int/2addr v1, p2

    .line 398
    .local v1, "numberToWriteInLeft":I
    iget-object v0, p0, Lcom/tds/protobuf/RopeByteString;->left:Lcom/tds/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, v1}, Lcom/tds/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    .line 399
    iget-object v0, p0, Lcom/tds/protobuf/RopeByteString;->right:Lcom/tds/protobuf/ByteString;

    const/4 v2, 0x0

    sub-int v3, p3, v1

    invoke-virtual {v0, p1, v2, v3}, Lcom/tds/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    .line 401
    .end local v1    # "numberToWriteInLeft":I
    :goto_24
    return-void
.end method
