.class Lcom/facebook/GraphRequest$Serializer;
.super Ljava/lang/Object;
.source "GraphRequest.java"

# interfaces
.implements Lcom/facebook/GraphRequest$KeyValueSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/GraphRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Serializer"
.end annotation


# instance fields
.field private firstWrite:Z

.field private final logger:Lcom/facebook/internal/Logger;

.field private final outputStream:Ljava/io/OutputStream;

.field private useUrlEncode:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/facebook/internal/Logger;Z)V
    .registers 5
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "logger"    # Lcom/facebook/internal/Logger;
    .param p3, "useUrlEncode"    # Z

    .line 2038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2035
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/GraphRequest$Serializer;->firstWrite:Z

    .line 2036
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/GraphRequest$Serializer;->useUrlEncode:Z

    .line 2039
    iput-object p1, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    .line 2040
    iput-object p2, p0, Lcom/facebook/GraphRequest$Serializer;->logger:Lcom/facebook/internal/Logger;

    .line 2041
    iput-boolean p3, p0, Lcom/facebook/GraphRequest$Serializer;->useUrlEncode:Z

    .line 2042
    return-void
.end method

.method private getInvalidTypeError()Ljava/lang/RuntimeException;
    .registers 3

    .line 2077
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value is not a supported type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public varargs write(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2230
    iget-boolean v0, p0, Lcom/facebook/GraphRequest$Serializer;->useUrlEncode:Z

    if-nez v0, :cond_3c

    .line 2231
    iget-boolean v0, p0, Lcom/facebook/GraphRequest$Serializer;->firstWrite:Z

    if-eqz v0, :cond_2e

    .line 2233
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    const-string v1, "--"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2234
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    # getter for: Lcom/facebook/GraphRequest;->MIME_BOUNDARY:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/GraphRequest;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2235
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    const-string v1, "\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/GraphRequest$Serializer;->firstWrite:Z

    .line 2238
    :cond_2e
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_51

    .line 2240
    :cond_3c
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2242
    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2241
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2242
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 2240
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2244
    :goto_51
    return-void
.end method

.method public writeBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2120
    const-string v0, "image/png"

    invoke-virtual {p0, p1, p1, v0}, Lcom/facebook/GraphRequest$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2122
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v1, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    const/16 v2, 0x64

    invoke-virtual {p2, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2123
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, ""

    invoke-virtual {p0, v1, v0}, Lcom/facebook/GraphRequest$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2124
    invoke-virtual {p0}, Lcom/facebook/GraphRequest$Serializer;->writeRecordBoundary()V

    .line 2125
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->logger:Lcom/facebook/internal/Logger;

    if-eqz v0, :cond_35

    .line 2126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<Image>"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2128
    :cond_35
    return-void
.end method

.method public writeBytes(Ljava/lang/String;[B)V
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2131
    const-string v0, "content/unknown"

    invoke-virtual {p0, p1, p1, v0}, Lcom/facebook/GraphRequest$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2132
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 2133
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, ""

    invoke-virtual {p0, v2, v1}, Lcom/facebook/GraphRequest$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2134
    invoke-virtual {p0}, Lcom/facebook/GraphRequest$Serializer;->writeRecordBoundary()V

    .line 2135
    iget-object v1, p0, Lcom/facebook/GraphRequest$Serializer;->logger:Lcom/facebook/internal/Logger;

    if-eqz v1, :cond_41

    .line 2136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    array-length v5, p2

    .line 2138
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v0, "<Data: %d>"

    invoke-static {v3, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2136
    invoke-virtual {v1, v2, v0}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2140
    :cond_41
    return-void
.end method

.method public writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2214
    iget-boolean v0, p0, Lcom/facebook/GraphRequest$Serializer;->useUrlEncode:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_37

    .line 2215
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string v3, "Content-Disposition: form-data; name=\"%s\""

    invoke-virtual {p0, v3, v0}, Lcom/facebook/GraphRequest$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2216
    if-eqz p2, :cond_1a

    .line 2217
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v2

    const-string v3, "; filename=\"%s\""

    invoke-virtual {p0, v3, v0}, Lcom/facebook/GraphRequest$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2219
    :cond_1a
    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, ""

    invoke-virtual {p0, v3, v0}, Lcom/facebook/GraphRequest$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2220
    if-eqz p3, :cond_31

    .line 2221
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "Content-Type"

    aput-object v4, v0, v2

    aput-object p3, v0, v1

    const-string v1, "%s: %s"

    invoke-virtual {p0, v1, v0}, Lcom/facebook/GraphRequest$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2223
    :cond_31
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v0}, Lcom/facebook/GraphRequest$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4a

    .line 2225
    :cond_37
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string v2, "%s="

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2227
    :goto_4a
    return-void
.end method

.method public writeContentUri(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2144
    if-nez p3, :cond_4

    .line 2145
    const-string p3, "content/unknown"

    .line 2147
    :cond_4
    invoke-virtual {p0, p1, p1, p3}, Lcom/facebook/GraphRequest$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2149
    const/4 v0, 0x0

    .line 2150
    .local v0, "totalBytes":I
    iget-object v1, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    instance-of v1, v1, Lcom/facebook/ProgressNoopOutputStream;

    if-eqz v1, :cond_1a

    .line 2152
    invoke-static {p2}, Lcom/facebook/internal/Utility;->getContentSize(Landroid/net/Uri;)J

    move-result-wide v1

    .line 2154
    .local v1, "contentSize":J
    iget-object v3, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    check-cast v3, Lcom/facebook/ProgressNoopOutputStream;

    invoke-virtual {v3, v1, v2}, Lcom/facebook/ProgressNoopOutputStream;->addProgress(J)V

    .line 2155
    .end local v1    # "contentSize":J
    goto :goto_2d

    .line 2157
    :cond_1a
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2158
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2159
    invoke-virtual {v1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 2160
    .local v1, "inputStream":Ljava/io/InputStream;
    iget-object v2, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    invoke-static {v1, v2}, Lcom/facebook/internal/Utility;->copyAndCloseInputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2163
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :goto_2d
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, ""

    invoke-virtual {p0, v3, v2}, Lcom/facebook/GraphRequest$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2164
    invoke-virtual {p0}, Lcom/facebook/GraphRequest$Serializer;->writeRecordBoundary()V

    .line 2165
    iget-object v2, p0, Lcom/facebook/GraphRequest$Serializer;->logger:Lcom/facebook/internal/Logger;

    if-eqz v2, :cond_63

    .line 2166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 2168
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v1, "<Data: %d>"

    invoke-static {v4, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2166
    invoke-virtual {v2, v3, v1}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2170
    :cond_63
    return-void
.end method

.method public writeFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .registers 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "descriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2177
    if-nez p3, :cond_4

    .line 2178
    const-string p3, "content/unknown"

    .line 2180
    :cond_4
    invoke-virtual {p0, p1, p1, p3}, Lcom/facebook/GraphRequest$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2182
    const/4 v0, 0x0

    .line 2184
    .local v0, "totalBytes":I
    iget-object v1, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    instance-of v2, v1, Lcom/facebook/ProgressNoopOutputStream;

    if-eqz v2, :cond_18

    .line 2186
    check-cast v1, Lcom/facebook/ProgressNoopOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/facebook/ProgressNoopOutputStream;->addProgress(J)V

    goto :goto_24

    .line 2188
    :cond_18
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 2190
    .local v1, "inputStream":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    iget-object v2, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    invoke-static {v1, v2}, Lcom/facebook/internal/Utility;->copyAndCloseInputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2192
    .end local v1    # "inputStream":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    :goto_24
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, ""

    invoke-virtual {p0, v3, v2}, Lcom/facebook/GraphRequest$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2193
    invoke-virtual {p0}, Lcom/facebook/GraphRequest$Serializer;->writeRecordBoundary()V

    .line 2194
    iget-object v2, p0, Lcom/facebook/GraphRequest$Serializer;->logger:Lcom/facebook/internal/Logger;

    if-eqz v2, :cond_5a

    .line 2195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 2197
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v1, "<Data: %d>"

    invoke-static {v4, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2195
    invoke-virtual {v2, v3, v1}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2199
    :cond_5a
    return-void
.end method

.method public varargs writeLine(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2247
    invoke-virtual {p0, p1, p2}, Lcom/facebook/GraphRequest$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2248
    iget-boolean v0, p0, Lcom/facebook/GraphRequest$Serializer;->useUrlEncode:Z

    if-nez v0, :cond_f

    .line 2249
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "\r\n"

    invoke-virtual {p0, v1, v0}, Lcom/facebook/GraphRequest$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2251
    :cond_f
    return-void
.end method

.method public writeObject(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest;)V
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "request"    # Lcom/facebook/GraphRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2045
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    instance-of v1, v0, Lcom/facebook/RequestOutputStream;

    if-eqz v1, :cond_b

    .line 2046
    check-cast v0, Lcom/facebook/RequestOutputStream;

    invoke-interface {v0, p3}, Lcom/facebook/RequestOutputStream;->setCurrentRequest(Lcom/facebook/GraphRequest;)V

    .line 2049
    :cond_b
    # invokes: Lcom/facebook/GraphRequest;->isSupportedParameterType(Ljava/lang/Object;)Z
    invoke-static {p2}, Lcom/facebook/GraphRequest;->access$000(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2050
    # invokes: Lcom/facebook/GraphRequest;->parameterToString(Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {p2}, Lcom/facebook/GraphRequest;->access$100(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/GraphRequest$Serializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6d

    .line 2051
    :cond_19
    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_24

    .line 2052
    move-object v0, p2

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/GraphRequest$Serializer;->writeBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_6d

    .line 2053
    :cond_24
    instance-of v0, p2, [B

    if-eqz v0, :cond_31

    .line 2054
    move-object v0, p2

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p0, p1, v0}, Lcom/facebook/GraphRequest$Serializer;->writeBytes(Ljava/lang/String;[B)V

    goto :goto_6d

    .line 2055
    :cond_31
    instance-of v0, p2, Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v0, :cond_3d

    .line 2056
    move-object v0, p2

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/GraphRequest$Serializer;->writeContentUri(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_6d

    .line 2057
    :cond_3d
    instance-of v0, p2, Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_48

    .line 2058
    move-object v0, p2

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/GraphRequest$Serializer;->writeFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    goto :goto_6d

    .line 2059
    :cond_48
    instance-of v0, p2, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    if-eqz v0, :cond_73

    .line 2060
    move-object v0, p2

    check-cast v0, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    .line 2062
    .local v0, "resourceWithMimeType":Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;
    invoke-virtual {v0}, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;->getResource()Landroid/os/Parcelable;

    move-result-object v1

    .line 2063
    .local v1, "resource":Landroid/os/Parcelable;
    invoke-virtual {v0}, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 2064
    .local v2, "mimeType":Ljava/lang/String;
    instance-of v3, v1, Landroid/os/ParcelFileDescriptor;

    if-eqz v3, :cond_62

    .line 2065
    move-object v3, v1

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1, v3, v2}, Lcom/facebook/GraphRequest$Serializer;->writeFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    goto :goto_6c

    .line 2066
    :cond_62
    instance-of v3, v1, Landroid/net/Uri;

    if-eqz v3, :cond_6e

    .line 2067
    move-object v3, v1

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {p0, p1, v3, v2}, Lcom/facebook/GraphRequest$Serializer;->writeContentUri(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 2071
    .end local v0    # "resourceWithMimeType":Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;
    .end local v1    # "resource":Landroid/os/Parcelable;
    .end local v2    # "mimeType":Ljava/lang/String;
    :goto_6c
    nop

    .line 2074
    :goto_6d
    return-void

    .line 2069
    .restart local v0    # "resourceWithMimeType":Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;
    .restart local v1    # "resource":Landroid/os/Parcelable;
    .restart local v2    # "mimeType":Ljava/lang/String;
    :cond_6e
    invoke-direct {p0}, Lcom/facebook/GraphRequest$Serializer;->getInvalidTypeError()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 2072
    .end local v0    # "resourceWithMimeType":Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;
    .end local v1    # "resource":Landroid/os/Parcelable;
    .end local v2    # "mimeType":Ljava/lang/String;
    :cond_73
    invoke-direct {p0}, Lcom/facebook/GraphRequest$Serializer;->getInvalidTypeError()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public writeRecordBoundary()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2202
    iget-boolean v0, p0, Lcom/facebook/GraphRequest$Serializer;->useUrlEncode:Z

    if-nez v0, :cond_14

    .line 2203
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    # getter for: Lcom/facebook/GraphRequest;->MIME_BOUNDARY:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/GraphRequest;->access$200()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "--%s"

    invoke-virtual {p0, v1, v0}, Lcom/facebook/GraphRequest$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1f

    .line 2205
    :cond_14
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    const-string v1, "&"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2207
    :goto_1f
    return-void
.end method

.method public writeRequestsAsJson(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/Collection;)V
    .registers 12
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "requestJsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Ljava/util/Collection<",
            "Lcom/facebook/GraphRequest;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2085
    .local p3, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/GraphRequest;>;"
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    instance-of v1, v0, Lcom/facebook/RequestOutputStream;

    if-nez v1, :cond_e

    .line 2086
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/GraphRequest$Serializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2087
    return-void

    .line 2090
    :cond_e
    check-cast v0, Lcom/facebook/RequestOutputStream;

    .line 2091
    .local v0, "requestOutputStream":Lcom/facebook/RequestOutputStream;
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v1}, Lcom/facebook/GraphRequest$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2092
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "["

    invoke-virtual {p0, v3, v2}, Lcom/facebook/GraphRequest$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2093
    const/4 v2, 0x0

    .line 2094
    .local v2, "i":I
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/GraphRequest;

    .line 2095
    .local v4, "request":Lcom/facebook/GraphRequest;
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 2096
    .local v5, "requestJson":Lorg/json/JSONObject;
    invoke-interface {v0, v4}, Lcom/facebook/RequestOutputStream;->setCurrentRequest(Lcom/facebook/GraphRequest;)V

    .line 2097
    const/4 v6, 0x1

    if-lez v2, :cond_45

    .line 2098
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v7, ",%s"

    invoke-virtual {p0, v7, v6}, Lcom/facebook/GraphRequest$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_52

    .line 2100
    :cond_45
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v7, "%s"

    invoke-virtual {p0, v7, v6}, Lcom/facebook/GraphRequest$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2102
    :goto_52
    nop

    .end local v4    # "request":Lcom/facebook/GraphRequest;
    .end local v5    # "requestJson":Lorg/json/JSONObject;
    add-int/lit8 v2, v2, 0x1

    .line 2103
    goto :goto_21

    .line 2104
    :cond_56
    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "]"

    invoke-virtual {p0, v3, v1}, Lcom/facebook/GraphRequest$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2105
    iget-object v1, p0, Lcom/facebook/GraphRequest$Serializer;->logger:Lcom/facebook/internal/Logger;

    if-eqz v1, :cond_7b

    .line 2106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2108
    :cond_7b
    return-void
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2111
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/facebook/GraphRequest$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string v1, "%s"

    invoke-virtual {p0, v1, v0}, Lcom/facebook/GraphRequest$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2113
    invoke-virtual {p0}, Lcom/facebook/GraphRequest$Serializer;->writeRecordBoundary()V

    .line 2114
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->logger:Lcom/facebook/internal/Logger;

    if-eqz v0, :cond_2c

    .line 2115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2117
    :cond_2c
    return-void
.end method
