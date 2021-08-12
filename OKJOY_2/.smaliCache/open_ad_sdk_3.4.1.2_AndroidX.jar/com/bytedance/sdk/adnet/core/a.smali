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

    .line 53
    sget-boolean v0, Lcom/bytedance/sdk/adnet/core/o;->a:Z

    sput-boolean v0, Lcom/bytedance/sdk/adnet/core/a;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/adnet/face/IHttpStack;)V
    .registers 4

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
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/adnet/core/Header;",
            ">;",
            "Lcom/bytedance/sdk/adnet/face/a$a;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/adnet/core/Header;",
            ">;"
        }
    .end annotation

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 336
    new-instance v1, Ljava/util/TreeSet;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 337
    if-eqz p0, :cond_2f

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 338
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/adnet/core/Header;

    .line 339
    invoke-virtual {v2}, Lcom/bytedance/sdk/adnet/core/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 340
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    goto :goto_18

    .line 346
    :cond_2f
    if-eqz p1, :cond_9b

    .line 347
    iget-object p0, p1, Lcom/bytedance/sdk/adnet/face/a$a;->i:Ljava/util/List;

    if-eqz p0, :cond_5e

    .line 348
    iget-object p0, p1, Lcom/bytedance/sdk/adnet/face/a$a;->i:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9b

    .line 349
    iget-object p0, p1, Lcom/bytedance/sdk/adnet/face/a$a;->i:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_43
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/adnet/core/Header;

    .line 350
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5c

    .line 351
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_5c
    goto :goto_43

    :cond_5d
    goto :goto_9b

    .line 357
    :cond_5e
    iget-object p0, p1, Lcom/bytedance/sdk/adnet/face/a$a;->h:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9b

    .line 358
    iget-object p0, p1, Lcom/bytedance/sdk/adnet/face/a$a;->h:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_70
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 359
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9a

    .line 360
    new-instance v2, Lcom/bytedance/sdk/adnet/core/Header;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v2, v3, p1}, Lcom/bytedance/sdk/adnet/core/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_9a
    goto :goto_70

    .line 366
    :cond_9b
    :goto_9b
    return-object v0
.end method

.method private a(Lcom/bytedance/sdk/adnet/face/a$a;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/face/a$a;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 228
    if-nez p1, :cond_7

    .line 229
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 232
    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 234
    iget-object v1, p1, Lcom/bytedance/sdk/adnet/face/a$a;->c:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 235
    iget-object v1, p1, Lcom/bytedance/sdk/adnet/face/a$a;->c:Ljava/lang/String;

    const-string v2, "If-None-Match"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_17
    iget-wide v1, p1, Lcom/bytedance/sdk/adnet/face/a$a;->e:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2a

    .line 239
    iget-wide v1, p1, Lcom/bytedance/sdk/adnet/face/a$a;->e:J

    .line 240
    invoke-static {v1, v2}, Lcom/bytedance/sdk/adnet/d/b;->a(J)Ljava/lang/String;

    move-result-object p1

    .line 239
    const-string v1, "If-Modified-Since"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_2a
    return-object v0
.end method

.method private a(JLcom/bytedance/sdk/adnet/core/Request;[BI)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;[BI)V"
        }
    .end annotation

    .line 193
    sget-boolean v0, Lcom/bytedance/sdk/adnet/core/a;->a:Z

    if-nez v0, :cond_a

    const-wide/16 v0, 0xbb8

    cmp-long v0, p1, v0

    if-lez v0, :cond_3f

    .line 194
    :cond_a
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    .line 198
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    if-eqz p4, :cond_20

    array-length p2, p4

    .line 199
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_22

    :cond_20
    const-string p2, "null"

    :goto_22
    aput-object p2, v0, p1

    const/4 p1, 0x3

    .line 200
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x4

    .line 201
    invoke-virtual {p3}, Lcom/bytedance/sdk/adnet/core/Request;->getRetryPolicy()Lcom/bytedance/sdk/adnet/face/d;

    move-result-object p2

    invoke-interface {p2}, Lcom/bytedance/sdk/adnet/face/d;->b()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    .line 194
    const-string p1, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/adnet/core/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    :cond_3f
    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/err/VAdError;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;",
            "Lcom/bytedance/sdk/adnet/err/VAdError;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/adnet/err/VAdError;
        }
    .end annotation

    .line 213
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getRetryPolicy()Lcom/bytedance/sdk/adnet/face/d;

    move-result-object v0

    .line 214
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getTimeoutMs()I

    move-result v1

    .line 217
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    :try_start_b
    invoke-interface {v0, p2}, Lcom/bytedance/sdk/adnet/face/d;->a(Lcom/bytedance/sdk/adnet/err/VAdError;)V
    :try_end_e
    .catch Lcom/bytedance/sdk/adnet/err/VAdError; {:try_start_b .. :try_end_e} :catch_23

    .line 222
    nop

    .line 223
    new-array p2, v4, [Ljava/lang/Object;

    aput-object p0, p2, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, v2

    const-string p0, "%s-retry [timeout=%s]"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/adnet/core/Request;->addMarker(Ljava/lang/String;)V

    .line 224
    return-void

    .line 218
    :catch_23
    move-exception p2

    .line 219
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v3

    .line 220
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "%s-timeout-giveup [timeout=%s]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 219
    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/adnet/core/Request;->addMarker(Ljava/lang/String;)V

    .line 221
    throw p2
.end method

.method private a(Ljava/io/InputStream;I)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/adnet/err/f;
        }
    .end annotation

    .line 275
    new-instance v0, Lcom/bytedance/sdk/adnet/core/c;

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/a;->c:Lcom/bytedance/sdk/adnet/core/b;

    invoke-direct {v0, v1, p2}, Lcom/bytedance/sdk/adnet/core/c;-><init>(Lcom/bytedance/sdk/adnet/core/b;I)V

    .line 276
    nop

    .line 278
    const-string p2, "Error occurred when closing InputStream"

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_3e

    .line 281
    :try_start_e
    iget-object v3, p0, Lcom/bytedance/sdk/adnet/core/a;->c:Lcom/bytedance/sdk/adnet/core/b;

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/adnet/core/b;->a(I)[B

    move-result-object v2

    .line 283
    :goto_16
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_21

    .line 284
    invoke-virtual {v0, v2, v1, v3}, Lcom/bytedance/sdk/adnet/core/c;->write([BII)V

    goto :goto_16

    .line 286
    :cond_21
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/c;->toByteArray()[B

    move-result-object v3
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_3c

    .line 290
    if-eqz p1, :cond_32

    .line 291
    :try_start_27
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_32

    .line 293
    :catch_2b
    move-exception p1

    .line 296
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p2, p1}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_33

    .line 297
    :cond_32
    :goto_32
    nop

    .line 298
    :goto_33
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/core/a;->c:Lcom/bytedance/sdk/adnet/core/b;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/adnet/core/b;->a([B)V

    .line 299
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/c;->close()V

    .line 286
    return-object v3

    .line 288
    :catchall_3c
    move-exception v3

    goto :goto_44

    .line 279
    :cond_3e
    :try_start_3e
    new-instance v3, Lcom/bytedance/sdk/adnet/err/f;

    invoke-direct {v3}, Lcom/bytedance/sdk/adnet/err/f;-><init>()V

    throw v3
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_3c

    .line 290
    :goto_44
    if-eqz p1, :cond_51

    .line 291
    :try_start_46
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_51

    .line 293
    :catch_4a
    move-exception p1

    .line 296
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p2, p1}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_52

    .line 297
    :cond_51
    :goto_51
    nop

    .line 298
    :goto_52
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/core/a;->c:Lcom/bytedance/sdk/adnet/core/b;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/adnet/core/b;->a([B)V

    .line 299
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/c;->close()V

    .line 300
    throw v3
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/adnet/core/Request;)Lcom/bytedance/sdk/adnet/core/i;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;)",
            "Lcom/bytedance/sdk/adnet/core/i;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/adnet/err/VAdError;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 85
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 86
    nop

    .line 87
    nop

    .line 88
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 91
    nop

    .line 92
    const/4 v2, 0x0

    :try_start_10
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/adnet/core/Request;->getCacheEntry()Lcom/bytedance/sdk/adnet/face/a$a;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/bytedance/sdk/adnet/core/a;->a(Lcom/bytedance/sdk/adnet/face/a$a;)Ljava/util/Map;

    move-result-object v0

    .line 93
    iget-object v3, v7, Lcom/bytedance/sdk/adnet/core/a;->b:Lcom/bytedance/sdk/adnet/face/IHttpStack;

    invoke-interface {v3, v8, v0}, Lcom/bytedance/sdk/adnet/face/IHttpStack;->performRequest(Lcom/bytedance/sdk/adnet/core/Request;Ljava/util/Map;)Lcom/bytedance/sdk/adnet/core/HttpResponse;

    move-result-object v11
    :try_end_1e
    .catch Ljava/net/SocketTimeoutException; {:try_start_10 .. :try_end_1e} :catch_1af
    .catch Ljava/net/MalformedURLException; {:try_start_10 .. :try_end_1e} :catch_191
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1e} :catch_f9
    .catchall {:try_start_10 .. :try_end_1e} :catchall_f5

    .line 94
    :try_start_1e
    invoke-virtual {v11}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getStatusCode()I

    move-result v13

    .line 96
    invoke-virtual {v11}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getHeaders()Ljava/util/List;

    move-result-object v12
    :try_end_26
    .catch Ljava/net/SocketTimeoutException; {:try_start_1e .. :try_end_26} :catch_f1
    .catch Ljava/net/MalformedURLException; {:try_start_1e .. :try_end_26} :catch_ed
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_26} :catch_e7
    .catchall {:try_start_1e .. :try_end_26} :catchall_e2

    .line 98
    const/16 v0, 0x130

    if-ne v13, v0, :cond_89

    .line 99
    :try_start_2a
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/adnet/core/Request;->getCacheEntry()Lcom/bytedance/sdk/adnet/face/a$a;

    move-result-object v0

    .line 100
    if-nez v0, :cond_58

    .line 101
    new-instance v1, Lcom/bytedance/sdk/adnet/core/i;

    const/16 v15, 0x130

    const/16 v16, 0x0

    const/16 v17, 0x1

    .line 105
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v18, v3, v9

    move-object v14, v1

    move-object/from16 v20, v12

    invoke-direct/range {v14 .. v20}, Lcom/bytedance/sdk/adnet/core/i;-><init>(I[BZJLjava/util/List;)V
    :try_end_44
    .catch Ljava/net/SocketTimeoutException; {:try_start_2a .. :try_end_44} :catch_f1
    .catch Ljava/net/MalformedURLException; {:try_start_2a .. :try_end_44} :catch_ed
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_44} :catch_82
    .catchall {:try_start_2a .. :try_end_44} :catchall_e2

    .line 177
    if-eqz v11, :cond_56

    .line 178
    :try_start_46
    invoke-virtual {v11}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 179
    invoke-virtual {v11}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_53
    .catchall {:try_start_46 .. :try_end_53} :catchall_54

    goto :goto_56

    .line 182
    :catchall_54
    move-exception v0

    goto :goto_57

    .line 183
    :cond_56
    :goto_56
    nop

    .line 101
    :goto_57
    return-object v1

    .line 109
    :cond_58
    :try_start_58
    invoke-static {v12, v0}, Lcom/bytedance/sdk/adnet/core/a;->a(Ljava/util/List;Lcom/bytedance/sdk/adnet/face/a$a;)Ljava/util/List;

    move-result-object v19

    .line 110
    new-instance v1, Lcom/bytedance/sdk/adnet/core/i;

    const/16 v14, 0x130

    iget-object v15, v0, Lcom/bytedance/sdk/adnet/face/a$a;->b:[B

    const/16 v16, 0x1

    .line 114
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v17, v3, v9

    move-object v13, v1

    invoke-direct/range {v13 .. v19}, Lcom/bytedance/sdk/adnet/core/i;-><init>(I[BZJLjava/util/List;)V
    :try_end_6e
    .catch Ljava/net/SocketTimeoutException; {:try_start_58 .. :try_end_6e} :catch_f1
    .catch Ljava/net/MalformedURLException; {:try_start_58 .. :try_end_6e} :catch_ed
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_6e} :catch_82
    .catchall {:try_start_58 .. :try_end_6e} :catchall_e2

    .line 177
    if-eqz v11, :cond_80

    .line 178
    :try_start_70
    invoke-virtual {v11}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_80

    .line 179
    invoke-virtual {v11}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7d
    .catchall {:try_start_70 .. :try_end_7d} :catchall_7e

    goto :goto_80

    .line 182
    :catchall_7e
    move-exception v0

    goto :goto_81

    .line 183
    :cond_80
    :goto_80
    nop

    .line 110
    :goto_81
    return-object v1

    .line 137
    :catch_82
    move-exception v0

    move-object v14, v2

    move-object v2, v11

    move-object/from16 v18, v12

    goto/16 :goto_fd

    .line 118
    :cond_89
    :try_start_89
    invoke-virtual {v7, v8, v11}, Lcom/bytedance/sdk/adnet/core/a;->a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/core/HttpResponse;)[B

    move-result-object v19
    :try_end_8d
    .catch Ljava/net/SocketTimeoutException; {:try_start_89 .. :try_end_8d} :catch_f1
    .catch Ljava/net/MalformedURLException; {:try_start_89 .. :try_end_8d} :catch_ed
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8d} :catch_dc
    .catchall {:try_start_89 .. :try_end_8d} :catchall_e2

    .line 121
    :try_start_8d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v2, v0, v9

    .line 122
    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v5, v19

    move v6, v13

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/adnet/core/a;->a(JLcom/bytedance/sdk/adnet/core/Request;[BI)V

    .line 124
    const/16 v0, 0xc8

    if-lt v13, v0, :cond_cb

    const/16 v0, 0x12b

    if-gt v13, v0, :cond_cb

    .line 127
    new-instance v1, Lcom/bytedance/sdk/adnet/core/i;

    const/4 v15, 0x0

    .line 131
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2
    :try_end_ac
    .catch Ljava/net/SocketTimeoutException; {:try_start_8d .. :try_end_ac} :catch_f1
    .catch Ljava/net/MalformedURLException; {:try_start_8d .. :try_end_ac} :catch_ed
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_ac} :catch_d4
    .catchall {:try_start_8d .. :try_end_ac} :catchall_e2

    sub-long v16, v2, v9

    move-object v3, v12

    move-object v12, v1

    move-object/from16 v14, v19

    move-object/from16 v18, v3

    :try_start_b4
    invoke-direct/range {v12 .. v18}, Lcom/bytedance/sdk/adnet/core/i;-><init>(I[BZJLjava/util/List;)V
    :try_end_b7
    .catch Ljava/net/SocketTimeoutException; {:try_start_b4 .. :try_end_b7} :catch_f1
    .catch Ljava/net/MalformedURLException; {:try_start_b4 .. :try_end_b7} :catch_ed
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b7} :catch_d2
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_e2

    .line 177
    if-eqz v11, :cond_c9

    .line 178
    :try_start_b9
    invoke-virtual {v11}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_c9

    .line 179
    invoke-virtual {v11}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_c6
    .catchall {:try_start_b9 .. :try_end_c6} :catchall_c7

    goto :goto_c9

    .line 182
    :catchall_c7
    move-exception v0

    goto :goto_ca

    .line 183
    :cond_c9
    :goto_c9
    nop

    .line 127
    :goto_ca
    return-object v1

    .line 124
    :cond_cb
    move-object v3, v12

    .line 125
    :try_start_cc
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_d2
    .catch Ljava/net/SocketTimeoutException; {:try_start_cc .. :try_end_d2} :catch_f1
    .catch Ljava/net/MalformedURLException; {:try_start_cc .. :try_end_d2} :catch_ed
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_d2} :catch_d2
    .catchall {:try_start_cc .. :try_end_d2} :catchall_e2

    .line 137
    :catch_d2
    move-exception v0

    goto :goto_d6

    :catch_d4
    move-exception v0

    move-object v3, v12

    :goto_d6
    move-object/from16 v18, v3

    move-object v2, v11

    move-object/from16 v14, v19

    goto :goto_fd

    :catch_dc
    move-exception v0

    move-object v3, v12

    move-object v14, v2

    move-object/from16 v18, v3

    goto :goto_eb

    .line 176
    :catchall_e2
    move-exception v0

    move-object v1, v0

    move-object v2, v11

    goto/16 :goto_1cf

    .line 137
    :catch_e7
    move-exception v0

    move-object/from16 v18, v1

    move-object v14, v2

    :goto_eb
    move-object v2, v11

    goto :goto_fd

    .line 135
    :catch_ed
    move-exception v0

    move-object v2, v11

    goto/16 :goto_192

    .line 133
    :catch_f1
    move-exception v0

    move-object v2, v11

    goto/16 :goto_1b0

    .line 176
    :catchall_f5
    move-exception v0

    move-object v1, v0

    goto/16 :goto_1cf

    .line 137
    :catch_f9
    move-exception v0

    move-object/from16 v18, v1

    move-object v14, v2

    .line 139
    :goto_fd
    if-eqz v2, :cond_18b

    .line 140
    :try_start_ff
    invoke-virtual {v2}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getStatusCode()I

    move-result v0

    .line 144
    const-string v1, "Unexpected response code %d for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/adnet/core/Request;->getUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/bytedance/sdk/adnet/core/o;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    if-eqz v14, :cond_171

    .line 147
    new-instance v1, Lcom/bytedance/sdk/adnet/core/i;

    const/4 v15, 0x0

    .line 152
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v16, v3, v9

    move-object v12, v1

    move v13, v0

    invoke-direct/range {v12 .. v18}, Lcom/bytedance/sdk/adnet/core/i;-><init>(I[BZJLjava/util/List;)V

    .line 154
    const/16 v3, 0x191

    if-eq v0, v3, :cond_166

    const/16 v3, 0x193

    if-ne v0, v3, :cond_132

    goto :goto_166

    .line 158
    :cond_132
    const/16 v3, 0x190

    if-lt v0, v3, :cond_141

    const/16 v3, 0x1f3

    if-le v0, v3, :cond_13b

    goto :goto_141

    .line 160
    :cond_13b
    new-instance v0, Lcom/bytedance/sdk/adnet/err/b;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/adnet/err/b;-><init>(Lcom/bytedance/sdk/adnet/core/i;)V

    throw v0

    .line 161
    :cond_141
    :goto_141
    const/16 v3, 0x1f4

    if-lt v0, v3, :cond_160

    const/16 v3, 0x257

    if-gt v0, v3, :cond_160

    .line 162
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/adnet/core/Request;->shouldRetryServerErrors()Z

    move-result v0

    if-eqz v0, :cond_15a

    .line 163
    const-string v0, "server"

    new-instance v3, Lcom/bytedance/sdk/adnet/err/f;

    invoke-direct {v3, v1}, Lcom/bytedance/sdk/adnet/err/f;-><init>(Lcom/bytedance/sdk/adnet/core/i;)V

    invoke-static {v0, v8, v3}, Lcom/bytedance/sdk/adnet/core/a;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/err/VAdError;)V

    goto :goto_17b

    .line 166
    :cond_15a
    new-instance v0, Lcom/bytedance/sdk/adnet/err/f;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/adnet/err/f;-><init>(Lcom/bytedance/sdk/adnet/core/i;)V

    throw v0

    .line 170
    :cond_160
    new-instance v0, Lcom/bytedance/sdk/adnet/err/f;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/adnet/err/f;-><init>(Lcom/bytedance/sdk/adnet/core/i;)V

    throw v0

    .line 156
    :cond_166
    :goto_166
    const-string v0, "auth"

    new-instance v3, Lcom/bytedance/sdk/adnet/err/a;

    invoke-direct {v3, v1}, Lcom/bytedance/sdk/adnet/err/a;-><init>(Lcom/bytedance/sdk/adnet/core/i;)V

    invoke-static {v0, v8, v3}, Lcom/bytedance/sdk/adnet/core/a;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/err/VAdError;)V

    goto :goto_17b

    .line 173
    :cond_171
    const-string v0, "network"

    new-instance v1, Lcom/bytedance/sdk/adnet/err/c;

    invoke-direct {v1}, Lcom/bytedance/sdk/adnet/err/c;-><init>()V

    invoke-static {v0, v8, v1}, Lcom/bytedance/sdk/adnet/core/a;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/err/VAdError;)V
    :try_end_17b
    .catchall {:try_start_ff .. :try_end_17b} :catchall_f5

    .line 177
    :goto_17b
    if-eqz v2, :cond_1cc

    .line 178
    :try_start_17d
    invoke-virtual {v2}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1cc

    .line 179
    invoke-virtual {v2}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_18a
    .catchall {:try_start_17d .. :try_end_18a} :catchall_1ca

    goto :goto_1cc

    .line 142
    :cond_18b
    :try_start_18b
    new-instance v1, Lcom/bytedance/sdk/adnet/err/d;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/adnet/err/d;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 135
    :catch_191
    move-exception v0

    .line 136
    :goto_192
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/adnet/core/Request;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 133
    :catch_1af
    move-exception v0

    .line 134
    :goto_1b0
    const-string v0, "socket"

    new-instance v1, Lcom/bytedance/sdk/adnet/err/g;

    invoke-direct {v1}, Lcom/bytedance/sdk/adnet/err/g;-><init>()V

    invoke-static {v0, v8, v1}, Lcom/bytedance/sdk/adnet/core/a;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/err/VAdError;)V
    :try_end_1ba
    .catchall {:try_start_18b .. :try_end_1ba} :catchall_f5

    .line 177
    if-eqz v2, :cond_1cc

    .line 178
    :try_start_1bc
    invoke-virtual {v2}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1cc

    .line 179
    invoke-virtual {v2}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1c9
    .catchall {:try_start_1bc .. :try_end_1c9} :catchall_1ca

    goto :goto_1cc

    .line 182
    :catchall_1ca
    move-exception v0

    .line 184
    goto :goto_1cd

    .line 183
    :cond_1cc
    :goto_1cc
    nop

    .line 185
    :goto_1cd
    goto/16 :goto_4

    .line 177
    :goto_1cf
    if-eqz v2, :cond_1e1

    .line 178
    :try_start_1d1
    invoke-virtual {v2}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1e1

    .line 179
    invoke-virtual {v2}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1de
    .catchall {:try_start_1d1 .. :try_end_1de} :catchall_1df

    goto :goto_1e1

    .line 182
    :catchall_1df
    move-exception v0

    goto :goto_1e2

    .line 183
    :cond_1e1
    :goto_1e1
    nop

    .line 184
    :goto_1e2
    throw v1
.end method

.method protected a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/core/HttpResponse;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;",
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

    .line 252
    instance-of v0, p1, Lcom/bytedance/sdk/adnet/b/c;

    if-eqz v0, :cond_b

    .line 253
    check-cast p1, Lcom/bytedance/sdk/adnet/b/c;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/adnet/b/c;->a(Lcom/bytedance/sdk/adnet/core/HttpResponse;)[B

    move-result-object p1

    return-object p1

    .line 258
    :cond_b
    invoke-virtual {p2}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object p1

    .line 259
    if-eqz p1, :cond_1a

    .line 260
    invoke-virtual {p2}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getContentLength()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/adnet/core/a;->a(Ljava/io/InputStream;I)[B

    move-result-object p1

    goto :goto_1d

    .line 264
    :cond_1a
    const/4 p1, 0x0

    new-array p1, p1, [B

    .line 267
    :goto_1d
    return-object p1
.end method
