.class public Lcom/kwad/sdk/core/videocache/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/core/videocache/n;


# instance fields
.field private final a:Lcom/kwad/sdk/core/videocache/t/b;

.field private final b:Lcom/kwad/sdk/core/videocache/r/b;

.field private c:Lcom/kwad/sdk/core/videocache/o;

.field private d:Ljava/net/HttpURLConnection;

.field private e:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/videocache/h;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/o;

    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/o;

    iget-object v0, p1, Lcom/kwad/sdk/core/videocache/h;->a:Lcom/kwad/sdk/core/videocache/t/b;

    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/h;->a:Lcom/kwad/sdk/core/videocache/t/b;

    iget-object v0, p1, Lcom/kwad/sdk/core/videocache/h;->b:Lcom/kwad/sdk/core/videocache/r/b;

    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/h;->b:Lcom/kwad/sdk/core/videocache/r/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kwad/sdk/core/videocache/t/b;Lcom/kwad/sdk/core/videocache/r/b;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/kwad/sdk/core/videocache/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/videocache/t/b;

    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/h;->a:Lcom/kwad/sdk/core/videocache/t/b;

    invoke-static {p3}, Lcom/kwad/sdk/core/videocache/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/videocache/r/b;

    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/h;->b:Lcom/kwad/sdk/core/videocache/r/b;

    invoke-interface {p2, p1}, Lcom/kwad/sdk/core/videocache/t/b;->get(Ljava/lang/String;)Lcom/kwad/sdk/core/videocache/o;

    move-result-object v0

    if-eqz v0, :cond_1c

    :goto_19
    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/o;

    return-void

    :cond_1c
    new-instance v0, Lcom/kwad/sdk/core/videocache/o;

    invoke-static {p1}, Lcom/kwad/sdk/core/videocache/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, -0x80000000

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/kwad/sdk/core/videocache/o;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_19
.end method

.method private a(Ljava/net/HttpURLConnection;)J
    .registers 4

    const-string v0, "Content-Length"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    const-wide/16 v0, -0x1

    :goto_a
    return-wide v0

    :cond_b
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_a
.end method

.method private a(Ljava/net/HttpURLConnection;JI)J
    .registers 9

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/videocache/h;->a(Ljava/net/HttpURLConnection;)J

    move-result-wide v0

    const/16 v2, 0xc8

    if-ne p4, v2, :cond_9

    :goto_8
    return-wide v0

    :cond_9
    const/16 v2, 0xce

    if-ne p4, v2, :cond_f

    add-long/2addr v0, p2

    goto :goto_8

    :cond_f
    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/o;

    iget-wide v0, v0, Lcom/kwad/sdk/core/videocache/o;->b:J

    goto :goto_8
.end method

.method private a(JI)Ljava/net/HttpURLConnection;
    .registers 13

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/o;

    iget-object v0, v0, Lcom/kwad/sdk/core/videocache/o;->a:Ljava/lang/String;

    move-object v1, v0

    move v2, v3

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Open connection "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-lez v5, :cond_9a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " with offset "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " to "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/videocache/j;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-direct {p0, v0, v1}, Lcom/kwad/sdk/core/videocache/h;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    if-lez v5, :cond_6e

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

    invoke-virtual {v0, v5, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6e
    if-lez p3, :cond_76

    invoke-virtual {v0, p3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, p3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    :cond_76
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0x12d

    if-eq v4, v5, :cond_86

    const/16 v5, 0x12e

    if-eq v4, v5, :cond_86

    const/16 v5, 0x12f

    if-ne v4, v5, :cond_9d

    :cond_86
    const/4 v4, 0x1

    :goto_87
    if-eqz v4, :cond_94

    const-string v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_94
    const/4 v5, 0x5

    if-gt v2, v5, :cond_9f

    if-nez v4, :cond_7

    return-object v0

    :cond_9a
    const-string v0, ""

    goto :goto_2b

    :cond_9d
    move v4, v3

    goto :goto_87

    :cond_9f
    new-instance v0, Lcom/kwad/sdk/core/videocache/ProxyCacheException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many redirects: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/videocache/ProxyCacheException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/h;->b:Lcom/kwad/sdk/core/videocache/r/b;

    invoke-interface {v0, p2}, Lcom/kwad/sdk/core/videocache/r/b;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_2b
    return-void
.end method

.method private d()V
    .registers 9

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Read content info from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/o;

    iget-object v1, v1, Lcom/kwad/sdk/core/videocache/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/videocache/j;->a(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    const/16 v3, 0x2710

    :try_start_1f
    invoke-direct {p0, v0, v1, v3}, Lcom/kwad/sdk/core/videocache/h;->a(JI)Ljava/net/HttpURLConnection;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_66
    .catchall {:try_start_1f .. :try_end_22} :catchall_88

    move-result-object v0

    :try_start_23
    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/videocache/h;->a(Ljava/net/HttpURLConnection;)J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2e} :catch_93
    .catchall {:try_start_23 .. :try_end_2e} :catchall_95

    move-result-object v2

    :try_start_2f
    new-instance v3, Lcom/kwad/sdk/core/videocache/o;

    iget-object v6, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/o;

    iget-object v6, v6, Lcom/kwad/sdk/core/videocache/o;->a:Ljava/lang/String;

    invoke-direct {v3, v6, v4, v5, v1}, Lcom/kwad/sdk/core/videocache/o;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    iput-object v3, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/o;

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/h;->a:Lcom/kwad/sdk/core/videocache/t/b;

    iget-object v3, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/o;

    iget-object v3, v3, Lcom/kwad/sdk/core/videocache/o;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/o;

    invoke-interface {v1, v3, v4}, Lcom/kwad/sdk/core/videocache/t/b;->a(Ljava/lang/String;Lcom/kwad/sdk/core/videocache/o;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Source info fetched: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/o;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/core/videocache/j;->a(Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_5d} :catch_93
    .catchall {:try_start_2f .. :try_end_5d} :catchall_9b

    invoke-static {v2}, Lcom/kwad/sdk/core/videocache/m;->a(Ljava/io/Closeable;)V

    if-eqz v0, :cond_65

    :goto_62
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_65
    return-void

    :catch_66
    move-exception v0

    move-object v0, v2

    :goto_68
    :try_start_68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error fetching info from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/o;

    iget-object v3, v3, Lcom/kwad/sdk/core/videocache/o;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/core/videocache/j;->b(Ljava/lang/String;)V
    :try_end_82
    .catchall {:try_start_68 .. :try_end_82} :catchall_9b

    invoke-static {v2}, Lcom/kwad/sdk/core/videocache/m;->a(Ljava/io/Closeable;)V

    if-eqz v0, :cond_65

    goto :goto_62

    :catchall_88
    move-exception v0

    move-object v1, v2

    :goto_8a
    invoke-static {v1}, Lcom/kwad/sdk/core/videocache/m;->a(Ljava/io/Closeable;)V

    if-eqz v2, :cond_92

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_92
    throw v0

    :catch_93
    move-exception v1

    goto :goto_68

    :catchall_95
    move-exception v1

    move-object v7, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_8a

    :catchall_9b
    move-exception v1

    move-object v7, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_8a
.end method


# virtual methods
.method public a([B)I
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/h;->e:Ljava/io/InputStream;

    if-eqz v0, :cond_4d

    const/4 v1, 0x0

    :try_start_5
    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I
    :try_end_9
    .catch Ljava/io/InterruptedIOException; {:try_start_5 .. :try_end_9} :catch_29
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_b

    move-result v0

    return v0

    :catch_b
    move-exception v0

    new-instance v1, Lcom/kwad/sdk/core/videocache/ProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading data from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/o;

    iget-object v3, v3, Lcom/kwad/sdk/core/videocache/o;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/kwad/sdk/core/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_29
    move-exception v0

    new-instance v1, Lcom/kwad/sdk/core/videocache/InterruptedProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reading source "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/o;

    iget-object v3, v3, Lcom/kwad/sdk/core/videocache/o;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is interrupted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/kwad/sdk/core/videocache/InterruptedProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4d
    new-instance v0, Lcom/kwad/sdk/core/videocache/ProxyCacheException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error reading data from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/o;

    iget-object v2, v2, Lcom/kwad/sdk/core/videocache/o;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": connection is absent!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/videocache/ProxyCacheException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized a()J
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/o;

    iget-wide v0, v0, Lcom/kwad/sdk/core/videocache/o;->b:J

    const-wide/32 v2, -0x80000000

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/h;->d()V

    :cond_f
    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/o;

    iget-wide v0, v0, Lcom/kwad/sdk/core/videocache/o;->b:J
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

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/h;->d:Ljava/net/HttpURLConnection;

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

    iget-object v2, p0, Lcom/kwad/sdk/core/videocache/h;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/kwad/sdk/core/videocache/h;->a(Ljava/net/HttpURLConnection;JI)J

    move-result-wide v2

    new-instance v1, Lcom/kwad/sdk/core/videocache/o;

    iget-object v4, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/o;

    iget-object v4, v4, Lcom/kwad/sdk/core/videocache/o;->a:Ljava/lang/String;

    invoke-direct {v1, v4, v2, v3, v0}, Lcom/kwad/sdk/core/videocache/o;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    iput-object v1, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/o;

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/h;->a:Lcom/kwad/sdk/core/videocache/t/b;

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/o;

    iget-object v1, v1, Lcom/kwad/sdk/core/videocache/o;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/o;

    invoke-interface {v0, v1, v2}, Lcom/kwad/sdk/core/videocache/t/b;->a(Ljava/lang/String;Lcom/kwad/sdk/core/videocache/o;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_3e} :catch_3f

    return-void

    :catch_3f
    move-exception v0

    new-instance v1, Lcom/kwad/sdk/core/videocache/ProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error opening connection for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/o;

    iget-object v3, v3, Lcom/kwad/sdk/core/videocache/o;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/kwad/sdk/core/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public declared-synchronized b()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/o;

    iget-object v0, v0, Lcom/kwad/sdk/core/videocache/o;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/h;->d()V

    :cond_e
    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/o;

    iget-object v0, v0, Lcom/kwad/sdk/core/videocache/o;->c:Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/o;

    iget-object v0, v0, Lcom/kwad/sdk/core/videocache/o;->a:Ljava/lang/String;

    return-object v0
.end method

.method public close()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/h;->d:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_7

    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_7} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_7} :catch_18
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_7} :catch_8

    :cond_7
    :goto_7
    return-void

    :catch_8
    move-exception v0

    const-string v0, "Error closing connection correctly. Should happen only on Android L. If anybody know how to fix it, please visit https://github.com/danikula/AndroidVideoCache/issues/88. Until good solution is not know, just ignore this issue."

    invoke-static {v0}, Lcom/kwad/sdk/core/videocache/j;->b(Ljava/lang/String;)V

    goto :goto_7

    :catch_f
    move-exception v0

    :goto_10
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Wait... but why? WTF!? Really shouldn\'t happen any more after fixing https://github.com/danikula/AndroidVideoCache/issues/43. If you read it on your device log, please, notify me danikula@gmail.com or create issue here https://github.com/danikula/AndroidVideoCache/issues."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_18
    move-exception v0

    goto :goto_10
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpUrlSource{sourceInfo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/h;->c:Lcom/kwad/sdk/core/videocache/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
