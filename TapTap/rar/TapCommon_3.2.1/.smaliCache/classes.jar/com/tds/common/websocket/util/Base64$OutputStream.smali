.class public Lcom/tds/common/websocket/util/Base64$OutputStream;
.super Ljava/io/FilterOutputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/websocket/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputStream"
.end annotation


# instance fields
.field private b4:[B

.field private breakLines:Z

.field private buffer:[B

.field private bufferLength:I

.field private decodabet:[B

.field private encode:Z

.field private lineLength:I

.field private options:I

.field private position:I

.field private suspendEncoding:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 902
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/tds/common/websocket/util/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 903
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "options"    # I

    .line 924
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 925
    and-int/lit8 v0, p2, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    move v0, v2

    :goto_c
    iput-boolean v0, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->breakLines:Z

    .line 926
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_13

    goto :goto_14

    :cond_13
    move v1, v2

    :goto_14
    iput-boolean v1, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->encode:Z

    .line 927
    const/4 v0, 0x4

    if-eqz v1, :cond_1b

    const/4 v1, 0x3

    goto :goto_1c

    :cond_1b
    move v1, v0

    :goto_1c
    iput v1, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->bufferLength:I

    .line 928
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->buffer:[B

    .line 929
    iput v2, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->position:I

    .line 930
    iput v2, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->lineLength:I

    .line 931
    iput-boolean v2, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->suspendEncoding:Z

    .line 932
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->b4:[B

    .line 933
    iput p2, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->options:I

    .line 934
    # invokes: Lcom/tds/common/websocket/util/Base64;->getDecodabet(I)[B
    invoke-static {p2}, Lcom/tds/common/websocket/util/Base64;->access$000(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->decodabet:[B

    .line 935
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1039
    invoke-virtual {p0}, Lcom/tds/common/websocket/util/Base64$OutputStream;->flushBase64()V

    .line 1043
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 1045
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->buffer:[B

    .line 1046
    iput-object v0, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->out:Ljava/io/OutputStream;

    .line 1047
    return-void
.end method

.method public flushBase64()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1019
    iget v0, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->position:I

    if-lez v0, :cond_25

    .line 1020
    iget-boolean v0, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->encode:Z

    if-eqz v0, :cond_1d

    .line 1021
    iget-object v0, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->b4:[B

    iget-object v2, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->buffer:[B

    iget v3, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->position:I

    iget v4, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->options:I

    # invokes: Lcom/tds/common/websocket/util/Base64;->encode3to4([B[BII)[B
    invoke-static {v1, v2, v3, v4}, Lcom/tds/common/websocket/util/Base64;->access$100([B[BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1022
    const/4 v0, 0x0

    iput v0, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->position:I

    goto :goto_25

    .line 1025
    :cond_1d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64 input not properly padded."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1029
    :cond_25
    :goto_25
    return-void
.end method

.method public write(I)V
    .registers 8
    .param p1, "theByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 950
    iget-boolean v0, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->suspendEncoding:Z

    if-eqz v0, :cond_a

    .line 951
    iget-object v0, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 952
    return-void

    .line 956
    :cond_a
    iget-boolean v0, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->encode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_49

    .line 957
    iget-object v0, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->buffer:[B

    iget v2, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->position:I

    int-to-byte v4, p1

    aput-byte v4, v0, v2

    .line 958
    iget v0, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->bufferLength:I

    if-lt v3, v0, :cond_79

    .line 960
    iget-object v0, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->b4:[B

    iget-object v3, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->buffer:[B

    iget v4, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->bufferLength:I

    iget v5, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->options:I

    # invokes: Lcom/tds/common/websocket/util/Base64;->encode3to4([B[BII)[B
    invoke-static {v2, v3, v4, v5}, Lcom/tds/common/websocket/util/Base64;->access$100([B[BII)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 962
    iget v0, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->lineLength:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->lineLength:I

    .line 963
    iget-boolean v2, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->breakLines:Z

    if-eqz v2, :cond_46

    const/16 v2, 0x4c

    if-lt v0, v2, :cond_46

    .line 964
    iget-object v0, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->out:Ljava/io/OutputStream;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 965
    iput v1, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->lineLength:I

    .line 968
    :cond_46
    iput v1, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->position:I

    goto :goto_79

    .line 975
    :cond_49
    iget-object v0, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->decodabet:[B

    and-int/lit8 v2, p1, 0x7f

    aget-byte v2, v0, v2

    const/4 v3, -0x5

    if-le v2, v3, :cond_73

    .line 976
    iget-object v0, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->buffer:[B

    iget v2, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->position:I

    int-to-byte v4, p1

    aput-byte v4, v0, v2

    .line 977
    iget v2, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->bufferLength:I

    if-lt v3, v2, :cond_79

    .line 979
    iget-object v2, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->b4:[B

    iget v3, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->options:I

    # invokes: Lcom/tds/common/websocket/util/Base64;->decode4to3([BI[BII)I
    invoke-static {v0, v1, v2, v1, v3}, Lcom/tds/common/websocket/util/Base64;->access$200([BI[BII)I

    move-result v0

    .line 980
    .local v0, "len":I
    iget-object v2, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->b4:[B

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 981
    iput v1, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->position:I

    .line 982
    .end local v0    # "len":I
    goto :goto_79

    .line 984
    :cond_73
    and-int/lit8 v1, p1, 0x7f

    aget-byte v0, v0, v1

    if-ne v0, v3, :cond_7a

    .line 988
    :cond_79
    :goto_79
    return-void

    .line 985
    :cond_7a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid character in Base64 data."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([BII)V
    .registers 6
    .param p1, "theBytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1002
    iget-boolean v0, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->suspendEncoding:Z

    if-eqz v0, :cond_a

    .line 1003
    iget-object v0, p0, Lcom/tds/common/websocket/util/Base64$OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 1004
    return-void

    .line 1007
    :cond_a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, p3, :cond_17

    .line 1008
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/tds/common/websocket/util/Base64$OutputStream;->write(I)V

    .line 1007
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1011
    .end local v0    # "i":I
    :cond_17
    return-void
.end method
