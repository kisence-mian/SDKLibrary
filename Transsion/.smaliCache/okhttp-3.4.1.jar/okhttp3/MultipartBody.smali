.class public final Lokhttp3/MultipartBody;
.super Lokhttp3/RequestBody;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/MultipartBody$Builder;,
        Lokhttp3/MultipartBody$Part;
    }
.end annotation


# static fields
.field public static final ALTERNATIVE:Lokhttp3/MediaType;

.field private static final COLONSPACE:[B

.field private static final CRLF:[B

.field private static final DASHDASH:[B

.field public static final DIGEST:Lokhttp3/MediaType;

.field public static final FORM:Lokhttp3/MediaType;

.field public static final MIXED:Lokhttp3/MediaType;

.field public static final PARALLEL:Lokhttp3/MediaType;


# instance fields
.field private final boundary:Lokio/ByteString;

.field private contentLength:J

.field private final contentType:Lokhttp3/MediaType;

.field private final originalType:Lokhttp3/MediaType;

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    const-string v0, "multipart/mixed"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->MIXED:Lokhttp3/MediaType;

    .line 41
    const-string v0, "multipart/alternative"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->ALTERNATIVE:Lokhttp3/MediaType;

    .line 48
    const-string v0, "multipart/digest"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->DIGEST:Lokhttp3/MediaType;

    .line 54
    const-string v0, "multipart/parallel"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->PARALLEL:Lokhttp3/MediaType;

    .line 61
    const-string v0, "multipart/form-data"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    .line 63
    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_40

    sput-object v1, Lokhttp3/MultipartBody;->COLONSPACE:[B

    .line 64
    new-array v1, v0, [B

    fill-array-data v1, :array_46

    sput-object v1, Lokhttp3/MultipartBody;->CRLF:[B

    .line 65
    new-array v0, v0, [B

    fill-array-data v0, :array_4c

    sput-object v0, Lokhttp3/MultipartBody;->DASHDASH:[B

    return-void

    nop

    :array_40
    .array-data 1
        0x3at
        0x20t
    .end array-data

    nop

    :array_46
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_4c
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method constructor <init>(Lokio/ByteString;Lokhttp3/MediaType;Ljava/util/List;)V
    .registers 6
    .param p1, "boundary"    # Lokio/ByteString;
    .param p2, "type"    # Lokhttp3/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/ByteString;",
            "Lokhttp3/MediaType;",
            "Ljava/util/List<",
            "Lokhttp3/MultipartBody$Part;",
            ">;)V"
        }
    .end annotation

    .line 73
    .local p3, "parts":Ljava/util/List;, "Ljava/util/List<Lokhttp3/MultipartBody$Part;>;"
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 71
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lokhttp3/MultipartBody;->contentLength:J

    .line 74
    iput-object p1, p0, Lokhttp3/MultipartBody;->boundary:Lokio/ByteString;

    .line 75
    iput-object p2, p0, Lokhttp3/MultipartBody;->originalType:Lokhttp3/MediaType;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/MultipartBody;->contentType:Lokhttp3/MediaType;

    .line 77
    invoke-static {p3}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    .line 78
    return-void
.end method

.method static appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 7
    .param p0, "target"    # Ljava/lang/StringBuilder;
    .param p1, "key"    # Ljava/lang/String;

    .line 201
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    :goto_a
    if-ge v1, v2, :cond_2c

    .line 203
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 204
    .local v3, "ch":C
    sparse-switch v3, :sswitch_data_30

    .line 215
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 212
    :sswitch_17
    const-string v4, "%22"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    goto :goto_29

    .line 209
    :sswitch_1d
    const-string v4, "%0D"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    goto :goto_29

    .line 206
    :sswitch_23
    const-string v4, "%0A"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    nop

    .line 202
    .end local v3    # "ch":C
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 219
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_2c
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    return-object p0

    :sswitch_data_30
    .sparse-switch
        0xa -> :sswitch_23
        0xd -> :sswitch_1d
        0x22 -> :sswitch_17
    .end sparse-switch
.end method

.method private writeOrCountBytes(Lokio/BufferedSink;Z)J
    .registers 19
    .param p1, "sink"    # Lokio/BufferedSink;
    .param p2, "countBytes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    .line 125
    .local v1, "byteCount":J
    const/4 v3, 0x0

    .line 126
    .local v3, "byteCountBuffer":Lokio/Buffer;
    if-eqz p2, :cond_e

    .line 127
    new-instance v4, Lokio/Buffer;

    invoke-direct {v4}, Lokio/Buffer;-><init>()V

    move-object v3, v4

    .end local p1    # "sink":Lokio/BufferedSink;
    .local v4, "sink":Lokio/BufferedSink;
    goto :goto_10

    .line 126
    .end local v4    # "sink":Lokio/BufferedSink;
    .restart local p1    # "sink":Lokio/BufferedSink;
    :cond_e
    move-object/from16 v4, p1

    .line 130
    .end local p1    # "sink":Lokio/BufferedSink;
    .restart local v4    # "sink":Lokio/BufferedSink;
    :goto_10
    const/4 v5, 0x0

    .local v5, "p":I
    iget-object v6, v0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "partCount":I
    :goto_17
    if-ge v5, v6, :cond_ab

    .line 131
    iget-object v7, v0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lokhttp3/MultipartBody$Part;

    .line 132
    .local v7, "part":Lokhttp3/MultipartBody$Part;
    # getter for: Lokhttp3/MultipartBody$Part;->headers:Lokhttp3/Headers;
    invoke-static {v7}, Lokhttp3/MultipartBody$Part;->access$000(Lokhttp3/MultipartBody$Part;)Lokhttp3/Headers;

    move-result-object v8

    .line 133
    .local v8, "headers":Lokhttp3/Headers;
    # getter for: Lokhttp3/MultipartBody$Part;->body:Lokhttp3/RequestBody;
    invoke-static {v7}, Lokhttp3/MultipartBody$Part;->access$100(Lokhttp3/MultipartBody$Part;)Lokhttp3/RequestBody;

    move-result-object v9

    .line 135
    .local v9, "body":Lokhttp3/RequestBody;
    sget-object v10, Lokhttp3/MultipartBody;->DASHDASH:[B

    invoke-interface {v4, v10}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 136
    iget-object v10, v0, Lokhttp3/MultipartBody;->boundary:Lokio/ByteString;

    invoke-interface {v4, v10}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    .line 137
    sget-object v10, Lokhttp3/MultipartBody;->CRLF:[B

    invoke-interface {v4, v10}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 139
    if-eqz v8, :cond_5f

    .line 140
    const/4 v10, 0x0

    .local v10, "h":I
    invoke-virtual {v8}, Lokhttp3/Headers;->size()I

    move-result v11

    .local v11, "headerCount":I
    :goto_3f
    if-ge v10, v11, :cond_5f

    .line 141
    invoke-virtual {v8, v10}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v12

    sget-object v13, Lokhttp3/MultipartBody;->COLONSPACE:[B

    .line 142
    invoke-interface {v12, v13}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    move-result-object v12

    .line 143
    invoke-virtual {v8, v10}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v12

    sget-object v13, Lokhttp3/MultipartBody;->CRLF:[B

    .line 144
    invoke-interface {v12, v13}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 140
    add-int/lit8 v10, v10, 0x1

    goto :goto_3f

    .line 148
    .end local v10    # "h":I
    .end local v11    # "headerCount":I
    :cond_5f
    invoke-virtual {v9}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v10

    .line 149
    .local v10, "contentType":Lokhttp3/MediaType;
    if-eqz v10, :cond_78

    .line 150
    const-string v11, "Content-Type: "

    invoke-interface {v4, v11}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v11

    .line 151
    invoke-virtual {v10}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v11

    sget-object v12, Lokhttp3/MultipartBody;->CRLF:[B

    .line 152
    invoke-interface {v11, v12}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 155
    :cond_78
    invoke-virtual {v9}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v11

    .line 156
    .local v11, "contentLength":J
    const-wide/16 v13, -0x1

    cmp-long v15, v11, v13

    if-eqz v15, :cond_92

    .line 157
    const-string v13, "Content-Length: "

    invoke-interface {v4, v13}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v13

    .line 158
    invoke-interface {v13, v11, v12}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v13

    sget-object v14, Lokhttp3/MultipartBody;->CRLF:[B

    .line 159
    invoke-interface {v13, v14}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    goto :goto_98

    .line 160
    :cond_92
    if-eqz p2, :cond_98

    .line 162
    invoke-virtual {v3}, Lokio/Buffer;->clear()V

    .line 163
    return-wide v13

    .line 166
    :cond_98
    :goto_98
    sget-object v13, Lokhttp3/MultipartBody;->CRLF:[B

    invoke-interface {v4, v13}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 168
    if-eqz p2, :cond_a1

    .line 169
    add-long/2addr v1, v11

    goto :goto_a4

    .line 171
    :cond_a1
    invoke-virtual {v9, v4}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 174
    :goto_a4
    invoke-interface {v4, v13}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 130
    .end local v7    # "part":Lokhttp3/MultipartBody$Part;
    .end local v8    # "headers":Lokhttp3/Headers;
    .end local v9    # "body":Lokhttp3/RequestBody;
    .end local v10    # "contentType":Lokhttp3/MediaType;
    .end local v11    # "contentLength":J
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_17

    .line 177
    .end local v5    # "p":I
    .end local v6    # "partCount":I
    :cond_ab
    sget-object v5, Lokhttp3/MultipartBody;->DASHDASH:[B

    invoke-interface {v4, v5}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 178
    iget-object v6, v0, Lokhttp3/MultipartBody;->boundary:Lokio/ByteString;

    invoke-interface {v4, v6}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    .line 179
    invoke-interface {v4, v5}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 180
    sget-object v5, Lokhttp3/MultipartBody;->CRLF:[B

    invoke-interface {v4, v5}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 182
    if-eqz p2, :cond_c7

    .line 183
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v5

    add-long/2addr v1, v5

    .line 184
    invoke-virtual {v3}, Lokio/Buffer;->clear()V

    .line 187
    :cond_c7
    return-wide v1
.end method


# virtual methods
.method public boundary()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Lokhttp3/MultipartBody;->boundary:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public contentLength()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget-wide v0, p0, Lokhttp3/MultipartBody;->contentLength:J

    .line 108
    .local v0, "result":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_9

    return-wide v0

    .line 109
    :cond_9
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lokhttp3/MultipartBody;->writeOrCountBytes(Lokio/BufferedSink;Z)J

    move-result-wide v2

    iput-wide v2, p0, Lokhttp3/MultipartBody;->contentLength:J

    return-wide v2
.end method

.method public contentType()Lokhttp3/MediaType;
    .registers 2

    .line 103
    iget-object v0, p0, Lokhttp3/MultipartBody;->contentType:Lokhttp3/MediaType;

    return-object v0
.end method

.method public part(I)Lokhttp3/MultipartBody$Part;
    .registers 3
    .param p1, "index"    # I

    .line 98
    iget-object v0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/MultipartBody$Part;

    return-object v0
.end method

.method public parts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 90
    iget-object v0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public type()Lokhttp3/MediaType;
    .registers 2

    .line 81
    iget-object v0, p0, Lokhttp3/MultipartBody;->originalType:Lokhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .registers 3
    .param p1, "sink"    # Lokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/MultipartBody;->writeOrCountBytes(Lokio/BufferedSink;Z)J

    .line 114
    return-void
.end method
