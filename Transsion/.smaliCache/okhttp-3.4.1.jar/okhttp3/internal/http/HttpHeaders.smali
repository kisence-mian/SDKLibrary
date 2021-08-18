.class public final Lokhttp3/internal/http/HttpHeaders;
.super Ljava/lang/Object;
.source "HttpHeaders.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static contentLength(Lokhttp3/Headers;)J
    .registers 3
    .param p0, "headers"    # Lokhttp3/Headers;

    .line 46
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

    .line 42
    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->contentLength(Lokhttp3/Headers;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hasBody(Lokhttp3/Response;)Z
    .registers 9
    .param p0, "response"    # Lokhttp3/Response;

    .line 193
    invoke-virtual {p0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 194
    return v1

    .line 197
    :cond_12
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v0

    .line 198
    .local v0, "responseCode":I
    const/16 v2, 0x64

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1f

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_28

    :cond_1f
    const/16 v2, 0xcc

    if-eq v0, v2, :cond_28

    const/16 v2, 0x130

    if-eq v0, v2, :cond_28

    .line 201
    return v3

    .line 206
    :cond_28
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->contentLength(Lokhttp3/Response;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_42

    .line 207
    const-string v2, "Transfer-Encoding"

    invoke-virtual {p0, v2}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "chunked"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    goto :goto_42

    .line 211
    :cond_41
    return v1

    .line 208
    :cond_42
    :goto_42
    return v3
.end method

.method public static hasVaryAll(Lokhttp3/Headers;)Z
    .registers 3
    .param p0, "responseHeaders"    # Lokhttp3/Headers;

    .line 81
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

    .line 74
    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->hasVaryAll(Lokhttp3/Headers;)Z

    move-result v0

    return v0
.end method

.method public static parseChallenges(Lokhttp3/Headers;Ljava/lang/String;)Ljava/util/List;
    .registers 16
    .param p0, "responseHeaders"    # Lokhttp3/Headers;
    .param p1, "challengeHeader"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/Challenge;",
            ">;"
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Challenge;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v2

    .local v2, "size":I
    :goto_a
    if-ge v1, v2, :cond_73

    .line 147
    invoke-virtual {p0, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 148
    goto :goto_70

    .line 150
    :cond_17
    invoke-virtual {p0, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "value":Ljava/lang/String;
    const/4 v4, 0x0

    .line 152
    .local v4, "pos":I
    :goto_1c
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_70

    .line 153
    move v10, v4

    .line 154
    .local v10, "tokenStart":I
    const-string v5, " "

    invoke-static {v3, v4, v5}, Lokhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    .line 156
    invoke-virtual {v3, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 157
    .local v11, "scheme":Ljava/lang/String;
    invoke-static {v3, v4}, Lokhttp3/internal/http/HttpHeaders;->skipWhitespace(Ljava/lang/String;I)I

    move-result v12

    .line 163
    .end local v4    # "pos":I
    .local v12, "pos":I
    const/4 v5, 0x1

    const/4 v8, 0x0

    const-string v13, "realm=\""

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v9

    const-string v7, "realm=\""

    move-object v4, v3

    move v6, v12

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    if-nez v4, :cond_48

    .line 164
    goto :goto_70

    .line 167
    :cond_48
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v12, v4

    .line 168
    move v4, v12

    .line 169
    .local v4, "realmStart":I
    const-string v5, "\""

    invoke-static {v3, v12, v5}, Lokhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    .line 170
    .end local v12    # "pos":I
    .local v5, "pos":I
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 171
    .local v6, "realm":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    .line 172
    const-string v7, ","

    invoke-static {v3, v5, v7}, Lokhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    .line 173
    add-int/lit8 v5, v5, 0x1

    .line 174
    invoke-static {v3, v5}, Lokhttp3/internal/http/HttpHeaders;->skipWhitespace(Ljava/lang/String;I)I

    move-result v5

    .line 175
    new-instance v7, Lokhttp3/Challenge;

    invoke-direct {v7, v11, v6}, Lokhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    .end local v4    # "realmStart":I
    .end local v6    # "realm":Ljava/lang/String;
    .end local v10    # "tokenStart":I
    .end local v11    # "scheme":Ljava/lang/String;
    move v4, v5

    goto :goto_1c

    .line 146
    .end local v3    # "value":Ljava/lang/String;
    .end local v5    # "pos":I
    :cond_70
    :goto_70
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 178
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_73
    return-object v0
.end method

.method public static parseSeconds(Ljava/lang/String;I)I
    .registers 7
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .line 247
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_19

    .line 248
    .local v0, "seconds":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_f

    .line 249
    const v2, 0x7fffffff

    return v2

    .line 250
    :cond_f
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_17

    .line 251
    const/4 v2, 0x0

    return v2

    .line 253
    :cond_17
    long-to-int v2, v0

    return v2

    .line 255
    .end local v0    # "seconds":J
    :catch_19
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p1
.end method

.method public static receiveHeaders(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V
    .registers 5
    .param p0, "cookieJar"    # Lokhttp3/CookieJar;
    .param p1, "url"    # Lokhttp3/HttpUrl;
    .param p2, "headers"    # Lokhttp3/Headers;

    .line 182
    sget-object v0, Lokhttp3/CookieJar;->NO_COOKIES:Lokhttp3/CookieJar;

    if-ne p0, v0, :cond_5

    return-void

    .line 184
    :cond_5
    invoke-static {p1, p2}, Lokhttp3/Cookie;->parseAll(Lokhttp3/HttpUrl;Lokhttp3/Headers;)Ljava/util/List;

    move-result-object v0

    .line 185
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    return-void

    .line 187
    :cond_10
    invoke-interface {p0, p1, v0}, Lokhttp3/CookieJar;->saveFromResponse(Lokhttp3/HttpUrl;Ljava/util/List;)V

    .line 188
    return-void
.end method

.method public static skipUntil(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "characters"    # Ljava/lang/String;

    .line 219
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_15

    .line 220
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 221
    goto :goto_15

    .line 219
    :cond_12
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 224
    :cond_15
    :goto_15
    return p1
.end method

.method public static skipWhitespace(Ljava/lang/String;I)I
    .registers 4
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I

    .line 232
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_16

    .line 233
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 234
    .local v0, "c":C
    const/16 v1, 0x20

    if-eq v0, v1, :cond_13

    const/16 v1, 0x9

    if-eq v0, v1, :cond_13

    .line 235
    goto :goto_16

    .line 232
    .end local v0    # "c":C
    :cond_13
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 238
    :cond_16
    :goto_16
    return p1
.end method

.method private static stringToLong(Ljava/lang/String;)J
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .line 50
    const-wide/16 v0, -0x1

    if-nez p0, :cond_5

    return-wide v0

    .line 52
    :cond_5
    :try_start_5
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_9} :catch_a

    return-wide v0

    .line 53
    :catch_a
    move-exception v2

    .line 54
    .local v2, "e":Ljava/lang/NumberFormatException;
    return-wide v0
.end method

.method public static varyFields(Lokhttp3/Headers;)Ljava/util/Set;
    .registers 10
    .param p0, "responseHeaders"    # Lokhttp3/Headers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 92
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 93
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v2

    .local v2, "size":I
    :goto_9
    if-ge v1, v2, :cond_43

    .line 94
    invoke-virtual {p0, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Vary"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_40

    .line 96
    :cond_18
    invoke-virtual {p0, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "value":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 98
    new-instance v4, Ljava/util/TreeSet;

    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    move-object v0, v4

    .line 100
    :cond_2a
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_32
    if-ge v6, v5, :cond_40

    aget-object v7, v4, v6

    .line 101
    .local v7, "varyField":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    .end local v7    # "varyField":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    .line 93
    .end local v3    # "value":Ljava/lang/String;
    :cond_40
    :goto_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 104
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_43
    return-object v0
.end method

.method private static varyFields(Lokhttp3/Response;)Ljava/util/Set;
    .registers 2
    .param p0, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 85
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

    .line 125
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->varyFields(Lokhttp3/Headers;)Ljava/util/Set;

    move-result-object v0

    .line 126
    .local v0, "varyFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    new-instance v1, Lokhttp3/Headers$Builder;

    invoke-direct {v1}, Lokhttp3/Headers$Builder;-><init>()V

    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v1

    return-object v1

    .line 128
    :cond_14
    new-instance v1, Lokhttp3/Headers$Builder;

    invoke-direct {v1}, Lokhttp3/Headers$Builder;-><init>()V

    .line 129
    .local v1, "result":Lokhttp3/Headers$Builder;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v3

    .local v3, "size":I
    :goto_1e
    if-ge v2, v3, :cond_34

    .line 130
    invoke-virtual {p0, v2}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "fieldName":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 132
    invoke-virtual {p0, v2}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 129
    .end local v4    # "fieldName":Ljava/lang/String;
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 135
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_34
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v2

    return-object v2
.end method

.method public static varyHeaders(Lokhttp3/Response;)Lokhttp3/Headers;
    .registers 4
    .param p0, "response"    # Lokhttp3/Response;

    .line 115
    invoke-virtual {p0}, Lokhttp3/Response;->networkResponse()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v0

    .line 116
    .local v0, "requestHeaders":Lokhttp3/Headers;
    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    .line 117
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

    .line 64
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->varyFields(Lokhttp3/Response;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 65
    .local v1, "field":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2, v1}, Lokhttp3/Request;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    const/4 v0, 0x0

    return v0

    .line 66
    .end local v1    # "field":Ljava/lang/String;
    :cond_24
    goto :goto_8

    .line 67
    :cond_25
    const/4 v0, 0x1

    return v0
.end method
