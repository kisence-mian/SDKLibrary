.class public Lcom/sigmob/volley/toolbox/h;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)J
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/sigmob/volley/toolbox/h;->a()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_c
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_c} :catch_d

    return-wide v0

    :catch_d
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Unable to parse dateStr: %s, falling back to 0"

    invoke-static {v0, p0, v1}, Lcom/sigmob/volley/u;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static a(Lcom/sigmob/volley/j;)Lcom/sigmob/volley/b$a;
    .registers 24

    move-object/from16 v1, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v1, Lcom/sigmob/volley/j;->c:Ljava/util/Map;

    const-string v0, "Date"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_19

    invoke-static {v0}, Lcom/sigmob/volley/toolbox/h;->a(Ljava/lang/String;)J

    move-result-wide v7

    goto :goto_1a

    :cond_19
    move-wide v7, v5

    :goto_1a
    const-string v0, "Cache-Control"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v10, 0x0

    if-eqz v0, :cond_89

    const-string v11, ","

    invoke-virtual {v0, v11, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11

    move-wide v13, v5

    move-wide v15, v13

    move v12, v10

    :goto_2e
    array-length v0, v11

    if-ge v10, v0, :cond_86

    aget-object v0, v11, v10

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v9, "no-cache"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_84

    const-string v9, "no-store"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_48

    goto :goto_84

    :cond_48
    const-string v9, "max-age="

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5d

    const/16 v9, 0x8

    :try_start_52
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13
    :try_end_5a
    .catchall {:try_start_52 .. :try_end_5a} :catchall_5b

    goto :goto_81

    :catchall_5b
    move-exception v0

    goto :goto_81

    :cond_5d
    const-string v9, "stale-while-revalidate="

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_70

    const/16 v9, 0x17

    :try_start_67
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15
    :try_end_6f
    .catchall {:try_start_67 .. :try_end_6f} :catchall_5b

    goto :goto_81

    :cond_70
    const-string v9, "must-revalidate"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_80

    const-string v9, "proxy-revalidate"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    :cond_80
    const/4 v12, 0x1

    :cond_81
    :goto_81
    add-int/lit8 v10, v10, 0x1

    goto :goto_2e

    :cond_84
    :goto_84
    const/4 v0, 0x0

    return-object v0

    :cond_86
    move v10, v12

    const/4 v9, 0x1

    goto :goto_8c

    :cond_89
    move-wide v13, v5

    move-wide v15, v13

    move v9, v10

    :goto_8c
    const-string v0, "Expires"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_9b

    invoke-static {v0}, Lcom/sigmob/volley/toolbox/h;->a(Ljava/lang/String;)J

    move-result-wide v11

    goto :goto_9c

    :cond_9b
    move-wide v11, v5

    :goto_9c
    const-string v0, "Last-Modified"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_ad

    invoke-static {v0}, Lcom/sigmob/volley/toolbox/h;->a(Ljava/lang/String;)J

    move-result-wide v17

    move-wide/from16 v19, v17

    goto :goto_af

    :cond_ad
    move-wide/from16 v19, v5

    :goto_af
    const-string v0, "ETag"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v9, :cond_ca

    const-wide/16 v5, 0x3e8

    mul-long/2addr v13, v5

    add-long/2addr v2, v13

    if-eqz v10, :cond_c1

    move-wide v5, v2

    goto :goto_c4

    :cond_c1
    mul-long/2addr v15, v5

    add-long/2addr v15, v2

    move-wide v5, v15

    :goto_c4
    move-wide/from16 v21, v2

    move-wide v2, v5

    move-wide/from16 v5, v21

    goto :goto_d6

    :cond_ca
    cmp-long v9, v7, v5

    if-lez v9, :cond_d5

    cmp-long v9, v11, v7

    if-ltz v9, :cond_d5

    sub-long/2addr v11, v7

    add-long v5, v2, v11

    :cond_d5
    move-wide v2, v5

    :goto_d6
    new-instance v9, Lcom/sigmob/volley/b$a;

    invoke-direct {v9}, Lcom/sigmob/volley/b$a;-><init>()V

    iget-object v10, v1, Lcom/sigmob/volley/j;->b:[B

    iput-object v10, v9, Lcom/sigmob/volley/b$a;->a:[B

    iput-object v0, v9, Lcom/sigmob/volley/b$a;->b:Ljava/lang/String;

    iput-wide v5, v9, Lcom/sigmob/volley/b$a;->f:J

    iput-wide v2, v9, Lcom/sigmob/volley/b$a;->e:J

    iput-wide v7, v9, Lcom/sigmob/volley/b$a;->c:J

    move-wide/from16 v5, v19

    iput-wide v5, v9, Lcom/sigmob/volley/b$a;->d:J

    iput-object v4, v9, Lcom/sigmob/volley/b$a;->g:Ljava/util/Map;

    iget-object v0, v1, Lcom/sigmob/volley/j;->d:Ljava/util/List;

    iput-object v0, v9, Lcom/sigmob/volley/b$a;->h:Ljava/util/List;

    return-object v9
.end method

.method static a(J)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/sigmob/volley/toolbox/h;->a()Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "Content-Type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_36

    const-string v0, ";"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    move v2, v0

    :goto_13
    array-length v3, p0

    if-ge v2, v3, :cond_36

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_33

    aget-object v4, v3, v1

    const-string v5, "charset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    aget-object p0, v3, v0

    return-object p0

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_36
    return-object p1
.end method

.method private static a()Ljava/text/SimpleDateFormat;
    .registers 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public static a(Ljava/util/Map;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "Accept-Ranges"

    invoke-static {p0, v0}, Lcom/sigmob/volley/toolbox/h;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bytes"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    return v2

    :cond_10
    const-string v0, "Content-Range"

    invoke-static {p0, v0}, Lcom/sigmob/volley/toolbox/h;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1f

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    return v2
.end method

.method public static b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static b(Ljava/util/Map;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "Content-Encoding"

    invoke-static {p0, v0}, Lcom/sigmob/volley/toolbox/h;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "gzip"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
