.class Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;
.super Ljava/lang/Object;
.source "LZ4FrameOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/lz4/LZ4FrameOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FrameInfo"
.end annotation


# instance fields
.field private final bd:Lcom/tds/lz4/LZ4FrameOutputStream$BD;

.field private finished:Z

.field private final flg:Lcom/tds/lz4/LZ4FrameOutputStream$FLG;

.field private final streamHash:Lcom/tds/xxhash/StreamingXXHash32;


# direct methods
.method public constructor <init>(Lcom/tds/lz4/LZ4FrameOutputStream$FLG;Lcom/tds/lz4/LZ4FrameOutputStream$BD;)V
    .registers 5
    .param p1, "flg"    # Lcom/tds/lz4/LZ4FrameOutputStream$FLG;
    .param p2, "bd"    # Lcom/tds/lz4/LZ4FrameOutputStream$BD;

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;->finished:Z

    .line 418
    iput-object p1, p0, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;->flg:Lcom/tds/lz4/LZ4FrameOutputStream$FLG;

    .line 419
    iput-object p2, p0, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;->bd:Lcom/tds/lz4/LZ4FrameOutputStream$BD;

    .line 420
    sget-object v1, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;->CONTENT_CHECKSUM:Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    invoke-virtual {p1, v1}, Lcom/tds/lz4/LZ4FrameOutputStream$FLG;->isEnabled(Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-static {}, Lcom/tds/xxhash/XXHashFactory;->fastestInstance()Lcom/tds/xxhash/XXHashFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tds/xxhash/XXHashFactory;->newStreamingHash32(I)Lcom/tds/xxhash/StreamingXXHash32;

    move-result-object v0

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    iput-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;->streamHash:Lcom/tds/xxhash/StreamingXXHash32;

    .line 421
    return-void
.end method


# virtual methods
.method public currentStreamHash()I
    .registers 2

    .line 440
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;->streamHash:Lcom/tds/xxhash/StreamingXXHash32;

    invoke-virtual {v0}, Lcom/tds/xxhash/StreamingXXHash32;->getValue()I

    move-result v0

    return v0
.end method

.method public finish()V
    .registers 2

    .line 444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;->finished:Z

    .line 445
    return-void
.end method

.method public getBD()Lcom/tds/lz4/LZ4FrameOutputStream$BD;
    .registers 2

    .line 432
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;->bd:Lcom/tds/lz4/LZ4FrameOutputStream$BD;

    return-object v0
.end method

.method public getFLG()Lcom/tds/lz4/LZ4FrameOutputStream$FLG;
    .registers 2

    .line 428
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;->flg:Lcom/tds/lz4/LZ4FrameOutputStream$FLG;

    return-object v0
.end method

.method public isEnabled(Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;)Z
    .registers 3
    .param p1, "bit"    # Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    .line 424
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;->flg:Lcom/tds/lz4/LZ4FrameOutputStream$FLG;

    invoke-virtual {v0, p1}, Lcom/tds/lz4/LZ4FrameOutputStream$FLG;->isEnabled(Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;)Z

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .registers 2

    .line 448
    iget-boolean v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;->finished:Z

    return v0
.end method

.method public updateStreamHash([BII)V
    .registers 5
    .param p1, "buff"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 436
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;->streamHash:Lcom/tds/xxhash/StreamingXXHash32;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tds/xxhash/StreamingXXHash32;->update([BII)V

    .line 437
    return-void
.end method
