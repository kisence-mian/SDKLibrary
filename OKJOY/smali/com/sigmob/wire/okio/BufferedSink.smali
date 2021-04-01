.class public interface abstract Lcom/sigmob/wire/okio/BufferedSink;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/wire/okio/Sink;


# virtual methods
.method public abstract buffer()Lcom/sigmob/wire/okio/Buffer;
.end method

.method public abstract emit()Lcom/sigmob/wire/okio/BufferedSink;
.end method

.method public abstract emitCompleteSegments()Lcom/sigmob/wire/okio/BufferedSink;
.end method

.method public abstract flush()V
.end method

.method public abstract outputStream()Ljava/io/OutputStream;
.end method

.method public abstract write(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/okio/BufferedSink;
.end method

.method public abstract write(Lcom/sigmob/wire/okio/Source;J)Lcom/sigmob/wire/okio/BufferedSink;
.end method

.method public abstract write([B)Lcom/sigmob/wire/okio/BufferedSink;
.end method

.method public abstract write([BII)Lcom/sigmob/wire/okio/BufferedSink;
.end method

.method public abstract writeAll(Lcom/sigmob/wire/okio/Source;)J
.end method

.method public abstract writeByte(I)Lcom/sigmob/wire/okio/BufferedSink;
.end method

.method public abstract writeDecimalLong(J)Lcom/sigmob/wire/okio/BufferedSink;
.end method

.method public abstract writeHexadecimalUnsignedLong(J)Lcom/sigmob/wire/okio/BufferedSink;
.end method

.method public abstract writeInt(I)Lcom/sigmob/wire/okio/BufferedSink;
.end method

.method public abstract writeIntLe(I)Lcom/sigmob/wire/okio/BufferedSink;
.end method

.method public abstract writeLong(J)Lcom/sigmob/wire/okio/BufferedSink;
.end method

.method public abstract writeLongLe(J)Lcom/sigmob/wire/okio/BufferedSink;
.end method

.method public abstract writeShort(I)Lcom/sigmob/wire/okio/BufferedSink;
.end method

.method public abstract writeShortLe(I)Lcom/sigmob/wire/okio/BufferedSink;
.end method

.method public abstract writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/sigmob/wire/okio/BufferedSink;
.end method

.method public abstract writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/sigmob/wire/okio/BufferedSink;
.end method

.method public abstract writeUtf8(Ljava/lang/String;)Lcom/sigmob/wire/okio/BufferedSink;
.end method

.method public abstract writeUtf8(Ljava/lang/String;II)Lcom/sigmob/wire/okio/BufferedSink;
.end method

.method public abstract writeUtf8CodePoint(I)Lcom/sigmob/wire/okio/BufferedSink;
.end method
