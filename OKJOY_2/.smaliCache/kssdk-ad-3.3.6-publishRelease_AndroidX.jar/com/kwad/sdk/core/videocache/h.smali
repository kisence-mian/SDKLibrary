.class public Lcom/kwad/sdk/core/videocache/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/videocache/m;


# instance fields
.field private final a:Lcom/kwad/sdk/core/videocache/d/b;

.field private final b:Lcom/kwad/sdk/core/videocache/b/b;

.field private c:Lcom/kwad/sdk/core/videocache/n;

.field private d:Ljava/net/HttpURLConnection;

.field private e:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/videocache/h;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/n;

    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/n;

    iget-object v0, p1, Lcom/kwad/sdk/core/videocache/h;->a:Lcom/kwad/sdk/core/videocache/d/b;

    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/h;->a:Lcom/kwad/sdk/core/videocache/d/b;

    iget-object p1, p1, Lcom/kwad/sdk/core/videocache/h;->b:Lcom/kwad/sdk/core/videocache/b/b;

    iput-object p1, p0, Lcom/kwad/sdk/core/videocache/h;->b:Lcom/kwad/sdk/core/videocache/b/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kwad/sdk/core/videocache/d/b;Lcom/kwad/sdk/core/videocache/b/b;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/kwad/sdk/core/videocache/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/videocache/d/b;

    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/h;->a:Lcom/kwad/sdk/core/videocache/d/b;

    invoke-static {p3}, Lcom/kwad/sdk/core/videocache/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/kwad/sdk/core/videocache/b/b;

    iput-object p3, p0, Lcom/kwad/sdk/core/videocache/h;->b:Lcom/kwad/sdk/core/videocache/b/b;

    invoke-interface {p2, p1}, Lcom/kwad/sdk/core/videocache/d/b;->a(Ljava/lang/String;)Lcom/kwad/sdk/core/videocache/n;

    move-result-object p2

    if-eqz p2, :cond_1a

    goto :goto_26

    :cond_1a
    new-instance p2, Lcom/kwad/sdk/core/videocache/n;

    const-wide/32 v0, -0x80000000

    invoke-static {p1}, Lcom/kwad/sdk/core/videocache/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, v0, v1, p3}, Lcom/kwad/sdk/core/videocache/n;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    :goto_26
    iput-object p2, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/n;

    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)J
    .registers 4

    const-string v0, "Content-Length"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_b

    const-wide/16 v0, -0x1

    goto :goto_f

    :cond_b
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_f
    return-wide v0
.end method

.method private a(Ljava/net/HttpURLConnection;JI)J
    .registers 7

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/videocache/h;->a(Ljava/net/HttpURLConnection;)J

    move-result-wide v0

    const/16 p1, 0xc8

    if-ne p4, p1, :cond_9

    goto :goto_13

    :cond_9
    const/16 p1, 0xce

    if-ne p4, p1, :cond_f

    add-long/2addr v0, p2

    goto :goto_13

    :cond_f
    iget-object p1, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/n;

    iget-wide v0, p1, Lcom/kwad/sdk/core/videocache/n;->b:J

    :goto_13
    return-wide v0
.end method

.method private a(JI)Ljava/net/HttpURLConnection;
    .registers 11

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/n;

    iget-object v0, v0, Lcom/kwad/sdk/core/videocache/n;->a:Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Open connection "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-lez v4, :cond_2b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " with offset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2d

    :cond_2b
    const-string v5, ""

    :goto_2d
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "HttpUrlSource"

    invoke-static {v5, v3}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    invoke-static {v3}, Lcom/kwad/sdk/core/network/l;->a(Ljava/net/URLConnection;)V

    invoke-direct {p0, v3, v0}, Lcom/kwad/sdk/core/videocache/h;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    if-lez v4, :cond_75

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bytes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Range"

    invoke-virtual {v3, v5, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_75
    if-lez p3, :cond_7d

    invoke-virtual {v3, p3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v3, p3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    :cond_7d
    invoke-static {}, Lcom/kwad/sdk/core/network/k;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "User-Agent"

    invoke-virtual {v3, v5, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0x12d

    if-eq v4, v5, :cond_99

    const/16 v5, 0x12e

    if-eq v4, v5, :cond_99

    const/16 v5, 0x12f

    if-ne v4, v5, :cond_97

    goto :goto_99

    :cond_97
    move v4, v1

    goto :goto_9a

    :cond_99
    :goto_99
    const/4 v4, 0x1

    :goto_9a
    if-eqz v4, :cond_a7

    const-string v0, "Location"

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a7
    const/4 v5, 0x5

    if-gt v2, v5, :cond_ad

    if-nez v4, :cond_6

    return-object v3

    :cond_ad
    new-instance p1, Lcom/kwad/sdk/core/videocache/ProxyCacheException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Too many redirects: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/kwad/sdk/core/videocache/ProxyCacheException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/h;->b:Lcom/kwad/sdk/core/videocache/b/b;

    invoke-interface {v0, p2}, Lcom/kwad/sdk/core/videocache/b/b;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_2a
    return-void
.end method

.method private e()V
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Read content info from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/n;

    iget-object v1, v1, Lcom/kwad/sdk/core/videocache/n;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpUrlSource"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    const/16 v0, 0x2710

    const/4 v4, 0x0

    :try_start_21
    invoke-direct {p0, v2, v3, v0}, Lcom/kwad/sdk/core/videocache/h;->a(JI)Ljava/net/HttpURLConnection;

    move-result-object v0
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_25} :catch_6a
    .catchall {:try_start_21 .. :try_end_25} :catchall_67

    :try_start_25
    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/videocache/h;->a(Ljava/net/HttpURLConnection;)J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    new-instance v6, Lcom/kwad/sdk/core/videocache/n;

    iget-object v7, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/n;

    iget-object v7, v7, Lcom/kwad/sdk/core/videocache/n;->a:Ljava/lang/String;

    invoke-direct {v6, v7, v2, v3, v5}, Lcom/kwad/sdk/core/videocache/n;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    iput-object v6, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/n;

    iget-object v2, p0, Lcom/kwad/sdk/core/videocache/h;->a:Lcom/kwad/sdk/core/videocache/d/b;

    iget-object v3, v6, Lcom/kwad/sdk/core/videocache/n;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/n;

    invoke-interface {v2, v3, v5}, Lcom/kwad/sdk/core/videocache/d/b;->a(Ljava/lang/String;Lcom/kwad/sdk/core/videocache/n;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Source info fetched: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/n;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_5d} :catch_65
    .catchall {:try_start_25 .. :try_end_5d} :catchall_63

    invoke-static {v4}, Lcom/kwad/sdk/core/videocache/l;->a(Ljava/io/Closeable;)V

    if-eqz v0, :cond_8e

    goto :goto_8b

    :catchall_63
    move-exception v1

    goto :goto_8f

    :catch_65
    move-exception v2

    goto :goto_6c

    :catchall_67
    move-exception v1

    move-object v0, v4

    goto :goto_8f

    :catch_6a
    move-exception v0

    move-object v0, v4

    :goto_6c
    :try_start_6c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error fetching info from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/n;

    iget-object v3, v3, Lcom/kwad/sdk/core/videocache/n;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_86
    .catchall {:try_start_6c .. :try_end_86} :catchall_63

    invoke-static {v4}, Lcom/kwad/sdk/core/videocache/l;->a(Ljava/io/Closeable;)V

    if-eqz v0, :cond_8e

    :goto_8b
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8e
    return-void

    :goto_8f
    invoke-static {v4}, Lcom/kwad/sdk/core/videocache/l;->a(Ljava/io/Closeable;)V

    if-eqz v0, :cond_97

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_97
    throw v1
.end method


# virtual methods
.method public a([B)I
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/h;->e:Ljava/io/InputStream;

    const-string v1, "Error reading data from "

    if-eqz v0, :cond_4d

    const/4 v2, 0x0

    :try_start_7
    array-length v3, p1

    invoke-virtual {v0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_c
    .catch Ljava/io/InterruptedIOException; {:try_start_7 .. :try_end_c} :catch_29
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_d

    return p1

    :catch_d
    move-exception p1

    new-instance v0, Lcom/kwad/sdk/core/videocache/ProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/n;

    iget-object v2, v2, Lcom/kwad/sdk/core/videocache/n;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/kwad/sdk/core/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_29
    move-exception p1

    new-instance v0, Lcom/kwad/sdk/core/videocache/InterruptedProxyCacheException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading source "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/n;

    iget-object v2, v2, Lcom/kwad/sdk/core/videocache/n;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is interrupted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/kwad/sdk/core/videocache/InterruptedProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_4d
    new-instance p1, Lcom/kwad/sdk/core/videocache/ProxyCacheException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/n;

    iget-object v1, v1, Lcom/kwad/sdk/core/videocache/n;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": connection is absent!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/kwad/sdk/core/videocache/ProxyCacheException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized a()J
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/n;

    iget-wide v0, v0, Lcom/kwad/sdk/core/videocache/n;->b:J

    const-wide/32 v2, -0x80000000

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/h;->e()V

    :cond_f
    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/n;

    iget-wide v0, v0, Lcom/kwad/sdk/core/videocache/n;->b:J
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-wide v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(J)V
    .registers 8

    const/4 v0, -0x1

    :try_start_1
    invoke-direct {p0, p1, p2, v0}, Lcom/kwad/sdk/core/videocache/h;->a(JI)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/h;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/kwad/sdk/core/videocache/h;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lcom/kwad/sdk/core/videocache/h;->e:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/h;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/kwad/sdk/core/videocache/h;->a(Ljava/net/HttpURLConnection;JI)J

    move-result-wide v1

    new-instance v3, Lcom/kwad/sdk/core/videocache/n;

    iget-object v4, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/n;

    iget-object v4, v4, Lcom/kwad/sdk/core/videocache/n;->a:Ljava/lang/String;

    invoke-direct {v3, v4, v1, v2, v0}, Lcom/kwad/sdk/core/videocache/n;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    iput-object v3, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/n;

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/h;->a:Lcom/kwad/sdk/core/videocache/d/b;

    iget-object v1, v3, Lcom/kwad/sdk/core/videocache/n;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/n;

    invoke-interface {v0, v1, v2}, Lcom/kwad/sdk/core/videocache/d/b;->a(Ljava/lang/String;Lcom/kwad/sdk/core/videocache/n;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_38} :catch_39

    return-void

    :catch_39
    move-exception v0

    new-instance v1, Lcom/kwad/sdk/core/videocache/ProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error opening connection for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/n;

    iget-object v3, v3, Lcom/kwad/sdk/core/videocache/n;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/kwad/sdk/core/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/h;->d:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1c

    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_7} :catch_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_7} :catch_11
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_1c

    :catch_8
    move-exception v0

    const-string v0, "HttpUrlSource"

    const-string v1, "Error closing connection correctly. Should happen only on Android L. If anybody know how to fix it, please visit https://github.com/danikula/AndroidVideoCache/issues/88. Until good solution is not know, just ignore this issue."

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    :catch_11
    move-exception v0

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Wait... but why? WTF!? Really shouldn\'t happen any more after fixing https://github.com/danikula/AndroidVideoCache/issues/43. If you read it on your device log, please, notify me danikula@gmail.com or create issue here https://github.com/danikula/AndroidVideoCache/issues."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1c
    :goto_1c
    return-void
.end method

.method public declared-synchronized c()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/n;

    iget-object v0, v0, Lcom/kwad/sdk/core/videocache/n;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/h;->e()V

    :cond_e
    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/n;

    iget-object v0, v0, Lcom/kwad/sdk/core/videocache/n;->c:Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/n;

    iget-object v0, v0, Lcom/kwad/sdk/core/videocache/n;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpUrlSource{sourceInfo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
