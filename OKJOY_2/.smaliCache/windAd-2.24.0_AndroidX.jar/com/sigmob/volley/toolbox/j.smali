.class public Lcom/sigmob/volley/toolbox/j;
.super Lcom/sigmob/volley/toolbox/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/volley/toolbox/j$a;,
        Lcom/sigmob/volley/toolbox/j$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/sigmob/volley/toolbox/j$b;

.field private final b:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Lcom/sigmob/volley/toolbox/j$b;Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 3

    invoke-direct {p0}, Lcom/sigmob/volley/toolbox/a;-><init>()V

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/j;->a:Lcom/sigmob/volley/toolbox/j$b;

    iput-object p2, p0, Lcom/sigmob/volley/toolbox/j;->b:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method static synthetic a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .registers 1

    invoke-static {p0}, Lcom/sigmob/volley/toolbox/j;->b(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/net/URL;Lcom/sigmob/volley/m;)Ljava/net/HttpURLConnection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/sigmob/volley/m<",
            "*>;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sigmob/volley/toolbox/j;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sigmob/volley/m;->s()I

    move-result v1

    invoke-virtual {p2}, Lcom/sigmob/volley/m;->t()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    const-string p2, "https"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    iget-object p1, p0, Lcom/sigmob/volley/toolbox/j;->b:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz p1, :cond_38

    move-object p2, v0

    check-cast p2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p2, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance p1, Lcom/sigmob/volley/toolbox/j$1;

    invoke-direct {p1, p0}, Lcom/sigmob/volley/toolbox/j$1;-><init>(Lcom/sigmob/volley/toolbox/j;)V

    invoke-virtual {p2, p1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_38
    return-object v0
.end method

.method static a(Ljava/util/Map;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/sigmob/volley/f;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/sigmob/volley/f;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lcom/sigmob/volley/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_48
    return-object v0
.end method

.method static a(Ljava/net/HttpURLConnection;Lcom/sigmob/volley/m;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/sigmob/volley/m<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sigmob/volley/m;->g()I

    move-result v0

    const-string v1, "POST"

    packed-switch v0, :pswitch_data_40

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown method type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_11
    const-string v0, "PATCH"

    goto :goto_22

    :pswitch_14
    const-string p1, "TRACE"

    goto :goto_2f

    :pswitch_17
    const-string p1, "OPTIONS"

    goto :goto_2f

    :pswitch_1a
    const-string p1, "HEAD"

    goto :goto_2f

    :pswitch_1d
    const-string p1, "DELETE"

    goto :goto_2f

    :pswitch_20
    const-string v0, "PUT"

    :goto_22
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_29

    :pswitch_26
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :goto_29
    invoke-static {p0, p1}, Lcom/sigmob/volley/toolbox/j;->b(Ljava/net/HttpURLConnection;Lcom/sigmob/volley/m;)V

    goto :goto_3f

    :pswitch_2d
    const-string p1, "GET"

    :goto_2f
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_3f

    :pswitch_33
    invoke-virtual {p1}, Lcom/sigmob/volley/m;->b()[B

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/sigmob/volley/toolbox/j;->a(Ljava/net/HttpURLConnection;Lcom/sigmob/volley/m;[B)V

    :cond_3f
    :goto_3f
    return-void

    :pswitch_data_40
    .packed-switch -0x1
        :pswitch_33
        :pswitch_2d
        :pswitch_26
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch
.end method

.method private static a(Ljava/net/HttpURLConnection;Lcom/sigmob/volley/m;[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/sigmob/volley/m<",
            "*>;[B)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {p1}, Lcom/sigmob/volley/m;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    return-void
.end method

.method private static a(II)Z
    .registers 3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_15

    const/16 p0, 0x64

    if-gt p0, p1, :cond_b

    const/16 p0, 0xc8

    if-lt p1, p0, :cond_15

    :cond_b
    const/16 p0, 0xcc

    if-eq p1, p0, :cond_15

    const/16 p0, 0x130

    if-eq p1, p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method private static b(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_a

    :catch_5
    move-exception v0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    :goto_a
    return-object p0
.end method

.method private static b(Ljava/net/HttpURLConnection;Lcom/sigmob/volley/m;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/sigmob/volley/m<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sigmob/volley/m;->b()[B

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {p0, p1, v0}, Lcom/sigmob/volley/toolbox/j;->a(Ljava/net/HttpURLConnection;Lcom/sigmob/volley/m;[B)V

    :cond_9
    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/volley/m;Ljava/util/Map;)Lcom/sigmob/volley/toolbox/i;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/m<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sigmob/volley/toolbox/i;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sigmob/volley/m;->i()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/sigmob/volley/m;->c()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object p2, p0, Lcom/sigmob/volley/toolbox/j;->a:Lcom/sigmob/volley/toolbox/j$b;

    if-eqz p2, :cond_38

    invoke-interface {p2, v0}, Lcom/sigmob/volley/toolbox/j$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1f

    move-object v0, p2

    goto :goto_38

    :cond_1f
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URL blocked by rewriter: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    :goto_38
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/sigmob/volley/toolbox/j;->a(Ljava/net/URL;Lcom/sigmob/volley/m;)Ljava/net/HttpURLConnection;

    move-result-object p2

    const/4 v0, 0x0

    :try_start_42
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    :cond_60
    invoke-static {p2, p1}, Lcom/sigmob/volley/toolbox/j;->a(Ljava/net/HttpURLConnection;Lcom/sigmob/volley/m;)V

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9d

    invoke-virtual {p1}, Lcom/sigmob/volley/m;->g()I

    move-result p1

    invoke-static {p1, v1}, Lcom/sigmob/volley/toolbox/j;->a(II)Z

    move-result p1

    if-nez p1, :cond_85

    new-instance p1, Lcom/sigmob/volley/toolbox/i;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/volley/toolbox/j;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/sigmob/volley/toolbox/i;-><init>(ILjava/util/List;)V
    :try_end_81
    .catchall {:try_start_42 .. :try_end_81} :catchall_a5

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    :cond_85
    const/4 v0, 0x1

    :try_start_86
    new-instance p1, Lcom/sigmob/volley/toolbox/i;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/volley/toolbox/j;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    new-instance v4, Lcom/sigmob/volley/toolbox/j$a;

    invoke-direct {v4, p2}, Lcom/sigmob/volley/toolbox/j$a;-><init>(Ljava/net/HttpURLConnection;)V

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/sigmob/volley/toolbox/i;-><init>(ILjava/util/List;ILjava/io/InputStream;)V

    return-object p1

    :cond_9d
    new-instance p1, Ljava/io/IOException;

    const-string v1, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_a5
    .catchall {:try_start_86 .. :try_end_a5} :catchall_a5

    :catchall_a5
    move-exception p1

    if-nez v0, :cond_ab

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_ab
    throw p1
.end method

.method protected a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 3

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    invoke-static {}, Ljava/net/HttpURLConnection;->getFollowRedirects()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-object p1
.end method
