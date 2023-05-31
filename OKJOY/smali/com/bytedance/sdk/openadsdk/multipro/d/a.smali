.class public Lcom/bytedance/sdk/openadsdk/multipro/d/a;
.super Ljava/lang/Object;
.source "SPMultiHelper.java"


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;F)F
    .registers 6

    .prologue
    .line 243
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 258
    :cond_6
    :goto_6
    return p2

    .line 247
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b()Landroid/content/ContentResolver;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_6

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "float"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 250
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_6

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 254
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_4b} :catch_4d

    move-result p2

    goto :goto_6

    .line 256
    :catch_4d
    move-exception v0

    goto :goto_6
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6

    .prologue
    .line 220
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 235
    :cond_6
    :goto_6
    return p2

    .line 224
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b()Landroid/content/ContentResolver;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_6

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 227
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_6

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 231
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_4b} :catch_4d

    move-result p2

    goto :goto_6

    .line 233
    :catch_4d
    move-exception v0

    goto :goto_6
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;J)J
    .registers 8

    .prologue
    .line 289
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 304
    :cond_6
    :goto_6
    return-wide p2

    .line 293
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b()Landroid/content/ContentResolver;

    move-result-object v0

    .line 294
    if-eqz v0, :cond_6

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 296
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_6

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 300
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_4b} :catch_4d

    move-result-wide p2

    goto :goto_6

    .line 302
    :catch_4d
    move-exception v0

    goto :goto_6
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 49
    if-nez p0, :cond_9

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    :goto_6
    sput-object v0, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a:Landroid/content/Context;

    .line 50
    return-void

    .line 49
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_6
.end method

.method public static a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 388
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 399
    :cond_6
    :goto_6
    return-void

    .line 392
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b()Landroid/content/ContentResolver;

    move-result-object v0

    .line 393
    if-eqz v0, :cond_6

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "clean"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 395
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_35} :catch_36

    goto :goto_6

    .line 397
    :catch_36
    move-exception v0

    goto :goto_6
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 370
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 381
    :cond_6
    :goto_6
    return-void

    .line 374
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b()Landroid/content/ContentResolver;

    move-result-object v0

    .line 375
    if-eqz v0, :cond_6

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 377
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_3f} :catch_40

    goto :goto_6

    .line 379
    :catch_40
    move-exception v0

    goto :goto_6
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 9

    .prologue
    .line 73
    const-class v1, Lcom/bytedance/sdk/openadsdk/multipro/d/a;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_50

    move-result v0

    if-nez v0, :cond_b

    .line 86
    :cond_9
    :goto_9
    monitor-exit v1

    return-void

    .line 77
    :cond_b
    :try_start_b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b()Landroid/content/ContentResolver;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_9

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "boolean"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 80
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 81
    const-string v4, "value"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 82
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_4d} :catch_4e
    .catchall {:try_start_b .. :try_end_4d} :catchall_50

    goto :goto_9

    .line 84
    :catch_4e
    move-exception v0

    goto :goto_9

    .line 73
    :catchall_50
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V
    .registers 9

    .prologue
    .line 153
    const-class v1, Lcom/bytedance/sdk/openadsdk/multipro/d/a;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_50

    move-result v0

    if-nez v0, :cond_b

    .line 166
    :cond_9
    :goto_9
    monitor-exit v1

    return-void

    .line 157
    :cond_b
    :try_start_b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b()Landroid/content/ContentResolver;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_9

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "float"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 160
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 161
    const-string v4, "value"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 162
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_4d} :catch_4e
    .catchall {:try_start_b .. :try_end_4d} :catchall_50

    goto :goto_9

    .line 164
    :catch_4e
    move-exception v0

    goto :goto_9

    .line 153
    :catchall_50
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 9

    .prologue
    .line 113
    const-class v1, Lcom/bytedance/sdk/openadsdk/multipro/d/a;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_50

    move-result v0

    if-nez v0, :cond_b

    .line 126
    :cond_9
    :goto_9
    monitor-exit v1

    return-void

    .line 117
    :cond_b
    :try_start_b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b()Landroid/content/ContentResolver;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_9

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "int"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 120
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 121
    const-string v4, "value"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 122
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_4d} :catch_4e
    .catchall {:try_start_b .. :try_end_4d} :catchall_50

    goto :goto_9

    .line 124
    :catch_4e
    move-exception v0

    goto :goto_9

    .line 113
    :catchall_50
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 9

    .prologue
    .line 133
    const-class v1, Lcom/bytedance/sdk/openadsdk/multipro/d/a;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_50

    move-result v0

    if-nez v0, :cond_b

    .line 146
    :cond_9
    :goto_9
    monitor-exit v1

    return-void

    .line 137
    :cond_b
    :try_start_b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b()Landroid/content/ContentResolver;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_9

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "long"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 140
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 141
    const-string v4, "value"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 142
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_4d} :catch_4e
    .catchall {:try_start_b .. :try_end_4d} :catchall_50

    goto :goto_9

    .line 144
    :catch_4e
    move-exception v0

    goto :goto_9

    .line 133
    :catchall_50
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 93
    const-class v1, Lcom/bytedance/sdk/openadsdk/multipro/d/a;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_50

    move-result v0

    if-nez v0, :cond_b

    .line 106
    :cond_9
    :goto_9
    monitor-exit v1

    return-void

    .line 97
    :cond_b
    :try_start_b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b()Landroid/content/ContentResolver;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_9

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "string"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 100
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 101
    const-string v4, "value"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_4d} :catch_4e
    .catchall {:try_start_b .. :try_end_4d} :catchall_50

    goto :goto_9

    .line 104
    :catch_4e
    move-exception v0

    goto :goto_9

    .line 93
    :catchall_50
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    const-class v1, Lcom/bytedance/sdk/openadsdk/multipro/d/a;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_75

    move-result v0

    if-nez v0, :cond_b

    .line 190
    :cond_9
    :goto_9
    monitor-exit v1

    return-void

    .line 177
    :cond_b
    :try_start_b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b()Landroid/content/ContentResolver;

    move-result-object v2

    .line 178
    if-eqz v2, :cond_9

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "string_set"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 180
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 181
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 182
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 183
    const-string v7, ","

    const-string v8, "__COMMA__"

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 188
    :catch_64
    move-exception v0

    goto :goto_9

    .line 185
    :cond_66
    const-string v0, "value"

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_74} :catch_64
    .catchall {:try_start_b .. :try_end_74} :catchall_75

    goto :goto_9

    .line 173
    :catchall_75
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a()Z
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_11

    .line 32
    :cond_a
    const-string v0, "The context of SPHelper is null, please initialize sdk in main process"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x0

    .line 35
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6

    .prologue
    .line 266
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 281
    :cond_6
    :goto_6
    return p2

    .line 270
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b()Landroid/content/ContentResolver;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_6

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "boolean"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 273
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_6

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 277
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_4b} :catch_4d

    move-result p2

    goto :goto_6

    .line 279
    :catch_4d
    move-exception v0

    goto :goto_6
.end method

.method private static b()Landroid/content/ContentResolver;
    .registers 1

    .prologue
    .line 40
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 41
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v0

    .line 45
    :goto_e
    return-object v0

    .line 43
    :catch_f
    move-exception v0

    .line 45
    :cond_10
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 61
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 62
    const-string v0, ""

    .line 65
    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?sp_file_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 197
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 212
    :cond_6
    :goto_6
    return-object p2

    .line 201
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b()Landroid/content/ContentResolver;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_6

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 204
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_6

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_45} :catch_4a

    move-result v1

    if-nez v1, :cond_6

    move-object p2, v0

    .line 208
    goto :goto_6

    .line 210
    :catch_4a
    move-exception v0

    goto :goto_6
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .registers 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 338
    :cond_6
    :goto_6
    return-object p2

    .line 318
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b()Landroid/content/ContentResolver;

    move-result-object v0

    .line 319
    if-eqz v0, :cond_6

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "string_set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 321
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 322
    if-eqz v0, :cond_6

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 325
    const-string v1, "\\[.*\\]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 328
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 329
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 330
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 331
    array-length v3, v2

    const/4 v1, 0x0

    :goto_68
    if-ge v1, v3, :cond_7a

    aget-object v4, v2, v1

    .line 332
    const-string v5, "__COMMA__"

    const-string v6, ", "

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_77} :catch_7c

    .line 331
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    :cond_7a
    move-object p2, v0

    .line 334
    goto :goto_6

    .line 336
    :catch_7c
    move-exception v0

    goto :goto_6
.end method

.method private static c()Landroid/content/Context;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a:Landroid/content/Context;

    if-nez v0, :cond_9

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a:Landroid/content/Context;

    goto :goto_8
.end method

.method private static d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bytedance/sdk/openadsdk/multipro/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "t_sp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
