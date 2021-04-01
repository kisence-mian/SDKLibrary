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
    .param p0    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
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

    if-eqz v2, :cond_1b

    .line 81
    invoke-static {p0, v1}, Lcom/bytedance/tea/crash/g/m;->a(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V

    .line 85
    :goto_13
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_1f
    .catchall {:try_start_a .. :try_end_16} :catchall_26

    move-result-object v0

    .line 89
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 87
    :goto_1a
    return-object v0

    .line 83
    :cond_1b
    :try_start_1b
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_1f
    .catchall {:try_start_1b .. :try_end_1e} :catchall_26

    goto :goto_13

    .line 86
    :catch_1f
    move-exception v0

    .line 87
    :try_start_20
    const-string v0, ""
    :try_end_22
    .catchall {:try_start_20 .. :try_end_22} :catchall_26

    .line 89
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    goto :goto_1a

    :catchall_26
    move-exception v0

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    throw v0
.end method

.method public static a([Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    array-length v2, p0

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_11

    aget-object v3, p0, v0

    .line 38
    invoke-static {v3, v1}, Lcom/bytedance/tea/crash/g/m;->a(Ljava/lang/StackTraceElement;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 40
    :cond_11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/StackTraceElement;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 4

    .prologue
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

    const-string v1, "("

    .line 53
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

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    return-object p1
.end method

.method public static a(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 15
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 102
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    .line 103
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 104
    if-nez v0, :cond_10

    move-object v0, v4

    .line 142
    :goto_f
    return-object v0

    .line 107
    :cond_10
    const-string v1, "thread_all_count"

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 108
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 109
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_26
    :goto_26
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ea

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 110
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 111
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    .line 112
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    .line 113
    invoke-static {v9}, Lcom/bytedance/tea/crash/g/m;->b(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_26

    if-eqz p0, :cond_5b

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_26

    .line 114
    invoke-virtual {v9, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_26

    invoke-virtual {v9, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_26

    .line 120
    :cond_5b
    const-string v9, "thread_name"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, ")"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    .line 122
    if-eqz v0, :cond_f2

    .line 123
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 124
    array-length v10, v0

    move v1, v3

    :goto_94
    if-ge v1, v10, :cond_d1

    aget-object v11, v0, v1

    .line 125
    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v12

    .line 126
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 127
    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 128
    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 129
    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_94

    .line 131
    :cond_d1
    const-string v0, "thread_stack"

    invoke-virtual {v8, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_e8

    move v0, v2

    .line 135
    :goto_dd
    if-eqz v0, :cond_26

    .line 136
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_26

    .line 141
    :catch_e4
    move-exception v0

    move-object v0, v4

    .line 142
    goto/16 :goto_f

    :cond_e8
    move v0, v3

    .line 133
    goto :goto_dd

    .line 139
    :cond_ea
    const-string v0, "thread_stacks"

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_ef
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_ef} :catch_e4

    move-object v0, v5

    .line 140
    goto/16 :goto_f

    :cond_f2
    move v0, v2

    goto :goto_dd
.end method

.method private static a(Ljava/lang/Throwable;Lcom/bytedance/tea/crash/g/m$a;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lcom/bytedance/tea/crash/g/m$a;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v3, 0x100

    const/4 v0, 0x0

    .line 253
    invoke-interface {p5, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t[CIRCULAR REFERENCE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/tea/crash/g/m$a;->a(Ljava/lang/Object;)V

    .line 294
    :cond_25
    :goto_25
    return-void

    .line 256
    :cond_26
    invoke-interface {p5, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 258
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 259
    array-length v1, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 260
    array-length v1, p2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 261
    add-int/lit8 v3, v4, -0x1

    .line 262
    add-int/lit8 v1, v1, -0x1

    .line 263
    :goto_3b
    if-ltz v3, :cond_4e

    if-ltz v1, :cond_4e

    aget-object v5, v2, v3

    aget-object v6, p2, v1

    invoke-virtual {v5, v6}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 264
    add-int/lit8 v3, v3, -0x1

    .line 265
    add-int/lit8 v1, v1, -0x1

    goto :goto_3b

    .line 267
    :cond_4e
    add-int/lit8 v1, v4, -0x1

    sub-int v5, v1, v3

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/tea/crash/g/m$a;->a(Ljava/lang/Object;)V

    move v1, v0

    .line 271
    :goto_6b
    if-gt v1, v3, :cond_8c

    .line 272
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\tat "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/bytedance/tea/crash/g/m$a;->a(Ljava/lang/Object;)V

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    .line 274
    :cond_8c
    array-length v1, v2

    if-ge v4, v1, :cond_ad

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t... skip "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v3, v2

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " lines"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/tea/crash/g/m$a;->a(Ljava/lang/Object;)V

    .line 277
    :cond_ad
    if-eqz v5, :cond_cf

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\t... "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " more"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/tea/crash/g/m$a;->a(Ljava/lang/Object;)V

    .line 282
    :cond_cf
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_fd

    .line 283
    invoke-virtual {p0}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object v7

    array-length v8, v7

    move v6, v0

    :goto_db
    if-ge v6, v8, :cond_fd

    aget-object v0, v7, v6

    .line 284
    const-string v3, "Suppressed: "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\t"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/bytedance/tea/crash/g/m;->a(Ljava/lang/Throwable;Lcom/bytedance/tea/crash/g/m$a;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 283
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_db

    .line 289
    :cond_fd
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_25

    .line 291
    const-string v3, "Caused by: "

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/bytedance/tea/crash/g/m;->a(Ljava/lang/Throwable;Lcom/bytedance/tea/crash/g/m$a;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto/16 :goto_25
.end method

.method private static a(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V
    .registers 13

    .prologue
    const/4 v0, 0x0

    .line 208
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 245
    :cond_5
    :goto_5
    return-void

    .line 211
    :cond_6
    new-instance v1, Lcom/bytedance/tea/crash/g/m$a;

    invoke-direct {v1, p1}, Lcom/bytedance/tea/crash/g/m$a;-><init>(Ljava/io/PrintWriter;)V

    .line 214
    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    .line 215
    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v5

    .line 216
    invoke-interface {v5, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-virtual {v1}, Lcom/bytedance/tea/crash/g/m$a;->a()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 220
    :try_start_1c
    invoke-virtual {v1, p0}, Lcom/bytedance/tea/crash/g/m$a;->a(Ljava/lang/Object;)V

    .line 221
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 223
    array-length v6, v2

    move v3, v0

    move v4, v0

    :goto_26
    if-ge v3, v6, :cond_4d

    aget-object v8, v2, v3

    .line 224
    const/16 v9, 0x100

    if-le v4, v9, :cond_68

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t... skip "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v6, v2

    sub-int v4, v6, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " lines"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bytedance/tea/crash/g/m$a;->a(Ljava/lang/Object;)V

    .line 233
    :cond_4d
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_83

    .line 234
    invoke-virtual {p0}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object v8

    array-length v9, v8

    move v6, v0

    :goto_59
    if-ge v6, v9, :cond_83

    aget-object v0, v8, v6

    .line 235
    const-string v3, "Suppressed: "

    const-string v4, "\t"

    invoke-static/range {v0 .. v5}, Lcom/bytedance/tea/crash/g/m;->a(Ljava/lang/Throwable;Lcom/bytedance/tea/crash/g/m$a;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 234
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_59

    .line 228
    :cond_68
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\tat "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/bytedance/tea/crash/g/m$a;->a(Ljava/lang/Object;)V

    .line 229
    add-int/lit8 v4, v4, 0x1

    .line 223
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 240
    :cond_83
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_90

    .line 242
    const-string v3, "Caused by: "

    const-string v4, ""

    invoke-static/range {v0 .. v5}, Lcom/bytedance/tea/crash/g/m;->a(Ljava/lang/Throwable;Lcom/bytedance/tea/crash/g/m$a;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 244
    :cond_90
    monitor-exit v7

    goto/16 :goto_5

    :catchall_93
    move-exception v0

    monitor-exit v7
    :try_end_95
    .catchall {:try_start_1c .. :try_end_95} :catchall_93

    throw v0
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 147
    const/4 v2, 0x0

    .line 148
    invoke-static {}, Lcom/bytedance/tea/crash/g/e;->a()Ljava/util/Set;

    move-result-object v0

    .line 149
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    move v0, v1

    .line 159
    :goto_d
    return v0

    .line 152
    :cond_e
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 153
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    .line 155
    goto :goto_d

    :cond_2c
    move v0, v2

    goto :goto_d
.end method

.method public static b(Ljava/lang/Throwable;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 169
    if-nez p0, :cond_4

    .line 188
    :cond_3
    :goto_3
    return v0

    :cond_4
    move v1, v0

    .line 175
    :goto_5
    if-eqz p0, :cond_3

    .line 176
    :try_start_7
    instance-of v2, p0, Ljava/lang/OutOfMemoryError;

    if-eqz v2, :cond_d

    .line 177
    const/4 v0, 0x1

    goto :goto_3

    .line 179
    :cond_d
    const/16 v2, 0x14

    if-gt v1, v2, :cond_3

    .line 182
    add-int/lit8 v1, v1, 0x1

    .line 183
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_16} :catch_18

    move-result-object p0

    goto :goto_5

    .line 185
    :catch_18
    move-exception v1

    goto :goto_3
.end method

.method private static c(Ljava/lang/Throwable;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 303
    move v1, v0

    .line 305
    :goto_2
    if-eqz p0, :cond_9

    .line 306
    instance-of v2, p0, Ljava/lang/StackOverflowError;

    if-eqz v2, :cond_a

    .line 307
    const/4 v0, 0x1

    .line 315
    :cond_9
    return v0

    .line 309
    :cond_a
    const/16 v2, 0x14

    if-gt v1, v2, :cond_9

    .line 312
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
