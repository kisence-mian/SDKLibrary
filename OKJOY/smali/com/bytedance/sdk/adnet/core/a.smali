.class public Lcom/bytedance/sdk/adnet/core/a;
.super Ljava/lang/Object;
.source "BasicNetwork.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/face/b;


# static fields
.field protected static final a:Z


# instance fields
.field protected final b:Lcom/bytedance/sdk/adnet/face/IHttpStack;

.field protected final c:Lcom/bytedance/sdk/adnet/core/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/bytedance/sdk/adnet/core/p;->a:Z

    sput-boolean v0, Lcom/bytedance/sdk/adnet/core/a;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/adnet/face/IHttpStack;)V
    .registers 4

    .prologue
    .line 69
    new-instance v0, Lcom/bytedance/sdk/adnet/core/b;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/adnet/core/b;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/adnet/core/a;-><init>(Lcom/bytedance/sdk/adnet/face/IHttpStack;Lcom/bytedance/sdk/adnet/core/b;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/adnet/face/IHttpStack;Lcom/bytedance/sdk/adnet/core/b;)V
    .registers 3

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/a;->b:Lcom/bytedance/sdk/adnet/face/IHttpStack;

    .line 78
    iput-object p2, p0, Lcom/bytedance/sdk/adnet/core/a;->c:Lcom/bytedance/sdk/adnet/core/b;

    .line 79
    return-void
.end method

.method private static a(Ljava/util/List;Lcom/bytedance/sdk/adnet/face/a$a;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/adnet/core/Header;",
            ">;",
            "Lcom/bytedance/sdk/adnet/face/a$a;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/adnet/core/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 336
    new-instance v3, Ljava/util/TreeSet;

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v3, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 337
    if-eqz p0, :cond_2f

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 338
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/core/Header;

    .line 339
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 340
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 346
    :cond_2f
    if-eqz p1, :cond_9a

    .line 347
    iget-object v0, p1, Lcom/bytedance/sdk/adnet/face/a$a;->i:Ljava/util/List;

    if-eqz v0, :cond_5d

    .line 348
    iget-object v0, p1, Lcom/bytedance/sdk/adnet/face/a$a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9a

    .line 349
    iget-object v0, p1, Lcom/bytedance/sdk/adnet/face/a$a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_43
    :goto_43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/core/Header;

    .line 350
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    .line 351
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 357
    :cond_5d
    iget-object v0, p1, Lcom/bytedance/sdk/adnet/face/a$a;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9a

    .line 358
    iget-object v0, p1, Lcom/bytedance/sdk/adnet/face/a$a;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6f
    :goto_6f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 359
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 360
    new-instance v5, Lcom/bytedance/sdk/adnet/core/Header;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v5, v1, v0}, Lcom/bytedance/sdk/adnet/core/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    .line 366
    :cond_9a
    return-object v2
.end method

.method private a(Lcom/bytedance/sdk/adnet/face/a$a;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/face/a$a;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    if-nez p1, :cond_7

    .line 229
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 243
    :cond_6
    :goto_6
    return-object v0

    .line 232
    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 234
    iget-object v1, p1, Lcom/bytedance/sdk/adnet/face/a$a;->c:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 235
    const-string v1, "If-None-Match"

    iget-object v2, p1, Lcom/bytedance/sdk/adnet/face/a$a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_17
    iget-wide v2, p1, Lcom/bytedance/sdk/adnet/face/a$a;->e:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_6

    .line 239
    const-string v1, "If-Modified-Since"

    iget-wide v2, p1, Lcom/bytedance/sdk/adnet/face/a$a;->e:J

    .line 240
    invoke-static {v2, v3}, Lcom/bytedance/sdk/adnet/d/c;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 239
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6
.end method

.method private a(JLcom/bytedance/sdk/adnet/core/Request;[BI)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;[BI)V"
        }
    .end annotation

    .prologue
    .line 193
    sget-boolean v0, Lcom/bytedance/sdk/adnet/core/a;->a:Z

    if-nez v0, :cond_a

    const-wide/16 v0, 0xbb8

    cmp-long v0, p1, v0

    if-lez v0, :cond_3c

    .line 194
    :cond_a
    const-string v1, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v2, v0

    const/4 v0, 0x1

    .line 198
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    if-eqz p4, :cond_3d

    array-length v0, p4

    .line 199
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_21
    aput-object v0, v2, v3

    const/4 v0, 0x3

    .line 200
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    .line 201
    invoke-virtual {p3}, Lcom/bytedance/sdk/adnet/core/Request;->getRetryPolicy()Lcom/bytedance/sdk/adnet/face/d;

    move-result-object v3

    invoke-interface {v3}, Lcom/bytedance/sdk/adnet/face/d;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 194
    invoke-static {v1, v2}, Lcom/bytedance/sdk/adnet/core/p;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    :cond_3c
    return-void

    .line 199
    :cond_3d
    const-string v0, "null"

    goto :goto_21
.end method

.method private static a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/err/VAdError;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;",
            "Lcom/bytedance/sdk/adnet/err/VAdError;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/adnet/err/VAdError;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 213
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getRetryPolicy()Lcom/bytedance/sdk/adnet/face/d;

    move-result-object v0

    .line 214
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getTimeoutMs()I

    move-result v1

    .line 217
    :try_start_b
    invoke-interface {v0, p2}, Lcom/bytedance/sdk/adnet/face/d;->a(Lcom/bytedance/sdk/adnet/err/VAdError;)V
    :try_end_e
    .catch Lcom/bytedance/sdk/adnet/err/VAdError; {:try_start_b .. :try_end_e} :catch_22

    .line 223
    const-string v0, "%s-retry [timeout=%s]"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/adnet/core/Request;->addMarker(Ljava/lang/String;)V

    .line 224
    return-void

    .line 218
    :catch_22
    move-exception v0

    .line 219
    const-string v2, "%s-timeout-giveup [timeout=%s]"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    .line 220
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/adnet/core/Request;->addMarker(Ljava/lang/String;)V

    .line 221
    throw v0
.end method

.method private a(Ljava/io/InputStream;I)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/adnet/err/f;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 275
    new-instance v2, Lcom/bytedance/sdk/adnet/core/c;

    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/a;->c:Lcom/bytedance/sdk/adnet/core/b;

    invoke-direct {v2, v0, p2}, Lcom/bytedance/sdk/adnet/core/c;-><init>(Lcom/bytedance/sdk/adnet/core/b;I)V

    .line 276
    const/4 v1, 0x0

    .line 278
    if-nez p1, :cond_20

    .line 279
    :try_start_b
    new-instance v0, Lcom/bytedance/sdk/adnet/err/f;

    invoke-direct {v0}, Lcom/bytedance/sdk/adnet/err/f;-><init>()V

    throw v0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_11

    .line 288
    :catchall_11
    move-exception v0

    .line 290
    if-eqz p1, :cond_17

    .line 291
    :try_start_14
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_4f

    .line 298
    :cond_17
    :goto_17
    iget-object v3, p0, Lcom/bytedance/sdk/adnet/core/a;->c:Lcom/bytedance/sdk/adnet/core/b;

    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/adnet/core/b;->a([B)V

    .line 299
    invoke-virtual {v2}, Lcom/bytedance/sdk/adnet/core/c;->close()V

    .line 300
    throw v0

    .line 281
    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/a;->c:Lcom/bytedance/sdk/adnet/core/b;

    const/16 v3, 0x400

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/adnet/core/b;->a(I)[B

    move-result-object v1

    .line 283
    :goto_28
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_34

    .line 284
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Lcom/bytedance/sdk/adnet/core/c;->write([BII)V

    goto :goto_28

    .line 286
    :cond_34
    invoke-virtual {v2}, Lcom/bytedance/sdk/adnet/core/c;->toByteArray()[B
    :try_end_37
    .catchall {:try_start_20 .. :try_end_37} :catchall_11

    move-result-object v0

    .line 290
    if-eqz p1, :cond_3d

    .line 291
    :try_start_3a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_46

    .line 298
    :cond_3d
    :goto_3d
    iget-object v3, p0, Lcom/bytedance/sdk/adnet/core/a;->c:Lcom/bytedance/sdk/adnet/core/b;

    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/adnet/core/b;->a([B)V

    .line 299
    invoke-virtual {v2}, Lcom/bytedance/sdk/adnet/core/c;->close()V

    .line 286
    return-object v0

    .line 293
    :catch_46
    move-exception v3

    .line 296
    const-string v3, "Error occurred when closing InputStream"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/bytedance/sdk/adnet/core/p;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3d

    .line 293
    :catch_4f
    move-exception v3

    .line 296
    const-string v3, "Error occurred when closing InputStream"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/bytedance/sdk/adnet/core/p;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/adnet/core/Request;)Lcom/bytedance/sdk/adnet/core/j;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;)",
            "Lcom/bytedance/sdk/adnet/core/j;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/adnet/err/VAdError;
        }
    .end annotation

    .prologue
    .line 85
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 86
    const/4 v4, 0x0

    .line 87
    const/4 v11, 0x0

    .line 88
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 92
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/adnet/core/Request;->getCacheEntry()Lcom/bytedance/sdk/adnet/face/a$a;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/bytedance/sdk/adnet/core/a;->a(Lcom/bytedance/sdk/adnet/face/a$a;)Ljava/util/Map;

    move-result-object v5

    .line 93
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bytedance/sdk/adnet/core/a;->b:Lcom/bytedance/sdk/adnet/face/IHttpStack;

    move-object/from16 v0, p1

    invoke-interface {v6, v0, v5}, Lcom/bytedance/sdk/adnet/face/IHttpStack;->performRequest(Lcom/bytedance/sdk/adnet/core/Request;Ljava/util/Map;)Lcom/bytedance/sdk/adnet/core/HttpResponse;
    :try_end_1d
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_1d} :catch_1d0
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_1d} :catch_e5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1d} :catch_117
    .catchall {:try_start_a .. :try_end_1d} :catchall_1b9

    move-result-object v19

    .line 94
    :try_start_1e
    invoke-virtual/range {v19 .. v19}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getStatusCode()I

    move-result v16

    .line 96
    invoke-virtual/range {v19 .. v19}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getHeaders()Ljava/util/List;

    move-result-object v10

    .line 98
    const/16 v4, 0x130

    move/from16 v0, v16

    if-ne v0, v4, :cond_76

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/adnet/core/Request;->getCacheEntry()Lcom/bytedance/sdk/adnet/face/a$a;

    move-result-object v4

    .line 100
    if-nez v4, :cond_51

    .line 101
    new-instance v4, Lcom/bytedance/sdk/adnet/core/j;

    const/16 v5, 0x130

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 105
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v20

    invoke-direct/range {v4 .. v10}, Lcom/bytedance/sdk/adnet/core/j;-><init>(I[BZJLjava/util/List;)V
    :try_end_41
    .catch Ljava/net/SocketTimeoutException; {:try_start_1e .. :try_end_41} :catch_9f
    .catch Ljava/net/MalformedURLException; {:try_start_1e .. :try_end_41} :catch_1cd
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_41} :catch_1c5
    .catchall {:try_start_1e .. :try_end_41} :catchall_106

    .line 177
    if-eqz v19, :cond_50

    .line 178
    :try_start_43
    invoke-virtual/range {v19 .. v19}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_50

    .line 179
    invoke-virtual/range {v19 .. v19}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_50} :catch_1d6

    .line 127
    :cond_50
    :goto_50
    return-object v4

    .line 109
    :cond_51
    :try_start_51
    invoke-static {v10, v4}, Lcom/bytedance/sdk/adnet/core/a;->a(Ljava/util/List;Lcom/bytedance/sdk/adnet/face/a$a;)Ljava/util/List;

    move-result-object v18

    .line 110
    new-instance v12, Lcom/bytedance/sdk/adnet/core/j;

    const/16 v13, 0x130

    iget-object v14, v4, Lcom/bytedance/sdk/adnet/face/a$a;->b:[B

    const/4 v15, 0x1

    .line 114
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v16, v4, v20

    invoke-direct/range {v12 .. v18}, Lcom/bytedance/sdk/adnet/core/j;-><init>(I[BZJLjava/util/List;)V
    :try_end_65
    .catch Ljava/net/SocketTimeoutException; {:try_start_51 .. :try_end_65} :catch_9f
    .catch Ljava/net/MalformedURLException; {:try_start_51 .. :try_end_65} :catch_1cd
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_65} :catch_1c5
    .catchall {:try_start_51 .. :try_end_65} :catchall_106

    .line 177
    if-eqz v19, :cond_74

    .line 178
    :try_start_67
    invoke-virtual/range {v19 .. v19}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_74

    .line 179
    invoke-virtual/range {v19 .. v19}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_74} :catch_1d3

    :cond_74
    :goto_74
    move-object v4, v12

    .line 110
    goto :goto_50

    .line 118
    :cond_76
    :try_start_76
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/adnet/core/a;->a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/core/HttpResponse;)[B
    :try_end_7f
    .catch Ljava/net/SocketTimeoutException; {:try_start_76 .. :try_end_7f} :catch_9f
    .catch Ljava/net/MalformedURLException; {:try_start_76 .. :try_end_7f} :catch_1cd
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_7f} :catch_1c5
    .catchall {:try_start_76 .. :try_end_7f} :catchall_106

    move-result-object v15

    .line 121
    :try_start_80
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v12, v4, v20

    move-object/from16 v11, p0

    move-object/from16 v14, p1

    .line 122
    invoke-direct/range {v11 .. v16}, Lcom/bytedance/sdk/adnet/core/a;->a(JLcom/bytedance/sdk/adnet/core/Request;[BI)V

    .line 124
    const/16 v4, 0xc8

    move/from16 v0, v16

    if-lt v0, v4, :cond_99

    const/16 v4, 0x12b

    move/from16 v0, v16

    if-le v0, v4, :cond_c2

    .line 125
    :cond_99
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4
    :try_end_9f
    .catch Ljava/net/SocketTimeoutException; {:try_start_80 .. :try_end_9f} :catch_9f
    .catch Ljava/net/MalformedURLException; {:try_start_80 .. :try_end_9f} :catch_1cd
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_9f} :catch_1c9
    .catchall {:try_start_80 .. :try_end_9f} :catchall_106

    .line 133
    :catch_9f
    move-exception v4

    move-object/from16 v4, v19

    .line 134
    :goto_a2
    :try_start_a2
    const-string v5, "socket"

    new-instance v6, Lcom/bytedance/sdk/adnet/err/g;

    invoke-direct {v6}, Lcom/bytedance/sdk/adnet/err/g;-><init>()V

    move-object/from16 v0, p1

    invoke-static {v5, v0, v6}, Lcom/bytedance/sdk/adnet/core/a;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/err/VAdError;)V
    :try_end_ae
    .catchall {:try_start_a2 .. :try_end_ae} :catchall_1bf

    .line 177
    if-eqz v4, :cond_0

    .line 178
    :try_start_b0
    invoke-virtual {v4}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 179
    invoke-virtual {v4}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_bd
    .catch Ljava/lang/Throwable; {:try_start_b0 .. :try_end_bd} :catch_bf

    goto/16 :goto_0

    .line 182
    :catch_bf
    move-exception v4

    goto/16 :goto_0

    .line 127
    :cond_c2
    :try_start_c2
    new-instance v4, Lcom/bytedance/sdk/adnet/core/j;

    const/4 v7, 0x0

    .line 131
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v20

    move/from16 v5, v16

    move-object v6, v15

    invoke-direct/range {v4 .. v10}, Lcom/bytedance/sdk/adnet/core/j;-><init>(I[BZJLjava/util/List;)V
    :try_end_d1
    .catch Ljava/net/SocketTimeoutException; {:try_start_c2 .. :try_end_d1} :catch_9f
    .catch Ljava/net/MalformedURLException; {:try_start_c2 .. :try_end_d1} :catch_1cd
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_d1} :catch_1c9
    .catchall {:try_start_c2 .. :try_end_d1} :catchall_106

    .line 177
    if-eqz v19, :cond_50

    .line 178
    :try_start_d3
    invoke-virtual/range {v19 .. v19}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_50

    .line 179
    invoke-virtual/range {v19 .. v19}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_e0
    .catch Ljava/lang/Throwable; {:try_start_d3 .. :try_end_e0} :catch_e2

    goto/16 :goto_50

    .line 182
    :catch_e2
    move-exception v5

    goto/16 :goto_50

    .line 135
    :catch_e5
    move-exception v5

    move-object/from16 v19, v4

    move-object v4, v5

    .line 136
    :goto_e9
    :try_start_e9
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad URL "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/adnet/core/Request;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_106
    .catchall {:try_start_e9 .. :try_end_106} :catchall_106

    .line 176
    :catchall_106
    move-exception v4

    .line 177
    :goto_107
    if-eqz v19, :cond_116

    .line 178
    :try_start_109
    invoke-virtual/range {v19 .. v19}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_116

    .line 179
    invoke-virtual/range {v19 .. v19}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_116
    .catch Ljava/lang/Throwable; {:try_start_109 .. :try_end_116} :catch_1b6

    .line 184
    :cond_116
    :goto_116
    throw v4

    .line 137
    :catch_117
    move-exception v5

    move-object v6, v11

    move-object/from16 v19, v4

    move-object v4, v5

    .line 139
    :goto_11c
    if-eqz v19, :cond_16e

    .line 140
    :try_start_11e
    invoke-virtual/range {v19 .. v19}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getStatusCode()I

    move-result v5

    .line 144
    const-string v4, "Unexpected response code %d for %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/adnet/core/Request;->getUrl()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Lcom/bytedance/sdk/adnet/core/p;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    if-eqz v6, :cond_1a9

    .line 147
    new-instance v4, Lcom/bytedance/sdk/adnet/core/j;

    const/4 v7, 0x0

    .line 152
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v20

    invoke-direct/range {v4 .. v10}, Lcom/bytedance/sdk/adnet/core/j;-><init>(I[BZJLjava/util/List;)V

    .line 154
    const/16 v6, 0x191

    if-eq v5, v6, :cond_14e

    const/16 v6, 0x193

    if-ne v5, v6, :cond_174

    .line 156
    :cond_14e
    const-string v5, "auth"

    new-instance v6, Lcom/bytedance/sdk/adnet/err/a;

    invoke-direct {v6, v4}, Lcom/bytedance/sdk/adnet/err/a;-><init>(Lcom/bytedance/sdk/adnet/core/j;)V

    move-object/from16 v0, p1

    invoke-static {v5, v0, v6}, Lcom/bytedance/sdk/adnet/core/a;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/err/VAdError;)V
    :try_end_15a
    .catchall {:try_start_11e .. :try_end_15a} :catchall_106

    .line 177
    :goto_15a
    if-eqz v19, :cond_0

    .line 178
    :try_start_15c
    invoke-virtual/range {v19 .. v19}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 179
    invoke-virtual/range {v19 .. v19}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_169
    .catch Ljava/lang/Throwable; {:try_start_15c .. :try_end_169} :catch_16b

    goto/16 :goto_0

    .line 182
    :catch_16b
    move-exception v4

    goto/16 :goto_0

    .line 142
    :cond_16e
    :try_start_16e
    new-instance v5, Lcom/bytedance/sdk/adnet/err/d;

    invoke-direct {v5, v4}, Lcom/bytedance/sdk/adnet/err/d;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 158
    :cond_174
    const/16 v6, 0x190

    if-lt v5, v6, :cond_182

    const/16 v6, 0x1f3

    if-gt v5, v6, :cond_182

    .line 160
    new-instance v5, Lcom/bytedance/sdk/adnet/err/b;

    invoke-direct {v5, v4}, Lcom/bytedance/sdk/adnet/err/b;-><init>(Lcom/bytedance/sdk/adnet/core/j;)V

    throw v5

    .line 161
    :cond_182
    const/16 v6, 0x1f4

    if-lt v5, v6, :cond_1a3

    const/16 v6, 0x257

    if-gt v5, v6, :cond_1a3

    .line 162
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/adnet/core/Request;->shouldRetryServerErrors()Z

    move-result v5

    if-eqz v5, :cond_19d

    .line 163
    const-string v5, "server"

    new-instance v6, Lcom/bytedance/sdk/adnet/err/f;

    invoke-direct {v6, v4}, Lcom/bytedance/sdk/adnet/err/f;-><init>(Lcom/bytedance/sdk/adnet/core/j;)V

    move-object/from16 v0, p1

    invoke-static {v5, v0, v6}, Lcom/bytedance/sdk/adnet/core/a;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/err/VAdError;)V

    goto :goto_15a

    .line 166
    :cond_19d
    new-instance v5, Lcom/bytedance/sdk/adnet/err/f;

    invoke-direct {v5, v4}, Lcom/bytedance/sdk/adnet/err/f;-><init>(Lcom/bytedance/sdk/adnet/core/j;)V

    throw v5

    .line 170
    :cond_1a3
    new-instance v5, Lcom/bytedance/sdk/adnet/err/f;

    invoke-direct {v5, v4}, Lcom/bytedance/sdk/adnet/err/f;-><init>(Lcom/bytedance/sdk/adnet/core/j;)V

    throw v5

    .line 173
    :cond_1a9
    const-string v4, "network"

    new-instance v5, Lcom/bytedance/sdk/adnet/err/c;

    invoke-direct {v5}, Lcom/bytedance/sdk/adnet/err/c;-><init>()V

    move-object/from16 v0, p1

    invoke-static {v4, v0, v5}, Lcom/bytedance/sdk/adnet/core/a;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/err/VAdError;)V
    :try_end_1b5
    .catchall {:try_start_16e .. :try_end_1b5} :catchall_106

    goto :goto_15a

    .line 182
    :catch_1b6
    move-exception v5

    goto/16 :goto_116

    .line 176
    :catchall_1b9
    move-exception v5

    move-object/from16 v19, v4

    move-object v4, v5

    goto/16 :goto_107

    :catchall_1bf
    move-exception v5

    move-object/from16 v19, v4

    move-object v4, v5

    goto/16 :goto_107

    .line 137
    :catch_1c5
    move-exception v4

    move-object v6, v11

    goto/16 :goto_11c

    :catch_1c9
    move-exception v4

    move-object v6, v15

    goto/16 :goto_11c

    .line 135
    :catch_1cd
    move-exception v4

    goto/16 :goto_e9

    .line 133
    :catch_1d0
    move-exception v5

    goto/16 :goto_a2

    .line 182
    :catch_1d3
    move-exception v4

    goto/16 :goto_74

    :catch_1d6
    move-exception v5

    goto/16 :goto_50
.end method

.method protected a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/core/HttpResponse;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;",
            "Lcom/bytedance/sdk/adnet/core/HttpResponse;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/adnet/err/f;
        }
    .end annotation

    .prologue
    .line 252
    instance-of v0, p1, Lcom/bytedance/sdk/adnet/b/c;

    if-eqz v0, :cond_b

    .line 253
    check-cast p1, Lcom/bytedance/sdk/adnet/b/c;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/adnet/b/c;->a(Lcom/bytedance/sdk/adnet/core/HttpResponse;)[B

    move-result-object v0

    .line 267
    :goto_a
    return-object v0

    .line 258
    :cond_b
    invoke-virtual {p2}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_1a

    .line 260
    invoke-virtual {p2}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getContentLength()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/adnet/core/a;->a(Ljava/io/InputStream;I)[B

    move-result-object v0

    goto :goto_a

    .line 264
    :cond_1a
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_a
.end method
