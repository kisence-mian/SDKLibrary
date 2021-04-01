.class public final Lokhttp3/internal/http/HttpHeaders;
.super Ljava/lang/Object;
.source "HttpHeaders.java"


# static fields
.field private static final QUOTED_STRING_DELIMITERS:Lokio/ByteString;

.field private static final TOKEN_DELIMITERS:Lokio/ByteString;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-string v0, "\"\\"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/HttpHeaders;->QUOTED_STRING_DELIMITERS:Lokio/ByteString;

    .line 45
    const-string v0, "\t ,="

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/HttpHeaders;->TOKEN_DELIMITERS:Lokio/ByteString;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static contentLength(Lokhttp3/Headers;)J
    .registers 3
    .param p0, "headers"    # Lokhttp3/Headers;

    .prologue
    .line 55
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->stringToLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static contentLength(Lokhttp3/Response;)J
    .registers 3
    .param p0, "response"    # Lokhttp3/Response;

    .prologue
    .line 51
    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->contentLength(Lokhttp3/Headers;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hasBody(Lokhttp3/Response;)Z
    .registers 9
    .param p0, "response"    # Lokhttp3/Response;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 324
    invoke-virtual {p0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HEAD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 342
    :cond_12
    :goto_12
    return v1

    .line 328
    :cond_13
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v0

    .line 329
    .local v0, "responseCode":I
    const/16 v3, 0x64

    if-lt v0, v3, :cond_1f

    const/16 v3, 0xc8

    if-lt v0, v3, :cond_29

    :cond_1f
    const/16 v3, 0xcc

    if-eq v0, v3, :cond_29

    const/16 v3, 0x130

    if-eq v0, v3, :cond_29

    move v1, v2

    .line 332
    goto :goto_12

    .line 337
    :cond_29
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->contentLength(Lokhttp3/Response;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_41

    const-string v3, "chunked"

    const-string v4, "Transfer-Encoding"

    .line 338
    invoke-virtual {p0, v4}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_41
    move v1, v2

    .line 339
    goto :goto_12
.end method

.method public static hasVaryAll(Lokhttp3/Headers;)Z
    .registers 3
    .param p0, "responseHeaders"    # Lokhttp3/Headers;

    .prologue
    .line 90
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->varyFields(Lokhttp3/Headers;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "*"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static hasVaryAll(Lokhttp3/Response;)Z
    .registers 2
    .param p0, "response"    # Lokhttp3/Response;

    .prologue
    .line 83
    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->hasVaryAll(Lokhttp3/Headers;)Z

    move-result v0

    return v0
.end method

.method private static parseChallengeHeader(Ljava/util/List;Lokio/Buffer;)V
    .registers 15
    .param p1, "header"    # Lokio/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Challenge;",
            ">;",
            "Lokio/Buffer;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "result":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Challenge;>;"
    const/16 v12, 0x3d

    .line 180
    const/4 v5, 0x0

    .line 184
    .local v5, "peek":Ljava/lang/String;
    :goto_3
    if-nez v5, :cond_f

    .line 185
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->skipWhitespaceAndCommas(Lokio/Buffer;)Z

    .line 186
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->readToken(Lokio/Buffer;)Ljava/lang/String;

    move-result-object v5

    .line 187
    if-nez v5, :cond_f

    .line 232
    :cond_e
    :goto_e
    return-void

    .line 190
    :cond_f
    move-object v7, v5

    .line 193
    .local v7, "schemeName":Ljava/lang/String;
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->skipWhitespaceAndCommas(Lokio/Buffer;)Z

    move-result v0

    .line 194
    .local v0, "commaPrefixed":Z
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->readToken(Lokio/Buffer;)Ljava/lang/String;

    move-result-object v5

    .line 195
    if-nez v5, :cond_2d

    .line 196
    invoke-virtual {p1}, Lokio/Buffer;->exhausted()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 197
    new-instance v8, Lokhttp3/Challenge;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Lokhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 201
    :cond_2d
    invoke-static {p1, v12}, Lokhttp3/internal/http/HttpHeaders;->skipAll(Lokio/Buffer;B)I

    move-result v2

    .line 202
    .local v2, "eqCount":I
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->skipWhitespaceAndCommas(Lokio/Buffer;)Z

    move-result v1

    .line 205
    .local v1, "commaSuffixed":Z
    if-nez v0, :cond_65

    if-nez v1, :cond_3f

    invoke-virtual {p1}, Lokio/Buffer;->exhausted()Z

    move-result v8

    if-eqz v8, :cond_65

    .line 206
    :cond_3f
    new-instance v9, Lokhttp3/Challenge;

    const/4 v8, 0x0

    check-cast v8, Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 207
    invoke-static {v12, v2}, Lokhttp3/internal/http/HttpHeaders;->repeat(CI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 206
    invoke-static {v8, v10}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v8

    invoke-direct {v9, v7, v8}, Lokhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    const/4 v5, 0x0

    .line 209
    goto :goto_3

    .line 213
    :cond_65
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 214
    .local v4, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1, v12}, Lokhttp3/internal/http/HttpHeaders;->skipAll(Lokio/Buffer;B)I

    move-result v8

    add-int/2addr v2, v8

    .line 216
    :cond_6f
    if-nez v5, :cond_88

    .line 217
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->readToken(Lokio/Buffer;)Ljava/lang/String;

    move-result-object v5

    .line 218
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->skipWhitespaceAndCommas(Lokio/Buffer;)Z

    move-result v8

    if-eqz v8, :cond_84

    .line 234
    :cond_7b
    new-instance v8, Lokhttp3/Challenge;

    invoke-direct {v8, v7, v4}, Lokhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 219
    :cond_84
    invoke-static {p1, v12}, Lokhttp3/internal/http/HttpHeaders;->skipAll(Lokio/Buffer;B)I

    move-result v2

    .line 221
    :cond_88
    if-eqz v2, :cond_7b

    .line 222
    const/4 v8, 0x1

    if-gt v2, v8, :cond_e

    .line 223
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->skipWhitespaceAndCommas(Lokio/Buffer;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 225
    invoke-virtual {p1}, Lokio/Buffer;->exhausted()Z

    move-result v8

    if-nez v8, :cond_c0

    const-wide/16 v8, 0x0

    invoke-virtual {p1, v8, v9}, Lokio/Buffer;->getByte(J)B

    move-result v8

    const/16 v9, 0x22

    if-ne v8, v9, :cond_c0

    .line 226
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->readQuotedString(Lokio/Buffer;)Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, "parameterValue":Ljava/lang/String;
    :goto_a7
    if-eqz v3, :cond_e

    .line 229
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 230
    .local v6, "replaced":Ljava/lang/String;
    const/4 v5, 0x0

    .line 231
    if-nez v6, :cond_e

    .line 232
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->skipWhitespaceAndCommas(Lokio/Buffer;)Z

    move-result v8

    if-nez v8, :cond_6f

    invoke-virtual {p1}, Lokio/Buffer;->exhausted()Z

    move-result v8

    if-nez v8, :cond_6f

    goto/16 :goto_e

    .line 227
    .end local v3    # "parameterValue":Ljava/lang/String;
    .end local v6    # "replaced":Ljava/lang/String;
    :cond_c0
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->readToken(Lokio/Buffer;)Ljava/lang/String;

    move-result-object v3

    goto :goto_a7
.end method

.method public static parseChallenges(Lokhttp3/Headers;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p0, "responseHeaders"    # Lokhttp3/Headers;
    .param p1, "headerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Challenge;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Challenge;>;"
    const/4 v0, 0x0

    .local v0, "h":I
    :goto_6
    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v3

    if-ge v0, v3, :cond_29

    .line 171
    invoke-virtual {p0, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 172
    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v1

    .line 173
    .local v1, "header":Lokio/Buffer;
    invoke-static {v2, v1}, Lokhttp3/internal/http/HttpHeaders;->parseChallengeHeader(Ljava/util/List;Lokio/Buffer;)V

    .line 170
    .end local v1    # "header":Lokio/Buffer;
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 176
    :cond_29
    return-object v2
.end method

.method public static parseSeconds(Ljava/lang/String;I)I
    .registers 8
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 378
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_19

    move-result-wide v2

    .line 379
    .local v2, "seconds":J
    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-lez v1, :cond_f

    .line 380
    const p1, 0x7fffffff

    .line 387
    .end local v2    # "seconds":J
    .end local p1    # "defaultValue":I
    :goto_e
    return p1

    .line 381
    .restart local v2    # "seconds":J
    .restart local p1    # "defaultValue":I
    :cond_f
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_17

    .line 382
    const/4 p1, 0x0

    goto :goto_e

    .line 384
    :cond_17
    long-to-int p1, v2

    goto :goto_e

    .line 386
    .end local v2    # "seconds":J
    :catch_19
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_e
.end method

.method private static readQuotedString(Lokio/Buffer;)Ljava/lang/String;
    .registers 13
    .param p0, "buffer"    # Lokio/Buffer;

    .prologue
    const-wide/16 v10, 0x1

    const/4 v3, 0x0

    const/16 v8, 0x22

    .line 270
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v4

    if-eq v4, v8, :cond_11

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 271
    :cond_11
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 273
    .local v2, "result":Lokio/Buffer;
    :goto_16
    sget-object v4, Lokhttp3/internal/http/HttpHeaders;->QUOTED_STRING_DELIMITERS:Lokio/ByteString;

    invoke-virtual {p0, v4}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    .line 274
    .local v0, "i":J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_23

    .line 282
    :cond_22
    :goto_22
    return-object v3

    .line 276
    :cond_23
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->getByte(J)B

    move-result v4

    if-ne v4, v8, :cond_34

    .line 277
    invoke-virtual {v2, p0, v0, v1}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 278
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    .line 279
    invoke-virtual {v2}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v3

    goto :goto_22

    .line 282
    :cond_34
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v4

    add-long v6, v0, v10

    cmp-long v4, v4, v6

    if-eqz v4, :cond_22

    .line 283
    invoke-virtual {v2, p0, v0, v1}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 284
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    .line 285
    invoke-virtual {v2, p0, v10, v11}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    goto :goto_16
.end method

.method private static readToken(Lokio/Buffer;)Ljava/lang/String;
    .registers 7
    .param p0, "buffer"    # Lokio/Buffer;

    .prologue
    .line 295
    :try_start_0
    sget-object v1, Lokhttp3/internal/http/HttpHeaders;->TOKEN_DELIMITERS:Lokio/ByteString;

    invoke-virtual {p0, v1}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v2

    .line 296
    .local v2, "tokenSize":J
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_10

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    .line 298
    :cond_10
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1b

    .line 299
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;
    :try_end_19
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_19} :catch_1d

    move-result-object v1

    .line 298
    :goto_1a
    return-object v1

    .line 300
    :cond_1b
    const/4 v1, 0x0

    goto :goto_1a

    .line 301
    .end local v2    # "tokenSize":J
    :catch_1d
    move-exception v0

    .line 302
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public static receiveHeaders(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V
    .registers 5
    .param p0, "cookieJar"    # Lokhttp3/CookieJar;
    .param p1, "url"    # Lokhttp3/HttpUrl;
    .param p2, "headers"    # Lokhttp3/Headers;

    .prologue
    .line 313
    sget-object v1, Lokhttp3/CookieJar;->NO_COOKIES:Lokhttp3/CookieJar;

    if-ne p0, v1, :cond_5

    .line 319
    :cond_4
    :goto_4
    return-void

    .line 315
    :cond_5
    invoke-static {p1, p2}, Lokhttp3/Cookie;->parseAll(Lokhttp3/HttpUrl;Lokhttp3/Headers;)Ljava/util/List;

    move-result-object v0

    .line 316
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 318
    invoke-interface {p0, p1, v0}, Lokhttp3/CookieJar;->saveFromResponse(Lokhttp3/HttpUrl;Ljava/util/List;)V

    goto :goto_4
.end method

.method private static repeat(CI)Ljava/lang/String;
    .registers 4
    .param p0, "c"    # C
    .param p1, "count"    # I

    .prologue
    .line 307
    new-array v0, p1, [C

    .line 308
    .local v0, "array":[C
    invoke-static {v0, p0}, Ljava/util/Arrays;->fill([CC)V

    .line 309
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method private static skipAll(Lokio/Buffer;B)I
    .registers 6
    .param p0, "buffer"    # Lokio/Buffer;
    .param p1, "b"    # B

    .prologue
    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "count":I
    :goto_1
    invoke-virtual {p0}, Lokio/Buffer;->exhausted()Z

    move-result v1

    if-nez v1, :cond_15

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v1

    if-ne v1, p1, :cond_15

    .line 258
    add-int/lit8 v0, v0, 0x1

    .line 259
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    goto :goto_1

    .line 261
    :cond_15
    return v0
.end method

.method public static skipUntil(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "characters"    # Ljava/lang/String;

    .prologue
    .line 350
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_11

    .line 351
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 355
    :cond_11
    return p1

    .line 350
    :cond_12
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static skipWhitespace(Ljava/lang/String;I)I
    .registers 4
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I

    .prologue
    .line 363
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_12

    .line 364
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 365
    .local v0, "c":C
    const/16 v1, 0x20

    if-eq v0, v1, :cond_13

    const/16 v1, 0x9

    if-eq v0, v1, :cond_13

    .line 369
    .end local v0    # "c":C
    :cond_12
    return p1

    .line 363
    .restart local v0    # "c":C
    :cond_13
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private static skipWhitespaceAndCommas(Lokio/Buffer;)Z
    .registers 5
    .param p0, "buffer"    # Lokio/Buffer;

    .prologue
    .line 240
    const/4 v1, 0x0

    .line 241
    .local v1, "commaFound":Z
    :goto_1
    invoke-virtual {p0}, Lokio/Buffer;->exhausted()Z

    move-result v2

    if-nez v2, :cond_22

    .line 242
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v0

    .line 243
    .local v0, "b":B
    const/16 v2, 0x2c

    if-ne v0, v2, :cond_16

    .line 244
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    .line 245
    const/4 v1, 0x1

    goto :goto_1

    .line 246
    :cond_16
    const/16 v2, 0x20

    if-eq v0, v2, :cond_1e

    const/16 v2, 0x9

    if-ne v0, v2, :cond_22

    .line 247
    :cond_1e
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    goto :goto_1

    .line 252
    .end local v0    # "b":B
    :cond_22
    return v1
.end method

.method private static stringToLong(Ljava/lang/String;)J
    .registers 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, -0x1

    .line 59
    if-nez p0, :cond_5

    .line 63
    :goto_4
    return-wide v2

    .line 61
    :cond_5
    :try_start_5
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_8} :catch_a

    move-result-wide v2

    goto :goto_4

    .line 62
    :catch_a
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_4
.end method

.method public static varyFields(Lokhttp3/Headers;)Ljava/util/Set;
    .registers 10
    .param p0, "responseHeaders"    # Lokhttp3/Headers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 102
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v2

    .local v2, "size":I
    :goto_9
    if-ge v0, v2, :cond_41

    .line 103
    const-string v5, "Vary"

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 102
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 105
    :cond_1a
    invoke-virtual {p0, v0}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "value":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 107
    new-instance v1, Ljava/util/TreeSet;

    .end local v1    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 109
    .restart local v1    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2b
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v5, 0x0

    :goto_33
    if-ge v5, v7, :cond_17

    aget-object v4, v6, v5

    .line 110
    .local v4, "varyField":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    .line 113
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "varyField":Ljava/lang/String;
    :cond_41
    return-object v1
.end method

.method private static varyFields(Lokhttp3/Response;)Ljava/util/Set;
    .registers 2
    .param p0, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->varyFields(Lokhttp3/Headers;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static varyHeaders(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;
    .registers 8
    .param p0, "requestHeaders"    # Lokhttp3/Headers;
    .param p1, "responseHeaders"    # Lokhttp3/Headers;

    .prologue
    .line 134
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->varyFields(Lokhttp3/Headers;)Ljava/util/Set;

    move-result-object v4

    .line 135
    .local v4, "varyFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_14

    new-instance v5, Lokhttp3/Headers$Builder;

    invoke-direct {v5}, Lokhttp3/Headers$Builder;-><init>()V

    invoke-virtual {v5}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v5

    .line 144
    :goto_13
    return-object v5

    .line 137
    :cond_14
    new-instance v2, Lokhttp3/Headers$Builder;

    invoke-direct {v2}, Lokhttp3/Headers$Builder;-><init>()V

    .line 138
    .local v2, "result":Lokhttp3/Headers$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v3

    .local v3, "size":I
    :goto_1e
    if-ge v1, v3, :cond_34

    .line 139
    invoke-virtual {p0, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "fieldName":Ljava/lang/String;
    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 141
    invoke-virtual {p0, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 138
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 144
    .end local v0    # "fieldName":Ljava/lang/String;
    :cond_34
    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v5

    goto :goto_13
.end method

.method public static varyHeaders(Lokhttp3/Response;)Lokhttp3/Headers;
    .registers 4
    .param p0, "response"    # Lokhttp3/Response;

    .prologue
    .line 124
    invoke-virtual {p0}, Lokhttp3/Response;->networkResponse()Lokhttp3/Response;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v0

    .line 125
    .local v0, "requestHeaders":Lokhttp3/Headers;
    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    .line 126
    .local v1, "responseHeaders":Lokhttp3/Headers;
    invoke-static {v0, v1}, Lokhttp3/internal/http/HttpHeaders;->varyHeaders(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;

    move-result-object v2

    return-object v2
.end method

.method public static varyMatches(Lokhttp3/Response;Lokhttp3/Headers;Lokhttp3/Request;)Z
    .registers 7
    .param p0, "cachedResponse"    # Lokhttp3/Response;
    .param p1, "cachedRequest"    # Lokhttp3/Headers;
    .param p2, "newRequest"    # Lokhttp3/Request;

    .prologue
    .line 73
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->varyFields(Lokhttp3/Response;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 74
    .local v0, "field":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2, v0}, Lokhttp3/Request;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v1, 0x0

    .line 76
    .end local v0    # "field":Ljava/lang/String;
    :goto_23
    return v1

    :cond_24
    const/4 v1, 0x1

    goto :goto_23
.end method
