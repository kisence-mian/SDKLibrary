.class public Lcom/tds/lz4/LZ4FrameOutputStream$FLG;
.super Ljava/lang/Object;
.source "LZ4FrameOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/lz4/LZ4FrameOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FLG"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;
    }
.end annotation


# static fields
.field private static final DEFAULT_VERSION:I = 0x1


# instance fields
.field private final bitSet:Ljava/util/BitSet;

.field private final version:I


# direct methods
.method private constructor <init>(IB)V
    .registers 5
    .param p1, "version"    # I
    .param p2, "b"    # B

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p2, v0, v1

    invoke-static {v0}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream$FLG;->bitSet:Ljava/util/BitSet;

    .line 346
    iput p1, p0, Lcom/tds/lz4/LZ4FrameOutputStream$FLG;->version:I

    .line 347
    invoke-direct {p0}, Lcom/tds/lz4/LZ4FrameOutputStream$FLG;->validate()V

    .line 348
    return-void
.end method

.method public varargs constructor <init>(I[Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;)V
    .registers 9
    .param p1, "version"    # I
    .param p2, "bits"    # [Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream$FLG;->bitSet:Ljava/util/BitSet;

    .line 335
    iput p1, p0, Lcom/tds/lz4/LZ4FrameOutputStream$FLG;->version:I

    .line 336
    if-eqz p2, :cond_23

    .line 337
    move-object v0, p2

    .local v0, "arr$":[Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_13
    if-ge v2, v1, :cond_23

    aget-object v3, v0, v2

    .line 338
    .local v3, "bit":Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;
    iget-object v4, p0, Lcom/tds/lz4/LZ4FrameOutputStream$FLG;->bitSet:Ljava/util/BitSet;

    # getter for: Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;->position:I
    invoke-static {v3}, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;->access$100(Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 337
    .end local v3    # "bit":Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 341
    .end local v0    # "arr$":[Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_23
    invoke-direct {p0}, Lcom/tds/lz4/LZ4FrameOutputStream$FLG;->validate()V

    .line 342
    return-void
.end method

.method public static fromByte(B)Lcom/tds/lz4/LZ4FrameOutputStream$FLG;
    .registers 5
    .param p0, "flg"    # B

    .line 351
    and-int/lit16 v0, p0, 0xc0

    int-to-byte v0, v0

    .line 352
    .local v0, "versionMask":B
    new-instance v1, Lcom/tds/lz4/LZ4FrameOutputStream$FLG;

    ushr-int/lit8 v2, v0, 0x6

    xor-int v3, p0, v0

    int-to-byte v3, v3

    invoke-direct {v1, v2, v3}, Lcom/tds/lz4/LZ4FrameOutputStream$FLG;-><init>(IB)V

    return-object v1
.end method

.method private validate()V
    .registers 6

    .line 360
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream$FLG;->bitSet:Ljava/util/BitSet;

    sget-object v1, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;->RESERVED_0:Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    # getter for: Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;->position:I
    invoke-static {v1}, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;->access$100(Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_59

    .line 363
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream$FLG;->bitSet:Ljava/util/BitSet;

    sget-object v1, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;->RESERVED_1:Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    # getter for: Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;->position:I
    invoke-static {v1}, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;->access$100(Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_51

    .line 366
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream$FLG;->bitSet:Ljava/util/BitSet;

    sget-object v1, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;->BLOCK_INDEPENDENCE:Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    # getter for: Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;->position:I
    invoke-static {v1}, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;->access$100(Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 369
    iget v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream$FLG;->version:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_30

    .line 372
    return-void

    .line 370
    :cond_30
    new-instance v0, Ljava/lang/RuntimeException;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/tds/lz4/LZ4FrameOutputStream$FLG;->version:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "Version %d is unsupported"

    invoke-static {v2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_49
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Dependent block stream is unsupported (BLOCK_INDEPENDENCE must be set)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_51
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Reserved1 field must be 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_59
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Reserved0 field must be 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getVersion()I
    .registers 2

    .line 379
    iget v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream$FLG;->version:I

    return v0
.end method

.method public isEnabled(Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;)Z
    .registers 4
    .param p1, "bit"    # Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    .line 375
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream$FLG;->bitSet:Ljava/util/BitSet;

    # getter for: Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;->position:I
    invoke-static {p1}, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;->access$100(Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public toByte()B
    .registers 3

    .line 356
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream$FLG;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    iget v1, p0, Lcom/tds/lz4/LZ4FrameOutputStream$FLG;->version:I

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method
