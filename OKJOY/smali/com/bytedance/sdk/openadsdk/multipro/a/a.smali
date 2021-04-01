.class public Lcom/bytedance/sdk/openadsdk/multipro/a/a;
.super Ljava/lang/Object;
.source "DBMultiAdapter.java"


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 64
    const-class v1, Lcom/bytedance/sdk/openadsdk/multipro/a/a;

    monitor-enter v1

    if-eqz p2, :cond_c

    :try_start_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_32

    move-result v2

    if-eqz v2, :cond_e

    .line 75
    :cond_c
    :goto_c
    monitor-exit v1

    return v0

    .line 68
    :cond_e
    :try_start_e
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object v2

    .line 69
    if-eqz v2, :cond_c

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 71
    invoke-virtual {v2, v3, p2, p3, p4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_30} :catch_35
    .catchall {:try_start_e .. :try_end_30} :catchall_32

    move-result v0

    goto :goto_c

    .line 64
    :catchall_32
    move-exception v0

    monitor-exit v1

    throw v0

    .line 73
    :catch_35
    move-exception v2

    goto :goto_c
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 48
    const-class v1, Lcom/bytedance/sdk/openadsdk/multipro/a/a;

    monitor-enter v1

    :try_start_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_30

    move-result v2

    if-eqz v2, :cond_c

    .line 60
    :cond_a
    :goto_a
    monitor-exit v1

    return v0

    .line 53
    :cond_c
    :try_start_c
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object v2

    .line 54
    if-eqz v2, :cond_a

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 56
    invoke-virtual {v2, v3, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_2e} :catch_33
    .catchall {:try_start_c .. :try_end_2e} :catchall_30

    move-result v0

    goto :goto_a

    .line 48
    :catchall_30
    move-exception v0

    monitor-exit v1

    throw v0

    .line 58
    :catch_33
    move-exception v2

    goto :goto_a
.end method

.method private static a(Landroid/content/Context;)Landroid/content/ContentResolver;
    .registers 2

    .prologue
    .line 20
    if-nez p0, :cond_6

    :try_start_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object p0

    .line 21
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_9} :catch_b

    move-result-object v0

    .line 24
    :goto_a
    return-object v0

    .line 22
    :catch_b
    move-exception v0

    .line 24
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16

    .prologue
    const/4 v6, 0x0

    .line 80
    const-class v7, Lcom/bytedance/sdk/openadsdk/multipro/a/a;

    monitor-enter v7

    :try_start_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_38

    move-result v0

    if-eqz v0, :cond_d

    move-object v0, v6

    .line 92
    :goto_b
    monitor-exit v7

    return-object v0

    .line 85
    :cond_d
    :try_start_d
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_36

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p7

    .line 88
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_33} :catch_35
    .catchall {:try_start_d .. :try_end_33} :catchall_38

    move-result-object v0

    goto :goto_b

    .line 90
    :catch_35
    move-exception v0

    :cond_36
    move-object v0, v6

    .line 92
    goto :goto_b

    .line 80
    :catchall_38
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method private static a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bytedance/sdk/openadsdk/multipro/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "t_db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ttopensdk.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 96
    const-class v1, Lcom/bytedance/sdk/openadsdk/multipro/a/a;

    monitor-enter v1

    :try_start_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_48

    move-result v0

    if-eqz v0, :cond_b

    .line 109
    :cond_9
    :goto_9
    monitor-exit v1

    return-void

    .line 101
    :cond_b
    :try_start_b
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_9

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "execSQL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?sql="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 105
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_45} :catch_46
    .catchall {:try_start_b .. :try_end_45} :catchall_48

    goto :goto_9

    .line 107
    :catch_46
    move-exception v0

    goto :goto_9

    .line 96
    :catchall_48
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 7

    .prologue
    .line 32
    const-class v1, Lcom/bytedance/sdk/openadsdk/multipro/a/a;

    monitor-enter v1

    if-eqz p2, :cond_b

    :try_start_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_32

    move-result v0

    if-eqz v0, :cond_d

    .line 45
    :cond_b
    :goto_b
    monitor-exit v1

    return-void

    .line 38
    :cond_d
    :try_start_d
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_b

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 41
    invoke-virtual {v0, v2, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_2f} :catch_30
    .catchall {:try_start_d .. :try_end_2f} :catchall_32

    goto :goto_b

    .line 43
    :catch_30
    move-exception v0

    goto :goto_b

    .line 32
    :catchall_32
    move-exception v0

    monitor-exit v1

    throw v0
.end method
