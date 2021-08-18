.class final Lokhttp3/internal/framed/Hpack$Reader;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/Hpack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field dynamicTable:[Lokhttp3/internal/framed/Header;

.field dynamicTableByteCount:I

.field headerCount:I

.field private final headerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
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
    .registers 5
    .param p1, "headerTableSizeSetting"    # I
    .param p2, "maxDynamicTableByteCount"    # I
    .param p3, "source"    # Lokio/Source;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    .line 124
    const/16 v0, 0x8

    new-array v0, v0, [Lokhttp3/internal/framed/Header;

    iput-object v0, p0, Lokhttp3/internal/framed/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/framed/Header;

    .line 126
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lokhttp3/internal/framed/Hpack$Reader;->nextHeaderIndex:I

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/internal/framed/Hpack$Reader;->headerCount:I

    .line 128
    iput v0, p0, Lokhttp3/internal/framed/Hpack$Reader;->dynamicTableByteCount:I

    .line 135
    iput p1, p0, Lokhttp3/internal/framed/Hpack$Reader;->headerTableSizeSetting:I

    .line 136
    iput p2, p0, Lokhttp3/internal/framed/Hpack$Reader;->maxDynamicTableByteCount:I

    .line 137
    invoke-static {p3}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/framed/Hpack$Reader;->source:Lokio/BufferedSource;

    .line 138
    return-void
.end method

.method constructor <init>(ILokio/Source;)V
    .registers 3
    .param p1, "headerTableSizeSetting"    # I
    .param p2, "source"    # Lokio/Source;

    .line 131
    invoke-direct {p0, p1, p1, p2}, Lokhttp3/internal/framed/Hpack$Reader;-><init>(IILokio/Source;)V

    .line 132
    return-void
.end method

.method private adjustDynamicTableByteCount()V
    .registers 3

    .line 145
    iget v0, p0, Lokhttp3/internal/framed/Hpack$Reader;->maxDynamicTableByteCount:I

    iget v1, p0, Lokhttp3/internal/framed/Hpack$Reader;->dynamicTableByteCount:I

    if-ge v0, v1, :cond_10

    .line 146
    if-nez v0, :cond_c

    .line 147
    invoke-direct {p0}, Lokhttp3/internal/framed/Hpack$Reader;->clearDynamicTable()V

    goto :goto_10

    .line 149
    :cond_c
    sub-int/2addr v1, v0

    invoke-direct {p0, v1}, Lokhttp3/internal/framed/Hpack$Reader;->evictToRecoverBytes(I)I

    .line 152
    :cond_10
    :goto_10
    return-void
.end method

.method private clearDynamicTable()V
    .registers 3

    .line 155
    iget-object v0, p0, Lokhttp3/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 156
    iget-object v0, p0, Lokhttp3/internal/framed/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/framed/Header;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lokhttp3/internal/framed/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/framed/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lokhttp3/internal/framed/Hpack$Reader;->nextHeaderIndex:I

    .line 158
    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/internal/framed/Hpack$Reader;->headerCount:I

    .line 159
    iput v0, p0, Lokhttp3/internal/framed/Hpack$Reader;->dynamicTableByteCount:I

    .line 160
    return-void
.end method

.method private dynamicTableIndex(I)I
    .registers 3
    .param p1, "index"    # I

    .line 234
    iget v0, p0, Lokhttp3/internal/framed/Hpack$Reader;->nextHeaderIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method private evictToRecoverBytes(I)I
    .registers 7
    .param p1, "bytesToRecover"    # I

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "entriesToEvict":I
    if-lez p1, :cond_3c

    .line 167
    iget-object v1, p0, Lokhttp3/internal/framed/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/framed/Header;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "j":I
    :goto_8
    iget v2, p0, Lokhttp3/internal/framed/Hpack$Reader;->nextHeaderIndex:I

    if-lt v1, v2, :cond_2b

    if-lez p1, :cond_2b

    .line 168
    iget-object v2, p0, Lokhttp3/internal/framed/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/framed/Header;

    aget-object v2, v2, v1

    iget v2, v2, Lokhttp3/internal/framed/Header;->hpackSize:I

    sub-int/2addr p1, v2

    .line 169
    iget v2, p0, Lokhttp3/internal/framed/Hpack$Reader;->dynamicTableByteCount:I

    iget-object v3, p0, Lokhttp3/internal/framed/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/framed/Header;

    aget-object v3, v3, v1

    iget v3, v3, Lokhttp3/internal/framed/Header;->hpackSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lokhttp3/internal/framed/Hpack$Reader;->dynamicTableByteCount:I

    .line 170
    iget v2, p0, Lokhttp3/internal/framed/Hpack$Reader;->headerCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lokhttp3/internal/framed/Hpack$Reader;->headerCount:I

    .line 171
    add-int/lit8 v0, v0, 0x1

    .line 167
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 173
    .end local v1    # "j":I
    :cond_2b
    iget-object v1, p0, Lokhttp3/internal/framed/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/framed/Header;

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    iget v4, p0, Lokhttp3/internal/framed/Hpack$Reader;->headerCount:I

    invoke-static {v1, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    iget v1, p0, Lokhttp3/internal/framed/Hpack$Reader;->nextHeaderIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lokhttp3/internal/framed/Hpack$Reader;->nextHeaderIndex:I

    .line 177
    :cond_3c
    return v0
.end method

.method private getName(I)Lokio/ByteString;
    .registers 4
    .param p1, "index"    # I

    .line 263
    invoke-direct {p0, p1}, Lokhttp3/internal/framed/Hpack$Reader;->isStaticHeader(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 264
    # getter for: Lokhttp3/internal/framed/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/framed/Header;
    invoke-static {}, Lokhttp3/internal/framed/Hpack;->access$000()[Lokhttp3/internal/framed/Header;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v0, v0, Lokhttp3/internal/framed/Header;->name:Lokio/ByteString;

    return-object v0

    .line 266
    :cond_f
    iget-object v0, p0, Lokhttp3/internal/framed/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/framed/Header;

    # getter for: Lokhttp3/internal/framed/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/framed/Header;
    invoke-static {}, Lokhttp3/internal/framed/Hpack;->access$000()[Lokhttp3/internal/framed/Header;

    move-result-object v1

    array-length v1, v1

    sub-int v1, p1, v1

    invoke-direct {p0, v1}, Lokhttp3/internal/framed/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lokhttp3/internal/framed/Header;->name:Lokio/ByteString;

    return-object v0
.end method

.method private insertIntoDynamicTable(ILokhttp3/internal/framed/Header;)V
    .registers 11
    .param p1, "index"    # I
    .param p2, "entry"    # Lokhttp3/internal/framed/Header;

    .line 276
    iget-object v0, p0, Lokhttp3/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    iget v0, p2, Lokhttp3/internal/framed/Header;->hpackSize:I

    .line 279
    .local v0, "delta":I
    const/4 v1, -0x1

    if-eq p1, v1, :cond_15

    .line 280
    iget-object v2, p0, Lokhttp3/internal/framed/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/framed/Header;

    invoke-direct {p0, p1}, Lokhttp3/internal/framed/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v3

    aget-object v2, v2, v3

    iget v2, v2, Lokhttp3/internal/framed/Header;->hpackSize:I

    sub-int/2addr v0, v2

    .line 284
    :cond_15
    iget v2, p0, Lokhttp3/internal/framed/Hpack$Reader;->maxDynamicTableByteCount:I

    if-le v0, v2, :cond_1d

    .line 285
    invoke-direct {p0}, Lokhttp3/internal/framed/Hpack$Reader;->clearDynamicTable()V

    .line 286
    return-void

    .line 290
    :cond_1d
    iget v3, p0, Lokhttp3/internal/framed/Hpack$Reader;->dynamicTableByteCount:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    .line 291
    .local v3, "bytesToRecover":I
    invoke-direct {p0, v3}, Lokhttp3/internal/framed/Hpack$Reader;->evictToRecoverBytes(I)I

    move-result v2

    .line 293
    .local v2, "entriesEvicted":I
    if-ne p1, v1, :cond_56

    .line 294
    iget v1, p0, Lokhttp3/internal/framed/Hpack$Reader;->headerCount:I

    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lokhttp3/internal/framed/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/framed/Header;

    array-length v5, v4

    if-le v1, v5, :cond_44

    .line 295
    array-length v1, v4

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lokhttp3/internal/framed/Header;

    .line 296
    .local v1, "doubled":[Lokhttp3/internal/framed/Header;
    const/4 v5, 0x0

    array-length v6, v4

    array-length v7, v4

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    iget-object v4, p0, Lokhttp3/internal/framed/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/framed/Header;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lokhttp3/internal/framed/Hpack$Reader;->nextHeaderIndex:I

    .line 298
    iput-object v1, p0, Lokhttp3/internal/framed/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/framed/Header;

    .line 300
    .end local v1    # "doubled":[Lokhttp3/internal/framed/Header;
    :cond_44
    iget v1, p0, Lokhttp3/internal/framed/Hpack$Reader;->nextHeaderIndex:I

    add-int/lit8 v4, v1, -0x1

    iput v4, p0, Lokhttp3/internal/framed/Hpack$Reader;->nextHeaderIndex:I

    move p1, v1

    .line 301
    iget-object v1, p0, Lokhttp3/internal/framed/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/framed/Header;

    aput-object p2, v1, p1

    .line 302
    iget v1, p0, Lokhttp3/internal/framed/Hpack$Reader;->headerCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lokhttp3/internal/framed/Hpack$Reader;->headerCount:I

    goto :goto_60

    .line 304
    :cond_56
    invoke-direct {p0, p1}, Lokhttp3/internal/framed/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr p1, v1

    .line 305
    iget-object v1, p0, Lokhttp3/internal/framed/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/framed/Header;

    aput-object p2, v1, p1

    .line 307
    :goto_60
    iget v1, p0, Lokhttp3/internal/framed/Hpack$Reader;->dynamicTableByteCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lokhttp3/internal/framed/Hpack$Reader;->dynamicTableByteCount:I

    .line 308
    return-void
.end method

.method private isStaticHeader(I)Z
    .registers 4
    .param p1, "index"    # I

    .line 271
    const/4 v0, 0x1

    if-ltz p1, :cond_c

    # getter for: Lokhttp3/internal/framed/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/framed/Header;
    invoke-static {}, Lokhttp3/internal/framed/Hpack;->access$000()[Lokhttp3/internal/framed/Header;

    move-result-object v1

    array-length v1, v1

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private readByte()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lokhttp3/internal/framed/Hpack$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private readIndexedHeader(I)V
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    invoke-direct {p0, p1}, Lokhttp3/internal/framed/Hpack$Reader;->isStaticHeader(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 221
    # getter for: Lokhttp3/internal/framed/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/framed/Header;
    invoke-static {}, Lokhttp3/internal/framed/Hpack;->access$000()[Lokhttp3/internal/framed/Header;

    move-result-object v0

    aget-object v0, v0, p1

    .line 222
    .local v0, "staticEntry":Lokhttp3/internal/framed/Header;
    iget-object v1, p0, Lokhttp3/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    .end local v0    # "staticEntry":Lokhttp3/internal/framed/Header;
    goto :goto_2d

    .line 224
    :cond_12
    # getter for: Lokhttp3/internal/framed/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/framed/Header;
    invoke-static {}, Lokhttp3/internal/framed/Hpack;->access$000()[Lokhttp3/internal/framed/Header;

    move-result-object v0

    array-length v0, v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lokhttp3/internal/framed/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v0

    .line 225
    .local v0, "dynamicTableIndex":I
    if-ltz v0, :cond_2e

    iget-object v1, p0, Lokhttp3/internal/framed/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/framed/Header;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-gt v0, v2, :cond_2e

    .line 228
    iget-object v2, p0, Lokhttp3/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    aget-object v1, v1, v0

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    .end local v0    # "dynamicTableIndex":I
    :goto_2d
    return-void

    .line 226
    .restart local v0    # "dynamicTableIndex":I
    :cond_2e
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
.end method

.method private readLiteralHeaderWithIncrementalIndexingIndexedName(I)V
    .registers 6
    .param p1, "nameIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    invoke-direct {p0, p1}, Lokhttp3/internal/framed/Hpack$Reader;->getName(I)Lokio/ByteString;

    move-result-object v0

    .line 252
    .local v0, "name":Lokio/ByteString;
    invoke-virtual {p0}, Lokhttp3/internal/framed/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object v1

    .line 253
    .local v1, "value":Lokio/ByteString;
    new-instance v2, Lokhttp3/internal/framed/Header;

    invoke-direct {v2, v0, v1}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    const/4 v3, -0x1

    invoke-direct {p0, v3, v2}, Lokhttp3/internal/framed/Hpack$Reader;->insertIntoDynamicTable(ILokhttp3/internal/framed/Header;)V

    .line 254
    return-void
.end method

.method private readLiteralHeaderWithIncrementalIndexingNewName()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    invoke-virtual {p0}, Lokhttp3/internal/framed/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object v0

    # invokes: Lokhttp3/internal/framed/Hpack;->checkLowercase(Lokio/ByteString;)Lokio/ByteString;
    invoke-static {v0}, Lokhttp3/internal/framed/Hpack;->access$100(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    .line 258
    .local v0, "name":Lokio/ByteString;
    invoke-virtual {p0}, Lokhttp3/internal/framed/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object v1

    .line 259
    .local v1, "value":Lokio/ByteString;
    new-instance v2, Lokhttp3/internal/framed/Header;

    invoke-direct {v2, v0, v1}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    const/4 v3, -0x1

    invoke-direct {p0, v3, v2}, Lokhttp3/internal/framed/Hpack$Reader;->insertIntoDynamicTable(ILokhttp3/internal/framed/Header;)V

    .line 260
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

    .line 238
    invoke-direct {p0, p1}, Lokhttp3/internal/framed/Hpack$Reader;->getName(I)Lokio/ByteString;

    move-result-object v0

    .line 239
    .local v0, "name":Lokio/ByteString;
    invoke-virtual {p0}, Lokhttp3/internal/framed/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object v1

    .line 240
    .local v1, "value":Lokio/ByteString;
    iget-object v2, p0, Lokhttp3/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    new-instance v3, Lokhttp3/internal/framed/Header;

    invoke-direct {v3, v0, v1}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    return-void
.end method

.method private readLiteralHeaderWithoutIndexingNewName()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    invoke-virtual {p0}, Lokhttp3/internal/framed/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object v0

    # invokes: Lokhttp3/internal/framed/Hpack;->checkLowercase(Lokio/ByteString;)Lokio/ByteString;
    invoke-static {v0}, Lokhttp3/internal/framed/Hpack;->access$100(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    .line 245
    .local v0, "name":Lokio/ByteString;
    invoke-virtual {p0}, Lokhttp3/internal/framed/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object v1

    .line 246
    .local v1, "value":Lokio/ByteString;
    iget-object v2, p0, Lokhttp3/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    new-instance v3, Lokhttp3/internal/framed/Header;

    invoke-direct {v3, v0, v1}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    return-void
.end method


# virtual methods
.method public getAndResetHeaderList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lokhttp3/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 215
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    iget-object v1, p0, Lokhttp3/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 216
    return-object v0
.end method

.method maxDynamicTableByteCount()I
    .registers 2

    .line 141
    iget v0, p0, Lokhttp3/internal/framed/Hpack$Reader;->maxDynamicTableByteCount:I

    return v0
.end method

.method readByteString()Lokio/ByteString;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    invoke-direct {p0}, Lokhttp3/internal/framed/Hpack$Reader;->readByte()I

    move-result v0

    .line 339
    .local v0, "firstByte":I
    and-int/lit16 v1, v0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    .line 340
    .local v1, "huffmanDecode":Z
    :goto_d
    const/16 v2, 0x7f

    invoke-virtual {p0, v0, v2}, Lokhttp3/internal/framed/Hpack$Reader;->readInt(II)I

    move-result v2

    .line 342
    .local v2, "length":I
    if-eqz v1, :cond_29

    .line 343
    invoke-static {}, Lokhttp3/internal/framed/Huffman;->get()Lokhttp3/internal/framed/Huffman;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/internal/framed/Hpack$Reader;->source:Lokio/BufferedSource;

    int-to-long v5, v2

    invoke-interface {v4, v5, v6}, Lokio/BufferedSource;->readByteArray(J)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lokhttp3/internal/framed/Huffman;->decode([B)[B

    move-result-object v3

    invoke-static {v3}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v3

    return-object v3

    .line 345
    :cond_29
    iget-object v3, p0, Lokhttp3/internal/framed/Hpack$Reader;->source:Lokio/BufferedSource;

    int-to-long v4, v2

    invoke-interface {v3, v4, v5}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v3

    return-object v3
.end method

.method readHeaders()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/framed/Hpack$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->exhausted()Z

    move-result v0

    if-nez v0, :cond_8f

    .line 186
    iget-object v0, p0, Lokhttp3/internal/framed/Hpack$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 187
    .local v0, "b":I
    const/16 v1, 0x80

    if-eq v0, v1, :cond_87

    .line 189
    and-int/lit16 v2, v0, 0x80

    if-ne v2, v1, :cond_24

    .line 190
    const/16 v1, 0x7f

    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/framed/Hpack$Reader;->readInt(II)I

    move-result v1

    .line 191
    .local v1, "index":I
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lokhttp3/internal/framed/Hpack$Reader;->readIndexedHeader(I)V

    .line 192
    .end local v1    # "index":I
    goto :goto_85

    :cond_24
    const/16 v1, 0x40

    if-ne v0, v1, :cond_2c

    .line 193
    invoke-direct {p0}, Lokhttp3/internal/framed/Hpack$Reader;->readLiteralHeaderWithIncrementalIndexingNewName()V

    goto :goto_85

    .line 194
    :cond_2c
    and-int/lit8 v2, v0, 0x40

    if-ne v2, v1, :cond_3c

    .line 195
    const/16 v1, 0x3f

    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/framed/Hpack$Reader;->readInt(II)I

    move-result v1

    .line 196
    .restart local v1    # "index":I
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lokhttp3/internal/framed/Hpack$Reader;->readLiteralHeaderWithIncrementalIndexingIndexedName(I)V

    .line 197
    .end local v1    # "index":I
    goto :goto_85

    :cond_3c
    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6f

    .line 198
    const/16 v1, 0x1f

    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/framed/Hpack$Reader;->readInt(II)I

    move-result v1

    iput v1, p0, Lokhttp3/internal/framed/Hpack$Reader;->maxDynamicTableByteCount:I

    .line 199
    if-ltz v1, :cond_54

    iget v2, p0, Lokhttp3/internal/framed/Hpack$Reader;->headerTableSizeSetting:I

    if-gt v1, v2, :cond_54

    .line 203
    invoke-direct {p0}, Lokhttp3/internal/framed/Hpack$Reader;->adjustDynamicTableByteCount()V

    goto :goto_85

    .line 201
    :cond_54
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid dynamic table size update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lokhttp3/internal/framed/Hpack$Reader;->maxDynamicTableByteCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    :cond_6f
    const/16 v1, 0x10

    if-eq v0, v1, :cond_82

    if-nez v0, :cond_76

    goto :goto_82

    .line 207
    :cond_76
    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/framed/Hpack$Reader;->readInt(II)I

    move-result v1

    .line 208
    .restart local v1    # "index":I
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lokhttp3/internal/framed/Hpack$Reader;->readLiteralHeaderWithoutIndexingIndexedName(I)V

    goto :goto_85

    .line 205
    .end local v1    # "index":I
    :cond_82
    :goto_82
    invoke-direct {p0}, Lokhttp3/internal/framed/Hpack$Reader;->readLiteralHeaderWithoutIndexingNewName()V

    .line 210
    .end local v0    # "b":I
    :goto_85
    goto/16 :goto_0

    .line 188
    .restart local v0    # "b":I
    :cond_87
    new-instance v1, Ljava/io/IOException;

    const-string v2, "index == 0"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    .end local v0    # "b":I
    :cond_8f
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

    .line 315
    and-int v0, p1, p2

    .line 316
    .local v0, "prefix":I
    if-ge v0, p2, :cond_5

    .line 317
    return v0

    .line 321
    :cond_5
    move v1, p2

    .line 322
    .local v1, "result":I
    const/4 v2, 0x0

    .line 324
    .local v2, "shift":I
    :goto_7
    invoke-direct {p0}, Lokhttp3/internal/framed/Hpack$Reader;->readByte()I

    move-result v3

    .line 325
    .local v3, "b":I
    and-int/lit16 v4, v3, 0x80

    if-eqz v4, :cond_16

    .line 326
    and-int/lit8 v4, v3, 0x7f

    shl-int/2addr v4, v2

    add-int/2addr v1, v4

    .line 327
    add-int/lit8 v2, v2, 0x7

    .line 332
    .end local v3    # "b":I
    goto :goto_7

    .line 329
    .restart local v3    # "b":I
    :cond_16
    shl-int v4, v3, v2

    add-int/2addr v1, v4

    .line 330
    nop

    .line 333
    .end local v3    # "b":I
    return v1
.end method
