.class Lcom/bytedance/sdk/openadsdk/multipro/d/b;
.super Ljava/lang/Object;
.source "SPMultiHelperImpl.java"


# static fields
.field private static a:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;F)F
    .registers 5

    .prologue
    .line 151
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 152
    if-nez v0, :cond_7

    .line 153
    :goto_6
    return p3

    :cond_7
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p3

    goto :goto_6
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5

    .prologue
    .line 145
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 146
    if-nez v0, :cond_7

    .line 147
    :goto_6
    return p3

    :cond_7
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p3

    goto :goto_6
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J
    .registers 6

    .prologue
    .line 163
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 164
    if-nez v0, :cond_7

    .line 165
    :goto_6
    return-wide p3

    :cond_7
    invoke-interface {v0, p2, p3, p4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p3

    goto :goto_6
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 40
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->a:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1f

    .line 41
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 42
    if-eqz v0, :cond_1f

    .line 43
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 44
    if-eqz v0, :cond_1f

    .line 45
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 49
    :goto_1e
    return-object v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 106
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_1a

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    :goto_19
    return-object v0

    .line 110
    :cond_1a
    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 111
    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "sphelper_ttopenadsdk"

    :cond_8
    return-object p0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 182
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 183
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 184
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 185
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 186
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->b(Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 79
    const-class v3, Lcom/bytedance/sdk/openadsdk/multipro/d/b;

    monitor-enter v3

    :try_start_3
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_67

    move-result-object v2

    .line 80
    if-nez v2, :cond_b

    .line 103
    :cond_9
    :goto_9
    monitor-exit v3

    return-void

    .line 82
    :cond_b
    :try_start_b
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 85
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 86
    instance-of v2, p3, Ljava/lang/Boolean;

    if-eqz v2, :cond_28

    .line 87
    move-object v0, p3

    check-cast v0, Ljava/lang/Boolean;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v4, p2, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 89
    :cond_28
    instance-of v2, p3, Ljava/lang/String;

    if-eqz v2, :cond_33

    .line 90
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    invoke-interface {v4, p2, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 92
    :cond_33
    instance-of v2, p3, Ljava/lang/Integer;

    if-eqz v2, :cond_42

    .line 93
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v4, p2, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 95
    :cond_42
    instance-of v2, p3, Ljava/lang/Long;

    if-eqz v2, :cond_51

    .line 96
    move-object v0, p3

    check-cast v0, Ljava/lang/Long;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v4, p2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 98
    :cond_51
    instance-of v2, p3, Ljava/lang/Float;

    if-eqz v2, :cond_60

    .line 99
    move-object v0, p3

    check-cast v0, Ljava/lang/Float;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v4, p2, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 101
    :cond_60
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 102
    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_66
    .catchall {:try_start_b .. :try_end_66} :catchall_67

    goto :goto_9

    .line 79
    :catchall_67
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    .prologue
    .line 53
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->a:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_18

    .line 54
    :cond_c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 55
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->a:Ljava/lang/ref/SoftReference;

    .line 58
    :cond_18
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 60
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_32

    .line 61
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_32
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 169
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_e

    invoke-interface {v0, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5

    .prologue
    .line 157
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 158
    if-nez v0, :cond_7

    .line 159
    :goto_6
    return p3

    :cond_7
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    goto :goto_6
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 8

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 117
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-static {p0, v1, p2}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 134
    :cond_c
    :goto_c
    return-object v0

    .line 121
    :cond_d
    const-string v2, "string"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 122
    invoke-static {p0, v1, p2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 123
    :cond_1a
    const-string v2, "boolean"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 124
    invoke-static {p0, v1, p2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_c

    .line 125
    :cond_2b
    const-string v2, "int"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 126
    invoke-static {p0, v1, p2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_c

    .line 127
    :cond_3c
    const-string v2, "long"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 128
    const-wide/16 v2, 0x0

    invoke-static {p0, v1, p2, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_c

    .line 129
    :cond_4f
    const-string v2, "float"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 130
    const/4 v0, 0x0

    invoke-static {p0, v1, p2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_c

    .line 131
    :cond_61
    const-string v2, "string_set"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 132
    invoke-static {p0, v1, p2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 190
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 191
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 174
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 175
    if-nez v0, :cond_7

    .line 179
    :goto_6
    return-void

    .line 176
    :cond_7
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 177
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 178
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_6
.end method

.method private static b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 69
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->a:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_23

    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 70
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 71
    if-eqz v0, :cond_23

    .line 72
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 75
    :cond_23
    return-void
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .registers 4

    .prologue
    .line 29
    if-nez p0, :cond_4

    .line 30
    const/4 v0, 0x0

    .line 32
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_3
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 139
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 140
    if-nez v0, :cond_7

    .line 141
    :goto_6
    return-object p3

    :cond_7
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_6
.end method
