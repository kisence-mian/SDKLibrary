.class Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;
.super Ljava/lang/Object;
.source "LZ4HCJavaSafeCompressor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/lz4/LZ4HCJavaSafeCompressor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HashTable"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final MASK:I = 0xffff


# instance fields
.field private final base:I

.field private final chainTable:[S

.field private final hashTable:[I

.field nextToUpdate:I

.field final synthetic this$0:Lcom/tds/lz4/LZ4HCJavaSafeCompressor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    const-class v0, Lcom/tds/lz4/LZ4HCJavaSafeCompressor;

    return-void
.end method

.method constructor <init>(Lcom/tds/lz4/LZ4HCJavaSafeCompressor;I)V
    .registers 4
    .param p2, "base"    # I

    .line 38
    iput-object p1, p0, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->this$0:Lcom/tds/lz4/LZ4HCJavaSafeCompressor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p2, p0, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->base:I

    .line 40
    iput p2, p0, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->nextToUpdate:I

    .line 41
    const p1, 0x8000

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->hashTable:[I

    .line 42
    const/4 v0, -0x1

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 43
    const/high16 p1, 0x10000

    new-array p1, p1, [S

    iput-object p1, p0, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->chainTable:[S

    .line 44
    return-void
.end method

.method private addHash(II)V
    .registers 9
    .param p1, "v"    # I
    .param p2, "off"    # I

    .line 76
    invoke-static {p1}, Lcom/tds/lz4/LZ4Utils;->hashHC(I)I

    move-result v0

    .line 77
    .local v0, "h":I
    iget-object v1, p0, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->hashTable:[I

    aget v2, v1, v0

    sub-int v2, p2, v2

    .line 78
    .local v2, "delta":I
    nop

    .line 79
    const/high16 v3, 0x10000

    if-lt v2, v3, :cond_12

    .line 80
    const v2, 0xffff

    .line 82
    :cond_12
    iget-object v3, p0, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->chainTable:[S

    const v4, 0xffff

    and-int/2addr v4, p2

    int-to-short v5, v2

    aput-short v5, v3, v4

    .line 83
    aput p2, v1, v0

    .line 84
    return-void
.end method

.method private addHash(Ljava/nio/ByteBuffer;I)V
    .registers 4
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .param p2, "off"    # I

    .line 71
    invoke-static {p1, p2}, Lcom/tds/util/ByteBufferUtils;->readInt(Ljava/nio/ByteBuffer;I)I

    move-result v0

    .line 72
    .local v0, "v":I
    invoke-direct {p0, v0, p2}, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->addHash(II)V

    .line 73
    return-void
.end method

.method private addHash([BI)V
    .registers 4
    .param p1, "bytes"    # [B
    .param p2, "off"    # I

    .line 66
    invoke-static {p1, p2}, Lcom/tds/util/SafeUtils;->readInt([BI)I

    move-result v0

    .line 67
    .local v0, "v":I
    invoke-direct {p0, v0, p2}, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->addHash(II)V

    .line 68
    return-void
.end method

.method private hashPointer(I)I
    .registers 4
    .param p1, "v"    # I

    .line 57
    invoke-static {p1}, Lcom/tds/lz4/LZ4Utils;->hashHC(I)I

    move-result v0

    .line 58
    .local v0, "h":I
    iget-object v1, p0, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->hashTable:[I

    aget v1, v1, v0

    return v1
.end method

.method private hashPointer(Ljava/nio/ByteBuffer;I)I
    .registers 5
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .param p2, "off"    # I

    .line 52
    invoke-static {p1, p2}, Lcom/tds/util/ByteBufferUtils;->readInt(Ljava/nio/ByteBuffer;I)I

    move-result v0

    .line 53
    .local v0, "v":I
    invoke-direct {p0, v0}, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->hashPointer(I)I

    move-result v1

    return v1
.end method

.method private hashPointer([BI)I
    .registers 5
    .param p1, "bytes"    # [B
    .param p2, "off"    # I

    .line 47
    invoke-static {p1, p2}, Lcom/tds/util/SafeUtils;->readInt([BI)I

    move-result v0

    .line 48
    .local v0, "v":I
    invoke-direct {p0, v0}, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->hashPointer(I)I

    move-result v1

    return v1
.end method

.method private next(I)I
    .registers 5
    .param p1, "off"    # I

    .line 62
    iget-object v0, p0, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->chainTable:[S

    const v1, 0xffff

    and-int v2, p1, v1

    aget-short v0, v0, v2

    and-int/2addr v0, v1

    sub-int v0, p1, v0

    return v0
.end method


# virtual methods
.method insert(ILjava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "off"    # I
    .param p2, "bytes"    # Ljava/nio/ByteBuffer;

    .line 93
    :goto_0
    iget v0, p0, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->nextToUpdate:I

    if-ge v0, p1, :cond_e

    .line 94
    invoke-direct {p0, p2, v0}, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->addHash(Ljava/nio/ByteBuffer;I)V

    .line 93
    iget v0, p0, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->nextToUpdate:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->nextToUpdate:I

    goto :goto_0

    .line 96
    :cond_e
    return-void
.end method

.method insert(I[B)V
    .registers 4
    .param p1, "off"    # I
    .param p2, "bytes"    # [B

    .line 87
    :goto_0
    iget v0, p0, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->nextToUpdate:I

    if-ge v0, p1, :cond_e

    .line 88
    invoke-direct {p0, p2, v0}, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->addHash([BI)V

    .line 87
    iget v0, p0, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->nextToUpdate:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->nextToUpdate:I

    goto :goto_0

    .line 90
    :cond_e
    return-void
.end method

.method insertAndFindBestMatch(Ljava/nio/ByteBuffer;IILcom/tds/lz4/LZ4Utils$Match;)Z
    .registers 16
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "off"    # I
    .param p3, "matchLimit"    # I
    .param p4, "match"    # Lcom/tds/lz4/LZ4Utils$Match;

    .line 180
    iput p2, p4, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    .line 181
    const/4 v0, 0x0

    iput v0, p4, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    .line 182
    const/4 v1, 0x0

    .line 183
    .local v1, "delta":I
    const/4 v2, 0x0

    .line 185
    .local v2, "repl":I
    invoke-virtual {p0, p2, p1}, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->insert(ILjava/nio/ByteBuffer;)V

    .line 187
    invoke-direct {p0, p1, p2}, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->hashPointer(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 189
    .local v3, "ref":I
    add-int/lit8 v4, p2, -0x4

    if-lt v3, v4, :cond_33

    if-gt v3, p2, :cond_33

    iget v4, p0, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->base:I

    if-lt v3, v4, :cond_33

    .line 190
    invoke-static {p1, v3, p2}, Lcom/tds/lz4/LZ4ByteBufferUtils;->readIntEquals(Ljava/nio/ByteBuffer;II)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 191
    sub-int v1, p2, v3

    .line 192
    add-int/lit8 v4, v3, 0x4

    add-int/lit8 v5, p2, 0x4

    invoke-static {p1, v4, v5, p3}, Lcom/tds/lz4/LZ4ByteBufferUtils;->commonBytes(Ljava/nio/ByteBuffer;III)I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    iput v4, p4, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    move v2, v4

    .line 193
    iput v3, p4, Lcom/tds/lz4/LZ4Utils$Match;->ref:I

    .line 195
    :cond_2f
    invoke-direct {p0, v3}, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->next(I)I

    move-result v3

    .line 198
    :cond_33
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_34
    iget-object v5, p0, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->this$0:Lcom/tds/lz4/LZ4HCJavaSafeCompressor;

    # getter for: Lcom/tds/lz4/LZ4HCJavaSafeCompressor;->maxAttempts:I
    invoke-static {v5}, Lcom/tds/lz4/LZ4HCJavaSafeCompressor;->access$000(Lcom/tds/lz4/LZ4HCJavaSafeCompressor;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v4, v5, :cond_6c

    .line 199
    iget v5, p0, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->base:I

    const/high16 v7, 0x10000

    sub-int v7, p2, v7

    add-int/2addr v7, v6

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-lt v3, v5, :cond_6c

    if-le v3, p2, :cond_4d

    .line 200
    goto :goto_6c

    .line 202
    :cond_4d
    invoke-static {p1, v3, p2}, Lcom/tds/lz4/LZ4ByteBufferUtils;->readIntEquals(Ljava/nio/ByteBuffer;II)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 203
    add-int/lit8 v5, v3, 0x4

    add-int/lit8 v6, p2, 0x4

    invoke-static {p1, v5, v6, p3}, Lcom/tds/lz4/LZ4ByteBufferUtils;->commonBytes(Ljava/nio/ByteBuffer;III)I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    .line 204
    .local v5, "matchLen":I
    iget v6, p4, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    if-le v5, v6, :cond_65

    .line 205
    iput v3, p4, Lcom/tds/lz4/LZ4Utils$Match;->ref:I

    .line 206
    iput v5, p4, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    .line 209
    .end local v5    # "matchLen":I
    :cond_65
    invoke-direct {p0, v3}, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->next(I)I

    move-result v3

    .line 198
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 212
    .end local v4    # "i":I
    :cond_6c
    :goto_6c
    if-eqz v2, :cond_9b

    .line 213
    move v4, p2

    .line 214
    .local v4, "ptr":I
    add-int v5, p2, v2

    add-int/lit8 v5, v5, -0x3

    .line 215
    .local v5, "end":I
    :goto_73
    sub-int v7, v5, v1

    const v8, 0xffff

    if-ge v4, v7, :cond_83

    .line 216
    iget-object v7, p0, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->chainTable:[S

    and-int/2addr v8, v4

    int-to-short v9, v1

    aput-short v9, v7, v8

    .line 217
    add-int/lit8 v4, v4, 0x1

    goto :goto_73

    .line 220
    :cond_83
    iget-object v7, p0, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->chainTable:[S

    and-int v9, v4, v8

    int-to-short v10, v1

    aput-short v10, v7, v9

    .line 221
    iget-object v7, p0, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->hashTable:[I

    invoke-static {p1, v4}, Lcom/tds/util/ByteBufferUtils;->readInt(Ljava/nio/ByteBuffer;I)I

    move-result v9

    invoke-static {v9}, Lcom/tds/lz4/LZ4Utils;->hashHC(I)I

    move-result v9

    aput v4, v7, v9

    .line 222
    add-int/2addr v4, v6

    .line 223
    if-lt v4, v5, :cond_83

    .line 224
    iput v5, p0, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->nextToUpdate:I

    .line 227
    .end local v4    # "ptr":I
    .end local v5    # "end":I
    :cond_9b
    iget v4, p4, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    if-eqz v4, :cond_a0

    move v0, v6

    :cond_a0
    return v0
.end method

.method insertAndFindBestMatch([BIILcom/tds/lz4/LZ4Utils$Match;)Z
    .registers 16
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "matchLimit"    # I
    .param p4, "match"    # Lcom/tds/lz4/LZ4Utils$Match;

    .line 101
    iput p2, p4, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    .line 102
    const/4 v0, 0x0

    iput v0, p4, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    .line 103
    const/4 v1, 0x0

    .line 104
    .local v1, "delta":I
    const/4 v2, 0x0

    .line 106
    .local v2, "repl":I
    invoke-virtual {p0, p2, p1}, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->insert(I[B)V

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->hashPointer([BI)I

    move-result v3

    .line 110
    .local v3, "ref":I
    add-int/lit8 v4, p2, -0x4

    if-lt v3, v4, :cond_33

    if-gt v3, p2, :cond_33

    iget v4, p0, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->base:I

    if-lt v3, v4, :cond_33

    .line 111
    invoke-static {p1, v3, p2}, Lcom/tds/lz4/LZ4SafeUtils;->readIntEquals([BII)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 112
    sub-int v1, p2, v3

    .line 113
    add-int/lit8 v4, v3, 0x4

    add-int/lit8 v5, p2, 0x4

    invoke-static {p1, v4, v5, p3}, Lcom/tds/lz4/LZ4SafeUtils;->commonBytes([BIII)I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    iput v4, p4, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    move v2, v4

    .line 114
    iput v3, p4, Lcom/tds/lz4/LZ4Utils$Match;->ref:I

    .line 116
    :cond_2f
    invoke-direct {p0, v3}, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->next(I)I

    move-result v3

    .line 119
    :cond_33
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_34
    iget-object v5, p0, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->this$0:Lcom/tds/lz4/LZ4HCJavaSafeCompressor;

    # getter for: Lcom/tds/lz4/LZ4HCJavaSafeCompressor;->maxAttempts:I
    invoke-static {v5}, Lcom/tds/lz4/LZ4HCJavaSafeCompressor;->access$000(Lcom/tds/lz4/LZ4HCJavaSafeCompressor;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v4, v5, :cond_6c

    .line 120
    iget v5, p0, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->base:I

    const/high16 v7, 0x10000

    sub-int v7, p2, v7

    add-int/2addr v7, v6

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-lt v3, v5, :cond_6c

    if-le v3, p2, :cond_4d

    .line 121
    goto :goto_6c

    .line 123
    :cond_4d
    invoke-static {p1, v3, p2}, Lcom/tds/lz4/LZ4SafeUtils;->readIntEquals([BII)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 124
    add-int/lit8 v5, v3, 0x4

    add-int/lit8 v6, p2, 0x4

    invoke-static {p1, v5, v6, p3}, Lcom/tds/lz4/LZ4SafeUtils;->commonBytes([BIII)I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    .line 125
    .local v5, "matchLen":I
    iget v6, p4, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    if-le v5, v6, :cond_65

    .line 126
    iput v3, p4, Lcom/tds/lz4/LZ4Utils$Match;->ref:I

    .line 127
    iput v5, p4, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    .line 130
    .end local v5    # "matchLen":I
    :cond_65
    invoke-direct {p0, v3}, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->next(I)I

    move-result v3

    .line 119
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 133
    .end local v4    # "i":I
    :cond_6c
    :goto_6c
    if-eqz v2, :cond_9b

    .line 134
    move v4, p2

    .line 135
    .local v4, "ptr":I
    add-int v5, p2, v2

    add-int/lit8 v5, v5, -0x3

    .line 136
    .local v5, "end":I
    :goto_73
    sub-int v7, v5, v1

    const v8, 0xffff

    if-ge v4, v7, :cond_83

    .line 137
    iget-object v7, p0, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->chainTable:[S

    and-int/2addr v8, v4

    int-to-short v9, v1

    aput-short v9, v7, v8

    .line 138
    add-int/lit8 v4, v4, 0x1

    goto :goto_73

    .line 141
    :cond_83
    iget-object v7, p0, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->chainTable:[S

    and-int v9, v4, v8

    int-to-short v10, v1

    aput-short v10, v7, v9

    .line 142
    iget-object v7, p0, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->hashTable:[I

    invoke-static {p1, v4}, Lcom/tds/util/SafeUtils;->readInt([BI)I

    move-result v9

    invoke-static {v9}, Lcom/tds/lz4/LZ4Utils;->hashHC(I)I

    move-result v9

    aput v4, v7, v9

    .line 143
    add-int/2addr v4, v6

    .line 144
    if-lt v4, v5, :cond_83

    .line 145
    iput v5, p0, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->nextToUpdate:I

    .line 148
    .end local v4    # "ptr":I
    .end local v5    # "end":I
    :cond_9b
    iget v4, p4, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    if-eqz v4, :cond_a0

    move v0, v6

    :cond_a0
    return v0
.end method

.method insertAndFindWiderMatch(Ljava/nio/ByteBuffer;IIIILcom/tds/lz4/LZ4Utils$Match;)Z
    .registers 14
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "off"    # I
    .param p3, "startLimit"    # I
    .param p4, "matchLimit"    # I
    .param p5, "minLen"    # I
    .param p6, "match"    # Lcom/tds/lz4/LZ4Utils$Match;

    .line 231
    iput p5, p6, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    .line 233
    invoke-virtual {p0, p2, p1}, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->insert(ILjava/nio/ByteBuffer;)V

    .line 235
    sub-int v0, p2, p3

    .line 236
    .local v0, "delta":I
    invoke-direct {p0, p1, p2}, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->hashPointer(Ljava/nio/ByteBuffer;I)I

    move-result v1

    .line 237
    .local v1, "ref":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    iget-object v3, p0, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->this$0:Lcom/tds/lz4/LZ4HCJavaSafeCompressor;

    # getter for: Lcom/tds/lz4/LZ4HCJavaSafeCompressor;->maxAttempts:I
    invoke-static {v3}, Lcom/tds/lz4/LZ4HCJavaSafeCompressor;->access$000(Lcom/tds/lz4/LZ4HCJavaSafeCompressor;)I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_52

    .line 238
    iget v3, p0, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->base:I

    const/high16 v5, 0x10000

    sub-int v5, p2, v5

    add-int/2addr v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-lt v1, v3, :cond_52

    if-le v1, p2, :cond_25

    .line 239
    goto :goto_52

    .line 241
    :cond_25
    invoke-static {p1, v1, p2}, Lcom/tds/lz4/LZ4ByteBufferUtils;->readIntEquals(Ljava/nio/ByteBuffer;II)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 242
    add-int/lit8 v3, v1, 0x4

    add-int/lit8 v4, p2, 0x4

    invoke-static {p1, v3, v4, p4}, Lcom/tds/lz4/LZ4ByteBufferUtils;->commonBytes(Ljava/nio/ByteBuffer;III)I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    .line 243
    .local v3, "matchLenForward":I
    iget v4, p0, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->base:I

    invoke-static {p1, v1, p2, v4, p3}, Lcom/tds/lz4/LZ4ByteBufferUtils;->commonBytesBackward(Ljava/nio/ByteBuffer;IIII)I

    move-result v4

    .line 244
    .local v4, "matchLenBackward":I
    add-int v5, v4, v3

    .line 245
    .local v5, "matchLen":I
    iget v6, p6, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    if-le v5, v6, :cond_4b

    .line 246
    iput v5, p6, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    .line 247
    sub-int v6, v1, v4

    iput v6, p6, Lcom/tds/lz4/LZ4Utils$Match;->ref:I

    .line 248
    sub-int v6, p2, v4

    iput v6, p6, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    .line 251
    .end local v3    # "matchLenForward":I
    .end local v4    # "matchLenBackward":I
    .end local v5    # "matchLen":I
    :cond_4b
    invoke-direct {p0, v1}, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->next(I)I

    move-result v1

    .line 237
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 254
    .end local v2    # "i":I
    :cond_52
    :goto_52
    iget v2, p6, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    if-le v2, p5, :cond_57

    goto :goto_58

    :cond_57
    const/4 v4, 0x0

    :goto_58
    return v4
.end method

.method insertAndFindWiderMatch([BIIIILcom/tds/lz4/LZ4Utils$Match;)Z
    .registers 14
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "startLimit"    # I
    .param p4, "matchLimit"    # I
    .param p5, "minLen"    # I
    .param p6, "match"    # Lcom/tds/lz4/LZ4Utils$Match;

    .line 152
    iput p5, p6, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    .line 154
    invoke-virtual {p0, p2, p1}, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->insert(I[B)V

    .line 156
    sub-int v0, p2, p3

    .line 157
    .local v0, "delta":I
    invoke-direct {p0, p1, p2}, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->hashPointer([BI)I

    move-result v1

    .line 158
    .local v1, "ref":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    iget-object v3, p0, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->this$0:Lcom/tds/lz4/LZ4HCJavaSafeCompressor;

    # getter for: Lcom/tds/lz4/LZ4HCJavaSafeCompressor;->maxAttempts:I
    invoke-static {v3}, Lcom/tds/lz4/LZ4HCJavaSafeCompressor;->access$000(Lcom/tds/lz4/LZ4HCJavaSafeCompressor;)I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_52

    .line 159
    iget v3, p0, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->base:I

    const/high16 v5, 0x10000

    sub-int v5, p2, v5

    add-int/2addr v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-lt v1, v3, :cond_52

    if-le v1, p2, :cond_25

    .line 160
    goto :goto_52

    .line 162
    :cond_25
    invoke-static {p1, v1, p2}, Lcom/tds/lz4/LZ4SafeUtils;->readIntEquals([BII)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 163
    add-int/lit8 v3, v1, 0x4

    add-int/lit8 v4, p2, 0x4

    invoke-static {p1, v3, v4, p4}, Lcom/tds/lz4/LZ4SafeUtils;->commonBytes([BIII)I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    .line 164
    .local v3, "matchLenForward":I
    iget v4, p0, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->base:I

    invoke-static {p1, v1, p2, v4, p3}, Lcom/tds/lz4/LZ4SafeUtils;->commonBytesBackward([BIIII)I

    move-result v4

    .line 165
    .local v4, "matchLenBackward":I
    add-int v5, v4, v3

    .line 166
    .local v5, "matchLen":I
    iget v6, p6, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    if-le v5, v6, :cond_4b

    .line 167
    iput v5, p6, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    .line 168
    sub-int v6, v1, v4

    iput v6, p6, Lcom/tds/lz4/LZ4Utils$Match;->ref:I

    .line 169
    sub-int v6, p2, v4

    iput v6, p6, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    .line 172
    .end local v3    # "matchLenForward":I
    .end local v4    # "matchLenBackward":I
    .end local v5    # "matchLen":I
    :cond_4b
    invoke-direct {p0, v1}, Lcom/tds/lz4/LZ4HCJavaSafeCompressor$HashTable;->next(I)I

    move-result v1

    .line 158
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 175
    .end local v2    # "i":I
    :cond_52
    :goto_52
    iget v2, p6, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    if-le v2, p5, :cond_57

    goto :goto_58

    :cond_57
    const/4 v4, 0x0

    :goto_58
    return v4
.end method
