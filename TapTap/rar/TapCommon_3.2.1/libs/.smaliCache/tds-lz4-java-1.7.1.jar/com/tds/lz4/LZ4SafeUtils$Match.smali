.class Lcom/tds/lz4/LZ4SafeUtils$Match;
.super Ljava/lang/Object;
.source "LZ4SafeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/lz4/LZ4SafeUtils;
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

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method end()I
    .registers 3

    .line 169
    iget v0, p0, Lcom/tds/lz4/LZ4SafeUtils$Match;->start:I

    iget v1, p0, Lcom/tds/lz4/LZ4SafeUtils$Match;->len:I

    add-int/2addr v0, v1

    return v0
.end method

.method fix(I)V
    .registers 3
    .param p1, "correction"    # I

    .line 163
    iget v0, p0, Lcom/tds/lz4/LZ4SafeUtils$Match;->start:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/tds/lz4/LZ4SafeUtils$Match;->start:I

    .line 164
    iget v0, p0, Lcom/tds/lz4/LZ4SafeUtils$Match;->ref:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/tds/lz4/LZ4SafeUtils$Match;->ref:I

    .line 165
    iget v0, p0, Lcom/tds/lz4/LZ4SafeUtils$Match;->len:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/tds/lz4/LZ4SafeUtils$Match;->len:I

    .line 166
    return-void
.end method
