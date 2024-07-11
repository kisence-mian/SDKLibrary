.class public Lcom/bytedance/sdk/openadsdk/utils/ae;
.super Ljava/lang/Object;
.source "SPUtils.java"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/utils/ae;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/ae;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-eqz p2, :cond_10

    .line 40
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/ae;->b:Landroid/content/SharedPreferences;

    .line 42
    :cond_10
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/ae;
    .registers 3

    .line 29
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "tt_ad_sdk_sp"

    .line 30
    :cond_8
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/ae;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/utils/ae;

    .line 31
    if-nez v0, :cond_1c

    .line 32
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/ae;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ae;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 33
    sget-object p1, Lcom/bytedance/sdk/openadsdk/utils/ae;->a:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_1c
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 66
    :try_start_0
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object p1

    .line 67
    :catchall_7
    move-exception p1

    .line 69
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;I)V
    .registers 4

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/ae;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    .line 97
    goto :goto_f

    .line 96
    :catchall_e
    move-exception p1

    .line 98
    :goto_f
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .registers 5

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/ae;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    .line 135
    goto :goto_f

    .line 134
    :catchall_e
    move-exception p1

    .line 136
    :goto_f
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/ae;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    .line 54
    goto :goto_f

    .line 53
    :catchall_e
    move-exception p1

    .line 56
    :goto_f
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/ae;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    .line 249
    goto :goto_f

    .line 248
    :catchall_e
    move-exception p1

    .line 250
    :goto_f
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 4

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/ae;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    .line 211
    goto :goto_f

    .line 210
    :catchall_e
    move-exception p1

    .line 212
    :goto_f
    return-void
.end method

.method public b(Ljava/lang/String;I)I
    .registers 4

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/ae;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return p1

    .line 120
    :catchall_7
    move-exception p1

    .line 122
    return p2
.end method

.method public b(Ljava/lang/String;J)J
    .registers 5

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/ae;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-wide p1

    .line 158
    :catchall_7
    move-exception p1

    .line 160
    return-wide p2
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/ae;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object p1

    .line 82
    :catchall_7
    move-exception p1

    .line 84
    return-object p2
.end method

.method public b(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/ae;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object p1

    .line 272
    :catchall_7
    move-exception p1

    .line 274
    return-object p2
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/ae;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    .line 300
    goto :goto_f

    .line 299
    :catchall_e
    move-exception p1

    .line 301
    :goto_f
    return-void
.end method

.method public b(Ljava/lang/String;Z)Z
    .registers 4

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/ae;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return p1

    .line 234
    :catchall_7
    move-exception p1

    .line 236
    return p2
.end method
