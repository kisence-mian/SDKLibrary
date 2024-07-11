.class public final Lcom/bytedance/tea/crash/g/m;
.super Ljava/lang/Object;
.source "Stack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/tea/crash/g/m$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    .line 77
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 78
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 80
    :try_start_a
    invoke-static {p0}, Lcom/bytedance/tea/crash/g/m;->c(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 81
    invoke-static {p0, v1}, Lcom/bytedance/tea/crash/g/m;->a(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V

    goto :goto_17

    .line 83
    :cond_14
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 85
    :goto_17
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1b} :catch_21
    .catchall {:try_start_a .. :try_end_1b} :catchall_1f

    .line 89
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 85
    return-object p0

    .line 89
    :catchall_1f
    move-exception p0

    goto :goto_28

    .line 86
    :catch_21
    move-exception p0

    .line 87
    :try_start_22
    const-string p0, ""
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_1f

    .line 89
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 87
    return-object p0

    .line 89
    :goto_28
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    throw p0
.end method

.method public static a([Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .registers 5

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_11

    aget-object v3, p0, v2

    .line 38
    invoke-static {v3, v0}, Lcom/bytedance/tea/crash/g/m;->a(Ljava/lang/StackTraceElement;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 37
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 40
    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/StackTraceElement;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 4

    .line 51
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 52
    const-string v1, "  at "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 53
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    return-object p1
.end method

.method public static a(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 17

    .line 102
    move-object/from16 v0, p0

    const-string v1, ")"

    const-string v2, "("

    const/4 v3, 0x0

    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v4

    .line 103
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 104
    if-nez v4, :cond_13

    .line 105
    return-object v3

    .line 107
    :cond_13
    const-string v6, "thread_all_count"

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 108
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 109
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_29
    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 110
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 111
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Thread;

    .line 112
    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    .line 113
    invoke-static {v10}, Lcom/bytedance/tea/crash/g/m;->b(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_29

    if-eqz v0, :cond_5f

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_29

    .line 114
    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_29

    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5f

    .line 116
    goto :goto_29

    .line 119
    :cond_5f
    nop

    .line 120
    const-string v10, "thread_name"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/StackTraceElement;

    .line 122
    if-eqz v7, :cond_de

    .line 123
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 124
    array-length v11, v7

    const/4 v12, 0x0

    move v13, v12

    :goto_96
    if-ge v13, v11, :cond_cf

    aget-object v14, v7, v13

    .line 125
    invoke-virtual {v14}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v15

    .line 126
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, "."

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 127
    invoke-virtual {v14}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 128
    invoke-virtual {v14}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 129
    invoke-virtual {v10, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 124
    add-int/lit8 v13, v13, 0x1

    goto :goto_96

    .line 131
    :cond_cf
    const-string v7, "thread_stack"

    invoke-virtual {v8, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_dc

    const/4 v9, 0x1

    goto :goto_df

    :cond_dc
    move v9, v12

    goto :goto_df

    .line 122
    :cond_de
    const/4 v9, 0x1

    .line 135
    :goto_df
    if-eqz v9, :cond_e4

    .line 136
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 138
    :cond_e4
    goto/16 :goto_29

    .line 139
    :cond_e6
    const-string v0, "thread_stacks"

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_eb
    .catchall {:try_start_7 .. :try_end_eb} :catchall_ec

    .line 140
    return-object v5

    .line 141
    :catchall_ec
    move-exception v0

    .line 142
    return-object v3
.end method

.method private static a(Ljava/lang/Throwable;Lcom/bytedance/tea/crash/g/m$a;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lcom/bytedance/tea/crash/g/m$a;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 253
    invoke-interface {p5, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 254
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\t[CIRCULAR REFERENCE:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "]"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/bytedance/tea/crash/g/m$a;->a(Ljava/lang/Object;)V

    goto/16 :goto_10a

    .line 256
    :cond_24
    invoke-interface {p5, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 258
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    .line 259
    array-length v0, v6

    const/16 v1, 0x100

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 260
    array-length v2, p2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 261
    add-int/lit8 v2, v0, -0x1

    .line 262
    add-int/lit8 v1, v1, -0x1

    move v3, v2

    .line 263
    :goto_3c
    if-ltz v3, :cond_4f

    if-ltz v1, :cond_4f

    aget-object v4, v6, v3

    aget-object v5, p2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 264
    add-int/lit8 v3, v3, -0x1

    .line 265
    add-int/lit8 v1, v1, -0x1

    goto :goto_3c

    .line 267
    :cond_4f
    sub-int/2addr v2, v3

    .line 270
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/tea/crash/g/m$a;->a(Ljava/lang/Object;)V

    .line 271
    const/4 p2, 0x0

    move p3, p2

    :goto_6a
    if-gt p3, v3, :cond_8b

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\tat "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, v6, p3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/tea/crash/g/m$a;->a(Ljava/lang/Object;)V

    .line 271
    add-int/lit8 p3, p3, 0x1

    goto :goto_6a

    .line 274
    :cond_8b
    array-length p3, v6

    if-ge v0, p3, :cond_ac

    .line 275
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t... skip "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    array-length v1, v6

    sub-int/2addr v1, v0

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " lines"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/bytedance/tea/crash/g/m$a;->a(Ljava/lang/Object;)V

    .line 277
    :cond_ac
    if-eqz v2, :cond_ce

    .line 278
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "\t... "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " more"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/bytedance/tea/crash/g/m$a;->a(Ljava/lang/Object;)V

    .line 282
    :cond_ce
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p3, v0, :cond_fb

    .line 283
    invoke-virtual {p0}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object p3

    array-length v7, p3

    :goto_d9
    if-ge p2, v7, :cond_fb

    aget-object v0, p3, p2

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v3, "Suppressed: "

    move-object v1, p1

    move-object v2, v6

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/bytedance/tea/crash/g/m;->a(Ljava/lang/Throwable;Lcom/bytedance/tea/crash/g/m$a;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 283
    add-int/lit8 p2, p2, 0x1

    goto :goto_d9

    .line 289
    :cond_fb
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_10a

    .line 291
    const-string v3, "Caused by: "

    move-object v1, p1

    move-object v2, v6

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/bytedance/tea/crash/g/m;->a(Ljava/lang/Throwable;Lcom/bytedance/tea/crash/g/m$a;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 294
    :cond_10a
    :goto_10a
    return-void
.end method

.method private static a(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V
    .registers 14

    .line 208
    if-eqz p0, :cond_9c

    if-nez p1, :cond_6

    goto/16 :goto_9c

    .line 211
    :cond_6
    new-instance v6, Lcom/bytedance/tea/crash/g/m$a;

    invoke-direct {v6, p1}, Lcom/bytedance/tea/crash/g/m$a;-><init>(Ljava/io/PrintWriter;)V

    .line 214
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 215
    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    .line 216
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-virtual {v6}, Lcom/bytedance/tea/crash/g/m$a;->a()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 220
    :try_start_1c
    invoke-virtual {v6, p0}, Lcom/bytedance/tea/crash/g/m$a;->a(Ljava/lang/Object;)V

    .line 221
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    .line 222
    nop

    .line 223
    array-length v0, v8

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_28
    if-ge v2, v0, :cond_6a

    aget-object v4, v8, v2

    .line 224
    const/16 v5, 0x100

    if-le v3, v5, :cond_4f

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t... skip "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, v8

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " lines"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bytedance/tea/crash/g/m$a;->a(Ljava/lang/Object;)V

    .line 226
    goto :goto_6a

    .line 228
    :cond_4f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\tat "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/bytedance/tea/crash/g/m$a;->a(Ljava/lang/Object;)V

    .line 229
    add-int/lit8 v3, v3, 0x1

    .line 223
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 233
    :cond_6a
    :goto_6a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_87

    .line 234
    invoke-virtual {p0}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object v9

    array-length v10, v9

    move v11, v1

    :goto_76
    if-ge v11, v10, :cond_87

    aget-object v0, v9, v11

    .line 235
    const-string v3, "Suppressed: "

    const-string v4, "\t"

    move-object v1, v6

    move-object v2, v8

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/tea/crash/g/m;->a(Ljava/lang/Throwable;Lcom/bytedance/tea/crash/g/m$a;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 234
    add-int/lit8 v11, v11, 0x1

    goto :goto_76

    .line 240
    :cond_87
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_97

    .line 242
    const-string v3, "Caused by: "

    const-string v4, ""

    move-object v1, v6

    move-object v2, v8

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/tea/crash/g/m;->a(Ljava/lang/Throwable;Lcom/bytedance/tea/crash/g/m$a;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 244
    :cond_97
    monitor-exit v7

    .line 245
    return-void

    .line 244
    :catchall_99
    move-exception p0

    monitor-exit v7
    :try_end_9b
    .catchall {:try_start_1c .. :try_end_9b} :catchall_99

    throw p0

    .line 209
    :cond_9c
    :goto_9c
    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 5

    .line 147
    nop

    .line 148
    invoke-static {}, Lcom/bytedance/tea/crash/g/e;->a()Ljava/util/Set;

    move-result-object v0

    .line 149
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_d

    .line 150
    goto :goto_2d

    .line 152
    :cond_d
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 153
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2b

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 154
    nop

    .line 155
    goto :goto_2d

    .line 157
    :cond_2b
    goto :goto_11

    .line 152
    :cond_2c
    const/4 v2, 0x0

    .line 159
    :goto_2d
    return v2
.end method

.method public static b(Ljava/lang/Throwable;)Z
    .registers 4

    .line 169
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 170
    return v0

    .line 173
    :cond_4
    nop

    .line 174
    move v1, v0

    .line 175
    :goto_6
    if-eqz p0, :cond_1c

    .line 176
    :try_start_8
    instance-of v2, p0, Ljava/lang/OutOfMemoryError;

    if-eqz v2, :cond_e

    .line 177
    const/4 p0, 0x1

    return p0

    .line 179
    :cond_e
    const/16 v2, 0x14

    if-le v1, v2, :cond_13

    .line 180
    return v0

    .line 182
    :cond_13
    add-int/lit8 v1, v1, 0x1

    .line 183
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1a

    goto :goto_6

    .line 185
    :catchall_1a
    move-exception p0

    goto :goto_1d

    .line 187
    :cond_1c
    nop

    .line 188
    :goto_1d
    return v0
.end method

.method private static c(Ljava/lang/Throwable;)Z
    .registers 4

    .line 303
    nop

    .line 304
    const/4 v0, 0x0

    move v1, v0

    .line 305
    :goto_3
    if-eqz p0, :cond_17

    .line 306
    instance-of v2, p0, Ljava/lang/StackOverflowError;

    if-eqz v2, :cond_b

    .line 307
    const/4 p0, 0x1

    return p0

    .line 309
    :cond_b
    const/16 v2, 0x14

    if-le v1, v2, :cond_10

    .line 310
    return v0

    .line 312
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 315
    :cond_17
    return v0
.end method
