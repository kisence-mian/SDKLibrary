.class abstract Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;
.super Lcom/tds/protobuf/CodedOutputStream;
.source "CodedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractBufferedEncoder"
.end annotation


# instance fields
.field final buffer:[B

.field final limit:I

.field position:I

.field totalBytesWritten:I


# direct methods
.method constructor <init>(I)V
    .registers 4
    .param p1, "bufferSize"    # I

    .line 1788
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tds/protobuf/CodedOutputStream;-><init>(Lcom/tds/protobuf/CodedOutputStream$1;)V

    .line 1789
    if-ltz p1, :cond_14

    .line 1796
    const/16 v0, 0x14

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer:[B

    .line 1797
    array-length v0, v0

    iput v0, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->limit:I

    .line 1798
    return-void

    .line 1790
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bufferSize must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method final buffer(B)V
    .registers 5
    .param p1, "value"    # B

    .line 1817
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer:[B

    iget v1, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    aput-byte p1, v0, v1

    .line 1818
    iget v0, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    .line 1819
    return-void
.end method

.method final bufferFixed32NoTag(I)V
    .registers 6
    .param p1, "value"    # I

    .line 1917
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer:[B

    iget v1, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1918
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1919
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1920
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 1921
    iget v0, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    .line 1922
    return-void
.end method

.method final bufferFixed64NoTag(J)V
    .registers 11
    .param p1, "value"    # J

    .line 1929
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer:[B

    iget v1, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    const-wide/16 v3, 0xff

    and-long v5, p1, v3

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    .line 1930
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    const/16 v5, 0x8

    shr-long v6, p1, v5

    and-long/2addr v6, v3

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    .line 1931
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    const/16 v6, 0x10

    shr-long v6, p1, v6

    and-long/2addr v6, v3

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v1

    .line 1932
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    const/16 v6, 0x18

    shr-long v6, p1, v6

    and-long/2addr v3, v6

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1933
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1934
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    const/16 v3, 0x28

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1935
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    const/16 v3, 0x30

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1936
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    const/16 v1, 0x38

    shr-long v3, p1, v1

    long-to-int v1, v3

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 1937
    iget v0, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    .line 1938
    return-void
.end method

.method final bufferInt32NoTag(I)V
    .registers 4
    .param p1, "value"    # I

    .line 1834
    if-ltz p1, :cond_6

    .line 1835
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->bufferUInt32NoTag(I)V

    goto :goto_a

    .line 1838
    :cond_6
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->bufferUInt64NoTag(J)V

    .line 1840
    :goto_a
    return-void
.end method

.method final bufferTag(II)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "wireType"    # I

    .line 1826
    invoke-static {p1, p2}, Lcom/tds/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->bufferUInt32NoTag(I)V

    .line 1827
    return-void
.end method

.method final bufferUInt32NoTag(I)V
    .registers 10
    .param p1, "value"    # I

    .line 1847
    # getter for: Lcom/tds/protobuf/CodedOutputStream;->HAS_UNSAFE_ARRAY_OPERATIONS:Z
    invoke-static {}, Lcom/tds/protobuf/CodedOutputStream;->access$100()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1848
    # getter for: Lcom/tds/protobuf/CodedOutputStream;->ARRAY_BASE_OFFSET:J
    invoke-static {}, Lcom/tds/protobuf/CodedOutputStream;->access$200()J

    move-result-wide v0

    iget v2, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 1849
    .local v0, "originalPos":J
    move-wide v2, v0

    .line 1851
    .local v2, "pos":J
    :goto_f
    and-int/lit8 v4, p1, -0x80

    const-wide/16 v5, 0x1

    if-nez v4, :cond_2c

    .line 1852
    iget-object v4, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer:[B

    add-long/2addr v5, v2

    .end local v2    # "pos":J
    .local v5, "pos":J
    int-to-byte v7, p1

    invoke-static {v4, v2, v3, v7}, Lcom/tds/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1853
    nop

    .line 1859
    sub-long v2, v5, v0

    long-to-int v2, v2

    .line 1860
    .local v2, "delta":I
    iget v3, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    .line 1861
    iget v3, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    .line 1862
    .end local v0    # "originalPos":J
    .end local v2    # "delta":I
    .end local v5    # "pos":J
    nop

    .line 1875
    return-void

    .line 1855
    .restart local v0    # "originalPos":J
    .local v2, "pos":J
    :cond_2c
    iget-object v4, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer:[B

    add-long/2addr v5, v2

    .end local v2    # "pos":J
    .restart local v5    # "pos":J
    and-int/lit8 v7, p1, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    invoke-static {v4, v2, v3, v7}, Lcom/tds/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1856
    ushr-int/lit8 p1, p1, 0x7

    move-wide v2, v5

    goto :goto_f

    .line 1864
    .end local v0    # "originalPos":J
    .end local v5    # "pos":J
    :cond_3b
    :goto_3b
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_51

    .line 1865
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer:[B

    iget v1, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 1866
    iget v0, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    .line 1867
    return-void

    .line 1869
    :cond_51
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer:[B

    iget v1, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1870
    iget v0, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    .line 1871
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_3b
.end method

.method final bufferUInt64NoTag(J)V
    .registers 16
    .param p1, "value"    # J

    .line 1882
    # getter for: Lcom/tds/protobuf/CodedOutputStream;->HAS_UNSAFE_ARRAY_OPERATIONS:Z
    invoke-static {}, Lcom/tds/protobuf/CodedOutputStream;->access$100()Z

    move-result v0

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    if-eqz v0, :cond_43

    .line 1883
    # getter for: Lcom/tds/protobuf/CodedOutputStream;->ARRAY_BASE_OFFSET:J
    invoke-static {}, Lcom/tds/protobuf/CodedOutputStream;->access$200()J

    move-result-wide v6

    iget v0, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    int-to-long v8, v0

    add-long/2addr v6, v8

    .line 1884
    .local v6, "originalPos":J
    move-wide v8, v6

    .line 1886
    .local v8, "pos":J
    :goto_14
    and-long v10, p1, v4

    cmp-long v0, v10, v2

    const-wide/16 v10, 0x1

    if-nez v0, :cond_34

    .line 1887
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer:[B

    add-long/2addr v10, v8

    .end local v8    # "pos":J
    .local v10, "pos":J
    long-to-int v1, p1

    int-to-byte v1, v1

    invoke-static {v0, v8, v9, v1}, Lcom/tds/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1888
    nop

    .line 1894
    sub-long v0, v10, v6

    long-to-int v0, v0

    .line 1895
    .local v0, "delta":I
    iget v1, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    .line 1896
    iget v1, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    .line 1897
    .end local v0    # "delta":I
    .end local v6    # "originalPos":J
    .end local v10    # "pos":J
    nop

    .line 1910
    return-void

    .line 1890
    .restart local v6    # "originalPos":J
    .restart local v8    # "pos":J
    :cond_34
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer:[B

    add-long/2addr v10, v8

    .end local v8    # "pos":J
    .restart local v10    # "pos":J
    long-to-int v12, p1

    and-int/lit8 v12, v12, 0x7f

    or-int/lit16 v12, v12, 0x80

    int-to-byte v12, v12

    invoke-static {v0, v8, v9, v12}, Lcom/tds/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1891
    ushr-long/2addr p1, v1

    move-wide v8, v10

    goto :goto_14

    .line 1899
    .end local v6    # "originalPos":J
    .end local v10    # "pos":J
    :cond_43
    :goto_43
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_5c

    .line 1900
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer:[B

    iget v1, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    long-to-int v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1901
    iget v0, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    .line 1902
    return-void

    .line 1904
    :cond_5c
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer:[B

    iget v6, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    long-to-int v7, p1

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 1905
    iget v0, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    .line 1906
    ushr-long/2addr p1, v1

    goto :goto_43
.end method

.method public final getTotalBytesWritten()I
    .registers 2

    .line 1809
    iget v0, p0, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    return v0
.end method

.method public final spaceLeft()I
    .registers 3

    .line 1802
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array or ByteBuffer."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
