.class public Lcom/bytedance/sdk/openadsdk/core/d;
.super Ljava/lang/Object;
.source "AdPreference.java"


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/core/d;


# instance fields
.field private final b:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/d;->a:Lcom/bytedance/sdk/openadsdk/core/d;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "ttopenadsdk"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d;->b:Landroid/content/SharedPreferences;

    .line 44
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;
    .registers 3

    .line 47
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/d;->a:Lcom/bytedance/sdk/openadsdk/core/d;

    if-nez v0, :cond_17

    .line 48
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/d;

    monitor-enter v0

    .line 49
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/d;->a:Lcom/bytedance/sdk/openadsdk/core/d;

    if-nez v1, :cond_12

    .line 50
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/d;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/d;->a:Lcom/bytedance/sdk/openadsdk/core/d;

    .line 52
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 54
    :cond_17
    :goto_17
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/d;->a:Lcom/bytedance/sdk/openadsdk/core/d;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;F)V
    .registers 4

    .line 131
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 132
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string v0, "ttopenadsdk"

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_1d

    .line 134
    :cond_10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 136
    :goto_1d
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .registers 4

    .line 77
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 78
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "ttopenadsdk"

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1d

    .line 80
    :cond_10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 82
    :goto_1d
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .registers 5

    .line 113
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 114
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "ttopenadsdk"

    invoke-static {p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1d

    .line 116
    :cond_10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 118
    :goto_1d
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 58
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 59
    const-string v0, "ttopenadsdk"

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 61
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 64
    :goto_19
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 4

    .line 95
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 96
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "ttopenadsdk"

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1d

    .line 98
    :cond_10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 100
    :goto_1d
    return-void
.end method

.method public b(Ljava/lang/String;F)F
    .registers 4

    .line 140
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 141
    const-string v0, "ttopenadsdk"

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p1

    goto :goto_13

    .line 143
    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    .line 145
    :goto_13
    return p1
.end method

.method public b(Ljava/lang/String;I)I
    .registers 4

    .line 86
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 87
    const-string v0, "ttopenadsdk"

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    goto :goto_13

    .line 89
    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 91
    :goto_13
    return p1
.end method

.method public b(Ljava/lang/String;J)Ljava/lang/Long;
    .registers 5

    .line 122
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 123
    const-string v0, "ttopenadsdk"

    invoke-static {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide p1

    goto :goto_13

    .line 125
    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    .line 127
    :goto_13
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 68
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 69
    const-string v0, "ttopenadsdk"

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_13

    .line 71
    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 73
    :goto_13
    return-object p1
.end method

.method public b(Ljava/lang/String;Z)Z
    .registers 4

    .line 104
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 105
    const-string v0, "ttopenadsdk"

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_13

    .line 107
    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 109
    :goto_13
    return p1
.end method
