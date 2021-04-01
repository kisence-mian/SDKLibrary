.class public Lcom/sigmob/volley/toolbox/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/volley/k;


# static fields
.field protected static final a:Z

.field private static final c:I = 0xbb8

.field private static final d:I = 0x1000


# instance fields
.field protected final b:Lcom/sigmob/volley/toolbox/c;

.field private final e:Lcom/sigmob/volley/toolbox/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/sigmob/volley/af;->b:Z

    sput-boolean v0, Lcom/sigmob/volley/toolbox/f;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/volley/toolbox/a;)V
    .registers 4

    new-instance v0, Lcom/sigmob/volley/toolbox/c;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/sigmob/volley/toolbox/c;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/sigmob/volley/toolbox/f;-><init>(Lcom/sigmob/volley/toolbox/a;Lcom/sigmob/volley/toolbox/c;)V

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/volley/toolbox/a;Lcom/sigmob/volley/toolbox/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/f;->e:Lcom/sigmob/volley/toolbox/a;

    iput-object p2, p0, Lcom/sigmob/volley/toolbox/f;->b:Lcom/sigmob/volley/toolbox/c;

    return-void
.end method

.method private static a(Ljava/util/List;Lcom/sigmob/volley/c;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/volley/j;",
            ">;",
            "Lcom/sigmob/volley/c;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/volley/j;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/TreeSet;

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v2, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/volley/j;

    invoke-virtual {v0}, Lcom/sigmob/volley/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_25
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p1, Lcom/sigmob/volley/c;->h:Ljava/util/List;

    if-eqz v0, :cond_56

    iget-object v0, p1, Lcom/sigmob/volley/c;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_93

    iget-object v0, p1, Lcom/sigmob/volley/c;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3c
    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/volley/j;

    invoke-virtual {v0}, Lcom/sigmob/volley/j;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3c

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    :cond_56
    iget-object v0, p1, Lcom/sigmob/volley/c;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_93

    iget-object v0, p1, Lcom/sigmob/volley/c;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_68
    :goto_68
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_68

    new-instance v5, Lcom/sigmob/volley/j;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v5, v1, v0}, Lcom/sigmob/volley/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_68

    :cond_93
    return-object v3
.end method

.method private a(Lcom/sigmob/volley/c;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/c;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :cond_6
    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p1, Lcom/sigmob/volley/c;->b:Ljava/lang/String;

    if-eqz v1, :cond_17

    const-string v1, "If-None-Match"

    iget-object v2, p1, Lcom/sigmob/volley/c;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    iget-wide v2, p1, Lcom/sigmob/volley/c;->d:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_6

    const-string v1, "If-Modified-Since"

    iget-wide v2, p1, Lcom/sigmob/volley/c;->d:J

    invoke-static {v2, v3}, Lcom/sigmob/volley/toolbox/k;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6
.end method

.method public static a(Ljava/util/List;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/volley/j;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/TreeMap;

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v2, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_24

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/volley/j;

    invoke-virtual {v0}, Lcom/sigmob/volley/j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sigmob/volley/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :cond_24
    return-object v2
.end method

.method private a(JLcom/sigmob/volley/q;[BI)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/sigmob/volley/q",
            "<*>;[BI)V"
        }
    .end annotation

    sget-boolean v0, Lcom/sigmob/volley/toolbox/f;->a:Z

    if-nez v0, :cond_a

    const-wide/16 v0, 0xbb8

    cmp-long v0, p1, v0

    if-lez v0, :cond_3c

    :cond_a
    const-string v1, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v2, v0

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    if-eqz p4, :cond_3d

    array-length v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_21
    aput-object v0, v2, v3

    const/4 v0, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    invoke-virtual {p3}, Lcom/sigmob/volley/q;->z()Lcom/sigmob/volley/ab;

    move-result-object v3

    invoke-interface {v3}, Lcom/sigmob/volley/ab;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/sigmob/volley/af;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3c
    return-void

    :cond_3d
    const-string v0, "null"

    goto :goto_21
.end method

.method public static a(Ljava/lang/String;Lcom/sigmob/volley/q;Lcom/sigmob/volley/ae;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sigmob/volley/q",
            "<*>;",
            "Lcom/sigmob/volley/ae;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/sigmob/volley/q;->z()Lcom/sigmob/volley/ab;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/volley/q;->x()I

    move-result v1

    :try_start_c
    invoke-interface {v0, p2}, Lcom/sigmob/volley/ab;->a(Lcom/sigmob/volley/ae;)V
    :try_end_f
    .catch Lcom/sigmob/volley/ae; {:try_start_c .. :try_end_f} :catch_2d

    const-string v2, "%s-retry [RetryCount %s]  [timeout=%s]"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v5

    invoke-interface {v0}, Lcom/sigmob/volley/ab;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/volley/q;->a(Ljava/lang/String;)V

    return-void

    :catch_2d
    move-exception v2

    const-string v3, "%s-timeout-giveup [RetryCount %s] [timeout=%s]"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-interface {v0}, Lcom/sigmob/volley/ab;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/volley/q;->a(Ljava/lang/String;)V

    throw v2
.end method

.method private a(Ljava/io/InputStream;I)[B
    .registers 8

    const/4 v4, 0x0

    new-instance v2, Lcom/sigmob/volley/toolbox/w;

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/f;->b:Lcom/sigmob/volley/toolbox/c;

    invoke-direct {v2, v0, p2}, Lcom/sigmob/volley/toolbox/w;-><init>(Lcom/sigmob/volley/toolbox/c;I)V

    const/4 v1, 0x0

    if-nez p1, :cond_20

    :try_start_b
    new-instance v0, Lcom/sigmob/volley/ac;

    invoke-direct {v0}, Lcom/sigmob/volley/ac;-><init>()V

    throw v0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v0

    if-eqz p1, :cond_17

    :try_start_14
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_4f

    :cond_17
    :goto_17
    iget-object v3, p0, Lcom/sigmob/volley/toolbox/f;->b:Lcom/sigmob/volley/toolbox/c;

    invoke-virtual {v3, v1}, Lcom/sigmob/volley/toolbox/c;->a([B)V

    invoke-virtual {v2}, Lcom/sigmob/volley/toolbox/w;->close()V

    throw v0

    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/sigmob/volley/toolbox/f;->b:Lcom/sigmob/volley/toolbox/c;

    const/16 v3, 0x400

    invoke-virtual {v0, v3}, Lcom/sigmob/volley/toolbox/c;->a(I)[B

    move-result-object v1

    :goto_28
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_34

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Lcom/sigmob/volley/toolbox/w;->write([BII)V

    goto :goto_28

    :cond_34
    invoke-virtual {v2}, Lcom/sigmob/volley/toolbox/w;->toByteArray()[B
    :try_end_37
    .catchall {:try_start_20 .. :try_end_37} :catchall_11

    move-result-object v0

    if-eqz p1, :cond_3d

    :try_start_3a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_46

    :cond_3d
    :goto_3d
    iget-object v3, p0, Lcom/sigmob/volley/toolbox/f;->b:Lcom/sigmob/volley/toolbox/c;

    invoke-virtual {v3, v1}, Lcom/sigmob/volley/toolbox/c;->a([B)V

    invoke-virtual {v2}, Lcom/sigmob/volley/toolbox/w;->close()V

    return-object v0

    :catch_46
    move-exception v3

    const-string v3, "Error occurred when closing InputStream"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/sigmob/volley/af;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3d

    :catch_4f
    move-exception v3

    const-string v3, "Error occurred when closing InputStream"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/sigmob/volley/af;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17
.end method


# virtual methods
.method public a(Lcom/sigmob/volley/q;)Lcom/sigmob/volley/n;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/q",
            "<*>;)",
            "Lcom/sigmob/volley/n;"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    :goto_4
    const-string v2, "download start %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/volley/q;->n()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/sigmob/volley/af;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v9, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    :try_start_19
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/volley/q;->p()Lcom/sigmob/volley/c;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sigmob/volley/toolbox/f;->a(Lcom/sigmob/volley/c;)Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sigmob/volley/toolbox/f;->e:Lcom/sigmob/volley/toolbox/a;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v2}, Lcom/sigmob/volley/toolbox/a;->a(Lcom/sigmob/volley/q;Ljava/util/Map;)Lcom/sigmob/volley/toolbox/l;
    :try_end_2c
    .catch Ljava/net/SocketTimeoutException; {:try_start_19 .. :try_end_2c} :catch_ad
    .catch Ljava/net/MalformedURLException; {:try_start_19 .. :try_end_2c} :catch_cf
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_2c} :catch_ed

    move-result-object v17

    :try_start_2d
    invoke-virtual/range {v17 .. v17}, Lcom/sigmob/volley/toolbox/l;->a()I

    move-result v14

    const-string v2, "download getStatus %s StatusCode: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/volley/q;->n()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/sigmob/volley/af;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {v17 .. v17}, Lcom/sigmob/volley/toolbox/l;->b()Ljava/util/List;

    move-result-object v8

    const/16 v2, 0x130

    if-ne v14, v2, :cond_7b

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/volley/q;->p()Lcom/sigmob/volley/c;

    move-result-object v2

    if-nez v2, :cond_65

    new-instance v2, Lcom/sigmob/volley/n;

    const/16 v3, 0x130

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v18

    invoke-direct/range {v2 .. v8}, Lcom/sigmob/volley/n;-><init>(I[BZJLjava/util/List;)V

    :goto_64
    return-object v2

    :cond_65
    invoke-static {v8, v2}, Lcom/sigmob/volley/toolbox/f;->a(Ljava/util/List;Lcom/sigmob/volley/c;)Ljava/util/List;

    move-result-object v16

    new-instance v10, Lcom/sigmob/volley/n;

    const/16 v11, 0x130

    iget-object v12, v2, Lcom/sigmob/volley/c;->a:[B

    const/4 v13, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v14, v2, v18

    invoke-direct/range {v10 .. v16}, Lcom/sigmob/volley/n;-><init>(I[BZJLjava/util/List;)V

    move-object v2, v10

    goto :goto_64

    :cond_7b
    invoke-virtual/range {v17 .. v17}, Lcom/sigmob/volley/toolbox/l;->d()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_bc

    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/sigmob/volley/toolbox/g;

    if-eqz v2, :cond_1a2

    move-object/from16 v0, p1

    check-cast v0, Lcom/sigmob/volley/toolbox/g;

    move-object v2, v0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sigmob/volley/toolbox/g;->a(Lcom/sigmob/volley/toolbox/l;)[B
    :try_end_91
    .catch Ljava/net/SocketTimeoutException; {:try_start_2d .. :try_end_91} :catch_ad
    .catch Ljava/net/MalformedURLException; {:try_start_2d .. :try_end_91} :catch_cf
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_91} :catch_196

    move-result-object v13

    :goto_92
    :try_start_92
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v10, v2, v18

    move-object/from16 v9, p0

    move-object/from16 v12, p1

    invoke-direct/range {v9 .. v14}, Lcom/sigmob/volley/toolbox/f;->a(JLcom/sigmob/volley/q;[BI)V

    const/16 v2, 0xc8

    if-lt v14, v2, :cond_a7

    const/16 v2, 0x12b

    if-le v14, v2, :cond_c0

    :cond_a7
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_ad
    .catch Ljava/net/SocketTimeoutException; {:try_start_92 .. :try_end_ad} :catch_ad
    .catch Ljava/net/MalformedURLException; {:try_start_92 .. :try_end_ad} :catch_cf
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_ad} :catch_19c

    :catch_ad
    move-exception v2

    const-string v2, "socket"

    new-instance v3, Lcom/sigmob/volley/ad;

    invoke-direct {v3}, Lcom/sigmob/volley/ad;-><init>()V

    move-object/from16 v0, p1

    invoke-static {v2, v0, v3}, Lcom/sigmob/volley/toolbox/f;->a(Ljava/lang/String;Lcom/sigmob/volley/q;Lcom/sigmob/volley/ae;)V

    goto/16 :goto_4

    :cond_bc
    const/4 v2, 0x0

    :try_start_bd
    new-array v13, v2, [B
    :try_end_bf
    .catch Ljava/net/SocketTimeoutException; {:try_start_bd .. :try_end_bf} :catch_ad
    .catch Ljava/net/MalformedURLException; {:try_start_bd .. :try_end_bf} :catch_cf
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_bf} :catch_196

    goto :goto_92

    :cond_c0
    :try_start_c0
    new-instance v2, Lcom/sigmob/volley/n;

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v18

    move v3, v14

    move-object v4, v13

    invoke-direct/range {v2 .. v8}, Lcom/sigmob/volley/n;-><init>(I[BZJLjava/util/List;)V
    :try_end_ce
    .catch Ljava/net/SocketTimeoutException; {:try_start_c0 .. :try_end_ce} :catch_ad
    .catch Ljava/net/MalformedURLException; {:try_start_c0 .. :try_end_ce} :catch_cf
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_ce} :catch_19c

    goto :goto_64

    :catch_cf
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/volley/q;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_ed
    move-exception v2

    move-object v4, v9

    :goto_ef
    if-eqz v3, :cond_136

    invoke-virtual {v3}, Lcom/sigmob/volley/toolbox/l;->a()I

    move-result v3

    const-string v5, "%s Unexpected response code %d for %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/volley/q;->n()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v5, v6}, Lcom/sigmob/volley/af;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v4, :cond_188

    new-instance v2, Lcom/sigmob/volley/n;

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v18

    invoke-direct/range {v2 .. v8}, Lcom/sigmob/volley/n;-><init>(I[BZJLjava/util/List;)V

    const/16 v4, 0x191

    if-eq v3, v4, :cond_128

    const/16 v4, 0x193

    if-ne v3, v4, :cond_13c

    :cond_128
    const-string v3, "auth"

    new-instance v4, Lcom/sigmob/volley/a;

    invoke-direct {v4, v2}, Lcom/sigmob/volley/a;-><init>(Lcom/sigmob/volley/n;)V

    move-object/from16 v0, p1

    invoke-static {v3, v0, v4}, Lcom/sigmob/volley/toolbox/f;->a(Ljava/lang/String;Lcom/sigmob/volley/q;Lcom/sigmob/volley/ae;)V

    goto/16 :goto_4

    :cond_136
    new-instance v3, Lcom/sigmob/volley/o;

    invoke-direct {v3, v2}, Lcom/sigmob/volley/o;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_13c
    const/16 v4, 0x12d

    if-eq v3, v4, :cond_144

    const/16 v4, 0x12e

    if-ne v3, v4, :cond_152

    :cond_144
    const-string v3, "auth"

    new-instance v4, Lcom/sigmob/volley/a;

    invoke-direct {v4, v2}, Lcom/sigmob/volley/a;-><init>(Lcom/sigmob/volley/n;)V

    move-object/from16 v0, p1

    invoke-static {v3, v0, v4}, Lcom/sigmob/volley/toolbox/f;->a(Ljava/lang/String;Lcom/sigmob/volley/q;Lcom/sigmob/volley/ae;)V

    goto/16 :goto_4

    :cond_152
    const/16 v4, 0x190

    if-lt v3, v4, :cond_160

    const/16 v4, 0x1f3

    if-gt v3, v4, :cond_160

    new-instance v3, Lcom/sigmob/volley/ac;

    invoke-direct {v3, v2}, Lcom/sigmob/volley/ac;-><init>(Lcom/sigmob/volley/n;)V

    throw v3

    :cond_160
    const/16 v4, 0x1f4

    if-lt v3, v4, :cond_182

    const/16 v4, 0x257

    if-gt v3, v4, :cond_182

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/volley/q;->v()Z

    move-result v3

    if-eqz v3, :cond_17c

    const-string v3, "server"

    new-instance v4, Lcom/sigmob/volley/ac;

    invoke-direct {v4, v2}, Lcom/sigmob/volley/ac;-><init>(Lcom/sigmob/volley/n;)V

    move-object/from16 v0, p1

    invoke-static {v3, v0, v4}, Lcom/sigmob/volley/toolbox/f;->a(Ljava/lang/String;Lcom/sigmob/volley/q;Lcom/sigmob/volley/ae;)V

    goto/16 :goto_4

    :cond_17c
    new-instance v3, Lcom/sigmob/volley/ac;

    invoke-direct {v3, v2}, Lcom/sigmob/volley/ac;-><init>(Lcom/sigmob/volley/n;)V

    throw v3

    :cond_182
    new-instance v3, Lcom/sigmob/volley/ac;

    invoke-direct {v3, v2}, Lcom/sigmob/volley/ac;-><init>(Lcom/sigmob/volley/n;)V

    throw v3

    :cond_188
    const-string v3, "network"

    new-instance v4, Lcom/sigmob/volley/m;

    invoke-direct {v4, v2}, Lcom/sigmob/volley/m;-><init>(Ljava/lang/Throwable;)V

    move-object/from16 v0, p1

    invoke-static {v3, v0, v4}, Lcom/sigmob/volley/toolbox/f;->a(Ljava/lang/String;Lcom/sigmob/volley/q;Lcom/sigmob/volley/ae;)V

    goto/16 :goto_4

    :catch_196
    move-exception v2

    move-object v4, v9

    move-object/from16 v3, v17

    goto/16 :goto_ef

    :catch_19c
    move-exception v2

    move-object v4, v13

    move-object/from16 v3, v17

    goto/16 :goto_ef

    :cond_1a2
    move-object v13, v9

    goto/16 :goto_92
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string v2, "HTTP ERROR(%s) %d ms to fetch %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    sub-long/2addr v0, p3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    aput-object p2, v3, v0

    invoke-static {v2, v3}, Lcom/sigmob/volley/af;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
