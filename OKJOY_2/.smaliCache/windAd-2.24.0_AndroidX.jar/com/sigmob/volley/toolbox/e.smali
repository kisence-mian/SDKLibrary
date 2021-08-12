.class public Lcom/sigmob/volley/toolbox/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/volley/g;


# static fields
.field protected static final a:Z


# instance fields
.field protected final b:Lcom/sigmob/volley/toolbox/c;

.field private final c:Lcom/sigmob/volley/toolbox/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/sigmob/volley/u;->b:Z

    sput-boolean v0, Lcom/sigmob/volley/toolbox/e;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/volley/toolbox/a;)V
    .registers 4

    new-instance v0, Lcom/sigmob/volley/toolbox/c;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/sigmob/volley/toolbox/c;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/sigmob/volley/toolbox/e;-><init>(Lcom/sigmob/volley/toolbox/a;Lcom/sigmob/volley/toolbox/c;)V

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/volley/toolbox/a;Lcom/sigmob/volley/toolbox/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/e;->c:Lcom/sigmob/volley/toolbox/a;

    iput-object p2, p0, Lcom/sigmob/volley/toolbox/e;->b:Lcom/sigmob/volley/toolbox/c;

    return-void
.end method

.method private static a(Ljava/util/List;Lcom/sigmob/volley/b$a;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/volley/f;",
            ">;",
            "Lcom/sigmob/volley/b$a;",
            ")",
            "Ljava/util/List<",
            "Lcom/sigmob/volley/f;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sigmob/volley/f;

    invoke-virtual {v2}, Lcom/sigmob/volley/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, p1, Lcom/sigmob/volley/b$a;->h:Ljava/util/List;

    if-eqz p0, :cond_56

    iget-object p0, p1, Lcom/sigmob/volley/b$a;->h:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_93

    iget-object p0, p1, Lcom/sigmob/volley/b$a;->h:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3c
    :goto_3c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_93

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sigmob/volley/f;

    invoke-virtual {p1}, Lcom/sigmob/volley/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    :cond_56
    iget-object p0, p1, Lcom/sigmob/volley/b$a;->g:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_93

    iget-object p0, p1, Lcom/sigmob/volley/b$a;->g:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_68
    :goto_68
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_93

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_68

    new-instance v2, Lcom/sigmob/volley/f;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v2, v3, p1}, Lcom/sigmob/volley/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_68

    :cond_93
    return-object v1
.end method

.method private a(Lcom/sigmob/volley/b$a;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/b$a;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p1, Lcom/sigmob/volley/b$a;->b:Ljava/lang/String;

    if-eqz v1, :cond_17

    iget-object v1, p1, Lcom/sigmob/volley/b$a;->b:Ljava/lang/String;

    const-string v2, "If-None-Match"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    iget-wide v1, p1, Lcom/sigmob/volley/b$a;->d:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2a

    iget-wide v1, p1, Lcom/sigmob/volley/b$a;->d:J

    invoke-static {v1, v2}, Lcom/sigmob/volley/toolbox/h;->a(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "If-Modified-Since"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    return-object v0
.end method

.method public static a(Ljava/util/List;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/volley/f;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    const/4 v1, 0x0

    :goto_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sigmob/volley/f;

    invoke-virtual {v2}, Lcom/sigmob/volley/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sigmob/volley/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_22
    return-object v0
.end method

.method private a(JLcom/sigmob/volley/m;[BI)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/sigmob/volley/m<",
            "*>;[BI)V"
        }
    .end annotation

    sget-boolean v0, Lcom/sigmob/volley/toolbox/e;->a:Z

    if-nez v0, :cond_a

    const-wide/16 v0, 0xbb8

    cmp-long v0, p1, v0

    if-lez v0, :cond_3f

    :cond_a
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    if-eqz p4, :cond_20

    array-length p2, p4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_22

    :cond_20
    const-string p2, "null"

    :goto_22
    aput-object p2, v0, p1

    const/4 p1, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x4

    invoke-virtual {p3}, Lcom/sigmob/volley/m;->u()Lcom/sigmob/volley/q;

    move-result-object p2

    invoke-interface {p2}, Lcom/sigmob/volley/q;->b()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    invoke-static {p1, v0}, Lcom/sigmob/volley/u;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3f
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/sigmob/volley/m;Lcom/sigmob/volley/t;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sigmob/volley/m<",
            "*>;",
            "Lcom/sigmob/volley/t;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sigmob/volley/m;->u()Lcom/sigmob/volley/q;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/volley/m;->s()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    :try_start_c
    invoke-interface {v0, p2}, Lcom/sigmob/volley/q;->a(Lcom/sigmob/volley/t;)V
    :try_end_f
    .catch Lcom/sigmob/volley/t; {:try_start_c .. :try_end_f} :catch_2d

    new-array p2, v5, [Ljava/lang/Object;

    aput-object p0, p2, v4

    invoke-interface {v0}, Lcom/sigmob/volley/q;->b()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, v2

    const-string p0, "%s-retry [RetryCount %s]  [timeout=%s]"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sigmob/volley/m;->a(Ljava/lang/String;)V

    return-void

    :catch_2d
    move-exception p2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v4

    invoke-interface {v0}, Lcom/sigmob/volley/q;->b()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v2

    const-string p0, "%s-timeout-giveup [RetryCount %s] [timeout=%s]"

    invoke-static {p0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sigmob/volley/m;->a(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public a(Lcom/sigmob/volley/m;)Lcom/sigmob/volley/j;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/m<",
            "*>;)",
            "Lcom/sigmob/volley/j;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    :goto_8
    const/4 v11, 0x1

    new-array v0, v11, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/volley/m;->i()Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x0

    aput-object v1, v0, v12

    const-string v1, "download start %s"

    invoke-static {v1, v0}, Lcom/sigmob/volley/u;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v13, 0x2

    const/4 v2, 0x0

    :try_start_1d
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/volley/m;->k()Lcom/sigmob/volley/b$a;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/sigmob/volley/toolbox/e;->a(Lcom/sigmob/volley/b$a;)Ljava/util/Map;

    move-result-object v0

    iget-object v3, v7, Lcom/sigmob/volley/toolbox/e;->c:Lcom/sigmob/volley/toolbox/a;

    invoke-virtual {v3, v8, v0}, Lcom/sigmob/volley/toolbox/a;->a(Lcom/sigmob/volley/m;Ljava/util/Map;)Lcom/sigmob/volley/toolbox/i;

    move-result-object v14
    :try_end_2b
    .catch Ljava/net/SocketTimeoutException; {:try_start_1d .. :try_end_2b} :catch_1a6
    .catch Ljava/net/MalformedURLException; {:try_start_1d .. :try_end_2b} :catch_188
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_2b} :catch_ea

    :try_start_2b
    invoke-virtual {v14}, Lcom/sigmob/volley/toolbox/i;->a()I

    move-result v0

    const-string v3, "download getStatus %s StatusCode: %s"

    new-array v4, v13, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/volley/m;->i()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static {v3, v4}, Lcom/sigmob/volley/u;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v14}, Lcom/sigmob/volley/toolbox/i;->b()Ljava/util/List;

    move-result-object v6
    :try_end_46
    .catch Ljava/net/SocketTimeoutException; {:try_start_2b .. :try_end_46} :catch_1a6
    .catch Ljava/net/MalformedURLException; {:try_start_2b .. :try_end_46} :catch_188
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_46} :catch_e3

    const/16 v1, 0x130

    if-ne v0, v1, :cond_86

    :try_start_4a
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/volley/m;->k()Lcom/sigmob/volley/b$a;

    move-result-object v0

    if-nez v0, :cond_65

    new-instance v0, Lcom/sigmob/volley/j;

    const/16 v16, 0x130

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v19, v3, v9

    move-object v15, v0

    move-object/from16 v21, v6

    invoke-direct/range {v15 .. v21}, Lcom/sigmob/volley/j;-><init>(I[BZJLjava/util/List;)V

    return-object v0

    :cond_65
    invoke-static {v6, v0}, Lcom/sigmob/volley/toolbox/e;->a(Ljava/util/List;Lcom/sigmob/volley/b$a;)Ljava/util/List;

    move-result-object v27

    new-instance v1, Lcom/sigmob/volley/j;

    const/16 v22, 0x130

    iget-object v0, v0, Lcom/sigmob/volley/b$a;->a:[B

    const/16 v24, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v25, v3, v9

    move-object/from16 v21, v1

    move-object/from16 v23, v0

    invoke-direct/range {v21 .. v27}, Lcom/sigmob/volley/j;-><init>(I[BZJLjava/util/List;)V
    :try_end_7e
    .catch Ljava/net/SocketTimeoutException; {:try_start_4a .. :try_end_7e} :catch_1a6
    .catch Ljava/net/MalformedURLException; {:try_start_4a .. :try_end_7e} :catch_188
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_7e} :catch_7f

    return-object v1

    :catch_7f
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v21, v6

    goto/16 :goto_e8

    :cond_86
    :try_start_86
    invoke-virtual {v14}, Lcom/sigmob/volley/toolbox/i;->d()Ljava/io/InputStream;

    move-result-object v1
    :try_end_8a
    .catch Ljava/net/SocketTimeoutException; {:try_start_86 .. :try_end_8a} :catch_1a6
    .catch Ljava/net/MalformedURLException; {:try_start_86 .. :try_end_8a} :catch_188
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_8a} :catch_da

    if-eqz v1, :cond_98

    :try_start_8c
    instance-of v1, v8, Lcom/sigmob/volley/toolbox/f;

    if-eqz v1, :cond_9a

    move-object v1, v8

    check-cast v1, Lcom/sigmob/volley/toolbox/f;

    invoke-virtual {v1, v14}, Lcom/sigmob/volley/toolbox/f;->a(Lcom/sigmob/volley/toolbox/i;)[B

    move-result-object v2
    :try_end_97
    .catch Ljava/net/SocketTimeoutException; {:try_start_8c .. :try_end_97} :catch_1a6
    .catch Ljava/net/MalformedURLException; {:try_start_8c .. :try_end_97} :catch_188
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_97} :catch_7f

    goto :goto_9a

    :cond_98
    :try_start_98
    new-array v2, v12, [B
    :try_end_9a
    .catch Ljava/net/SocketTimeoutException; {:try_start_98 .. :try_end_9a} :catch_1a6
    .catch Ljava/net/MalformedURLException; {:try_start_98 .. :try_end_9a} :catch_188
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9a} :catch_da

    :cond_9a
    :goto_9a
    move-object/from16 v22, v2

    :try_start_9c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1
    :try_end_a0
    .catch Ljava/net/SocketTimeoutException; {:try_start_9c .. :try_end_a0} :catch_1a6
    .catch Ljava/net/MalformedURLException; {:try_start_9c .. :try_end_a0} :catch_188
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_a0} :catch_d3

    sub-long v2, v1, v9

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v5, v22

    move-object/from16 v23, v6

    move v6, v0

    :try_start_ab
    invoke-direct/range {v1 .. v6}, Lcom/sigmob/volley/toolbox/e;->a(JLcom/sigmob/volley/m;[BI)V

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_cb

    const/16 v1, 0x12b

    if-gt v0, v1, :cond_cb

    new-instance v1, Lcom/sigmob/volley/j;

    const/16 v18, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v19, v2, v9

    move-object v15, v1

    move/from16 v16, v0

    move-object/from16 v17, v22

    move-object/from16 v21, v23

    invoke-direct/range {v15 .. v21}, Lcom/sigmob/volley/j;-><init>(I[BZJLjava/util/List;)V

    return-object v1

    :cond_cb
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_d1
    .catch Ljava/net/SocketTimeoutException; {:try_start_ab .. :try_end_d1} :catch_1a6
    .catch Ljava/net/MalformedURLException; {:try_start_ab .. :try_end_d1} :catch_188
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_d1} :catch_d1

    :catch_d1
    move-exception v0

    goto :goto_d6

    :catch_d3
    move-exception v0

    move-object/from16 v23, v6

    :goto_d6
    move-object v2, v14

    move-object/from16 v17, v22

    goto :goto_e0

    :catch_da
    move-exception v0

    move-object/from16 v23, v6

    move-object/from16 v17, v2

    move-object v2, v14

    :goto_e0
    move-object/from16 v21, v23

    goto :goto_ef

    :catch_e3
    move-exception v0

    move-object/from16 v21, v1

    move-object/from16 v17, v2

    :goto_e8
    move-object v2, v14

    goto :goto_ef

    :catch_ea
    move-exception v0

    move-object/from16 v21, v1

    move-object/from16 v17, v2

    :goto_ef
    if-eqz v2, :cond_182

    invoke-virtual {v2}, Lcom/sigmob/volley/toolbox/i;->a()I

    move-result v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/volley/m;->i()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v13

    const-string v3, "%s Unexpected response code %d for %s"

    invoke-static {v3, v2}, Lcom/sigmob/volley/u;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v17, :cond_176

    new-instance v0, Lcom/sigmob/volley/j;

    const/16 v18, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v19, v2, v9

    move-object v15, v0

    move/from16 v16, v1

    invoke-direct/range {v15 .. v21}, Lcom/sigmob/volley/j;-><init>(I[BZJLjava/util/List;)V

    const/16 v2, 0x191

    const-string v3, "auth"

    if-eq v1, v2, :cond_16c

    const/16 v2, 0x193

    if-ne v1, v2, :cond_12c

    goto :goto_16c

    :cond_12c
    const/16 v2, 0x12d

    if-eq v1, v2, :cond_166

    const/16 v2, 0x12e

    if-ne v1, v2, :cond_135

    goto :goto_166

    :cond_135
    const/16 v2, 0x190

    if-lt v1, v2, :cond_144

    const/16 v2, 0x1f3

    if-le v1, v2, :cond_13e

    goto :goto_144

    :cond_13e
    new-instance v1, Lcom/sigmob/volley/r;

    invoke-direct {v1, v0}, Lcom/sigmob/volley/r;-><init>(Lcom/sigmob/volley/j;)V

    throw v1

    :cond_144
    :goto_144
    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_160

    const/16 v2, 0x257

    if-gt v1, v2, :cond_160

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/volley/m;->q()Z

    move-result v1

    if-eqz v1, :cond_15a

    new-instance v1, Lcom/sigmob/volley/r;

    invoke-direct {v1, v0}, Lcom/sigmob/volley/r;-><init>(Lcom/sigmob/volley/j;)V

    const-string v0, "server"

    goto :goto_17d

    :cond_15a
    new-instance v1, Lcom/sigmob/volley/r;

    invoke-direct {v1, v0}, Lcom/sigmob/volley/r;-><init>(Lcom/sigmob/volley/j;)V

    throw v1

    :cond_160
    new-instance v1, Lcom/sigmob/volley/r;

    invoke-direct {v1, v0}, Lcom/sigmob/volley/r;-><init>(Lcom/sigmob/volley/j;)V

    throw v1

    :cond_166
    :goto_166
    new-instance v1, Lcom/sigmob/volley/a;

    invoke-direct {v1, v0}, Lcom/sigmob/volley/a;-><init>(Lcom/sigmob/volley/j;)V

    goto :goto_171

    :cond_16c
    :goto_16c
    new-instance v1, Lcom/sigmob/volley/a;

    invoke-direct {v1, v0}, Lcom/sigmob/volley/a;-><init>(Lcom/sigmob/volley/j;)V

    :goto_171
    invoke-static {v3, v8, v1}, Lcom/sigmob/volley/toolbox/e;->a(Ljava/lang/String;Lcom/sigmob/volley/m;Lcom/sigmob/volley/t;)V

    goto/16 :goto_8

    :cond_176
    new-instance v1, Lcom/sigmob/volley/i;

    invoke-direct {v1, v0}, Lcom/sigmob/volley/i;-><init>(Ljava/lang/Throwable;)V

    const-string v0, "network"

    :goto_17d
    invoke-static {v0, v8, v1}, Lcom/sigmob/volley/toolbox/e;->a(Ljava/lang/String;Lcom/sigmob/volley/m;Lcom/sigmob/volley/t;)V

    goto/16 :goto_8

    :cond_182
    new-instance v1, Lcom/sigmob/volley/k;

    invoke-direct {v1, v0}, Lcom/sigmob/volley/k;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_188
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/volley/m;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1a6
    move-exception v0

    new-instance v0, Lcom/sigmob/volley/s;

    invoke-direct {v0}, Lcom/sigmob/volley/s;-><init>()V

    const-string v1, "socket"

    invoke-static {v1, v8, v0}, Lcom/sigmob/volley/toolbox/e;->a(Ljava/lang/String;Lcom/sigmob/volley/m;Lcom/sigmob/volley/t;)V

    goto/16 :goto_8
.end method
