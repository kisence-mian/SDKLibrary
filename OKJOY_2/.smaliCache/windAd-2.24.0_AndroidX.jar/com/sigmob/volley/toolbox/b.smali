.class public Lcom/sigmob/volley/toolbox/b;
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

    sput-boolean v0, Lcom/sigmob/volley/toolbox/b;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/volley/toolbox/a;)V
    .registers 4

    new-instance v0, Lcom/sigmob/volley/toolbox/c;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/sigmob/volley/toolbox/c;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/sigmob/volley/toolbox/b;-><init>(Lcom/sigmob/volley/toolbox/a;Lcom/sigmob/volley/toolbox/c;)V

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/volley/toolbox/a;Lcom/sigmob/volley/toolbox/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/b;->c:Lcom/sigmob/volley/toolbox/a;

    iput-object p2, p0, Lcom/sigmob/volley/toolbox/b;->b:Lcom/sigmob/volley/toolbox/c;

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

.method protected static a(Ljava/util/List;)Ljava/util/Map;
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

    sget-boolean v0, Lcom/sigmob/volley/toolbox/b;->a:Z

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

.method private static a(Ljava/lang/String;Lcom/sigmob/volley/m;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sigmob/volley/m<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sigmob/volley/m;->s()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    aput-object p0, v1, v0

    const-string p0, "%s-Redirect [timeout=%s]"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sigmob/volley/m;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/sigmob/volley/m;Lcom/sigmob/volley/t;)V
    .registers 8
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

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    :try_start_b
    invoke-interface {v0, p2}, Lcom/sigmob/volley/q;->a(Lcom/sigmob/volley/t;)V
    :try_end_e
    .catch Lcom/sigmob/volley/t; {:try_start_b .. :try_end_e} :catch_22

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p0, p2, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, v2

    const-string p0, "%s-retry [timeout=%s]"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sigmob/volley/m;->a(Ljava/lang/String;)V

    return-void

    :catch_22
    move-exception p2

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "%s-timeout-giveup [timeout=%s]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sigmob/volley/m;->a(Ljava/lang/String;)V

    throw p2
.end method

.method private a(Ljava/io/InputStream;I)[B
    .registers 13

    const-string v0, "Error occurred when closing InputStream"

    new-instance v1, Lcom/sigmob/volley/toolbox/n;

    iget-object v2, p0, Lcom/sigmob/volley/toolbox/b;->b:Lcom/sigmob/volley/toolbox/c;

    invoke-direct {v1, v2, p2}, Lcom/sigmob/volley/toolbox/n;-><init>(Lcom/sigmob/volley/toolbox/c;I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_c
    iget-object v5, p0, Lcom/sigmob/volley/toolbox/b;->b:Lcom/sigmob/volley/toolbox/c;

    const/16 v6, 0x400

    invoke-virtual {v5, v6}, Lcom/sigmob/volley/toolbox/c;->a(I)[B

    move-result-object v4

    const-wide/16 v5, 0x0

    :goto_16
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2a

    if-lt p2, v2, :cond_24

    int-to-long v8, p2

    cmp-long v8, v5, v8

    if-gez v8, :cond_2a

    :cond_24
    invoke-virtual {v1, v4, v3, v7}, Lcom/sigmob/volley/toolbox/n;->write([BII)V

    int-to-long v7, v7

    add-long/2addr v5, v7

    goto :goto_16

    :cond_2a
    invoke-virtual {v1}, Lcom/sigmob/volley/toolbox/n;->toByteArray()[B

    move-result-object p2
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_43

    if-eqz p1, :cond_3a

    :try_start_30
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_3a

    :catch_34
    move-exception p1

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/sigmob/volley/u;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3a
    :goto_3a
    iget-object p1, p0, Lcom/sigmob/volley/toolbox/b;->b:Lcom/sigmob/volley/toolbox/c;

    invoke-virtual {p1, v4}, Lcom/sigmob/volley/toolbox/c;->a([B)V

    :goto_3f
    invoke-virtual {v1}, Lcom/sigmob/volley/toolbox/n;->close()V

    return-object p2

    :catchall_43
    move-exception p2

    :try_start_44
    const-string v5, "readError"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-static {v5, v2}, Lcom/sigmob/volley/u;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/sigmob/volley/toolbox/n;->toByteArray()[B

    move-result-object p2
    :try_end_55
    .catchall {:try_start_44 .. :try_end_55} :catchall_67

    if-eqz p1, :cond_61

    :try_start_57
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_61

    :catch_5b
    move-exception p1

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/sigmob/volley/u;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_61
    :goto_61
    iget-object p1, p0, Lcom/sigmob/volley/toolbox/b;->b:Lcom/sigmob/volley/toolbox/c;

    invoke-virtual {p1, v4}, Lcom/sigmob/volley/toolbox/c;->a([B)V

    goto :goto_3f

    :catchall_67
    move-exception p2

    if-eqz p1, :cond_74

    :try_start_6a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_74

    :catch_6e
    move-exception p1

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/sigmob/volley/u;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_74
    :goto_74
    iget-object p1, p0, Lcom/sigmob/volley/toolbox/b;->b:Lcom/sigmob/volley/toolbox/c;

    invoke-virtual {p1, v4}, Lcom/sigmob/volley/toolbox/c;->a([B)V

    invoke-virtual {v1}, Lcom/sigmob/volley/toolbox/n;->close()V

    throw p2
.end method


# virtual methods
.method public a(Lcom/sigmob/volley/m;)Lcom/sigmob/volley/j;
    .registers 26
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

    :cond_8
    :goto_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/16 v11, 0x12e

    const/16 v12, 0x12d

    const/4 v2, 0x0

    const/4 v13, 0x0

    :try_start_12
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/volley/m;->k()Lcom/sigmob/volley/b$a;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/sigmob/volley/toolbox/b;->a(Lcom/sigmob/volley/b$a;)Ljava/util/Map;

    move-result-object v0

    iget-object v3, v7, Lcom/sigmob/volley/toolbox/b;->c:Lcom/sigmob/volley/toolbox/a;

    invoke-virtual {v3, v8, v0}, Lcom/sigmob/volley/toolbox/a;->a(Lcom/sigmob/volley/m;Ljava/util/Map;)Lcom/sigmob/volley/toolbox/i;

    move-result-object v14
    :try_end_20
    .catch Ljava/net/SocketTimeoutException; {:try_start_12 .. :try_end_20} :catch_248
    .catch Ljava/net/MalformedURLException; {:try_start_12 .. :try_end_20} :catch_22a
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_20} :catch_15b
    .catchall {:try_start_12 .. :try_end_20} :catchall_157

    :try_start_20
    invoke-virtual {v14}, Lcom/sigmob/volley/toolbox/i;->a()I

    move-result v0

    invoke-virtual {v14}, Lcom/sigmob/volley/toolbox/i;->b()Ljava/util/List;

    move-result-object v6
    :try_end_28
    .catch Ljava/net/SocketTimeoutException; {:try_start_20 .. :try_end_28} :catch_153
    .catch Ljava/net/MalformedURLException; {:try_start_20 .. :try_end_28} :catch_14f
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_28} :catch_148
    .catchall {:try_start_20 .. :try_end_28} :catchall_143

    const/16 v1, 0x130

    if-ne v0, v1, :cond_9b

    :try_start_2c
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/volley/m;->k()Lcom/sigmob/volley/b$a;

    move-result-object v0

    if-nez v0, :cond_61

    new-instance v1, Lcom/sigmob/volley/j;

    const/16 v16, 0x130

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v19, v3, v9

    move-object v15, v1

    move-object/from16 v21, v6

    invoke-direct/range {v15 .. v21}, Lcom/sigmob/volley/j;-><init>(I[BZJLjava/util/List;)V
    :try_end_46
    .catch Ljava/net/SocketTimeoutException; {:try_start_2c .. :try_end_46} :catch_153
    .catch Ljava/net/MalformedURLException; {:try_start_2c .. :try_end_46} :catch_14f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_46} :catch_94
    .catchall {:try_start_2c .. :try_end_46} :catchall_143

    if-eqz v14, :cond_60

    invoke-virtual {v14}, Lcom/sigmob/volley/toolbox/i;->d()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_60

    :try_start_4e
    invoke-virtual {v14}, Lcom/sigmob/volley/toolbox/i;->d()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_55} :catch_56

    goto :goto_60

    :catch_56
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sigmob/volley/u;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_60
    :goto_60
    return-object v1

    :cond_61
    :try_start_61
    invoke-static {v6, v0}, Lcom/sigmob/volley/toolbox/b;->a(Ljava/util/List;Lcom/sigmob/volley/b$a;)Ljava/util/List;

    move-result-object v21

    new-instance v1, Lcom/sigmob/volley/j;

    const/16 v16, 0x130

    iget-object v0, v0, Lcom/sigmob/volley/b$a;->a:[B

    const/16 v18, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v19, v3, v9

    move-object v15, v1

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v21}, Lcom/sigmob/volley/j;-><init>(I[BZJLjava/util/List;)V
    :try_end_79
    .catch Ljava/net/SocketTimeoutException; {:try_start_61 .. :try_end_79} :catch_153
    .catch Ljava/net/MalformedURLException; {:try_start_61 .. :try_end_79} :catch_14f
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_79} :catch_94
    .catchall {:try_start_61 .. :try_end_79} :catchall_143

    if-eqz v14, :cond_93

    invoke-virtual {v14}, Lcom/sigmob/volley/toolbox/i;->d()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_93

    :try_start_81
    invoke-virtual {v14}, Lcom/sigmob/volley/toolbox/i;->d()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_88} :catch_89

    goto :goto_93

    :catch_89
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sigmob/volley/u;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_93
    :goto_93
    return-object v1

    :catch_94
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v21, v6

    goto/16 :goto_14d

    :cond_9b
    if-eq v0, v12, :cond_9f

    if-ne v0, v11, :cond_c4

    :cond_9f
    :try_start_9f
    invoke-static {v6}, Lcom/sigmob/volley/toolbox/b;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "Location"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v1}, Lcom/sigmob/volley/m;->c(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "redirectURL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/sigmob/volley/m;->a(Ljava/lang/String;)V

    :cond_c4
    invoke-virtual {v14}, Lcom/sigmob/volley/toolbox/i;->d()Ljava/io/InputStream;

    move-result-object v1
    :try_end_c8
    .catch Ljava/net/SocketTimeoutException; {:try_start_9f .. :try_end_c8} :catch_153
    .catch Ljava/net/MalformedURLException; {:try_start_9f .. :try_end_c8} :catch_14f
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_c8} :catch_13a
    .catchall {:try_start_9f .. :try_end_c8} :catchall_143

    if-eqz v1, :cond_de

    :try_start_ca
    invoke-virtual {v14}, Lcom/sigmob/volley/toolbox/i;->c()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/volley/m;->d()I

    move-result v4

    if-gez v4, :cond_d5

    goto :goto_d9

    :cond_d5
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/volley/m;->d()I

    move-result v3

    :goto_d9
    invoke-direct {v7, v1, v3}, Lcom/sigmob/volley/toolbox/b;->a(Ljava/io/InputStream;I)[B

    move-result-object v1
    :try_end_dd
    .catch Ljava/net/SocketTimeoutException; {:try_start_ca .. :try_end_dd} :catch_153
    .catch Ljava/net/MalformedURLException; {:try_start_ca .. :try_end_dd} :catch_14f
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_dd} :catch_94
    .catchall {:try_start_ca .. :try_end_dd} :catchall_143

    goto :goto_e0

    :cond_de
    :try_start_de
    new-array v1, v13, [B
    :try_end_e0
    .catch Ljava/net/SocketTimeoutException; {:try_start_de .. :try_end_e0} :catch_153
    .catch Ljava/net/MalformedURLException; {:try_start_de .. :try_end_e0} :catch_14f
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e0} :catch_13a
    .catchall {:try_start_de .. :try_end_e0} :catchall_143

    :goto_e0
    move-object/from16 v22, v1

    :try_start_e2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1
    :try_end_e6
    .catch Ljava/net/SocketTimeoutException; {:try_start_e2 .. :try_end_e6} :catch_153
    .catch Ljava/net/MalformedURLException; {:try_start_e2 .. :try_end_e6} :catch_14f
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e6} :catch_133
    .catchall {:try_start_e2 .. :try_end_e6} :catchall_143

    sub-long v2, v1, v9

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v5, v22

    move-object/from16 v23, v6

    move v6, v0

    :try_start_f1
    invoke-direct/range {v1 .. v6}, Lcom/sigmob/volley/toolbox/b;->a(JLcom/sigmob/volley/m;[BI)V

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_12b

    const/16 v1, 0x12b

    if-gt v0, v1, :cond_12b

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
    :try_end_110
    .catch Ljava/net/SocketTimeoutException; {:try_start_f1 .. :try_end_110} :catch_153
    .catch Ljava/net/MalformedURLException; {:try_start_f1 .. :try_end_110} :catch_14f
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_110} :catch_131
    .catchall {:try_start_f1 .. :try_end_110} :catchall_143

    if-eqz v14, :cond_12a

    invoke-virtual {v14}, Lcom/sigmob/volley/toolbox/i;->d()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_12a

    :try_start_118
    invoke-virtual {v14}, Lcom/sigmob/volley/toolbox/i;->d()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_118 .. :try_end_11f} :catch_120

    goto :goto_12a

    :catch_120
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sigmob/volley/u;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_12a
    :goto_12a
    return-object v1

    :cond_12b
    :try_start_12b
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_131
    .catch Ljava/net/SocketTimeoutException; {:try_start_12b .. :try_end_131} :catch_153
    .catch Ljava/net/MalformedURLException; {:try_start_12b .. :try_end_131} :catch_14f
    .catch Ljava/io/IOException; {:try_start_12b .. :try_end_131} :catch_131
    .catchall {:try_start_12b .. :try_end_131} :catchall_143

    :catch_131
    move-exception v0

    goto :goto_136

    :catch_133
    move-exception v0

    move-object/from16 v23, v6

    :goto_136
    move-object v2, v14

    move-object/from16 v17, v22

    goto :goto_140

    :catch_13a
    move-exception v0

    move-object/from16 v23, v6

    move-object/from16 v17, v2

    move-object v2, v14

    :goto_140
    move-object/from16 v21, v23

    goto :goto_160

    :catchall_143
    move-exception v0

    move-object v1, v0

    move-object v2, v14

    goto/16 :goto_270

    :catch_148
    move-exception v0

    move-object/from16 v21, v1

    move-object/from16 v17, v2

    :goto_14d
    move-object v2, v14

    goto :goto_160

    :catch_14f
    move-exception v0

    move-object v2, v14

    goto/16 :goto_22b

    :catch_153
    move-exception v0

    move-object v2, v14

    goto/16 :goto_249

    :catchall_157
    move-exception v0

    move-object v1, v0

    goto/16 :goto_270

    :catch_15b
    move-exception v0

    move-object/from16 v21, v1

    move-object/from16 v17, v2

    :goto_160
    if-eqz v2, :cond_224

    :try_start_162
    invoke-virtual {v2}, Lcom/sigmob/volley/toolbox/i;->a()I

    move-result v1

    const-string v3, "Unexpected response code %d for %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v13

    const/4 v5, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/volley/m;->i()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/sigmob/volley/u;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v17, :cond_1ff

    new-instance v0, Lcom/sigmob/volley/j;

    const/16 v18, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v19, v3, v9

    move-object v15, v0

    move/from16 v16, v1

    invoke-direct/range {v15 .. v21}, Lcom/sigmob/volley/j;-><init>(I[BZJLjava/util/List;)V
    :try_end_18d
    .catchall {:try_start_162 .. :try_end_18d} :catchall_157

    if-eq v1, v12, :cond_1f9

    if-ne v1, v11, :cond_192

    goto :goto_1f9

    :cond_192
    const/16 v3, 0x191

    if-eq v1, v3, :cond_1ee

    const/16 v3, 0x193

    if-ne v1, v3, :cond_19b

    goto :goto_1ee

    :cond_19b
    const/16 v3, 0x190

    const-string v4, "server"

    if-lt v1, v3, :cond_1ba

    const/16 v3, 0x1f3

    if-gt v1, v3, :cond_1ba

    :try_start_1a5
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/volley/m;->q()Z

    move-result v1

    if-eqz v1, :cond_1b4

    new-instance v1, Lcom/sigmob/volley/r;

    invoke-direct {v1, v0}, Lcom/sigmob/volley/r;-><init>(Lcom/sigmob/volley/j;)V

    :goto_1b0
    invoke-static {v4, v8, v1}, Lcom/sigmob/volley/toolbox/b;->a(Ljava/lang/String;Lcom/sigmob/volley/m;Lcom/sigmob/volley/t;)V

    goto :goto_207

    :cond_1b4
    new-instance v1, Lcom/sigmob/volley/r;

    invoke-direct {v1, v0}, Lcom/sigmob/volley/r;-><init>(Lcom/sigmob/volley/j;)V

    throw v1

    :cond_1ba
    const/16 v3, 0x1f4

    const/16 v5, 0x257

    if-lt v1, v3, :cond_1d4

    if-gt v1, v5, :cond_1d4

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/volley/m;->q()Z

    move-result v1

    if-eqz v1, :cond_1ce

    new-instance v1, Lcom/sigmob/volley/r;

    invoke-direct {v1, v0}, Lcom/sigmob/volley/r;-><init>(Lcom/sigmob/volley/j;)V

    goto :goto_1b0

    :cond_1ce
    new-instance v1, Lcom/sigmob/volley/r;

    invoke-direct {v1, v0}, Lcom/sigmob/volley/r;-><init>(Lcom/sigmob/volley/j;)V

    throw v1

    :cond_1d4
    if-le v1, v5, :cond_1e8

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/volley/m;->q()Z

    move-result v1

    if-eqz v1, :cond_1e2

    new-instance v1, Lcom/sigmob/volley/r;

    invoke-direct {v1, v0}, Lcom/sigmob/volley/r;-><init>(Lcom/sigmob/volley/j;)V

    goto :goto_1b0

    :cond_1e2
    new-instance v1, Lcom/sigmob/volley/r;

    invoke-direct {v1, v0}, Lcom/sigmob/volley/r;-><init>(Lcom/sigmob/volley/j;)V

    throw v1

    :cond_1e8
    new-instance v1, Lcom/sigmob/volley/r;

    invoke-direct {v1, v0}, Lcom/sigmob/volley/r;-><init>(Lcom/sigmob/volley/j;)V

    throw v1

    :cond_1ee
    :goto_1ee
    const-string v1, "auth"

    new-instance v3, Lcom/sigmob/volley/a;

    invoke-direct {v3, v0}, Lcom/sigmob/volley/a;-><init>(Lcom/sigmob/volley/j;)V

    :goto_1f5
    invoke-static {v1, v8, v3}, Lcom/sigmob/volley/toolbox/b;->a(Ljava/lang/String;Lcom/sigmob/volley/m;Lcom/sigmob/volley/t;)V

    goto :goto_207

    :cond_1f9
    :goto_1f9
    const-string v0, "redirect"

    invoke-static {v0, v8}, Lcom/sigmob/volley/toolbox/b;->a(Ljava/lang/String;Lcom/sigmob/volley/m;)V

    goto :goto_207

    :cond_1ff
    const-string v1, "network"

    new-instance v3, Lcom/sigmob/volley/i;

    invoke-direct {v3, v0}, Lcom/sigmob/volley/i;-><init>(Ljava/lang/Throwable;)V
    :try_end_206
    .catchall {:try_start_1a5 .. :try_end_206} :catchall_157

    goto :goto_1f5

    :goto_207
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/sigmob/volley/toolbox/i;->d()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_8

    :try_start_20f
    invoke-virtual {v2}, Lcom/sigmob/volley/toolbox/i;->d()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_216
    .catch Ljava/io/IOException; {:try_start_20f .. :try_end_216} :catch_218

    goto/16 :goto_8

    :catch_218
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sigmob/volley/u;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_224
    :try_start_224
    new-instance v1, Lcom/sigmob/volley/k;

    invoke-direct {v1, v0}, Lcom/sigmob/volley/k;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_22a
    move-exception v0

    :goto_22b
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/volley/m;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_248
    move-exception v0

    :goto_249
    const-string v0, "socket"

    new-instance v1, Lcom/sigmob/volley/s;

    invoke-direct {v1}, Lcom/sigmob/volley/s;-><init>()V

    invoke-static {v0, v8, v1}, Lcom/sigmob/volley/toolbox/b;->a(Ljava/lang/String;Lcom/sigmob/volley/m;Lcom/sigmob/volley/t;)V
    :try_end_253
    .catchall {:try_start_224 .. :try_end_253} :catchall_157

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/sigmob/volley/toolbox/i;->d()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_8

    :try_start_25b
    invoke-virtual {v2}, Lcom/sigmob/volley/toolbox/i;->d()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_262
    .catch Ljava/io/IOException; {:try_start_25b .. :try_end_262} :catch_264

    goto/16 :goto_8

    :catch_264
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sigmob/volley/u;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    :goto_270
    if-eqz v2, :cond_28a

    invoke-virtual {v2}, Lcom/sigmob/volley/toolbox/i;->d()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_28a

    :try_start_278
    invoke-virtual {v2}, Lcom/sigmob/volley/toolbox/i;->d()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_27f
    .catch Ljava/io/IOException; {:try_start_278 .. :try_end_27f} :catch_280

    goto :goto_28a

    :catch_280
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sigmob/volley/u;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_28a
    :goto_28a
    throw v1
.end method
