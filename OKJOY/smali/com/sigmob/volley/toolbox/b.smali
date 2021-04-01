.class public Lcom/sigmob/volley/toolbox/b;
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

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/b;->e:Lcom/sigmob/volley/toolbox/a;

    iput-object p2, p0, Lcom/sigmob/volley/toolbox/b;->b:Lcom/sigmob/volley/toolbox/c;

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

.method protected static a(Ljava/util/List;)Ljava/util/Map;
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

    sget-boolean v0, Lcom/sigmob/volley/toolbox/b;->a:Z

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

.method private static a(Ljava/lang/String;Lcom/sigmob/volley/q;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sigmob/volley/q",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sigmob/volley/q;->x()I

    move-result v0

    const-string v1, "%s-Redirect [timeout=%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/volley/q;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/sigmob/volley/q;Lcom/sigmob/volley/ae;)V
    .registers 9
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

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/sigmob/volley/q;->z()Lcom/sigmob/volley/ab;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/volley/q;->x()I

    move-result v1

    :try_start_b
    invoke-interface {v0, p2}, Lcom/sigmob/volley/ab;->a(Lcom/sigmob/volley/ae;)V
    :try_end_e
    .catch Lcom/sigmob/volley/ae; {:try_start_b .. :try_end_e} :catch_22

    const-string v0, "%s-retry [timeout=%s]"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/volley/q;->a(Ljava/lang/String;)V

    return-void

    :catch_22
    move-exception v0

    const-string v2, "%s-timeout-giveup [timeout=%s]"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sigmob/volley/q;->a(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/io/InputStream;I)[B
    .registers 13

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v4, Lcom/sigmob/volley/toolbox/w;

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/b;->b:Lcom/sigmob/volley/toolbox/c;

    invoke-direct {v4, v0, p2}, Lcom/sigmob/volley/toolbox/w;-><init>(Lcom/sigmob/volley/toolbox/c;I)V

    const/4 v1, 0x0

    :try_start_a
    iget-object v0, p0, Lcom/sigmob/volley/toolbox/b;->b:Lcom/sigmob/volley/toolbox/c;

    const/16 v2, 0x400

    invoke-virtual {v0, v2}, Lcom/sigmob/volley/toolbox/c;->a(I)[B

    move-result-object v1

    const-wide/16 v2, 0x0

    :goto_14
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_29

    if-lt p2, v9, :cond_22

    int-to-long v6, p2

    cmp-long v5, v2, v6

    if-gez v5, :cond_29

    :cond_22
    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v0}, Lcom/sigmob/volley/toolbox/w;->write([BII)V

    int-to-long v6, v0

    add-long/2addr v2, v6

    goto :goto_14

    :cond_29
    invoke-virtual {v4}, Lcom/sigmob/volley/toolbox/w;->toByteArray()[B
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_2c} :catch_44
    .catchall {:try_start_a .. :try_end_2c} :catchall_6f

    move-result-object v0

    if-eqz p1, :cond_32

    :try_start_2f
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_3b

    :cond_32
    :goto_32
    iget-object v2, p0, Lcom/sigmob/volley/toolbox/b;->b:Lcom/sigmob/volley/toolbox/c;

    invoke-virtual {v2, v1}, Lcom/sigmob/volley/toolbox/c;->a([B)V

    invoke-virtual {v4}, Lcom/sigmob/volley/toolbox/w;->close()V

    :goto_3a
    return-object v0

    :catch_3b
    move-exception v2

    const-string v2, "Error occurred when closing InputStream"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/sigmob/volley/af;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_32

    :catch_44
    move-exception v0

    :try_start_45
    const-string v2, "readError"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Lcom/sigmob/volley/af;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/sigmob/volley/toolbox/w;->toByteArray()[B
    :try_end_57
    .catchall {:try_start_45 .. :try_end_57} :catchall_6f

    move-result-object v0

    if-eqz p1, :cond_5d

    :try_start_5a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_66

    :cond_5d
    :goto_5d
    iget-object v2, p0, Lcom/sigmob/volley/toolbox/b;->b:Lcom/sigmob/volley/toolbox/c;

    invoke-virtual {v2, v1}, Lcom/sigmob/volley/toolbox/c;->a([B)V

    invoke-virtual {v4}, Lcom/sigmob/volley/toolbox/w;->close()V

    goto :goto_3a

    :catch_66
    move-exception v2

    const-string v2, "Error occurred when closing InputStream"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/sigmob/volley/af;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5d

    :catchall_6f
    move-exception v0

    if-eqz p1, :cond_75

    :try_start_72
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_7e

    :cond_75
    :goto_75
    iget-object v2, p0, Lcom/sigmob/volley/toolbox/b;->b:Lcom/sigmob/volley/toolbox/c;

    invoke-virtual {v2, v1}, Lcom/sigmob/volley/toolbox/c;->a([B)V

    invoke-virtual {v4}, Lcom/sigmob/volley/toolbox/w;->close()V

    throw v0

    :catch_7e
    move-exception v2

    const-string v2, "Error occurred when closing InputStream"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/sigmob/volley/af;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_75
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

    :cond_4
    :goto_4
    const/4 v2, 0x0

    const/4 v9, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    :try_start_a
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/volley/q;->p()Lcom/sigmob/volley/c;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sigmob/volley/toolbox/b;->a(Lcom/sigmob/volley/c;)Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sigmob/volley/toolbox/b;->e:Lcom/sigmob/volley/toolbox/a;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v3}, Lcom/sigmob/volley/toolbox/a;->a(Lcom/sigmob/volley/q;Ljava/util/Map;)Lcom/sigmob/volley/toolbox/l;
    :try_end_1d
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_1d} :catch_267
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_1d} :catch_134
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1d} :catch_166
    .catchall {:try_start_a .. :try_end_1d} :catchall_250

    move-result-object v17

    :try_start_1e
    invoke-virtual/range {v17 .. v17}, Lcom/sigmob/volley/toolbox/l;->a()I

    move-result v14

    invoke-virtual/range {v17 .. v17}, Lcom/sigmob/volley/toolbox/l;->b()Ljava/util/List;

    move-result-object v8

    const/16 v2, 0x130

    if-ne v14, v2, :cond_7e

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/volley/q;->p()Lcom/sigmob/volley/c;

    move-result-object v2

    if-nez v2, :cond_54

    new-instance v2, Lcom/sigmob/volley/n;

    const/16 v3, 0x130

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v18

    invoke-direct/range {v2 .. v8}, Lcom/sigmob/volley/n;-><init>(I[BZJLjava/util/List;)V
    :try_end_3f
    .catch Ljava/net/SocketTimeoutException; {:try_start_1e .. :try_end_3f} :catch_e0
    .catch Ljava/net/MalformedURLException; {:try_start_1e .. :try_end_3f} :catch_264
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_3f} :catch_25c
    .catchall {:try_start_1e .. :try_end_3f} :catchall_155

    if-eqz v17, :cond_4e

    invoke-virtual/range {v17 .. v17}, Lcom/sigmob/volley/toolbox/l;->d()Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_4e

    :try_start_47
    invoke-virtual/range {v17 .. v17}, Lcom/sigmob/volley/toolbox/l;->d()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4e} :catch_4f

    :cond_4e
    :goto_4e
    return-object v2

    :catch_4f
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4e

    :cond_54
    :try_start_54
    invoke-static {v8, v2}, Lcom/sigmob/volley/toolbox/b;->a(Ljava/util/List;Lcom/sigmob/volley/c;)Ljava/util/List;

    move-result-object v16

    new-instance v10, Lcom/sigmob/volley/n;

    const/16 v11, 0x130

    iget-object v12, v2, Lcom/sigmob/volley/c;->a:[B

    const/4 v13, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v14, v2, v18

    invoke-direct/range {v10 .. v16}, Lcom/sigmob/volley/n;-><init>(I[BZJLjava/util/List;)V
    :try_end_68
    .catch Ljava/net/SocketTimeoutException; {:try_start_54 .. :try_end_68} :catch_e0
    .catch Ljava/net/MalformedURLException; {:try_start_54 .. :try_end_68} :catch_264
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_68} :catch_25c
    .catchall {:try_start_54 .. :try_end_68} :catchall_155

    if-eqz v17, :cond_77

    invoke-virtual/range {v17 .. v17}, Lcom/sigmob/volley/toolbox/l;->d()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_77

    :try_start_70
    invoke-virtual/range {v17 .. v17}, Lcom/sigmob/volley/toolbox/l;->d()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_77} :catch_79

    :cond_77
    :goto_77
    move-object v2, v10

    goto :goto_4e

    :catch_79
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_77

    :cond_7e
    const/16 v2, 0x12d

    if-eq v14, v2, :cond_86

    const/16 v2, 0x12e

    if-ne v14, v2, :cond_af

    :cond_86
    :try_start_86
    invoke-static {v8}, Lcom/sigmob/volley/toolbox/b;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "Location"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/sigmob/volley/q;->c(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "redirectURL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/sigmob/volley/q;->a(Ljava/lang/String;)V

    :cond_af
    invoke-virtual/range {v17 .. v17}, Lcom/sigmob/volley/toolbox/l;->d()Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_10b

    invoke-virtual/range {v17 .. v17}, Lcom/sigmob/volley/toolbox/l;->c()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/volley/q;->a_()I

    move-result v4

    if-gez v4, :cond_106

    :goto_bf
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/sigmob/volley/toolbox/b;->a(Ljava/io/InputStream;I)[B
    :try_end_c4
    .catch Ljava/net/SocketTimeoutException; {:try_start_86 .. :try_end_c4} :catch_e0
    .catch Ljava/net/MalformedURLException; {:try_start_86 .. :try_end_c4} :catch_264
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_c4} :catch_25c
    .catchall {:try_start_86 .. :try_end_c4} :catchall_155

    move-result-object v13

    :goto_c5
    :try_start_c5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v10, v2, v18

    move-object/from16 v9, p0

    move-object/from16 v12, p1

    invoke-direct/range {v9 .. v14}, Lcom/sigmob/volley/toolbox/b;->a(JLcom/sigmob/volley/q;[BI)V

    const/16 v2, 0xc8

    if-lt v14, v2, :cond_da

    const/16 v2, 0x12b

    if-le v14, v2, :cond_10f

    :cond_da
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_e0
    .catch Ljava/net/SocketTimeoutException; {:try_start_c5 .. :try_end_e0} :catch_e0
    .catch Ljava/net/MalformedURLException; {:try_start_c5 .. :try_end_e0} :catch_264
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_e0} :catch_260
    .catchall {:try_start_c5 .. :try_end_e0} :catchall_155

    :catch_e0
    move-exception v2

    move-object/from16 v2, v17

    :goto_e3
    :try_start_e3
    const-string v3, "socket"

    new-instance v4, Lcom/sigmob/volley/ad;

    invoke-direct {v4}, Lcom/sigmob/volley/ad;-><init>()V

    move-object/from16 v0, p1

    invoke-static {v3, v0, v4}, Lcom/sigmob/volley/toolbox/b;->a(Ljava/lang/String;Lcom/sigmob/volley/q;Lcom/sigmob/volley/ae;)V
    :try_end_ef
    .catchall {:try_start_e3 .. :try_end_ef} :catchall_256

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/sigmob/volley/toolbox/l;->d()Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_4

    :try_start_f7
    invoke-virtual {v2}, Lcom/sigmob/volley/toolbox/l;->d()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_fe
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_fe} :catch_100

    goto/16 :goto_4

    :catch_100
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    :cond_106
    :try_start_106
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/volley/q;->a_()I

    move-result v2

    goto :goto_bf

    :cond_10b
    const/4 v2, 0x0

    new-array v13, v2, [B
    :try_end_10e
    .catch Ljava/net/SocketTimeoutException; {:try_start_106 .. :try_end_10e} :catch_e0
    .catch Ljava/net/MalformedURLException; {:try_start_106 .. :try_end_10e} :catch_264
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_10e} :catch_25c
    .catchall {:try_start_106 .. :try_end_10e} :catchall_155

    goto :goto_c5

    :cond_10f
    :try_start_10f
    new-instance v2, Lcom/sigmob/volley/n;

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v18

    move v3, v14

    move-object v4, v13

    invoke-direct/range {v2 .. v8}, Lcom/sigmob/volley/n;-><init>(I[BZJLjava/util/List;)V
    :try_end_11d
    .catch Ljava/net/SocketTimeoutException; {:try_start_10f .. :try_end_11d} :catch_e0
    .catch Ljava/net/MalformedURLException; {:try_start_10f .. :try_end_11d} :catch_264
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_11d} :catch_260
    .catchall {:try_start_10f .. :try_end_11d} :catchall_155

    if-eqz v17, :cond_4e

    invoke-virtual/range {v17 .. v17}, Lcom/sigmob/volley/toolbox/l;->d()Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_4e

    :try_start_125
    invoke-virtual/range {v17 .. v17}, Lcom/sigmob/volley/toolbox/l;->d()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_12c
    .catch Ljava/io/IOException; {:try_start_125 .. :try_end_12c} :catch_12e

    goto/16 :goto_4e

    :catch_12e
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4e

    :catch_134
    move-exception v3

    move-object/from16 v17, v2

    move-object v2, v3

    :goto_138
    :try_start_138
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
    :try_end_155
    .catchall {:try_start_138 .. :try_end_155} :catchall_155

    :catchall_155
    move-exception v2

    :goto_156
    if-eqz v17, :cond_165

    invoke-virtual/range {v17 .. v17}, Lcom/sigmob/volley/toolbox/l;->d()Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_165

    :try_start_15e
    invoke-virtual/range {v17 .. v17}, Lcom/sigmob/volley/toolbox/l;->d()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_165
    .catch Ljava/io/IOException; {:try_start_15e .. :try_end_165} :catch_24a

    :cond_165
    :goto_165
    throw v2

    :catch_166
    move-exception v3

    move-object v4, v9

    move-object/from16 v17, v2

    move-object v2, v3

    :goto_16b
    if-eqz v17, :cond_1bb

    :try_start_16d
    invoke-virtual/range {v17 .. v17}, Lcom/sigmob/volley/toolbox/l;->a()I

    move-result v3

    const-string v5, "Unexpected response code %d for %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/volley/q;->n()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v5, v6}, Lcom/sigmob/volley/af;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v4, :cond_23c

    new-instance v2, Lcom/sigmob/volley/n;

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v18

    invoke-direct/range {v2 .. v8}, Lcom/sigmob/volley/n;-><init>(I[BZJLjava/util/List;)V

    const/16 v4, 0x12d

    if-eq v3, v4, :cond_19d

    const/16 v4, 0x12e

    if-ne v3, v4, :cond_1c1

    :cond_19d
    const-string v2, "redirect"

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/sigmob/volley/toolbox/b;->a(Ljava/lang/String;Lcom/sigmob/volley/q;)V
    :try_end_1a4
    .catchall {:try_start_16d .. :try_end_1a4} :catchall_155

    :goto_1a4
    if-eqz v17, :cond_4

    invoke-virtual/range {v17 .. v17}, Lcom/sigmob/volley/toolbox/l;->d()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_4

    :try_start_1ac
    invoke-virtual/range {v17 .. v17}, Lcom/sigmob/volley/toolbox/l;->d()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1b3
    .catch Ljava/io/IOException; {:try_start_1ac .. :try_end_1b3} :catch_1b5

    goto/16 :goto_4

    :catch_1b5
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    :cond_1bb
    :try_start_1bb
    new-instance v3, Lcom/sigmob/volley/o;

    invoke-direct {v3, v2}, Lcom/sigmob/volley/o;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_1c1
    const/16 v4, 0x191

    if-eq v3, v4, :cond_1c9

    const/16 v4, 0x193

    if-ne v3, v4, :cond_1d6

    :cond_1c9
    const-string v3, "auth"

    new-instance v4, Lcom/sigmob/volley/a;

    invoke-direct {v4, v2}, Lcom/sigmob/volley/a;-><init>(Lcom/sigmob/volley/n;)V

    move-object/from16 v0, p1

    invoke-static {v3, v0, v4}, Lcom/sigmob/volley/toolbox/b;->a(Ljava/lang/String;Lcom/sigmob/volley/q;Lcom/sigmob/volley/ae;)V

    goto :goto_1a4

    :cond_1d6
    const/16 v4, 0x190

    if-lt v3, v4, :cond_1f7

    const/16 v4, 0x1f3

    if-gt v3, v4, :cond_1f7

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/volley/q;->v()Z

    move-result v3

    if-eqz v3, :cond_1f1

    const-string v3, "server"

    new-instance v4, Lcom/sigmob/volley/ac;

    invoke-direct {v4, v2}, Lcom/sigmob/volley/ac;-><init>(Lcom/sigmob/volley/n;)V

    move-object/from16 v0, p1

    invoke-static {v3, v0, v4}, Lcom/sigmob/volley/toolbox/b;->a(Ljava/lang/String;Lcom/sigmob/volley/q;Lcom/sigmob/volley/ae;)V

    goto :goto_1a4

    :cond_1f1
    new-instance v3, Lcom/sigmob/volley/ac;

    invoke-direct {v3, v2}, Lcom/sigmob/volley/ac;-><init>(Lcom/sigmob/volley/n;)V

    throw v3

    :cond_1f7
    const/16 v4, 0x1f4

    if-lt v3, v4, :cond_218

    const/16 v4, 0x257

    if-gt v3, v4, :cond_218

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/volley/q;->v()Z

    move-result v3

    if-eqz v3, :cond_212

    const-string v3, "server"

    new-instance v4, Lcom/sigmob/volley/ac;

    invoke-direct {v4, v2}, Lcom/sigmob/volley/ac;-><init>(Lcom/sigmob/volley/n;)V

    move-object/from16 v0, p1

    invoke-static {v3, v0, v4}, Lcom/sigmob/volley/toolbox/b;->a(Ljava/lang/String;Lcom/sigmob/volley/q;Lcom/sigmob/volley/ae;)V

    goto :goto_1a4

    :cond_212
    new-instance v3, Lcom/sigmob/volley/ac;

    invoke-direct {v3, v2}, Lcom/sigmob/volley/ac;-><init>(Lcom/sigmob/volley/n;)V

    throw v3

    :cond_218
    const/16 v4, 0x257

    if-le v3, v4, :cond_236

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/volley/q;->v()Z

    move-result v3

    if-eqz v3, :cond_230

    const-string v3, "server"

    new-instance v4, Lcom/sigmob/volley/ac;

    invoke-direct {v4, v2}, Lcom/sigmob/volley/ac;-><init>(Lcom/sigmob/volley/n;)V

    move-object/from16 v0, p1

    invoke-static {v3, v0, v4}, Lcom/sigmob/volley/toolbox/b;->a(Ljava/lang/String;Lcom/sigmob/volley/q;Lcom/sigmob/volley/ae;)V

    goto/16 :goto_1a4

    :cond_230
    new-instance v3, Lcom/sigmob/volley/ac;

    invoke-direct {v3, v2}, Lcom/sigmob/volley/ac;-><init>(Lcom/sigmob/volley/n;)V

    throw v3

    :cond_236
    new-instance v3, Lcom/sigmob/volley/ac;

    invoke-direct {v3, v2}, Lcom/sigmob/volley/ac;-><init>(Lcom/sigmob/volley/n;)V

    throw v3

    :cond_23c
    const-string v3, "network"

    new-instance v4, Lcom/sigmob/volley/m;

    invoke-direct {v4, v2}, Lcom/sigmob/volley/m;-><init>(Ljava/lang/Throwable;)V

    move-object/from16 v0, p1

    invoke-static {v3, v0, v4}, Lcom/sigmob/volley/toolbox/b;->a(Ljava/lang/String;Lcom/sigmob/volley/q;Lcom/sigmob/volley/ae;)V
    :try_end_248
    .catchall {:try_start_1bb .. :try_end_248} :catchall_155

    goto/16 :goto_1a4

    :catch_24a
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_165

    :catchall_250
    move-exception v3

    move-object/from16 v17, v2

    move-object v2, v3

    goto/16 :goto_156

    :catchall_256
    move-exception v3

    move-object/from16 v17, v2

    move-object v2, v3

    goto/16 :goto_156

    :catch_25c
    move-exception v2

    move-object v4, v9

    goto/16 :goto_16b

    :catch_260
    move-exception v2

    move-object v4, v13

    goto/16 :goto_16b

    :catch_264
    move-exception v2

    goto/16 :goto_138

    :catch_267
    move-exception v3

    goto/16 :goto_e3
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
