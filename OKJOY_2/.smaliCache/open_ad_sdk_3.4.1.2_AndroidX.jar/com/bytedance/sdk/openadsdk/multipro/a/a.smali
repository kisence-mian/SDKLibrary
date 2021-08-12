.class public Lcom/bytedance/sdk/openadsdk/multipro/a/a;
.super Ljava/lang/Object;
.source "DBMultiAdapter.java"


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9

    const-class v0, Lcom/bytedance/sdk/openadsdk/multipro/a/a;

    monitor-enter v0

    .line 64
    const/4 v1, 0x0

    if-eqz p2, :cond_39

    :try_start_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_36

    if-eqz v2, :cond_d

    goto :goto_39

    .line 68
    :cond_d
    :try_start_d
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object p0

    .line 69
    if-eqz p0, :cond_32

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 71
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_30
    .catchall {:try_start_d .. :try_end_30} :catchall_33

    monitor-exit v0

    return p0

    .line 74
    :cond_32
    goto :goto_34

    .line 73
    :catchall_33
    move-exception p0

    .line 75
    :goto_34
    monitor-exit v0

    return v1

    .line 63
    :catchall_36
    move-exception p0

    monitor-exit v0

    throw p0

    .line 65
    :cond_39
    :goto_39
    monitor-exit v0

    return v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8

    const-class v0, Lcom/bytedance/sdk/openadsdk/multipro/a/a;

    monitor-enter v0

    .line 48
    :try_start_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_35

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 49
    monitor-exit v0

    return v2

    .line 53
    :cond_c
    :try_start_c
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object p0

    .line 54
    if-eqz p0, :cond_31

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_32

    monitor-exit v0

    return p0

    .line 59
    :cond_31
    goto :goto_33

    .line 58
    :catchall_32
    move-exception p0

    .line 60
    :goto_33
    monitor-exit v0

    return v2

    .line 47
    :catchall_35
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a(Landroid/content/Context;)Landroid/content/ContentResolver;
    .registers 1

    .line 20
    if-nez p0, :cond_9

    :try_start_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p0

    goto :goto_9

    .line 22
    :catchall_7
    move-exception p0

    goto :goto_e

    .line 21
    :cond_9
    :goto_9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_7

    return-object p0

    .line 24
    :goto_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15

    const-class p5, Lcom/bytedance/sdk/openadsdk/multipro/a/a;

    monitor-enter p5

    .line 80
    :try_start_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_39

    const/4 v0, 0x0

    if-eqz p6, :cond_c

    .line 81
    monitor-exit p5

    return-object v0

    .line 85
    :cond_c
    :try_start_c
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object v1

    .line 86
    if-eqz v1, :cond_35

    .line 87
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 88
    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_33
    .catchall {:try_start_c .. :try_end_33} :catchall_36

    monitor-exit p5

    return-object p0

    .line 91
    :cond_35
    goto :goto_37

    .line 90
    :catchall_36
    move-exception p0

    .line 92
    :goto_37
    monitor-exit p5

    return-object v0

    .line 79
    :catchall_39
    move-exception p0

    monitor-exit p5

    throw p0
.end method

.method private static a()Ljava/lang/String;
    .registers 3

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bytedance/sdk/openadsdk/multipro/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "t_db"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ttopensdk.db"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const-class v0, Lcom/bytedance/sdk/openadsdk/multipro/a/a;

    monitor-enter v0

    .line 96
    :try_start_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_4d

    if-eqz v1, :cond_b

    .line 97
    monitor-exit v0

    return-void

    .line 101
    :cond_b
    :try_start_b
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object p0

    .line 102
    if-eqz p0, :cond_49

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "execSQL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?sql="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 105
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_49
    .catchall {:try_start_b .. :try_end_49} :catchall_4a

    .line 108
    :cond_49
    goto :goto_4b

    .line 107
    :catchall_4a
    move-exception p0

    .line 109
    :goto_4b
    monitor-exit v0

    return-void

    .line 95
    :catchall_4d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 6

    const-class v0, Lcom/bytedance/sdk/openadsdk/multipro/a/a;

    monitor-enter v0

    .line 32
    if-eqz p2, :cond_35

    :try_start_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_32

    if-eqz v1, :cond_c

    goto :goto_35

    .line 38
    :cond_c
    :try_start_c
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object p0

    .line 39
    if-eqz p0, :cond_2e

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 41
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_2f

    .line 44
    :cond_2e
    goto :goto_30

    .line 43
    :catchall_2f
    move-exception p0

    .line 45
    :goto_30
    monitor-exit v0

    return-void

    .line 31
    :catchall_32
    move-exception p0

    monitor-exit v0

    throw p0

    .line 33
    :cond_35
    :goto_35
    monitor-exit v0

    return-void
.end method
