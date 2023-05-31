.class public Lcom/bytedance/sdk/adnet/core/h;
.super Ljava/lang/Object;
.source "HurlStack.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/face/IHttpStack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/adnet/core/h$a;,
        Lcom/bytedance/sdk/adnet/core/h$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/bytedance/sdk/adnet/core/h$b;

.field private final b:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/adnet/core/h;-><init>(Lcom/bytedance/sdk/adnet/core/h$b;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/adnet/core/h$b;)V
    .registers 3

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/adnet/core/h;-><init>(Lcom/bytedance/sdk/adnet/core/h$b;Ljavax/net/ssl/SSLSocketFactory;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/adnet/core/h$b;Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 3

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/h;->a:Lcom/bytedance/sdk/adnet/core/h$b;

    .line 79
    iput-object p2, p0, Lcom/bytedance/sdk/adnet/core/h;->b:Ljavax/net/ssl/SSLSocketFactory;

    .line 80
    return-void
.end method

.method private a(Ljava/net/URL;Lcom/bytedance/sdk/adnet/core/Request;)Ljava/net/HttpURLConnection;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 256
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/adnet/core/h;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 257
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/adnet/core/h;->a(Lcom/bytedance/sdk/adnet/core/Request;)V

    .line 258
    invoke-virtual {p2}, Lcom/bytedance/sdk/adnet/core/Request;->getTimeoutMs()I

    move-result v0

    .line 259
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 260
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 261
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 262
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 265
    const-string v0, "https"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 266
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/adnet/core/h;->a(Ljava/net/HttpURLConnection;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 268
    const-string v0, "connection verify by inner"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/adnet/core/p;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    :cond_32
    :goto_32
    return-object v1

    .line 269
    :cond_33
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/h;->b:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_3b

    .line 270
    invoke-static {}, Lcom/bytedance/sdk/adnet/d/b;->a()V

    goto :goto_32

    :cond_3b
    move-object v0, v1

    .line 272
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v2, p0, Lcom/bytedance/sdk/adnet/core/h;->b:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto :goto_32
.end method

.method static a(Ljava/util/Map;)Ljava/util/List;
    .registers 8
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/adnet/core/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 141
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 142
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 143
    new-instance v6, Lcom/bytedance/sdk/adnet/core/Header;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v6, v2, v1}, Lcom/bytedance/sdk/adnet/core/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 147
    :cond_48
    return-object v3
.end method

.method private a(Lcom/bytedance/sdk/adnet/core/Request;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 280
    if-eqz p1, :cond_9

    .line 281
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/core/h;->b(Lcom/bytedance/sdk/adnet/core/Request;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/adnet/core/Request;->setIpAddrStr(Ljava/lang/String;)V

    .line 283
    :cond_9
    return-void
.end method

.method static a(Ljava/net/HttpURLConnection;Lcom/bytedance/sdk/adnet/core/Request;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/adnet/err/a;
        }
    .end annotation

    .prologue
    .line 317
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getMethod()I

    move-result v0

    packed-switch v0, :pswitch_data_58

    .line 358
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown method type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :pswitch_f
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getPostBody()[B

    move-result-object v0

    .line 323
    if-eqz v0, :cond_1d

    .line 324
    const-string v1, "POST"

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 325
    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/adnet/core/h;->a(Ljava/net/HttpURLConnection;Lcom/bytedance/sdk/adnet/core/Request;[B)V

    .line 360
    :cond_1d
    :goto_1d
    return-void

    .line 331
    :pswitch_1e
    const-string v0, "GET"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_1d

    .line 334
    :pswitch_24
    const-string v0, "DELETE"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_1d

    .line 337
    :pswitch_2a
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 338
    invoke-static {p0, p1}, Lcom/bytedance/sdk/adnet/core/h;->b(Ljava/net/HttpURLConnection;Lcom/bytedance/sdk/adnet/core/Request;)V

    goto :goto_1d

    .line 341
    :pswitch_33
    const-string v0, "PUT"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 342
    invoke-static {p0, p1}, Lcom/bytedance/sdk/adnet/core/h;->b(Ljava/net/HttpURLConnection;Lcom/bytedance/sdk/adnet/core/Request;)V

    goto :goto_1d

    .line 345
    :pswitch_3c
    const-string v0, "HEAD"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_1d

    .line 348
    :pswitch_42
    const-string v0, "OPTIONS"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_1d

    .line 351
    :pswitch_48
    const-string v0, "TRACE"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_1d

    .line 354
    :pswitch_4e
    const-string v0, "PATCH"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 355
    invoke-static {p0, p1}, Lcom/bytedance/sdk/adnet/core/h;->b(Ljava/net/HttpURLConnection;Lcom/bytedance/sdk/adnet/core/Request;)V

    goto :goto_1d

    .line 317
    nop

    :pswitch_data_58
    .packed-switch -0x1
        :pswitch_f
        :pswitch_1e
        :pswitch_2a
        :pswitch_33
        :pswitch_24
        :pswitch_3c
        :pswitch_42
        :pswitch_48
        :pswitch_4e
    .end packed-switch
.end method

.method private static a(Ljava/net/HttpURLConnection;Lcom/bytedance/sdk/adnet/core/Request;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 377
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 378
    const-string v0, "Content-Type"

    .line 379
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v1

    .line 378
    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :cond_19
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 382
    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->write([B)V

    .line 383
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 384
    return-void
.end method

.method private static a(II)Z
    .registers 3

    .prologue
    .line 159
    const/4 v0, 0x4

    if-eq p0, v0, :cond_15

    const/16 v0, 0x64

    if-gt v0, p1, :cond_b

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_15

    :cond_b
    const/16 v0, 0xcc

    if-eq p1, v0, :cond_15

    const/16 v0, 0x130

    if-eq p1, v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method static synthetic b(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 44
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/h;->c(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/bytedance/sdk/adnet/core/Request;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 287
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    .line 288
    :cond_8
    const-string v0, ""

    .line 299
    :goto_a
    return-object v0

    .line 292
    :cond_b
    :try_start_b
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1f} :catch_21

    move-result-object v0

    goto :goto_a

    .line 296
    :catch_21
    move-exception v0

    .line 297
    const-string v0, ""

    goto :goto_a
.end method

.method private static b(Ljava/net/HttpURLConnection;Lcom/bytedance/sdk/adnet/core/Request;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/adnet/err/a;
        }
    .end annotation

    .prologue
    .line 364
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getBody()[B

    move-result-object v0

    .line 365
    if-eqz v0, :cond_9

    .line 366
    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/adnet/core/h;->a(Ljava/net/HttpURLConnection;Lcom/bytedance/sdk/adnet/core/Request;[B)V

    .line 368
    :cond_9
    return-void
.end method

.method private static c(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 193
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 197
    :goto_4
    return-object v0

    .line 194
    :catch_5
    move-exception v0

    .line 195
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_4
.end method


# virtual methods
.method protected a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 215
    if-nez p1, :cond_4

    .line 245
    :goto_3
    return-object v0

    .line 219
    :cond_4
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 222
    sget-object v2, Lcom/bytedance/sdk/adnet/a;->a:Lcom/bytedance/sdk/adnet/core/o;

    if-eqz v2, :cond_12

    .line 223
    sget-object v0, Lcom/bytedance/sdk/adnet/a;->a:Lcom/bytedance/sdk/adnet/core/o;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    :cond_12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 227
    :try_start_18
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 229
    const-string v2, "Host"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    if-nez v0, :cond_38

    .line 231
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_38} :catch_40

    .line 243
    :cond_38
    :goto_38
    invoke-static {}, Ljava/net/HttpURLConnection;->getFollowRedirects()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    goto :goto_3

    .line 233
    :catch_40
    move-exception v0

    .line 234
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_38

    .line 237
    :cond_48
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_38
.end method

.method protected a(Ljava/net/HttpURLConnection;)Z
    .registers 3

    .prologue
    .line 309
    const/4 v0, 0x0

    return v0
.end method

.method public performRequest(Lcom/bytedance/sdk/adnet/core/Request;Ljava/util/Map;)Lcom/bytedance/sdk/adnet/core/HttpResponse;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bytedance/sdk/adnet/core/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/adnet/err/VAdError;
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 86
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 87
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 88
    const-string v0, "User-Agent"

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_1c
    invoke-virtual {v3, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 92
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/h;->a:Lcom/bytedance/sdk/adnet/core/h$b;

    if-eqz v0, :cond_4b

    .line 94
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/h;->a:Lcom/bytedance/sdk/adnet/core/h$b;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/adnet/core/h$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    if-nez v0, :cond_4c

    .line 96
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URL blocked by rewriter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    move-object v0, v1

    .line 100
    :cond_4c
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-direct {p0, v1, p1}, Lcom/bytedance/sdk/adnet/core/h;->a(Ljava/net/URL;Lcom/bytedance/sdk/adnet/core/Request;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .line 102
    const/4 v2, 0x0

    .line 104
    :try_start_56
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_56 .. :try_end_73} :catchall_74

    goto :goto_5e

    .line 129
    :catchall_74
    move-exception v0

    move v1, v2

    :goto_76
    if-nez v1, :cond_7b

    .line 130
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 132
    :cond_7b
    throw v0

    .line 107
    :cond_7c
    :try_start_7c
    invoke-static {v4, p1}, Lcom/bytedance/sdk/adnet/core/h;->a(Ljava/net/HttpURLConnection;Lcom/bytedance/sdk/adnet/core/Request;)V

    .line 109
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 110
    const/4 v0, -0x1

    if-ne v3, v0, :cond_8e

    .line 113
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_8e
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getMethod()I

    move-result v0

    invoke-static {v0, v3}, Lcom/bytedance/sdk/adnet/core/h;->a(II)Z

    move-result v0

    if-nez v0, :cond_a9

    .line 117
    new-instance v0, Lcom/bytedance/sdk/adnet/core/HttpResponse;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/adnet/core/h;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/bytedance/sdk/adnet/core/HttpResponse;-><init>(ILjava/util/List;)V
    :try_end_a5
    .catchall {:try_start_7c .. :try_end_a5} :catchall_74

    .line 130
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 123
    :goto_a8
    return-object v0

    .line 122
    :cond_a9
    const/4 v1, 0x1

    .line 123
    :try_start_aa
    new-instance v0, Lcom/bytedance/sdk/adnet/core/HttpResponse;

    .line 125
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/adnet/core/h;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    .line 126
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5

    new-instance v6, Lcom/bytedance/sdk/adnet/core/h$a;

    invoke-direct {v6, v4}, Lcom/bytedance/sdk/adnet/core/h$a;-><init>(Ljava/net/HttpURLConnection;)V

    invoke-direct {v0, v3, v2, v5, v6}, Lcom/bytedance/sdk/adnet/core/HttpResponse;-><init>(ILjava/util/List;ILjava/io/InputStream;)V
    :try_end_c0
    .catchall {:try_start_aa .. :try_end_c0} :catchall_c1

    goto :goto_a8

    .line 129
    :catchall_c1
    move-exception v0

    goto :goto_76
.end method
