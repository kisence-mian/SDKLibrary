.class public Lcom/bytedance/sdk/adnet/d/c;
.super Ljava/lang/Object;
.source "HttpHeaderParser.java"


# direct methods
.method public static a(Ljava/lang/String;)J
    .registers 5

    .prologue
    .line 140
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/adnet/d/c;->a()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_d

    move-result-wide v0

    .line 144
    :goto_c
    return-wide v0

    .line 141
    :catch_d
    move-exception v0

    .line 143
    const-string v1, "Unable to parse dateStr: %s, falling back to 0"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/adnet/core/p;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    const-wide/16 v0, 0x0

    goto :goto_c
.end method

.method public static a(Lcom/bytedance/sdk/adnet/core/j;)Lcom/bytedance/sdk/adnet/face/a$a;
    .registers 26

    .prologue
    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/core/j;->c:Ljava/util/Map;

    move-object/from16 v24, v0

    .line 55
    const-wide/16 v4, 0x0

    .line 56
    const-wide/16 v16, 0x0

    .line 57
    const-wide/16 v14, 0x0

    .line 58
    const-wide/16 v20, 0x0

    .line 59
    const-wide/16 v18, 0x0

    .line 60
    const-wide/16 v10, 0x0

    .line 61
    const-wide/16 v8, 0x0

    .line 62
    const/4 v7, 0x0

    .line 63
    const/4 v6, 0x0

    .line 68
    const-string v2, "Date"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 69
    if-eqz v2, :cond_2b

    .line 70
    invoke-static {v2}, Lcom/bytedance/sdk/adnet/d/c;->a(Ljava/lang/String;)J

    move-result-wide v2

    move-wide v4, v2

    .line 73
    :cond_2b
    const-string v2, "Cache-Control"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 74
    if-eqz v2, :cond_11c

    .line 75
    const/4 v12, 0x1

    .line 76
    const-string v3, ","

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    .line 77
    const/4 v2, 0x0

    move v3, v6

    move-wide v6, v8

    move-wide v8, v10

    :goto_43
    array-length v10, v13

    if-ge v2, v10, :cond_98

    .line 78
    aget-object v10, v13, v2

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 79
    const-string v11, "no-cache"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5c

    const-string v11, "no-store"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5e

    .line 80
    :cond_5c
    const/4 v2, 0x0

    .line 131
    :goto_5d
    return-object v2

    .line 81
    :cond_5e
    const-string v11, "max-age="

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_73

    .line 83
    const/16 v11, 0x8

    :try_start_68
    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6f} :catch_10f

    move-result-wide v8

    .line 77
    :cond_70
    :goto_70
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 86
    :cond_73
    const-string v11, "stale-while-revalidate="

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_86

    .line 88
    const/16 v11, 0x17

    :try_start_7d
    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_84} :catch_10c

    move-result-wide v6

    goto :goto_70

    .line 91
    :cond_86
    const-string v11, "must-revalidate"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_96

    const-string v11, "proxy-revalidate"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_70

    .line 92
    :cond_96
    const/4 v3, 0x1

    goto :goto_70

    :cond_98
    move-wide v10, v8

    move-wide v8, v6

    move v6, v12

    .line 97
    :goto_9b
    const-string v2, "Expires"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 98
    if-eqz v2, :cond_11a

    .line 99
    invoke-static {v2}, Lcom/bytedance/sdk/adnet/d/c;->a(Ljava/lang/String;)J

    move-result-wide v12

    .line 102
    :goto_ab
    const-string v2, "Last-Modified"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 103
    if-eqz v2, :cond_117

    .line 104
    invoke-static {v2}, Lcom/bytedance/sdk/adnet/d/c;->a(Ljava/lang/String;)J

    move-result-wide v14

    .line 107
    :goto_bb
    const-string v2, "ETag"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 111
    if-eqz v6, :cond_fc

    .line 112
    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v10

    add-long v10, v22, v6

    .line 113
    if-eqz v3, :cond_f7

    move-wide v6, v10

    .line 120
    :goto_cf
    new-instance v3, Lcom/bytedance/sdk/adnet/face/a$a;

    invoke-direct {v3}, Lcom/bytedance/sdk/adnet/face/a$a;-><init>()V

    .line 121
    move-object/from16 v0, p0

    iget v8, v0, Lcom/bytedance/sdk/adnet/core/j;->a:I

    iput v8, v3, Lcom/bytedance/sdk/adnet/face/a$a;->a:I

    .line 122
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bytedance/sdk/adnet/core/j;->b:[B

    iput-object v8, v3, Lcom/bytedance/sdk/adnet/face/a$a;->b:[B

    .line 123
    iput-object v2, v3, Lcom/bytedance/sdk/adnet/face/a$a;->c:Ljava/lang/String;

    .line 124
    iput-wide v10, v3, Lcom/bytedance/sdk/adnet/face/a$a;->g:J

    .line 125
    iput-wide v6, v3, Lcom/bytedance/sdk/adnet/face/a$a;->f:J

    .line 126
    iput-wide v4, v3, Lcom/bytedance/sdk/adnet/face/a$a;->d:J

    .line 127
    iput-wide v14, v3, Lcom/bytedance/sdk/adnet/face/a$a;->e:J

    .line 128
    move-object/from16 v0, v24

    iput-object v0, v3, Lcom/bytedance/sdk/adnet/face/a$a;->h:Ljava/util/Map;

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bytedance/sdk/adnet/core/j;->d:Ljava/util/List;

    iput-object v2, v3, Lcom/bytedance/sdk/adnet/face/a$a;->i:Ljava/util/List;

    move-object v2, v3

    .line 131
    goto/16 :goto_5d

    .line 113
    :cond_f7
    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v8

    add-long/2addr v6, v10

    goto :goto_cf

    .line 114
    :cond_fc
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_112

    cmp-long v3, v12, v4

    if-ltz v3, :cond_112

    .line 116
    sub-long v6, v12, v4

    add-long v6, v6, v22

    move-wide v10, v6

    .line 117
    goto :goto_cf

    .line 89
    :catch_10c
    move-exception v10

    goto/16 :goto_70

    .line 84
    :catch_10f
    move-exception v10

    goto/16 :goto_70

    :cond_112
    move-wide/from16 v6, v18

    move-wide/from16 v10, v20

    goto :goto_cf

    :cond_117
    move-wide/from16 v14, v16

    goto :goto_bb

    :cond_11a
    move-wide v12, v14

    goto :goto_ab

    :cond_11c
    move v3, v6

    move v6, v7

    goto/16 :goto_9b
.end method

.method public static a(J)Ljava/lang/String;
    .registers 4

    .prologue
    .line 152
    invoke-static {}, Lcom/bytedance/sdk/adnet/d/c;->a()Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 191
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/adnet/d/c;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 170
    const-string v0, "Content-Type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 171
    if-eqz v0, :cond_32

    .line 172
    const-string v2, ";"

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 173
    :goto_13
    array-length v3, v2

    if-ge v0, v3, :cond_32

    .line 174
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 175
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_33

    .line 176
    aget-object v4, v3, v6

    const-string v5, "charset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 177
    aget-object p1, v3, v1

    .line 183
    :cond_32
    return-object p1

    .line 173
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method

.method private static a()Ljava/text/SimpleDateFormat;
    .registers 3

    .prologue
    .line 156
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 157
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 158
    return-object v0
.end method

.method public static a(Ljava/util/List;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/adnet/core/Header;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    new-instance v1, Ljava/util/TreeMap;

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 202
    if-eqz p0, :cond_25

    .line 203
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/core/Header;

    .line 204
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 207
    :cond_25
    return-object v1
.end method

.method public static b(Ljava/util/Map;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/adnet/core/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    if-nez p0, :cond_8

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    :goto_7
    return-object v0

    .line 214
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 215
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 216
    new-instance v4, Lcom/bytedance/sdk/adnet/core/Header;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v1, v0}, Lcom/bytedance/sdk/adnet/core/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_3a
    move-object v0, v2

    .line 218
    goto :goto_7
.end method
