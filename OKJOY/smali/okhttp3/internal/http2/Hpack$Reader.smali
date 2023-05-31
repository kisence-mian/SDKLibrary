.class final Lokhttp3/internal/http2/Hpack$Reader;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Hpack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field dynamicTable:[Lokhttp3/internal/http2/Header;

.field dynamicTableByteCount:I

.field headerCount:I

.field private final headerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation
.end field

.field private final headerTableSizeSetting:I

.field private maxDynamicTableByteCount:I

.field nextHeaderIndex:I

.field private final source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(IILokio/Source;)V
    .registers 6
    .param p1, "headerTableSizeSetting"    # I
    .param p2, "maxDynamicTableByteCount"    # I
    .param p3, "source"    # Lokio/Source;

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    .line 124
    const/16 v0, 0x8

    new-array v0, v0, [Lokhttp3/internal/http2/Header;

    iput-object v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    .line 126
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    .line 127
    iput v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerCount:I

    .line 128
    iput v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    .line 135
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerTableSizeSetting:I

    .line 136
    iput p2, p0, Lokhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    .line 137
    invoke-static {p3}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->source:Lokio/BufferedSource;

    .line 138
    return-void
.end method

.method constructor <init>(ILokio/Source;)V
    .registers 3
    .param p1, "headerTableSizeSetting"    # I
    .param p2, "source"    # Lokio/Source;

    .prologue
    .line 131
    invoke-direct {p0, p1, p1, p2}, Lokhttp3/internal/http2/Hpack$Reader;-><init>(IILokio/Source;)V

    .line 132
    return-void
.end method

.method private adjustDynamicTableByteCount()V
    .registers 3

    .prologue
    .line 145
    iget v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    iget v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    if-ge v0, v1, :cond_d

    .line 146
    iget v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    if-nez v0, :cond_e

    .line 147
    invoke-direct {p0}, Lokhttp3/internal/http2/Hpack$Reader;->clearDynamicTable()V

    .line 152
    :cond_d
    :goto_d
    return-void

    .line 149
    :cond_e
    iget v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    iget v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lokhttp3/internal/http2/Hpack$Reader;->evictToRecoverBytes(I)I

    goto :goto_d
.end method

.method private clearDynamicTable()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    .line 157
    iput v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerCount:I

    .line 158
    iput v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    .line 159
    return-void
.end method

.method private dynamicTableIndex(I)I
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 233
    iget v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method private evictToRecoverBytes(I)I
    .registers 9
    .param p1, "bytesToRecover"    # I

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "entriesToEvict":I
    if-lez p1, :cond_42

    .line 166
    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "j":I
    :goto_8
    iget v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    if-lt v1, v2, :cond_2b

    if-lez p1, :cond_2b

    .line 167
    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    aget-object v2, v2, v1

    iget v2, v2, Lokhttp3/internal/http2/Header;->hpackSize:I

    sub-int/2addr p1, v2

    .line 168
    iget v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    iget-object v3, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    aget-object v3, v3, v1

    iget v3, v3, Lokhttp3/internal/http2/Header;->hpackSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    .line 169
    iget v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerCount:I

    .line 170
    add-int/lit8 v0, v0, 0x1

    .line 166
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 172
    :cond_2b
    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    iget v3, p0, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    iget v5, p0, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v0

    iget v6, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerCount:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    iget v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    add-int/2addr v2, v0

    iput v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    .line 176
    .end local v1    # "j":I
    :cond_42
    return v0
.end method

.method private getName(I)Lokio/ByteString;
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lokhttp3/internal/http2/Hpack$Reader;->isStaticHeader(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 263
    sget-object v1, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    aget-object v1, v1, p1

    iget-object v1, v1, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    .line 270
    :goto_c
    return-object v1

    .line 265
    :cond_d
    sget-object v1, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    array-length v1, v1

    sub-int v1, p1, v1

    invoke-direct {p0, v1}, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v0

    .line 266
    .local v0, "dynamicTableIndex":I
    if-ltz v0, :cond_1d

    iget-object v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v1, v1

    if-lt v0, v1, :cond_38

    .line 267
    :cond_1d
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Header index too large "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 270
    :cond_38
    iget-object v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    aget-object v1, v1, v0

    iget-object v1, v1, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    goto :goto_c
.end method

.method private insertIntoDynamicTable(ILokhttp3/internal/http2/Header;)V
    .registers 11
    .param p1, "index"    # I
    .param p2, "entry"    # Lokhttp3/internal/http2/Header;

    .prologue
    const/4 v6, -0x1

    .line 280
    iget-object v4, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    iget v1, p2, Lokhttp3/internal/http2/Header;->hpackSize:I

    .line 283
    .local v1, "delta":I
    if-eq p1, v6, :cond_15

    .line 284
    iget-object v4, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    invoke-direct {p0, p1}, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v5

    aget-object v4, v4, v5

    iget v4, v4, Lokhttp3/internal/http2/Header;->hpackSize:I

    sub-int/2addr v1, v4

    .line 288
    :cond_15
    iget v4, p0, Lokhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    if-le v1, v4, :cond_1d

    .line 289
    invoke-direct {p0}, Lokhttp3/internal/http2/Hpack$Reader;->clearDynamicTable()V

    .line 312
    :goto_1c
    return-void

    .line 294
    :cond_1d
    iget v4, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    add-int/2addr v4, v1

    iget v5, p0, Lokhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    sub-int v0, v4, v5

    .line 295
    .local v0, "bytesToRecover":I
    invoke-direct {p0, v0}, Lokhttp3/internal/http2/Hpack$Reader;->evictToRecoverBytes(I)I

    move-result v3

    .line 297
    .local v3, "entriesEvicted":I
    if-ne p1, v6, :cond_65

    .line 298
    iget v4, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerCount:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v5, v5

    if-le v4, v5, :cond_4f

    .line 299
    iget-object v4, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    new-array v2, v4, [Lokhttp3/internal/http2/Header;

    .line 300
    .local v2, "doubled":[Lokhttp3/internal/http2/Header;
    iget-object v4, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    const/4 v5, 0x0

    iget-object v6, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v6, v6

    iget-object v7, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v7, v7

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    iget-object v4, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    .line 302
    iput-object v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    .line 304
    .end local v2    # "doubled":[Lokhttp3/internal/http2/Header;
    :cond_4f
    iget p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    .end local p1    # "index":I
    add-int/lit8 v4, p1, -0x1

    iput v4, p0, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    .line 305
    .restart local p1    # "index":I
    iget-object v4, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    aput-object p2, v4, p1

    .line 306
    iget v4, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerCount:I

    .line 311
    :goto_5f
    iget v4, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    add-int/2addr v4, v1

    iput v4, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    goto :goto_1c

    .line 308
    :cond_65
    invoke-direct {p0, p1}, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr p1, v4

    .line 309
    iget-object v4, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    aput-object p2, v4, p1

    goto :goto_5f
.end method

.method private isStaticHeader(I)Z
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 275
    if-ltz p1, :cond_b

    sget-object v0, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private readByte()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private readIndexedHeader(I)V
    .registers 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lokhttp3/internal/http2/Hpack$Reader;->isStaticHeader(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 220
    sget-object v2, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    aget-object v1, v2, p1

    .line 221
    .local v1, "staticEntry":Lokhttp3/internal/http2/Header;
    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    .end local v1    # "staticEntry":Lokhttp3/internal/http2/Header;
    :goto_f
    return-void

    .line 223
    :cond_10
    sget-object v2, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    array-length v2, v2

    sub-int v2, p1, v2

    invoke-direct {p0, v2}, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v0

    .line 224
    .local v0, "dynamicTableIndex":I
    if-ltz v0, :cond_20

    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v2, v2

    if-lt v0, v2, :cond_3b

    .line 225
    :cond_20
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Header index too large "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 227
    :cond_3b
    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    iget-object v3, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    aget-object v3, v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f
.end method

.method private readLiteralHeaderWithIncrementalIndexingIndexedName(I)V
    .registers 6
    .param p1, "nameIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lokhttp3/internal/http2/Hpack$Reader;->getName(I)Lokio/ByteString;

    move-result-object v0

    .line 251
    .local v0, "name":Lokio/ByteString;
    invoke-virtual {p0}, Lokhttp3/internal/http2/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object v1

    .line 252
    .local v1, "value":Lokio/ByteString;
    const/4 v2, -0x1

    new-instance v3, Lokhttp3/internal/http2/Header;

    invoke-direct {v3, v0, v1}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-direct {p0, v2, v3}, Lokhttp3/internal/http2/Hpack$Reader;->insertIntoDynamicTable(ILokhttp3/internal/http2/Header;)V

    .line 253
    return-void
.end method

.method private readLiteralHeaderWithIncrementalIndexingNewName()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-virtual {p0}, Lokhttp3/internal/http2/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object v2

    invoke-static {v2}, Lokhttp3/internal/http2/Hpack;->checkLowercase(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    .line 257
    .local v0, "name":Lokio/ByteString;
    invoke-virtual {p0}, Lokhttp3/internal/http2/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object v1

    .line 258
    .local v1, "value":Lokio/ByteString;
    const/4 v2, -0x1

    new-instance v3, Lokhttp3/internal/http2/Header;

    invoke-direct {v3, v0, v1}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-direct {p0, v2, v3}, Lokhttp3/internal/http2/Hpack$Reader;->insertIntoDynamicTable(ILokhttp3/internal/http2/Header;)V

    .line 259
    return-void
.end method

.method private readLiteralHeaderWithoutIndexingIndexedName(I)V
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lokhttp3/internal/http2/Hpack$Reader;->getName(I)Lokio/ByteString;

    move-result-object v0

    .line 238
    .local v0, "name":Lokio/ByteString;
    invoke-virtual {p0}, Lokhttp3/internal/http2/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object v1

    .line 239
    .local v1, "value":Lokio/ByteString;
    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    new-instance v3, Lokhttp3/internal/http2/Header;

    invoke-direct {v3, v0, v1}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    return-void
.end method

.method private readLiteralHeaderWithoutIndexingNewName()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-virtual {p0}, Lokhttp3/internal/http2/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object v2

    invoke-static {v2}, Lokhttp3/internal/http2/Hpack;->checkLowercase(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    .line 244
    .local v0, "name":Lokio/ByteString;
    invoke-virtual {p0}, Lokhttp3/internal/http2/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object v1

    .line 245
    .local v1, "value":Lokio/ByteString;
    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    new-instance v3, Lokhttp3/internal/http2/Header;

    invoke-direct {v3, v0, v1}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    return-void
.end method


# virtual methods
.method public getAndResetHeaderList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 214
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/http2/Header;>;"
    iget-object v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 215
    return-object v0
.end method

.method maxDynamicTableByteCount()I
    .registers 2

    .prologue
    .line 141
    iget v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    return v0
.end method

.method readByteString()Lokio/ByteString;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-direct {p0}, Lokhttp3/internal/http2/Hpack$Reader;->readByte()I

    move-result v0

    .line 343
    .local v0, "firstByte":I
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_27

    const/4 v1, 0x1

    .line 344
    .local v1, "huffmanDecode":Z
    :goto_b
    const/16 v3, 0x7f

    invoke-virtual {p0, v0, v3}, Lokhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    move-result v2

    .line 346
    .local v2, "length":I
    if-eqz v1, :cond_29

    .line 347
    invoke-static {}, Lokhttp3/internal/http2/Huffman;->get()Lokhttp3/internal/http2/Huffman;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/internal/http2/Hpack$Reader;->source:Lokio/BufferedSource;

    int-to-long v6, v2

    invoke-interface {v4, v6, v7}, Lokio/BufferedSource;->readByteArray(J)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lokhttp3/internal/http2/Huffman;->decode([B)[B

    move-result-object v3

    invoke-static {v3}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v3

    .line 349
    :goto_26
    return-object v3

    .line 343
    .end local v1    # "huffmanDecode":Z
    .end local v2    # "length":I
    :cond_27
    const/4 v1, 0x0

    goto :goto_b

    .line 349
    .restart local v1    # "huffmanDecode":Z
    .restart local v2    # "length":I
    :cond_29
    iget-object v3, p0, Lokhttp3/internal/http2/Hpack$Reader;->source:Lokio/BufferedSource;

    int-to-long v4, v2

    invoke-interface {v3, v4, v5}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v3

    goto :goto_26
.end method

.method readHeaders()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x80

    const/16 v4, 0x40

    .line 184
    :goto_4
    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->exhausted()Z

    move-result v2

    if-nez v2, :cond_92

    .line 185
    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readByte()B

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .line 186
    .local v0, "b":I
    if-ne v0, v5, :cond_1e

    .line 187
    new-instance v2, Ljava/io/IOException;

    const-string v3, "index == 0"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 188
    :cond_1e
    and-int/lit16 v2, v0, 0x80

    if-ne v2, v5, :cond_2e

    .line 189
    const/16 v2, 0x7f

    invoke-virtual {p0, v0, v2}, Lokhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    move-result v1

    .line 190
    .local v1, "index":I
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lokhttp3/internal/http2/Hpack$Reader;->readIndexedHeader(I)V

    goto :goto_4

    .line 191
    .end local v1    # "index":I
    :cond_2e
    if-ne v0, v4, :cond_34

    .line 192
    invoke-direct {p0}, Lokhttp3/internal/http2/Hpack$Reader;->readLiteralHeaderWithIncrementalIndexingNewName()V

    goto :goto_4

    .line 193
    :cond_34
    and-int/lit8 v2, v0, 0x40

    if-ne v2, v4, :cond_44

    .line 194
    const/16 v2, 0x3f

    invoke-virtual {p0, v0, v2}, Lokhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    move-result v1

    .line 195
    .restart local v1    # "index":I
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lokhttp3/internal/http2/Hpack$Reader;->readLiteralHeaderWithIncrementalIndexingIndexedName(I)V

    goto :goto_4

    .line 196
    .end local v1    # "index":I
    :cond_44
    and-int/lit8 v2, v0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_7b

    .line 197
    const/16 v2, 0x1f

    invoke-virtual {p0, v0, v2}, Lokhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    move-result v2

    iput v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    .line 198
    iget v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    if-ltz v2, :cond_5c

    iget v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    iget v3, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerTableSizeSetting:I

    if-le v2, v3, :cond_77

    .line 200
    :cond_5c
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid dynamic table size update "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lokhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 202
    :cond_77
    invoke-direct {p0}, Lokhttp3/internal/http2/Hpack$Reader;->adjustDynamicTableByteCount()V

    goto :goto_4

    .line 203
    :cond_7b
    const/16 v2, 0x10

    if-eq v0, v2, :cond_81

    if-nez v0, :cond_85

    .line 204
    :cond_81
    invoke-direct {p0}, Lokhttp3/internal/http2/Hpack$Reader;->readLiteralHeaderWithoutIndexingNewName()V

    goto :goto_4

    .line 206
    :cond_85
    const/16 v2, 0xf

    invoke-virtual {p0, v0, v2}, Lokhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    move-result v1

    .line 207
    .restart local v1    # "index":I
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lokhttp3/internal/http2/Hpack$Reader;->readLiteralHeaderWithoutIndexingIndexedName(I)V

    goto/16 :goto_4

    .line 210
    .end local v0    # "b":I
    .end local v1    # "index":I
    :cond_92
    return-void
.end method

.method readInt(II)I
    .registers 8
    .param p1, "firstByte"    # I
    .param p2, "prefixMask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    and-int v1, p1, p2

    .line 320
    .local v1, "prefix":I
    if-ge v1, p2, :cond_5

    .line 337
    .end local v1    # "prefix":I
    :goto_4
    return v1

    .line 325
    .restart local v1    # "prefix":I
    :cond_5
    move v2, p2

    .line 326
    .local v2, "result":I
    const/4 v3, 0x0

    .line 328
    .local v3, "shift":I
    :goto_7
    invoke-direct {p0}, Lokhttp3/internal/http2/Hpack$Reader;->readByte()I

    move-result v0

    .line 329
    .local v0, "b":I
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_16

    .line 330
    and-int/lit8 v4, v0, 0x7f

    shl-int/2addr v4, v3

    add-int/2addr v2, v4

    .line 331
    add-int/lit8 v3, v3, 0x7

    goto :goto_7

    .line 333
    :cond_16
    shl-int v4, v0, v3

    add-int/2addr v2, v4

    move v1, v2

    .line 337
    goto :goto_4
.end method
