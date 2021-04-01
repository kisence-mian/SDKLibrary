.class public interface abstract Lcom/sigmob/wire/okio/BufferedSource;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/wire/okio/Source;


# virtual methods
.method public abstract buffer()Lcom/sigmob/wire/okio/Buffer;
.end method

.method public abstract exhausted()Z
.end method

.method public abstract indexOf(B)J
.end method

.method public abstract indexOf(BJ)J
.end method

.method public abstract indexOf(Lcom/sigmob/wire/okio/ByteString;)J
.end method

.method public abstract indexOf(Lcom/sigmob/wire/okio/ByteString;J)J
.end method

.method public abstract indexOfElement(Lcom/sigmob/wire/okio/ByteString;)J
.end method

.method public abstract indexOfElement(Lcom/sigmob/wire/okio/ByteString;J)J
.end method

.method public abstract inputStream()Ljava/io/InputStream;
.end method

.method public abstract read([B)I
.end method

.method public abstract read([BII)I
.end method

.method public abstract readAll(Lcom/sigmob/wire/okio/Sink;)J
.end method

.method public abstract readByte()B
.end method

.method public abstract readByteArray()[B
.end method

.method public abstract readByteArray(J)[B
.end method

.method public abstract readByteString()Lcom/sigmob/wire/okio/ByteString;
.end method

.method public abstract readByteString(J)Lcom/sigmob/wire/okio/ByteString;
.end method

.method public abstract readDecimalLong()J
.end method

.method public abstract readFully(Lcom/sigmob/wire/okio/Buffer;J)V
.end method

.method public abstract readFully([B)V
.end method

.method public abstract readHexadecimalUnsignedLong()J
.end method

.method public abstract readInt()I
.end method

.method public abstract readIntLe()I
.end method

.method public abstract readLong()J
.end method

.method public abstract readLongLe()J
.end method

.method public abstract readShort()S
.end method

.method public abstract readShortLe()S
.end method

.method public abstract readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public abstract readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public abstract readUtf8()Ljava/lang/String;
.end method

.method public abstract readUtf8(J)Ljava/lang/String;
.end method

.method public abstract readUtf8CodePoint()I
.end method

.method public abstract readUtf8Line()Ljava/lang/String;
.end method

.method public abstract readUtf8LineStrict()Ljava/lang/String;
.end method

.method public abstract request(J)Z
.end method

.method public abstract require(J)V
.end method

.method public abstract select(Lcom/sigmob/wire/okio/Options;)I
.end method

.method public abstract skip(J)V
.end method
