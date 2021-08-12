.class Lcom/bytedance/sdk/openadsdk/component/reward/h;
.super Ljava/lang/Object;
.source "SpCache.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h;->b:Landroid/content/Context;

    .line 24
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p2, ""

    :cond_d
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h;->a:Ljava/lang/String;

    .line 25
    return-void
.end method

.method private b()Landroid/content/Context;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h;->b:Landroid/content/Context;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method private c()Ljava/lang/String;
    .registers 3

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_adslot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .registers 3

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_adslot_preload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .registers 4

    .line 35
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->b()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 36
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->b()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_11

    return-object p1

    .line 39
    :cond_10
    goto :goto_12

    .line 38
    :catchall_11
    move-exception p1

    .line 40
    :goto_12
    const/4 p1, 0x0

    return-object p1
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p1, "0"

    .line 45
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_cache_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method a()Lcom/bytedance/sdk/openadsdk/AdSlot;
    .registers 4

    .line 170
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_36

    const-string v2, "preload_data"

    if-eqz v1, :cond_19

    .line 171
    :try_start_9
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;)V

    goto :goto_31

    .line 174
    :cond_19
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->f(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 175
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object v1, v2

    .line 178
    :goto_31
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0
    :try_end_35
    .catchall {:try_start_9 .. :try_end_35} :catchall_36

    return-object v0

    .line 179
    :catchall_36
    move-exception v1

    .line 181
    return-object v0
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 58
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1f

    const-string v2, "material_data"

    if-eqz v1, :cond_12

    .line 59
    :try_start_9
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1e

    .line 60
    :cond_12
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->f(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_1f

    .line 58
    :goto_1e
    return-object p1

    .line 61
    :catchall_1f
    move-exception p1

    .line 63
    return-object v0
.end method

.method a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 4

    .line 133
    if-eqz p1, :cond_3d

    :try_start_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_3d

    .line 137
    :cond_d
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 139
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    .line 141
    :cond_23
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->f(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 142
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3a
    .catchall {:try_start_2 .. :try_end_3a} :catchall_3b

    .line 145
    :goto_3a
    goto :goto_3c

    .line 144
    :catchall_3b
    move-exception p1

    .line 147
    :goto_3c
    return-void

    .line 134
    :cond_3d
    :goto_3d
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 88
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_4f

    const-string v1, "material_data"

    const-string v2, "create_time"

    const/4 v3, 0x0

    const-string v4, "has_played"

    if-eqz v0, :cond_2f

    .line 89
    :try_start_d
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v4, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 90
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 91
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1, p2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void

    .line 94
    :cond_2f
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->f(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 95
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 96
    invoke-interface {p1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {p1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 98
    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 99
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4e
    .catchall {:try_start_d .. :try_end_4e} :catchall_4f

    .line 101
    goto :goto_50

    .line 100
    :catchall_4f
    move-exception p1

    .line 102
    :goto_50
    return-void
.end method

.method b(Ljava/lang/String;)J
    .registers 6

    .line 68
    const-wide/16 v0, 0x0

    :try_start_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v2
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_20

    const-string v3, "create_time"

    if-eqz v2, :cond_13

    .line 69
    :try_start_a
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_1f

    .line 70
    :cond_13
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->f(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_20

    .line 68
    :goto_1f
    return-wide v0

    .line 71
    :catchall_20
    move-exception p1

    .line 73
    return-wide v0
.end method

.method b(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 4

    .line 151
    if-eqz p1, :cond_37

    :try_start_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_37

    .line 155
    :cond_d
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_35

    const-string v1, "preload_data"

    if-eqz v0, :cond_21

    .line 157
    :try_start_19
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    .line 159
    :cond_21
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->f(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 160
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_34
    .catchall {:try_start_19 .. :try_end_34} :catchall_35

    .line 163
    :goto_34
    goto :goto_36

    .line 162
    :catchall_35
    move-exception p1

    .line 164
    :goto_36
    return-void

    .line 152
    :cond_37
    :goto_37
    return-void
.end method

.method c(Ljava/lang/String;)Z
    .registers 5

    .line 78
    const/4 v0, 0x1

    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1f

    const-string v2, "has_played"

    if-eqz v1, :cond_12

    .line 79
    :try_start_9
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_1e

    .line 80
    :cond_12
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->f(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_1f

    .line 78
    :goto_1e
    return p1

    .line 81
    :catchall_1f
    move-exception p1

    .line 83
    return v0
.end method

.method d(Ljava/lang/String;)V
    .registers 3

    .line 106
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 107
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;)V

    .line 108
    return-void

    .line 110
    :cond_e
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->f(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    .line 112
    goto :goto_23

    .line 111
    :catchall_22
    move-exception p1

    .line 113
    :goto_23
    return-void
.end method

.method e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot;
    .registers 4

    .line 119
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 120
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1c

    .line 122
    :cond_10
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->f(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 123
    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 125
    :goto_1c
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p1
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_21

    return-object p1

    .line 126
    :catchall_21
    move-exception p1

    .line 128
    return-object v0
.end method
