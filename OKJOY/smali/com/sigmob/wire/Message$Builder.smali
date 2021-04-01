.class public abstract Lcom/sigmob/wire/Message$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/sigmob/wire/Message",
        "<TM;TB;>;B:",
        "Lcom/sigmob/wire/Message$Builder",
        "<TM;TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field transient unknownFieldsBuffer:Lcom/sigmob/wire/okio/Buffer;

.field transient unknownFieldsByteString:Lcom/sigmob/wire/okio/ByteString;

.field transient unknownFieldsWriter:Lcom/sigmob/wire/ProtoWriter;


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    iput-object v0, p0, Lcom/sigmob/wire/Message$Builder;->unknownFieldsByteString:Lcom/sigmob/wire/okio/ByteString;

    return-void
.end method

.method private prepareForNewUnknownFields()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/wire/Message$Builder;->unknownFieldsBuffer:Lcom/sigmob/wire/okio/Buffer;

    if-nez v0, :cond_1f

    new-instance v0, Lcom/sigmob/wire/okio/Buffer;

    invoke-direct {v0}, Lcom/sigmob/wire/okio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/sigmob/wire/Message$Builder;->unknownFieldsBuffer:Lcom/sigmob/wire/okio/Buffer;

    new-instance v0, Lcom/sigmob/wire/ProtoWriter;

    iget-object v1, p0, Lcom/sigmob/wire/Message$Builder;->unknownFieldsBuffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-direct {v0, v1}, Lcom/sigmob/wire/ProtoWriter;-><init>(Lcom/sigmob/wire/okio/BufferedSink;)V

    iput-object v0, p0, Lcom/sigmob/wire/Message$Builder;->unknownFieldsWriter:Lcom/sigmob/wire/ProtoWriter;

    :try_start_14
    iget-object v0, p0, Lcom/sigmob/wire/Message$Builder;->unknownFieldsWriter:Lcom/sigmob/wire/ProtoWriter;

    iget-object v1, p0, Lcom/sigmob/wire/Message$Builder;->unknownFieldsByteString:Lcom/sigmob/wire/okio/ByteString;

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/ProtoWriter;->writeBytes(Lcom/sigmob/wire/okio/ByteString;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1b} :catch_20

    sget-object v0, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    iput-object v0, p0, Lcom/sigmob/wire/Message$Builder;->unknownFieldsByteString:Lcom/sigmob/wire/okio/ByteString;

    :cond_1f
    return-void

    :catch_20
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public final addUnknownField(ILcom/sigmob/wire/FieldEncoding;Ljava/lang/Object;)Lcom/sigmob/wire/Message$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sigmob/wire/FieldEncoding;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/sigmob/wire/Message$Builder",
            "<TM;TB;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;->prepareForNewUnknownFields()V

    :try_start_3
    invoke-virtual {p2}, Lcom/sigmob/wire/FieldEncoding;->rawProtoAdapter()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/wire/Message$Builder;->unknownFieldsWriter:Lcom/sigmob/wire/ProtoWriter;

    invoke-virtual {v0, v1, p1, p3}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final addUnknownFields(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/Message$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/wire/okio/ByteString;",
            ")",
            "Lcom/sigmob/wire/Message$Builder",
            "<TM;TB;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v0

    if-lez v0, :cond_e

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;->prepareForNewUnknownFields()V

    :try_start_9
    iget-object v0, p0, Lcom/sigmob/wire/Message$Builder;->unknownFieldsWriter:Lcom/sigmob/wire/ProtoWriter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoWriter;->writeBytes(Lcom/sigmob/wire/okio/ByteString;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_f

    :cond_e
    return-object p0

    :catch_f
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public abstract build()Lcom/sigmob/wire/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation
.end method

.method public final buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sigmob/wire/Message$Builder;->unknownFieldsBuffer:Lcom/sigmob/wire/okio/Buffer;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sigmob/wire/Message$Builder;->unknownFieldsBuffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Buffer;->readByteString()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/Message$Builder;->unknownFieldsByteString:Lcom/sigmob/wire/okio/ByteString;

    iput-object v1, p0, Lcom/sigmob/wire/Message$Builder;->unknownFieldsBuffer:Lcom/sigmob/wire/okio/Buffer;

    iput-object v1, p0, Lcom/sigmob/wire/Message$Builder;->unknownFieldsWriter:Lcom/sigmob/wire/ProtoWriter;

    :cond_11
    iget-object v0, p0, Lcom/sigmob/wire/Message$Builder;->unknownFieldsByteString:Lcom/sigmob/wire/okio/ByteString;

    return-object v0
.end method

.method public final clearUnknownFields()Lcom/sigmob/wire/Message$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sigmob/wire/Message$Builder",
            "<TM;TB;>;"
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v0, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    iput-object v0, p0, Lcom/sigmob/wire/Message$Builder;->unknownFieldsByteString:Lcom/sigmob/wire/okio/ByteString;

    iget-object v0, p0, Lcom/sigmob/wire/Message$Builder;->unknownFieldsBuffer:Lcom/sigmob/wire/okio/Buffer;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sigmob/wire/Message$Builder;->unknownFieldsBuffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Buffer;->clear()V

    iput-object v1, p0, Lcom/sigmob/wire/Message$Builder;->unknownFieldsBuffer:Lcom/sigmob/wire/okio/Buffer;

    :cond_10
    iput-object v1, p0, Lcom/sigmob/wire/Message$Builder;->unknownFieldsWriter:Lcom/sigmob/wire/ProtoWriter;

    return-object p0
.end method
