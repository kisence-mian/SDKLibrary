.class public final Lokhttp3/logging/HttpLoggingInterceptor;
.super Ljava/lang/Object;
.source "HttpLoggingInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/logging/HttpLoggingInterceptor$Logger;,
        Lokhttp3/logging/HttpLoggingInterceptor$Level;
    }
.end annotation


# static fields
.field private static final UTF8:Ljava/nio/charset/Charset;


# instance fields
.field private volatile headersToRedact:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

.field private final logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokhttp3/logging/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 120
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->DEFAULT:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    invoke-direct {p0, v0}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V
    .registers 3
    .param p1, "logger"    # Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->headersToRedact:Ljava/util/Set;

    .line 138
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    iput-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 124
    iput-object p1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    .line 125
    return-void
.end method

.method private static bodyHasUnknownEncoding(Lokhttp3/Headers;)Z
    .registers 3
    .param p0, "headers"    # Lokhttp3/Headers;

    .prologue
    .line 330
    const-string v1, "Content-Encoding"

    invoke-virtual {p0, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "contentEncoding":Ljava/lang/String;
    if-eqz v0, :cond_1a

    const-string v1, "identity"

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "gzip"

    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v1, 0x1

    .line 331
    :goto_19
    return v1

    .line 333
    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method static isPlaintext(Lokio/Buffer;)Z
    .registers 11
    .param p0, "buffer"    # Lokio/Buffer;

    .prologue
    const-wide/16 v4, 0x40

    const/4 v9, 0x0

    .line 311
    :try_start_3
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 312
    .local v1, "prefix":Lokio/Buffer;
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-gez v0, :cond_14

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v4

    .line 313
    .local v4, "byteCount":J
    :cond_14
    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 314
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1b
    const/16 v0, 0x10

    if-ge v8, v0, :cond_25

    .line 315
    invoke-virtual {v1}, Lokio/Buffer;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 323
    :cond_25
    const/4 v0, 0x1

    .line 325
    .end local v1    # "prefix":Lokio/Buffer;
    .end local v4    # "byteCount":J
    .end local v8    # "i":I
    :goto_26
    return v0

    .line 318
    .restart local v1    # "prefix":Lokio/Buffer;
    .restart local v4    # "byteCount":J
    .restart local v8    # "i":I
    :cond_27
    invoke-virtual {v1}, Lokio/Buffer;->readUtf8CodePoint()I

    move-result v6

    .line 319
    .local v6, "codePoint":I
    invoke-static {v6}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(I)Z
    :try_end_34
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_34} :catch_3c

    move-result v0

    if-nez v0, :cond_39

    move v0, v9

    .line 320
    goto :goto_26

    .line 314
    :cond_39
    add-int/lit8 v8, v8, 0x1

    goto :goto_1b

    .line 324
    .end local v1    # "prefix":Lokio/Buffer;
    .end local v4    # "byteCount":J
    .end local v6    # "codePoint":I
    .end local v8    # "i":I
    :catch_3c
    move-exception v7

    .local v7, "e":Ljava/io/EOFException;
    move v0, v9

    .line 325
    goto :goto_26
.end method

.method private logHeader(Lokhttp3/Headers;I)V
    .registers 7
    .param p1, "headers"    # Lokhttp3/Headers;
    .param p2, "i"    # I

    .prologue
    .line 301
    iget-object v1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->headersToRedact:Ljava/util/Set;

    invoke-virtual {p1, p2}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v0, "\u2588\u2588"

    .line 302
    .local v0, "value":Ljava/lang/String;
    :goto_e
    iget-object v1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 303
    return-void

    .line 301
    .end local v0    # "value":Ljava/lang/String;
    :cond_2f
    invoke-virtual {p1, p2}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method


# virtual methods
.method public getLevel()Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-object v0
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .registers 40
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    move-object/from16 v20, v0

    .line 154
    .local v20, "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v24

    .line 155
    .local v24, "request":Lokhttp3/Request;
    sget-object v34, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_1b

    .line 156
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v27

    .line 297
    :cond_1a
    :goto_1a
    return-object v27

    .line 159
    :cond_1b
    sget-object v34, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_14f

    const/16 v21, 0x1

    .line 160
    .local v21, "logBody":Z
    :goto_25
    if-nez v21, :cond_2f

    sget-object v34, Lokhttp3/logging/HttpLoggingInterceptor$Level;->HEADERS:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_153

    :cond_2f
    const/16 v22, 0x1

    .line 162
    .local v22, "logHeaders":Z
    :goto_31
    invoke-virtual/range {v24 .. v24}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v25

    .line 163
    .local v25, "requestBody":Lokhttp3/RequestBody;
    if-eqz v25, :cond_157

    const/16 v17, 0x1

    .line 165
    .local v17, "hasRequestBody":Z
    :goto_39
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->connection()Lokhttp3/Connection;

    move-result-object v8

    .line 166
    .local v8, "connection":Lokhttp3/Connection;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "--> "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    .line 167
    invoke-virtual/range {v24 .. v24}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const/16 v35, 0x20

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v34

    .line 168
    invoke-virtual/range {v24 .. v24}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    .line 169
    if-eqz v8, :cond_15b

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, " "

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-interface {v8}, Lokhttp3/Connection;->protocol()Lokhttp3/Protocol;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    :goto_7f
    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 170
    .local v26, "requestStartMessage":Ljava/lang/String;
    if-nez v22, :cond_b8

    if-eqz v17, :cond_b8

    .line 171
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " ("

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v25 .. v25}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v36

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "-byte body)"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 173
    :cond_b8
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 175
    if-eqz v22, :cond_183

    .line 176
    if-eqz v17, :cond_119

    .line 179
    invoke-virtual/range {v25 .. v25}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v34

    if-eqz v34, :cond_ef

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Content-Type: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v25 .. v25}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-interface/range {v34 .. v35}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 182
    :cond_ef
    invoke-virtual/range {v25 .. v25}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v34

    const-wide/16 v36, -0x1

    cmp-long v34, v34, v36

    if-eqz v34, :cond_119

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Content-Length: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v25 .. v25}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v36

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-interface/range {v34 .. v35}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 187
    :cond_119
    invoke-virtual/range {v24 .. v24}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v18

    .line 188
    .local v18, "headers":Lokhttp3/Headers;
    const/16 v19, 0x0

    .local v19, "i":I
    invoke-virtual/range {v18 .. v18}, Lokhttp3/Headers;->size()I

    move-result v12

    .local v12, "count":I
    :goto_123
    move/from16 v0, v19

    if-ge v0, v12, :cond_15f

    .line 189
    invoke-virtual/range {v18 .. v19}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v23

    .line 191
    .local v23, "name":Ljava/lang/String;
    const-string v34, "Content-Type"

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_14c

    const-string v34, "Content-Length"

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_14c

    .line 192
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;->logHeader(Lokhttp3/Headers;I)V

    .line 188
    :cond_14c
    add-int/lit8 v19, v19, 0x1

    goto :goto_123

    .line 159
    .end local v8    # "connection":Lokhttp3/Connection;
    .end local v12    # "count":I
    .end local v17    # "hasRequestBody":Z
    .end local v18    # "headers":Lokhttp3/Headers;
    .end local v19    # "i":I
    .end local v21    # "logBody":Z
    .end local v22    # "logHeaders":Z
    .end local v23    # "name":Ljava/lang/String;
    .end local v25    # "requestBody":Lokhttp3/RequestBody;
    .end local v26    # "requestStartMessage":Ljava/lang/String;
    :cond_14f
    const/16 v21, 0x0

    goto/16 :goto_25

    .line 160
    .restart local v21    # "logBody":Z
    :cond_153
    const/16 v22, 0x0

    goto/16 :goto_31

    .line 163
    .restart local v22    # "logHeaders":Z
    .restart local v25    # "requestBody":Lokhttp3/RequestBody;
    :cond_157
    const/16 v17, 0x0

    goto/16 :goto_39

    .line 169
    .restart local v8    # "connection":Lokhttp3/Connection;
    .restart local v17    # "hasRequestBody":Z
    :cond_15b
    const-string v34, ""

    goto/16 :goto_7f

    .line 196
    .restart local v12    # "count":I
    .restart local v18    # "headers":Lokhttp3/Headers;
    .restart local v19    # "i":I
    .restart local v26    # "requestStartMessage":Ljava/lang/String;
    :cond_15f
    if-eqz v21, :cond_163

    if-nez v17, :cond_28b

    .line 197
    :cond_163
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "--> END "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v24 .. v24}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-interface/range {v34 .. v35}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 222
    .end local v12    # "count":I
    .end local v18    # "headers":Lokhttp3/Headers;
    .end local v19    # "i":I
    :cond_183
    :goto_183
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v30

    .line 225
    .local v30, "startNs":J
    :try_start_187
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;
    :try_end_18e
    .catch Ljava/lang/Exception; {:try_start_187 .. :try_end_18e} :catch_361

    move-result-object v27

    .line 230
    .local v27, "response":Lokhttp3/Response;
    sget-object v34, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v36

    sub-long v36, v36, v30

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v32

    .line 232
    .local v32, "tookMs":J
    invoke-virtual/range {v27 .. v27}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v28

    .line 233
    .local v28, "responseBody":Lokhttp3/ResponseBody;
    invoke-virtual/range {v28 .. v28}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v10

    .line 234
    .local v10, "contentLength":J
    const-wide/16 v34, -0x1

    cmp-long v34, v10, v34

    if-eqz v34, :cond_381

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "-byte"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 235
    .local v4, "bodySize":Ljava/lang/String;
    :goto_1c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v35, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "<-- "

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    .line 236
    invoke-virtual/range {v27 .. v27}, Lokhttp3/Response;->code()I

    move-result v36

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 237
    invoke-virtual/range {v27 .. v27}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->isEmpty()Z

    move-result v34

    if-eqz v34, :cond_385

    const-string v34, ""

    :goto_1ef
    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const/16 v36, 0x20

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v34

    .line 238
    invoke-virtual/range {v27 .. v27}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v36, " ("

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v36, "ms"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 239
    if-nez v22, :cond_3a6

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, ", "

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v37, " body"

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    :goto_252
    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const/16 v36, 0x29

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 235
    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 241
    if-eqz v22, :cond_1a

    .line 242
    invoke-virtual/range {v27 .. v27}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v18

    .line 243
    .restart local v18    # "headers":Lokhttp3/Headers;
    const/16 v19, 0x0

    .restart local v19    # "i":I
    invoke-virtual/range {v18 .. v18}, Lokhttp3/Headers;->size()I

    move-result v12

    .restart local v12    # "count":I
    :goto_27b
    move/from16 v0, v19

    if-ge v0, v12, :cond_3aa

    .line 244
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;->logHeader(Lokhttp3/Headers;I)V

    .line 243
    add-int/lit8 v19, v19, 0x1

    goto :goto_27b

    .line 198
    .end local v4    # "bodySize":Ljava/lang/String;
    .end local v10    # "contentLength":J
    .end local v27    # "response":Lokhttp3/Response;
    .end local v28    # "responseBody":Lokhttp3/ResponseBody;
    .end local v30    # "startNs":J
    .end local v32    # "tookMs":J
    :cond_28b
    invoke-virtual/range {v24 .. v24}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lokhttp3/logging/HttpLoggingInterceptor;->bodyHasUnknownEncoding(Lokhttp3/Headers;)Z

    move-result v34

    if-eqz v34, :cond_2bd

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "--> END "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v24 .. v24}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " (encoded body omitted)"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-interface/range {v34 .. v35}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto/16 :goto_183

    .line 201
    :cond_2bd
    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    .line 202
    .local v5, "buffer":Lokio/Buffer;
    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 204
    sget-object v7, Lokhttp3/logging/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    .line 205
    .local v7, "charset":Ljava/nio/charset/Charset;
    invoke-virtual/range {v25 .. v25}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v9

    .line 206
    .local v9, "contentType":Lokhttp3/MediaType;
    if-eqz v9, :cond_2d7

    .line 207
    sget-object v34, Lokhttp3/logging/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v7

    .line 210
    :cond_2d7
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v34, v0

    const-string v35, ""

    invoke-interface/range {v34 .. v35}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 211
    invoke-static {v5}, Lokhttp3/logging/HttpLoggingInterceptor;->isPlaintext(Lokio/Buffer;)Z

    move-result v34

    if-eqz v34, :cond_32b

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v34, v0

    invoke-virtual {v5, v7}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v35

    invoke-interface/range {v34 .. v35}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "--> END "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v24 .. v24}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " ("

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    .line 214
    invoke-virtual/range {v25 .. v25}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v36

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "-byte body)"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 213
    invoke-interface/range {v34 .. v35}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto/16 :goto_183

    .line 216
    :cond_32b
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "--> END "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v24 .. v24}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " (binary "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    .line 217
    invoke-virtual/range {v25 .. v25}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v36

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "-byte body omitted)"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 216
    invoke-interface/range {v34 .. v35}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto/16 :goto_183

    .line 226
    .end local v5    # "buffer":Lokio/Buffer;
    .end local v7    # "charset":Ljava/nio/charset/Charset;
    .end local v9    # "contentType":Lokhttp3/MediaType;
    .end local v12    # "count":I
    .end local v18    # "headers":Lokhttp3/Headers;
    .end local v19    # "i":I
    .restart local v30    # "startNs":J
    :catch_361
    move-exception v13

    .line 227
    .local v13, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "<-- HTTP FAILED: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-interface/range {v34 .. v35}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 228
    throw v13

    .line 234
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v10    # "contentLength":J
    .restart local v27    # "response":Lokhttp3/Response;
    .restart local v28    # "responseBody":Lokhttp3/ResponseBody;
    .restart local v32    # "tookMs":J
    :cond_381
    const-string v4, "unknown-length"

    goto/16 :goto_1c2

    .line 237
    .restart local v4    # "bodySize":Ljava/lang/String;
    :cond_385
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v37, 0x20

    move-object/from16 v0, v34

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v27 .. v27}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    goto/16 :goto_1ef

    .line 239
    :cond_3a6
    const-string v34, ""

    goto/16 :goto_252

    .line 247
    .restart local v12    # "count":I
    .restart local v18    # "headers":Lokhttp3/Headers;
    .restart local v19    # "i":I
    :cond_3aa
    if-eqz v21, :cond_3b2

    invoke-static/range {v27 .. v27}, Lokhttp3/internal/http/HttpHeaders;->hasBody(Lokhttp3/Response;)Z

    move-result v34

    if-nez v34, :cond_3bf

    .line 248
    :cond_3b2
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v34, v0

    const-string v35, "<-- END HTTP"

    invoke-interface/range {v34 .. v35}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 249
    :cond_3bf
    invoke-virtual/range {v27 .. v27}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lokhttp3/logging/HttpLoggingInterceptor;->bodyHasUnknownEncoding(Lokhttp3/Headers;)Z

    move-result v34

    if-eqz v34, :cond_3d6

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v34, v0

    const-string v35, "<-- END HTTP (encoded body omitted)"

    invoke-interface/range {v34 .. v35}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 252
    :cond_3d6
    invoke-virtual/range {v28 .. v28}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v29

    .line 253
    .local v29, "source":Lokio/BufferedSource;
    const-wide v34, 0x7fffffffffffffffL

    move-object/from16 v0, v29

    move-wide/from16 v1, v34

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->request(J)Z

    .line 254
    invoke-interface/range {v29 .. v29}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v5

    .line 256
    .restart local v5    # "buffer":Lokio/Buffer;
    const/4 v14, 0x0

    .line 257
    .local v14, "gzippedLength":Ljava/lang/Long;
    const-string v34, "gzip"

    const-string v35, "Content-Encoding"

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_423

    .line 258
    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 259
    const/4 v15, 0x0

    .line 261
    .local v15, "gzippedResponseBody":Lokio/GzipSource;
    :try_start_406
    new-instance v16, Lokio/GzipSource;

    invoke-virtual {v5}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v34

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lokio/GzipSource;-><init>(Lokio/Source;)V
    :try_end_413
    .catchall {:try_start_406 .. :try_end_413} :catchall_46c

    .line 262
    .end local v15    # "gzippedResponseBody":Lokio/GzipSource;
    .local v16, "gzippedResponseBody":Lokio/GzipSource;
    :try_start_413
    new-instance v6, Lokio/Buffer;

    invoke-direct {v6}, Lokio/Buffer;-><init>()V
    :try_end_418
    .catchall {:try_start_413 .. :try_end_418} :catchall_4f5

    .line 263
    .end local v5    # "buffer":Lokio/Buffer;
    .local v6, "buffer":Lokio/Buffer;
    :try_start_418
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lokio/Buffer;->writeAll(Lokio/Source;)J
    :try_end_41d
    .catchall {:try_start_418 .. :try_end_41d} :catchall_4fa

    .line 265
    if-eqz v16, :cond_500

    .line 266
    invoke-virtual/range {v16 .. v16}, Lokio/GzipSource;->close()V

    move-object v5, v6

    .line 271
    .end local v6    # "buffer":Lokio/Buffer;
    .end local v16    # "gzippedResponseBody":Lokio/GzipSource;
    .restart local v5    # "buffer":Lokio/Buffer;
    :cond_423
    :goto_423
    sget-object v7, Lokhttp3/logging/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    .line 272
    .restart local v7    # "charset":Ljava/nio/charset/Charset;
    invoke-virtual/range {v28 .. v28}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v9

    .line 273
    .restart local v9    # "contentType":Lokhttp3/MediaType;
    if-eqz v9, :cond_433

    .line 274
    sget-object v34, Lokhttp3/logging/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v7

    .line 277
    :cond_433
    invoke-static {v5}, Lokhttp3/logging/HttpLoggingInterceptor;->isPlaintext(Lokio/Buffer;)Z

    move-result v34

    if-nez v34, :cond_473

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v34, v0

    const-string v35, ""

    invoke-interface/range {v34 .. v35}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "<-- END HTTP (binary "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v36

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "-byte body omitted)"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-interface/range {v34 .. v35}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 265
    .end local v7    # "charset":Ljava/nio/charset/Charset;
    .end local v9    # "contentType":Lokhttp3/MediaType;
    .restart local v15    # "gzippedResponseBody":Lokio/GzipSource;
    :catchall_46c
    move-exception v34

    :goto_46d
    if-eqz v15, :cond_472

    .line 266
    invoke-virtual {v15}, Lokio/GzipSource;->close()V

    :cond_472
    throw v34

    .line 283
    .end local v15    # "gzippedResponseBody":Lokio/GzipSource;
    .restart local v7    # "charset":Ljava/nio/charset/Charset;
    .restart local v9    # "contentType":Lokhttp3/MediaType;
    :cond_473
    const-wide/16 v34, 0x0

    cmp-long v34, v10, v34

    if-eqz v34, :cond_497

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v34, v0

    const-string v35, ""

    invoke-interface/range {v34 .. v35}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v34, v0

    invoke-virtual {v5}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v35

    invoke-interface/range {v34 .. v35}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 288
    :cond_497
    if-eqz v14, :cond_4cd

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "<-- END HTTP ("

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v36

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "-byte, "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "-gzipped-byte body)"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-interface/range {v34 .. v35}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 292
    :cond_4cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "<-- END HTTP ("

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v36

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "-byte body)"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-interface/range {v34 .. v35}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 265
    .end local v7    # "charset":Ljava/nio/charset/Charset;
    .end local v9    # "contentType":Lokhttp3/MediaType;
    .restart local v16    # "gzippedResponseBody":Lokio/GzipSource;
    :catchall_4f5
    move-exception v34

    move-object/from16 v15, v16

    .end local v16    # "gzippedResponseBody":Lokio/GzipSource;
    .restart local v15    # "gzippedResponseBody":Lokio/GzipSource;
    goto/16 :goto_46d

    .end local v5    # "buffer":Lokio/Buffer;
    .end local v15    # "gzippedResponseBody":Lokio/GzipSource;
    .restart local v6    # "buffer":Lokio/Buffer;
    .restart local v16    # "gzippedResponseBody":Lokio/GzipSource;
    :catchall_4fa
    move-exception v34

    move-object/from16 v15, v16

    .end local v16    # "gzippedResponseBody":Lokio/GzipSource;
    .restart local v15    # "gzippedResponseBody":Lokio/GzipSource;
    move-object v5, v6

    .end local v6    # "buffer":Lokio/Buffer;
    .restart local v5    # "buffer":Lokio/Buffer;
    goto/16 :goto_46d

    .end local v5    # "buffer":Lokio/Buffer;
    .end local v15    # "gzippedResponseBody":Lokio/GzipSource;
    .restart local v6    # "buffer":Lokio/Buffer;
    .restart local v16    # "gzippedResponseBody":Lokio/GzipSource;
    :cond_500
    move-object v5, v6

    .end local v6    # "buffer":Lokio/Buffer;
    .restart local v5    # "buffer":Lokio/Buffer;
    goto/16 :goto_423
.end method

.method public redactHeader(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 132
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 133
    .local v0, "newHeadersToRedact":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->headersToRedact:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 134
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    iput-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->headersToRedact:Ljava/util/Set;

    .line 136
    return-void
.end method

.method public setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;
    .registers 4
    .param p1, "level"    # Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .prologue
    .line 142
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "level == null. Use Level.NONE instead."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_a
    iput-object p1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 144
    return-object p0
.end method
