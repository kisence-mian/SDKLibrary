.class public Lcom/bytedance/sdk/openadsdk/utils/k;
.super Ljava/lang/Object;
.source "ExternalSpUtils.java"


# direct methods
.method public static a()Ljava/lang/String;
    .registers 2

    .line 29
    const-string v0, "any_door_id"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)V
    .registers 2

    .line 45
    const-string v0, "splash_storage_from"

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/k;->a(Ljava/lang/String;I)V

    .line 46
    return-void
.end method

.method public static a(J)V
    .registers 3

    .line 50
    const-string v0, "save_dpl_success_time"

    invoke-static {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/k;->a(Ljava/lang/String;J)V

    .line 51
    return-void
.end method

.method public static a(JLjava/lang/String;)V
    .registers 5

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last_load_splash_ad_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 34
    invoke-static {p2, p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/k;->a(Ljava/lang/String;J)V

    .line 35
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    .line 25
    const-string v0, "any_door_id"

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method private static a(Ljava/lang/String;I)V
    .registers 4

    .line 105
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 106
    return-void

    .line 109
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 110
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_22

    .line 112
    :cond_15
    const-string v0, ""

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/ae;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;I)V
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_23

    .line 115
    :goto_22
    goto :goto_24

    .line 114
    :catchall_23
    move-exception p0

    .line 116
    :goto_24
    return-void
.end method

.method private static a(Ljava/lang/String;J)V
    .registers 5

    .line 163
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 164
    return-void

    .line 167
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 168
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_22

    .line 170
    :cond_15
    const-string v0, ""

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/ae;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;J)V
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_23

    .line 173
    :goto_22
    goto :goto_24

    .line 172
    :catchall_23
    move-exception p0

    .line 174
    :goto_24
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 193
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 194
    return-void

    .line 197
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 198
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 200
    :cond_11
    const-string v0, ""

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/ae;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1f

    .line 203
    :goto_1e
    goto :goto_20

    .line 202
    :catchall_1f
    move-exception p0

    .line 204
    :goto_20
    return-void
.end method

.method private static a(Ljava/lang/String;Z)V
    .registers 4

    .line 134
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 135
    return-void

    .line 138
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 139
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_22

    .line 141
    :cond_15
    const-string v0, ""

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/ae;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;Z)V
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_23

    .line 144
    :goto_22
    goto :goto_24

    .line 143
    :catchall_23
    move-exception p0

    .line 145
    :goto_24
    return-void
.end method

.method public static a(Z)V
    .registers 2

    .line 91
    const-string v0, "is_landing_page_open_market"

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/k;->a(Ljava/lang/String;Z)V

    .line 92
    return-void
.end method

.method public static b()J
    .registers 3

    .line 54
    nop

    .line 55
    const-string v0, "save_dpl_success_time"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/k;->b(Ljava/lang/String;J)J

    move-result-wide v0

    .line 56
    return-wide v0
.end method

.method public static b(Ljava/lang/String;)J
    .registers 3

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last_load_splash_ad_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 39
    nop

    .line 40
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/k;->b(Ljava/lang/String;J)J

    move-result-wide v0

    .line 41
    return-wide v0
.end method

.method private static b(Ljava/lang/String;J)J
    .registers 5

    .line 177
    nop

    .line 179
    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 180
    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;J)J

    move-result-wide p0

    .line 181
    return-wide p0

    .line 183
    :cond_c
    const-string v0, ""

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/ae;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;J)J

    move-result-wide p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1b

    .line 184
    return-wide p0

    .line 186
    :catchall_1b
    move-exception p0

    .line 188
    return-wide p1
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 207
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    .line 208
    return-object v1

    .line 210
    :cond_9
    nop

    .line 212
    :try_start_a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 213
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 214
    return-object p0

    .line 216
    :cond_15
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/ae;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_22

    .line 217
    return-object p0

    .line 219
    :catchall_22
    move-exception p0

    .line 221
    return-object p1
.end method

.method private static b(Ljava/lang/String;Z)Z
    .registers 4

    .line 148
    nop

    .line 150
    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 151
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Z)Z

    move-result p0

    .line 152
    return p0

    .line 154
    :cond_c
    const-string v0, ""

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/ae;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1b

    .line 155
    return p0

    .line 157
    :catchall_1b
    move-exception p0

    .line 159
    return p1
.end method

.method public static c()Ljava/lang/String;
    .registers 2

    .line 64
    nop

    .line 65
    const-string v0, "save_dpl_success_ad_tag"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .registers 2

    .line 60
    const-string v0, "save_dpl_success_ad_tag"

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static d()Ljava/lang/String;
    .registers 2

    .line 75
    nop

    .line 76
    const-string v0, "save_dpl_success_materialmeta"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    return-object v0
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2

    .line 71
    const-string v0, "save_dpl_success_materialmeta"

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static e()Ljava/lang/String;
    .registers 2

    .line 85
    nop

    .line 86
    const-string v0, "save_playable_screen_shot_materialmeta"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    return-object v0
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2

    .line 81
    const-string v0, "save_playable_screen_shot_materialmeta"

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public static f()Z
    .registers 2

    .line 95
    const-string v0, "is_landing_page_open_market"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/k;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
