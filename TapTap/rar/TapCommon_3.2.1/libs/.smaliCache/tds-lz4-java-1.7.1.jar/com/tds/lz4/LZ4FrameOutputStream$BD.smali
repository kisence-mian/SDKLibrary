.class public Lcom/tds/lz4/LZ4FrameOutputStream$BD;
.super Ljava/lang/Object;
.source "LZ4FrameOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/lz4/LZ4FrameOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BD"
.end annotation


# static fields
.field private static final RESERVED_MASK:I = 0x8f


# instance fields
.field private final blockSizeValue:Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;


# direct methods
.method private constructor <init>(Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;)V
    .registers 2
    .param p1, "blockSizeValue"    # Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    iput-object p1, p0, Lcom/tds/lz4/LZ4FrameOutputStream$BD;->blockSizeValue:Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    .line 390
    return-void
.end method

.method synthetic constructor <init>(Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;Lcom/tds/lz4/LZ4FrameOutputStream$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;
    .param p2, "x1"    # Lcom/tds/lz4/LZ4FrameOutputStream$1;

    .line 383
    invoke-direct {p0, p1}, Lcom/tds/lz4/LZ4FrameOutputStream$BD;-><init>(Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;)V

    return-void
.end method

.method public static fromByte(B)Lcom/tds/lz4/LZ4FrameOutputStream$BD;
    .registers 4
    .param p0, "bd"    # B

    .line 393
    ushr-int/lit8 v0, p0, 0x4

    and-int/lit8 v0, v0, 0x7

    .line 394
    .local v0, "blockMaximumSize":I
    and-int/lit16 v1, p0, 0x8f

    if-gtz v1, :cond_12

    .line 398
    new-instance v1, Lcom/tds/lz4/LZ4FrameOutputStream$BD;

    invoke-static {v0}, Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;->valueOf(I)Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tds/lz4/LZ4FrameOutputStream$BD;-><init>(Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;)V

    return-object v1

    .line 395
    :cond_12
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Reserved fields must be 0"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getBlockMaximumSize()I
    .registers 3

    .line 403
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream$BD;->blockSizeValue:Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    invoke-virtual {v0}, Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;->getIndicator()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    shl-int v0, v1, v0

    return v0
.end method

.method public toByte()B
    .registers 2

    .line 407
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream$BD;->blockSizeValue:Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    invoke-virtual {v0}, Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;->getIndicator()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    shl-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    return v0
.end method
