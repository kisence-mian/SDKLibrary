.class public Lcom/bytedance/sdk/openadsdk/component/reward/e;
.super Ljava/lang/Object;
.source "RewardVideoCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/reward/e$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/component/reward/e;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/bytedance/sdk/openadsdk/component/reward/h;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/d/k;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e;->d:Ljava/util/Map;

    .line 183
    if-nez p1, :cond_22

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    :goto_14
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e;->b:Landroid/content/Context;

    .line 184
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/h;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e;->b:Landroid/content/Context;

    const-string v2, "sp_reward_video"

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e;->c:Lcom/bytedance/sdk/openadsdk/component/reward/h;

    .line 185
    return-void

    .line 183
    :cond_22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_14
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/e;
    .registers 3

    .prologue
    .line 172
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a:Lcom/bytedance/sdk/openadsdk/component/reward/e;

    if-nez v0, :cond_13

    .line 173
    const-class v1, Lcom/bytedance/sdk/openadsdk/component/reward/e;

    monitor-enter v1

    .line 174
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a:Lcom/bytedance/sdk/openadsdk/component/reward/e;

    if-nez v0, :cond_12

    .line 175
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/e;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a:Lcom/bytedance/sdk/openadsdk/component/reward/e;

    .line 177
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 179
    :cond_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a:Lcom/bytedance/sdk/openadsdk/component/reward/e;

    return-object v0

    .line 177
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .prologue
    .line 384
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    invoke-static {p1, v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/k;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5

    .prologue
    .line 251
    if-eqz p2, :cond_1c

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reward_video_cache_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    :goto_1b
    return-object v0

    .line 254
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/reward_video_cache_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/reward/e;Ljava/io/File;)V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Ljava/io/File;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/reward/e;ZLcom/bytedance/sdk/openadsdk/core/d/k;JLcom/bytedance/sdk/adnet/core/n;)V
    .registers 7

    .prologue
    .line 44
    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(ZLcom/bytedance/sdk/openadsdk/core/d/k;JLcom/bytedance/sdk/adnet/core/n;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .registers 6

    .prologue
    .line 376
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->p()Lcom/bytedance/sdk/openadsdk/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/b/c;->a(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    .line 381
    :goto_b
    return-void

    .line 377
    :catch_c
    move-exception v0

    .line 378
    const-string v1, "RewardVideoCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trimFileCache IOException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method private a(ZLcom/bytedance/sdk/openadsdk/core/d/k;JLcom/bytedance/sdk/adnet/core/n;)V
    .registers 15
    .param p5    # Lcom/bytedance/sdk/adnet/core/n;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 269
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 270
    if-nez v0, :cond_2f

    const-wide/16 v2, 0x0

    .line 271
    :goto_c
    if-eqz p1, :cond_39

    const-string v0, "load_video_success"

    move-object v7, v0

    .line 272
    :goto_11
    const/4 v6, 0x0

    .line 273
    if-nez p1, :cond_20

    if-eqz p5, :cond_20

    iget-object v0, p5, Lcom/bytedance/sdk/adnet/core/n;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    if-eqz v0, :cond_20

    .line 274
    iget-object v0, p5, Lcom/bytedance/sdk/adnet/core/n;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/err/VAdError;->getMessage()Ljava/lang/String;

    move-result-object v6

    :cond_20
    move v0, p1

    move-object v1, p2

    move-wide v4, p3

    .line 276
    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(ZLcom/bytedance/sdk/openadsdk/core/d/k;JJLjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e;->b:Landroid/content/Context;

    const-string v2, "rewarded_video"

    invoke-static {v1, p2, v2, v7, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->m(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 283
    return-void

    .line 270
    :cond_2f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v2, v0

    goto :goto_c

    .line 271
    :cond_39
    const-string v0, "load_video_error"

    move-object v7, v0

    goto :goto_11
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 188
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 189
    :cond_16
    const/4 v0, 0x0

    .line 194
    :goto_17
    return-object v0

    .line 192
    :cond_18
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->g()Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->j()Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/ah;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 208
    :cond_7
    :goto_7
    return-object v0

    .line 202
    :cond_8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 203
    :cond_12
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 204
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e;->b:Landroid/content/Context;

    invoke-direct {p0, v2, v1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 205
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 206
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public a()V
    .registers 10

    .prologue
    const/16 v8, 0x18

    const/4 v0, 0x0

    .line 65
    :try_start_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v8, :cond_49

    .line 66
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "shared_prefs"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 72
    :goto_14
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 73
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/e$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/e$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/e;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 84
    if-eqz v2, :cond_62

    .line 85
    array-length v3, v2

    move v1, v0

    :goto_2d
    if-ge v1, v3, :cond_62

    aget-object v4, v2, v1
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_31} :catch_61

    .line 87
    :try_start_31
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 88
    const-string v6, ".xml"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 89
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v8, :cond_a9

    .line 90
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e;->b:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->deleteSharedPreferences(Ljava/lang/String;)Z
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_46} :catch_bf

    .line 85
    :goto_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 69
    :cond_49
    :try_start_49
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e;->b:Landroid/content/Context;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 70
    new-instance v1, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "shared_prefs"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_60} :catch_61

    goto :goto_14

    .line 101
    :catch_61
    move-exception v1

    .line 107
    :cond_62
    :try_start_62
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_74

    .line 108
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v1

    if-nez v1, :cond_c1

    :cond_74
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_c1

    .line 110
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    .line 115
    :goto_82
    if-eqz v1, :cond_cb

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_cb

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_cb

    .line 116
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/e$2;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/e$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/e;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 127
    if-eqz v1, :cond_cb

    array-length v2, v1

    if-lez v2, :cond_cb

    .line 128
    array-length v2, v1

    :goto_9f
    if-ge v0, v2, :cond_cb

    aget-object v3, v1, v0
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_a3} :catch_ca

    .line 130
    :try_start_a3
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/k;->c(Ljava/io/File;)V
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_a3 .. :try_end_a6} :catch_c8

    .line 128
    :goto_a6
    add-int/lit8 v0, v0, 0x1

    goto :goto_9f

    .line 92
    :cond_a9
    :try_start_a9
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e;->b:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 93
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 94
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/k;->c(Ljava/io/File;)V
    :try_end_be
    .catch Ljava/lang/Throwable; {:try_start_a9 .. :try_end_be} :catch_bf

    goto :goto_46

    .line 96
    :catch_bf
    move-exception v4

    goto :goto_46

    .line 112
    :cond_c1
    :try_start_c1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
    :try_end_c6
    .catch Ljava/lang/Throwable; {:try_start_c1 .. :try_end_c6} :catch_ca

    move-result-object v1

    goto :goto_82

    .line 131
    :catch_c8
    move-exception v3

    goto :goto_a6

    .line 137
    :catch_ca
    move-exception v0

    .line 139
    :cond_cb
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e;->c:Lcom/bytedance/sdk/openadsdk/component/reward/h;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 160
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .registers 6

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 144
    if-eqz p2, :cond_16

    .line 146
    :try_start_5
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e;->c:Lcom/bytedance/sdk/openadsdk/component/reward/h;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->ae()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_16} :catch_17

    .line 151
    :cond_16
    :goto_16
    return-void

    .line 148
    :catch_17
    move-exception v0

    goto :goto_16
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/component/reward/e$a;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/d/k;",
            "Lcom/bytedance/sdk/openadsdk/component/reward/e$a",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 296
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e;->d:Ljava/util/Map;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    if-eqz p1, :cond_25

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 298
    :cond_25
    if-eqz p2, :cond_2a

    .line 299
    invoke-interface {p2, v2, v6}, Lcom/bytedance/sdk/openadsdk/component/reward/e$a;->a(ZLjava/lang/Object;)V

    .line 302
    :cond_2a
    const-wide/16 v4, -0x1

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(ZLcom/bytedance/sdk/openadsdk/core/d/k;JLcom/bytedance/sdk/adnet/core/n;)V

    .line 372
    :goto_31
    return-void

    .line 306
    :cond_32
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->g()Ljava/lang/String;

    move-result-object v6

    .line 307
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->j()Ljava/lang/String;

    move-result-object v3

    .line 308
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 310
    :cond_4c
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->d(Ljava/lang/String;)I

    move-result v0

    .line 311
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 312
    const-string v2, "wzj"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ritId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",cacheDirPath="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e;->b:Landroid/content/Context;

    invoke-direct {p0, v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 315
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v7

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/e;Ljava/io/File;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/component/reward/e$a;Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    invoke-virtual {v7, v6, v0}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/b$a;)V

    goto :goto_31
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e;->c:Lcom/bytedance/sdk/openadsdk/component/reward/h;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->d(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public b()Lcom/bytedance/sdk/openadsdk/AdSlot;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e;->c:Lcom/bytedance/sdk/openadsdk/component/reward/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->a()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e;->c:Lcom/bytedance/sdk/openadsdk/component/reward/h;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e;->c:Lcom/bytedance/sdk/openadsdk/component/reward/h;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->b(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 164
    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/k;
    .registers 8

    .prologue
    .line 217
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e;->c:Lcom/bytedance/sdk/openadsdk/component/reward/h;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->b(Ljava/lang/String;)J

    move-result-wide v0

    .line 218
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e;->c:Lcom/bytedance/sdk/openadsdk/component/reward/h;

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->c(Ljava/lang/String;)Z

    move-result v2

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    const-wide/32 v4, 0xa4cb80

    cmp-long v0, v0, v4

    if-gez v0, :cond_52

    const/4 v0, 0x1

    .line 222
    :goto_1a
    if-eqz v0, :cond_55

    if-nez v2, :cond_55

    .line 224
    :try_start_1e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e;->c:Lcom/bytedance/sdk/openadsdk/component/reward/h;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 226
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_55

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v1

    if-eqz v1, :cond_55

    .line 229
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v1

    .line 230
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_4e} :catch_54

    move-result v1

    if-nez v1, :cond_55

    .line 241
    :goto_51
    return-object v0

    .line 221
    :cond_52
    const/4 v0, 0x0

    goto :goto_1a

    .line 237
    :catch_54
    move-exception v0

    .line 241
    :cond_55
    const/4 v0, 0x0

    goto :goto_51
.end method
