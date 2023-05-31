.class public Lcom/qq/gdt/action/d/b/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/qq/gdt/action/d/b/d;


# direct methods
.method constructor <init>(Lcom/qq/gdt/action/d/b/d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/gdt/action/d/b/e;->a:Lcom/qq/gdt/action/d/b/d;

    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;)Lcom/qq/gdt/action/d/b/j;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v2, v0

    new-instance v0, Lcom/qq/gdt/action/d/b/j;

    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-static {p0}, Lcom/qq/gdt/action/d/b/e;->b(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/qq/gdt/action/d/b/j;-><init>(Ljava/lang/String;JLjava/io/BufferedInputStream;Ljava/net/HttpURLConnection;)V

    return-object v0
.end method

.method private static a(Ljava/net/HttpURLConnection;J)V
    .registers 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_a

    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(J)V

    :goto_9
    return-void

    :cond_a
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    goto :goto_9
.end method

.method private static a(Ljava/net/HttpURLConnection;Lcom/qq/gdt/action/d/b/h;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {p1}, Lcom/qq/gdt/action/d/b/h;->a()Lcom/qq/gdt/action/d/b/f;

    move-result-object v0

    if-eqz v0, :cond_48

    invoke-virtual {p1}, Lcom/qq/gdt/action/d/b/h;->a()Lcom/qq/gdt/action/d/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/d/b/f;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_13
    if-eqz v0, :cond_22

    const-string v0, "Content-Type"

    invoke-virtual {p1}, Lcom/qq/gdt/action/d/b/h;->a()Lcom/qq/gdt/action/d/b/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/gdt/action/d/b/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    invoke-virtual {p1}, Lcom/qq/gdt/action/d/b/h;->b()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_4a

    invoke-static {p0, v0, v1}, Lcom/qq/gdt/action/d/b/e;->a(Ljava/net/HttpURLConnection;J)V

    const-string v3, "Content-Length"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_38
    :try_start_38
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_4f

    :try_start_41
    invoke-virtual {p1, v1}, Lcom/qq/gdt/action/d/b/h;->a(Ljava/io/BufferedOutputStream;)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_55

    invoke-static {v1}, Lcom/qq/gdt/action/d/b/k;->a(Ljava/io/Closeable;)V

    return-void

    :cond_48
    move-object v0, v2

    goto :goto_13

    :cond_4a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    goto :goto_38

    :catchall_4f
    move-exception v0

    move-object v1, v2

    :goto_51
    invoke-static {v1}, Lcom/qq/gdt/action/d/b/k;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_55
    move-exception v0

    goto :goto_51
.end method

.method private static a(Ljava/net/HttpURLConnection;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_26
    return-void
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

.method private static b(Lcom/qq/gdt/action/d/b/g;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/qq/gdt/action/d/b/g;->f()Lcom/qq/gdt/action/d/b/h;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/qq/gdt/action/d/b/g;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "POST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7
.end method


# virtual methods
.method public a(Lcom/qq/gdt/action/d/b/g;)Lcom/qq/gdt/action/d/b/i;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/qq/gdt/action/d/b/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Lcom/qq/gdt/action/d/b/g;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qq/gdt/action/d/b/e;->a:Lcom/qq/gdt/action/d/b/d;

    iget v1, v1, Lcom/qq/gdt/action/d/b/d;->b:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v1, p0, Lcom/qq/gdt/action/d/b/e;->a:Lcom/qq/gdt/action/d/b/d;

    iget v1, v1, Lcom/qq/gdt/action/d/b/d;->a:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p1}, Lcom/qq/gdt/action/d/b/g;->c()I

    move-result v1

    if-lez v1, :cond_31

    invoke-virtual {p1}, Lcom/qq/gdt/action/d/b/g;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    :cond_31
    invoke-virtual {p1}, Lcom/qq/gdt/action/d/b/g;->b()I

    move-result v1

    if-lez v1, :cond_3e

    invoke-virtual {p1}, Lcom/qq/gdt/action/d/b/g;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    :cond_3e
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {p1}, Lcom/qq/gdt/action/d/b/g;->d()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_51

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_51

    invoke-static {v0, v1}, Lcom/qq/gdt/action/d/b/e;->a(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    :cond_51
    invoke-static {p1}, Lcom/qq/gdt/action/d/b/e;->b(Lcom/qq/gdt/action/d/b/g;)Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-virtual {p1}, Lcom/qq/gdt/action/d/b/g;->f()Lcom/qq/gdt/action/d/b/h;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qq/gdt/action/d/b/e;->a(Ljava/net/HttpURLConnection;Lcom/qq/gdt/action/d/b/h;)V

    :cond_5e
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    invoke-static {v0}, Lcom/qq/gdt/action/d/b/e;->a(Ljava/net/HttpURLConnection;)Lcom/qq/gdt/action/d/b/j;

    move-result-object v0

    new-instance v4, Lcom/qq/gdt/action/d/b/i$a;

    invoke-direct {v4}, Lcom/qq/gdt/action/d/b/i$a;-><init>()V

    invoke-virtual {v4, p1}, Lcom/qq/gdt/action/d/b/i$a;->a(Lcom/qq/gdt/action/d/b/g;)Lcom/qq/gdt/action/d/b/i$a;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/qq/gdt/action/d/b/i$a;->a(I)Lcom/qq/gdt/action/d/b/i$a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/qq/gdt/action/d/b/i$a;->a(Ljava/lang/String;)Lcom/qq/gdt/action/d/b/i$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/qq/gdt/action/d/b/i$a;->a(Ljava/util/Map;)Lcom/qq/gdt/action/d/b/i$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qq/gdt/action/d/b/i$a;->a(Lcom/qq/gdt/action/d/b/j;)Lcom/qq/gdt/action/d/b/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/d/b/i$a;->a()Lcom/qq/gdt/action/d/b/i;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/util/concurrent/Executor;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/d/b/e;->a:Lcom/qq/gdt/action/d/b/d;

    iget-object v0, v0, Lcom/qq/gdt/action/d/b/d;->c:Ljava/util/concurrent/Executor;

    return-object v0
.end method
