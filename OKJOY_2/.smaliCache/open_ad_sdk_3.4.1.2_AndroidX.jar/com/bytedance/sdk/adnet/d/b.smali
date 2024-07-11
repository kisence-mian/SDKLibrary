.class public Lcom/bytedance/sdk/adnet/d/b;
.super Ljava/lang/Object;
.source "HttpHeaderParser.java"


# direct methods
.method public static a(Ljava/lang/String;)J
    .registers 4

    .line 140
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/adnet/d/b;->a()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    return-wide v0

    .line 141
    :catchall_d
    move-exception v0

    .line 143
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Unable to parse dateStr: %s, falling back to 0"

    invoke-static {v0, p0, v1}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static a(Lcom/bytedance/sdk/adnet/core/i;)Lcom/bytedance/sdk/adnet/face/a$a;
    .registers 24

    .line 51
    move-object/from16 v1, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 53
    iget-object v4, v1, Lcom/bytedance/sdk/adnet/core/i;->c:Ljava/util/Map;

    .line 55
    nop

    .line 56
    nop

    .line 57
    nop

    .line 58
    nop

    .line 59
    nop

    .line 60
    nop

    .line 61
    nop

    .line 62
    nop

    .line 63
    nop

    .line 65
    nop

    .line 68
    const-string v0, "Date"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    const-wide/16 v5, 0x0

    if-eqz v0, :cond_23

    .line 70
    invoke-static {v0}, Lcom/bytedance/sdk/adnet/d/b;->a(Ljava/lang/String;)J

    move-result-wide v7

    goto :goto_24

    .line 69
    :cond_23
    move-wide v7, v5

    .line 73
    :goto_24
    const-string v0, "Cache-Control"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 74
    const/4 v10, 0x0

    if-eqz v0, :cond_96

    .line 75
    nop

    .line 76
    const-string v11, ","

    invoke-virtual {v0, v11, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11

    .line 77
    move-wide v13, v5

    move-wide v15, v13

    move v12, v10

    :goto_39
    array-length v0, v11

    if-ge v10, v0, :cond_93

    .line 78
    aget-object v0, v11, v10

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 79
    const-string v9, "no-cache"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_91

    const-string v9, "no-store"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_53

    goto :goto_91

    .line 81
    :cond_53
    const-string v9, "max-age="

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_68

    .line 83
    const/16 v9, 0x8

    :try_start_5d
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_65} :catch_66

    .line 85
    :goto_65
    goto :goto_8e

    .line 84
    :catch_66
    move-exception v0

    goto :goto_65

    .line 86
    :cond_68
    const-string v9, "stale-while-revalidate="

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7d

    .line 88
    const/16 v9, 0x17

    :try_start_72
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_7a} :catch_7b

    .line 90
    :goto_7a
    goto :goto_8e

    .line 89
    :catch_7b
    move-exception v0

    goto :goto_7a

    .line 91
    :cond_7d
    const-string v9, "must-revalidate"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8d

    const-string v9, "proxy-revalidate"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 92
    :cond_8d
    const/4 v12, 0x1

    .line 77
    :cond_8e
    :goto_8e
    add-int/lit8 v10, v10, 0x1

    goto :goto_39

    .line 80
    :cond_91
    :goto_91
    const/4 v0, 0x0

    return-object v0

    .line 77
    :cond_93
    move v10, v12

    const/4 v9, 0x1

    goto :goto_99

    .line 74
    :cond_96
    move-wide v13, v5

    move-wide v15, v13

    move v9, v10

    .line 97
    :goto_99
    const-string v0, "Expires"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 98
    if-eqz v0, :cond_a8

    .line 99
    invoke-static {v0}, Lcom/bytedance/sdk/adnet/d/b;->a(Ljava/lang/String;)J

    move-result-wide v11

    goto :goto_a9

    .line 98
    :cond_a8
    move-wide v11, v5

    .line 102
    :goto_a9
    const-string v0, "Last-Modified"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    if-eqz v0, :cond_ba

    .line 104
    invoke-static {v0}, Lcom/bytedance/sdk/adnet/d/b;->a(Ljava/lang/String;)J

    move-result-wide v17

    move-wide/from16 v19, v17

    goto :goto_bc

    .line 103
    :cond_ba
    move-wide/from16 v19, v5

    .line 107
    :goto_bc
    const-string v0, "ETag"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    if-eqz v9, :cond_d7

    .line 112
    const-wide/16 v5, 0x3e8

    mul-long/2addr v13, v5

    add-long/2addr v2, v13

    .line 113
    if-eqz v10, :cond_ce

    move-wide v5, v2

    goto :goto_d1

    :cond_ce
    mul-long/2addr v15, v5

    add-long/2addr v15, v2

    move-wide v5, v15

    :goto_d1
    move-wide/from16 v21, v2

    move-wide v2, v5

    move-wide/from16 v5, v21

    goto :goto_e5

    .line 114
    :cond_d7
    cmp-long v9, v7, v5

    if-lez v9, :cond_e4

    cmp-long v9, v11, v7

    if-ltz v9, :cond_e4

    .line 116
    sub-long/2addr v11, v7

    add-long v5, v2, v11

    .line 117
    move-wide v2, v5

    goto :goto_e5

    .line 120
    :cond_e4
    move-wide v2, v5

    :goto_e5
    new-instance v9, Lcom/bytedance/sdk/adnet/face/a$a;

    invoke-direct {v9}, Lcom/bytedance/sdk/adnet/face/a$a;-><init>()V

    .line 121
    iget v10, v1, Lcom/bytedance/sdk/adnet/core/i;->a:I

    iput v10, v9, Lcom/bytedance/sdk/adnet/face/a$a;->a:I

    .line 122
    iget-object v10, v1, Lcom/bytedance/sdk/adnet/core/i;->b:[B

    iput-object v10, v9, Lcom/bytedance/sdk/adnet/face/a$a;->b:[B

    .line 123
    iput-object v0, v9, Lcom/bytedance/sdk/adnet/face/a$a;->c:Ljava/lang/String;

    .line 124
    iput-wide v5, v9, Lcom/bytedance/sdk/adnet/face/a$a;->g:J

    .line 125
    iput-wide v2, v9, Lcom/bytedance/sdk/adnet/face/a$a;->f:J

    .line 126
    iput-wide v7, v9, Lcom/bytedance/sdk/adnet/face/a$a;->d:J

    .line 127
    move-wide/from16 v5, v19

    iput-wide v5, v9, Lcom/bytedance/sdk/adnet/face/a$a;->e:J

    .line 128
    iput-object v4, v9, Lcom/bytedance/sdk/adnet/face/a$a;->h:Ljava/util/Map;

    .line 129
    iget-object v0, v1, Lcom/bytedance/sdk/adnet/core/i;->d:Ljava/util/List;

    iput-object v0, v9, Lcom/bytedance/sdk/adnet/face/a$a;->i:Ljava/util/List;

    .line 131
    return-object v9
.end method

.method public static a(J)Ljava/lang/String;
    .registers 4

    .line 152
    invoke-static {}, Lcom/bytedance/sdk/adnet/d/b;->a()Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 191
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/adnet/d/b;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

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

    .line 170
    const-string v0, "Content-Type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 171
    if-eqz p0, :cond_36

    .line 172
    const-string v0, ";"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 173
    const/4 v0, 0x1

    move v2, v0

    :goto_13
    array-length v3, p0

    if-ge v2, v3, :cond_36

    .line 174
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 175
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_33

    .line 176
    aget-object v4, v3, v1

    const-string v5, "charset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 177
    aget-object p0, v3, v0

    return-object p0

    .line 173
    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 183
    :cond_36
    return-object p1
.end method

.method private static a()Ljava/text/SimpleDateFormat;
    .registers 3

    .line 156
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 157
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 158
    return-object v0
.end method

.method public static a(Ljava/util/List;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/adnet/core/Header;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 202
    if-eqz p0, :cond_25

    .line 203
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/adnet/core/Header;

    .line 204
    invoke-virtual {v1}, Lcom/bytedance/sdk/adnet/core/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/bytedance/sdk/adnet/core/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    goto :goto_d

    .line 207
    :cond_25
    return-object v0
.end method

.method public static b(Ljava/util/Map;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/adnet/core/Header;",
            ">;"
        }
    .end annotation

    .line 211
    if-nez p0, :cond_8

    .line 212
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 214
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 215
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 216
    new-instance v2, Lcom/bytedance/sdk/adnet/core/Header;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/bytedance/sdk/adnet/core/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    goto :goto_19

    .line 218
    :cond_3a
    return-object v0
.end method
