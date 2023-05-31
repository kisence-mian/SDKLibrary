.class Lcom/tds/lz4/LZ4Utils$Match;
.super Ljava/lang/Object;
.source "LZ4Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/lz4/LZ4Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Match"
.end annotation


# instance fields
.field len:I

.field ref:I

.field start:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method end()I
    .registers 3

    .line 63
    iget v0, p0, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    iget v1, p0, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    add-int/2addr v0, v1

    return v0
.end method

.method fix(I)V
    .registers 3
    .param p1, "correction"    # I

    .line 57
    iget v0, p0, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    .line 58
    iget v0, p0, Lcom/tds/lz4/LZ4Utils$Match;->ref:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/tds/lz4/LZ4Utils$Match;->ref:I

    .line 59
    iget v0, p0, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    .line 60
    return-void
.end method
