.class public Lcom/bytedance/sdk/openadsdk/core/e;
.super Ljava/lang/Object;
.source "AppEnvironment.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static volatile b:Lcom/bytedance/sdk/openadsdk/core/e;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;


# instance fields
.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:J

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    const-string v0, "AppEnvironment"

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/e;->a:Ljava/lang/String;

    .line 37
    const-string v0, "ad_style"

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/e;->d:Ljava/lang/String;

    .line 38
    const-string v0, "ad_id"

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/e;->e:Ljava/lang/String;

    .line 39
    const-string v0, "rit"

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/e;->f:Ljava/lang/String;

    .line 40
    const-string v0, "request_id"

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/e;->g:Ljava/lang/String;

    .line 41
    const-string v0, "ad_slot_type"

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/e;->h:Ljava/lang/String;

    .line 42
    const-string v0, "net_type"

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/e;->i:Ljava/lang/String;

    .line 43
    const-string v0, "low_memory"

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/e;->j:Ljava/lang/String;

    .line 44
    const-string v0, "total_max_memory_rate"

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/e;->k:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e;->c:Ljava/util/Map;

    .line 55
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/e;->d:Ljava/lang/String;

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e;->c:Ljava/util/Map;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/e;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e;->c:Ljava/util/Map;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/e;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e;->c:Ljava/util/Map;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/e;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e;->c:Ljava/util/Map;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/e;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e;->c:Ljava/util/Map;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/e;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e;->c:Ljava/util/Map;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/e;->j:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e;->c:Ljava/util/Map;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/e;->k:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v0, "tt_sp_app_env"

    const-string v1, "last_app_env_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/e;->l:J

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/e;->m:Z

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/e;J)J
    .registers 3

    .line 32
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/e;->l:J

    return-wide p1
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/core/e;
    .registers 2

    .line 68
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/e;->b:Lcom/bytedance/sdk/openadsdk/core/e;

    if-nez v0, :cond_17

    .line 69
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/e;

    monitor-enter v0

    .line 70
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/e;->b:Lcom/bytedance/sdk/openadsdk/core/e;

    if-nez v1, :cond_12

    .line 71
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/e;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/e;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/e;->b:Lcom/bytedance/sdk/openadsdk/core/e;

    .line 73
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 75
    :cond_17
    :goto_17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/e;->b:Lcom/bytedance/sdk/openadsdk/core/e;

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/e;)Lorg/json/JSONObject;
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/e;->e()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/e;Z)Z
    .registers 2

    .line 32
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/e;->m:Z

    return p1
.end method

.method private d()V
    .registers 10

    .line 95
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v1, v3

    const-wide/high16 v5, 0x4130000000000000L    # 1048576.0

    div-double/2addr v1, v5

    double-to-float v1, v1

    .line 98
    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v7

    long-to-double v7, v7

    mul-double/2addr v7, v3

    div-double/2addr v7, v5

    double-to-float v2, v7

    .line 100
    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v7

    long-to-double v7, v7

    mul-double/2addr v7, v3

    div-double/2addr v7, v5

    double-to-float v0, v7

    .line 102
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 103
    new-instance v4, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v4}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 104
    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 105
    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/e;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u7cfb\u7edf\u662f\u5426\u5904\u4e8e\u4f4e\u5185\u5b58\u8fd0\u884c\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v4, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/e;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "maxMemory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/e;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "totalMemory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/e;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "freeMemory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    div-float/2addr v2, v1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v2, v0

    float-to-int v0, v2

    .line 110
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/e;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "totalMaxRate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e;->c:Ljava/util/Map;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/e;->j:Ljava/lang/String;

    iget-boolean v3, v4, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e;->c:Ljava/util/Map;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/e;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void
.end method

.method private e()Lorg/json/JSONObject;
    .registers 13

    .line 146
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 148
    const/4 v1, 0x0

    :try_start_6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v2

    .line 149
    if-nez v2, :cond_d

    .line 150
    return-object v1

    .line 152
    :cond_d
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 153
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 155
    const/16 v5, 0x100f

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 159
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 160
    if-eqz v2, :cond_28

    .line 161
    const-string v4, "application_name"

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    :cond_28
    const-string v2, "app_id"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/i;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    if-eqz v3, :cond_c1

    .line 165
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 166
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 167
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 168
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 169
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 171
    const/4 v7, 0x0

    if-eqz v2, :cond_5c

    .line 172
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 173
    array-length v9, v2

    move v10, v7

    :goto_4b
    if-ge v10, v9, :cond_57

    aget-object v11, v2, v10

    .line 174
    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 173
    add-int/lit8 v10, v10, 0x1

    goto :goto_4b

    .line 176
    :cond_57
    const-string v2, "activities"

    invoke-virtual {v0, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    :cond_5c
    if-eqz v4, :cond_74

    .line 180
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 181
    array-length v8, v4

    move v9, v7

    :goto_65
    if-ge v9, v8, :cond_6f

    aget-object v10, v4, v9

    .line 182
    invoke-virtual {v2, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 181
    add-int/lit8 v9, v9, 0x1

    goto :goto_65

    .line 184
    :cond_6f
    const-string v4, "permissions"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    :cond_74
    if-eqz v5, :cond_8e

    .line 188
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 189
    array-length v4, v5

    move v8, v7

    :goto_7d
    if-ge v8, v4, :cond_89

    aget-object v9, v5, v8

    .line 190
    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 189
    add-int/lit8 v8, v8, 0x1

    goto :goto_7d

    .line 192
    :cond_89
    const-string v4, "receivers"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    :cond_8e
    if-eqz v6, :cond_a8

    .line 196
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 197
    array-length v4, v6

    move v5, v7

    :goto_97
    if-ge v5, v4, :cond_a3

    aget-object v8, v6, v5

    .line 198
    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 197
    add-int/lit8 v5, v5, 0x1

    goto :goto_97

    .line 200
    :cond_a3
    const-string v4, "services"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    :cond_a8
    if-eqz v3, :cond_c1

    .line 204
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 205
    array-length v4, v3

    :goto_b0
    if-ge v7, v4, :cond_bc

    aget-object v5, v3, v7

    .line 206
    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 205
    add-int/lit8 v7, v7, 0x1

    goto :goto_b0

    .line 208
    :cond_bc
    const-string v3, "providers"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c1
    .catchall {:try_start_6 .. :try_end_c1} :catchall_c3

    .line 214
    :cond_c1
    nop

    .line 215
    return-object v0

    .line 212
    :catchall_c3
    move-exception v0

    .line 213
    return-object v1
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 7

    .line 80
    if-nez p1, :cond_3

    .line 81
    return-void

    .line 83
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e;->c:Ljava/util/Map;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/e;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e;->c:Ljava/util/Map;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/e;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/aj;->d(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e;->c:Ljava/util/Map;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/e;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/aj;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e;->c:Ljava/util/Map;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/e;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/aj;->c(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e;->c:Ljava/util/Map;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/e;->i:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/x;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->C()Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 89
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e;->c:Ljava/util/Map;

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/e;->d:Ljava/lang/String;

    const-string v1, "is_playable"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_7d
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/e;->d()V

    .line 92
    return-void
.end method

.method public b()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e;->c:Ljava/util/Map;

    return-object v0
.end method

.method public c()V
    .registers 5

    .line 122
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/e;->m:Z

    if-eqz v0, :cond_5

    .line 123
    return-void

    .line 125
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/e;->l:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 126
    return-void

    .line 128
    :cond_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/e;->m:Z

    .line 129
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/e$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/e$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/e;)V

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/Runnable;I)V

    .line 142
    return-void
.end method
