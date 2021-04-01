.class public Lcom/sigmob/volley/toolbox/m;
.super Lcom/sigmob/volley/toolbox/a;


# static fields
.field private static final a:I = 0x64


# instance fields
.field private final b:Lcom/sigmob/volley/toolbox/o;

.field private final c:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sigmob/volley/toolbox/m;-><init>(Lcom/sigmob/volley/toolbox/o;)V

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/volley/toolbox/o;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sigmob/volley/toolbox/m;-><init>(Lcom/sigmob/volley/toolbox/o;Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/volley/toolbox/o;Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 3

    invoke-direct {p0}, Lcom/sigmob/volley/toolbox/a;-><init>()V

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/m;->b:Lcom/sigmob/volley/toolbox/o;

    iput-object p2, p0, Lcom/sigmob/volley/toolbox/m;->c:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method static synthetic a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .registers 2

    invoke-static {p0}, Lcom/sigmob/volley/toolbox/m;->b(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/net/URL;Lcom/sigmob/volley/q;)Ljava/net/HttpURLConnection;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/sigmob/volley/q",
            "<*>;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sigmob/volley/toolbox/m;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sigmob/volley/q;->x()I

    move-result v0

    invoke-virtual {p2}, Lcom/sigmob/volley/q;->y()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v0, "https"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/m;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_3d

    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v2, p0, Lcom/sigmob/volley/toolbox/m;->c:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v2, Lcom/sigmob/volley/toolbox/m$1;

    invoke-direct {v2, p0}, Lcom/sigmob/volley/toolbox/m$1;-><init>(Lcom/sigmob/volley/toolbox/m;)V

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_3d
    return-object v1
.end method

.method static a(Ljava/util/Map;)Ljava/util/List;
    .registers 8
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
            "Lcom/sigmob/volley/j;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

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

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_11

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

    new-instance v6, Lcom/sigmob/volley/j;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v6, v2, v1}, Lcom/sigmob/volley/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_48
    return-object v3
.end method

.method static a(Ljava/net/HttpURLConnection;Lcom/sigmob/volley/q;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/sigmob/volley/q",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sigmob/volley/q;->i()I

    move-result v0

    packed-switch v0, :pswitch_data_58

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown method type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_f
    invoke-virtual {p1}, Lcom/sigmob/volley/q;->c()[B

    move-result-object v0

    if-eqz v0, :cond_1d

    const-string v1, "POST"

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/sigmob/volley/toolbox/m;->a(Ljava/net/HttpURLConnection;Lcom/sigmob/volley/q;[B)V

    :cond_1d
    :goto_1d
    return-void

    :pswitch_1e
    const-string v0, "GET"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_1d

    :pswitch_24
    const-string v0, "DELETE"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_1d

    :pswitch_2a
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/sigmob/volley/toolbox/m;->b(Ljava/net/HttpURLConnection;Lcom/sigmob/volley/q;)V

    goto :goto_1d

    :pswitch_33
    const-string v0, "PUT"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/sigmob/volley/toolbox/m;->b(Ljava/net/HttpURLConnection;Lcom/sigmob/volley/q;)V

    goto :goto_1d

    :pswitch_3c
    const-string v0, "HEAD"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_1d

    :pswitch_42
    const-string v0, "OPTIONS"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_1d

    :pswitch_48
    const-string v0, "TRACE"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_1d

    :pswitch_4e
    const-string v0, "PATCH"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/sigmob/volley/toolbox/m;->b(Ljava/net/HttpURLConnection;Lcom/sigmob/volley/q;)V

    goto :goto_1d

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

.method private static a(Ljava/net/HttpURLConnection;Lcom/sigmob/volley/q;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/sigmob/volley/q",
            "<*>;[B)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v0, "Content-Type"

    invoke-virtual {p1}, Lcom/sigmob/volley/q;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    return-void
.end method

.method private static a(II)Z
    .registers 3

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

.method private static b(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_4
.end method

.method private static b(Ljava/net/HttpURLConnection;Lcom/sigmob/volley/q;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/sigmob/volley/q",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sigmob/volley/q;->c()[B

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {p0, p1, v0}, Lcom/sigmob/volley/toolbox/m;->a(Ljava/net/HttpURLConnection;Lcom/sigmob/volley/q;[B)V

    :cond_9
    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/volley/q;Ljava/util/Map;)Lcom/sigmob/volley/toolbox/l;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/q",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sigmob/volley/toolbox/l;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sigmob/volley/q;->n()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/sigmob/volley/q;->d()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/m;->b:Lcom/sigmob/volley/toolbox/o;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/m;->b:Lcom/sigmob/volley/toolbox/o;

    invoke-interface {v0, v1}, Lcom/sigmob/volley/toolbox/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_39

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

    :cond_38
    move-object v0, v1

    :cond_39
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, p1}, Lcom/sigmob/volley/toolbox/m;->a(Ljava/net/URL;Lcom/sigmob/volley/q;)Ljava/net/HttpURLConnection;

    move-result-object v4

    const/4 v2, 0x0

    :try_start_43
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_43 .. :try_end_60} :catchall_61

    goto :goto_4b

    :catchall_61
    move-exception v0

    move v1, v2

    :goto_63
    if-nez v1, :cond_68

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_68
    throw v0

    :cond_69
    :try_start_69
    invoke-static {v4, p1}, Lcom/sigmob/volley/toolbox/m;->a(Ljava/net/HttpURLConnection;Lcom/sigmob/volley/q;)V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/4 v0, -0x1

    if-ne v3, v0, :cond_7b

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7b
    invoke-virtual {p1}, Lcom/sigmob/volley/q;->i()I

    move-result v0

    invoke-static {v0, v3}, Lcom/sigmob/volley/toolbox/m;->a(II)Z

    move-result v0

    if-nez v0, :cond_96

    new-instance v0, Lcom/sigmob/volley/toolbox/l;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/volley/toolbox/m;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/sigmob/volley/toolbox/l;-><init>(ILjava/util/List;)V
    :try_end_92
    .catchall {:try_start_69 .. :try_end_92} :catchall_61

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :goto_95
    return-object v0

    :cond_96
    const/4 v1, 0x1

    :try_start_97
    new-instance v0, Lcom/sigmob/volley/toolbox/l;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/volley/toolbox/m;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5

    new-instance v6, Lcom/sigmob/volley/toolbox/n;

    invoke-direct {v6, v4}, Lcom/sigmob/volley/toolbox/n;-><init>(Ljava/net/HttpURLConnection;)V

    invoke-direct {v0, v3, v2, v5, v6}, Lcom/sigmob/volley/toolbox/l;-><init>(ILjava/util/List;ILjava/io/InputStream;)V
    :try_end_ad
    .catchall {:try_start_97 .. :try_end_ad} :catchall_ae

    goto :goto_95

    :catchall_ae
    move-exception v0

    goto :goto_63
.end method

.method protected a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 4

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-static {}, Ljava/net/HttpURLConnection;->getFollowRedirects()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-object v0
.end method
