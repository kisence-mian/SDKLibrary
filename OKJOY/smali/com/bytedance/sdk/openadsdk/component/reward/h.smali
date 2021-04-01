.class Lcom/bytedance/sdk/openadsdk/component/reward/h;
.super Ljava/lang/Object;
.source "SpCache.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h;->b:Landroid/content/Context;

    .line 24
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p2, ""

    :cond_d
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h;->a:Ljava/lang/String;

    .line 25
    return-void
.end method

.method private b()Landroid/content/Context;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h;->b:Landroid/content/Context;

    if-nez v0, :cond_9

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h;->b:Landroid/content/Context;

    goto :goto_8
.end method

.method private c()Ljava/lang/String;
    .registers 3

    .prologue
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

    .prologue
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
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 35
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->b()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 36
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->b()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_10

    move-result-object v0

    .line 40
    :goto_f
    return-object v0

    .line 38
    :catch_10
    move-exception v0

    .line 40
    :cond_11
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
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

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a()Lcom/bytedance/sdk/openadsdk/AdSlot;
    .registers 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 170
    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 171
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "preload_data"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;)V

    .line 178
    :goto_19
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    .line 181
    :goto_1d
    return-object v0

    .line 174
    :cond_1e
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->f(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 175
    const-string v1, "preload_data"

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_38} :catch_39

    goto :goto_19

    .line 179
    :catch_39
    move-exception v1

    goto :goto_1d
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 58
    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 59
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "material_data"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    :goto_12
    return-object v0

    .line 60
    :cond_13
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->f(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "material_data"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_21} :catch_23

    move-result-object v0

    goto :goto_12

    .line 61
    :catch_23
    move-exception v1

    goto :goto_12
.end method

.method a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 5

    .prologue
    .line 133
    if-eqz p1, :cond_c

    :try_start_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 147
    :cond_c
    :goto_c
    return-void

    .line 137
    :cond_d
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 139
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 144
    :catch_23
    move-exception v0

    goto :goto_c

    .line 141
    :cond_25
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->f(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 142
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_3c} :catch_23

    goto :goto_c
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 88
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 89
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "has_played"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 90
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "create_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 91
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "material_data"

    invoke-static {v0, v1, p2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :goto_2e
    return-void

    .line 94
    :cond_2f
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->f(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "has_played"

    const/4 v2, 0x0

    .line 96
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "create_time"

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "material_data"

    .line 98
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 99
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_55} :catch_56

    goto :goto_2e

    .line 100
    :catch_56
    move-exception v0

    goto :goto_2e
.end method

.method b(Ljava/lang/String;)J
    .registers 8

    .prologue
    const-wide/16 v0, 0x0

    .line 68
    :try_start_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 69
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "create_time"

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    .line 73
    :goto_14
    return-wide v0

    .line 70
    :cond_15
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->f(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "create_time"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_24} :catch_26

    move-result-wide v0

    goto :goto_14

    .line 71
    :catch_26
    move-exception v2

    goto :goto_14
.end method

.method b(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 5

    .prologue
    .line 151
    if-eqz p1, :cond_c

    :try_start_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 164
    :cond_c
    :goto_c
    return-void

    .line 155
    :cond_d
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 157
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "preload_data"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 162
    :catch_21
    move-exception v0

    goto :goto_c

    .line 159
    :cond_23
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->f(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 160
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "preload_data"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_38} :catch_21

    goto :goto_c
.end method

.method c(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 78
    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 79
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "has_played"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 83
    :goto_12
    return v0

    .line 80
    :cond_13
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->f(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "has_played"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_21} :catch_23

    move-result v0

    goto :goto_12

    .line 81
    :catch_23
    move-exception v1

    goto :goto_12
.end method

.method d(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 106
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 107
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;)V

    .line 113
    :goto_d
    return-void

    .line 110
    :cond_e
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->f(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_d

    .line 111
    :catch_22
    move-exception v0

    goto :goto_d
.end method

.method e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot;
    .registers 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 119
    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 120
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    :goto_10
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    .line 128
    :goto_14
    return-object v0

    .line 122
    :cond_15
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->f(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 123
    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_21} :catch_23

    move-result-object v1

    goto :goto_10

    .line 126
    :catch_23
    move-exception v1

    goto :goto_14
.end method
