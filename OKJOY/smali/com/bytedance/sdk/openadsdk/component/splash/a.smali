.class Lcom/bytedance/sdk/openadsdk/component/splash/a;
.super Ljava/lang/Object;
.source "SplashAdCacheManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/ak$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/splash/a$b;,
        Lcom/bytedance/sdk/openadsdk/component/splash/a$d;,
        Lcom/bytedance/sdk/openadsdk/component/splash/a$c;,
        Lcom/bytedance/sdk/openadsdk/component/splash/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Integer;

.field private static final b:Ljava/lang/Integer;

.field private static volatile c:Lcom/bytedance/sdk/openadsdk/component/splash/a;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private d:Landroid/content/Context;

.field private final e:Lcom/bytedance/sdk/openadsdk/utils/ak;

.field private final f:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/openadsdk/component/splash/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/bytedance/sdk/openadsdk/component/splash/a$c;

.field private h:Lcom/bytedance/sdk/openadsdk/component/splash/a$d;

.field private i:J

.field private j:J

.field private k:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 87
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a:Ljava/lang/Integer;

    .line 88
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    const-wide/16 v2, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/ak;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/utils/ak;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/openadsdk/utils/ak$a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->e:Lcom/bytedance/sdk/openadsdk/utils/ak;

    .line 96
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->f:Ljava/util/WeakHashMap;

    .line 711
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->i:J

    .line 712
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->j:J

    .line 713
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 107
    if-eqz p1, :cond_2b

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->d:Landroid/content/Context;

    .line 110
    :cond_2b
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/a;J)J
    .registers 4

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->i:J

    return-wide p1
.end method

.method static a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/splash/a;
    .registers 3

    .prologue
    .line 113
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->c:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    if-nez v0, :cond_13

    .line 114
    const-class v1, Lcom/bytedance/sdk/openadsdk/component/splash/a;

    monitor-enter v1

    .line 115
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->c:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    if-nez v0, :cond_12

    .line 116
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->c:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    .line 118
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 120
    :cond_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->c:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    return-object v0

    .line 118
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/a;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/a;
    .registers 3

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Lcom/bytedance/sdk/openadsdk/utils/ak;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->e:Lcom/bytedance/sdk/openadsdk/utils/ak;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/io/File;)Ljava/lang/Runnable;
    .registers 4

    .prologue
    .line 272
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->g:Lcom/bytedance/sdk/openadsdk/component/splash/a$c;

    if-nez v0, :cond_e

    .line 273
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/a$c;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/a;Ljava/lang/String;Ljava/io/File;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->g:Lcom/bytedance/sdk/openadsdk/component/splash/a$c;

    .line 277
    :goto_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->g:Lcom/bytedance/sdk/openadsdk/component/splash/a$c;

    return-object v0

    .line 275
    :cond_e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->g:Lcom/bytedance/sdk/openadsdk/component/splash/a$c;

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/a$c;->a(Lcom/bytedance/sdk/openadsdk/component/splash/a$c;Ljava/lang/String;Ljava/io/File;)V

    goto :goto_b
.end method

.method private a(IJ)V
    .registers 12

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v4, 0x1

    .line 188
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 189
    const-string v0, "tt_splash"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expiration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 190
    const-string v0, "tt_splash"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 191
    const-string v0, "tt_splash"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has_ad_cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 200
    :goto_62
    return-void

    .line 194
    :cond_63
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_splash"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 195
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expiration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v6

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has_ad_cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 199
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_62
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/d/n;Ljava/io/File;)V
    .registers 6

    .prologue
    .line 174
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->h:Lcom/bytedance/sdk/openadsdk/component/splash/a$d;

    if-nez v0, :cond_16

    .line 175
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$d;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/a$d;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/n;Ljava/io/File;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->h:Lcom/bytedance/sdk/openadsdk/component/splash/a$d;

    .line 181
    :goto_b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->h:Lcom/bytedance/sdk/openadsdk/component/splash/a$d;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/i/a;->c(Ljava/lang/Runnable;I)V

    .line 182
    return-void

    .line 177
    :cond_16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->h:Lcom/bytedance/sdk/openadsdk/component/splash/a$d;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a$d;->a(Lcom/bytedance/sdk/openadsdk/core/d/n;)V

    .line 178
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->h:Lcom/bytedance/sdk/openadsdk/component/splash/a$d;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/a$d;->a(Ljava/io/File;)V

    goto :goto_b
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/splash/a;J)J
    .registers 4

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->j:J

    return-wide p1
.end method

.method private b()Landroid/content/Context;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->d:Landroid/content/Context;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->d:Landroid/content/Context;

    :goto_6
    return-object v0

    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    goto :goto_6
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 6

    .prologue
    .line 716
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 717
    const-string v0, "splashLoad"

    const-string v1, "\u5df2\u5728\u9884\u52a0\u8f7d\u5f00\u5c4f\u5e7f\u544a....\u4e0d\u518d\u53d1\u51fa"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    :goto_10
    return-void

    .line 720
    :cond_11
    const/4 v0, 0x4

    .line 723
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/l;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 724
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedWidth()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2e

    :cond_29
    if-eqz p2, :cond_2e

    .line 725
    const/4 v1, 0x2

    iput v1, p2, Lcom/bytedance/sdk/openadsdk/core/d/l;->e:I

    .line 729
    :cond_2e
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->f()Lcom/bytedance/sdk/openadsdk/core/p;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/a;)V

    invoke-interface {v1, p1, p2, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/l;ILcom/bytedance/sdk/openadsdk/core/p$b;)V

    goto :goto_10
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/component/splash/a;)J
    .registers 3

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->i:J

    return-wide v0
.end method

.method private e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/a;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 686
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v1

    .line 708
    :goto_8
    return-object v0

    .line 690
    :cond_9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 691
    const-string v0, "tt_materialMeta"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "materialMeta"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 697
    :goto_28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_64

    .line 699
    :try_start_2e
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/q$a;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/q$a;

    move-result-object v0

    .line 702
    if-eqz v0, :cond_64

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/q$a;->h:Lcom/bytedance/sdk/openadsdk/core/d/a;

    if-eqz v2, :cond_64

    .line 703
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/q$a;->h:Lcom/bytedance/sdk/openadsdk/core/d/a;
    :try_end_3f
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_3f} :catch_63

    goto :goto_8

    .line 693
    :cond_40
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b()Landroid/content/Context;

    move-result-object v0

    const-string v2, "tt_materialMeta"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 694
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "materialMeta"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 705
    :catch_63
    move-exception v0

    :cond_64
    move-object v0, v1

    .line 708
    goto :goto_8
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/component/splash/a;)J
    .registers 3

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->j:J

    return-wide v0
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 365
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

    .line 366
    :cond_16
    const/4 v0, 0x0

    .line 371
    :goto_17
    return-object v0

    .line 369
    :cond_18
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->g()Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->j()Ljava/lang/String;

    move-result-object v1

    .line 371
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/ah;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 375
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 385
    :cond_7
    :goto_7
    return-object v0

    .line 379
    :cond_8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 380
    :cond_12
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 381
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->d:Landroid/content/Context;

    invoke-static {v2, v1, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 382
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 383
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public a(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5

    .prologue
    .line 347
    if-eqz p2, :cond_1c

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "splash_video_cache_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    :goto_1b
    return-object v0

    .line 350
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/splash_video_cache_"

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

.method a()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 488
    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 489
    const-string v1, "tt_materialMeta"

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;)V

    .line 490
    const-string v1, "tt_splash"

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_11} :catch_8d

    .line 503
    :goto_11
    :try_start_11
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 504
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v1

    if-nez v1, :cond_8f

    :cond_23
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_8f

    .line 506
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    .line 511
    :goto_35
    const-string v2, "splash_ad_cache"

    .line 512
    const-string v2, "splash_video_cache"

    .line 514
    if-eqz v1, :cond_9b

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9b

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 515
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/splash/a$2;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/a;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 526
    if-eqz v1, :cond_9b

    array-length v2, v1

    if-lez v2, :cond_9b

    .line 527
    array-length v2, v1

    :goto_56
    if-ge v0, v2, :cond_9b

    aget-object v3, v1, v0
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_5a} :catch_9a

    .line 529
    :try_start_5a
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/k;->c(Ljava/io/File;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5d} :catch_98

    .line 527
    :goto_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    .line 492
    :cond_60
    :try_start_60
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_materialMeta"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 493
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 494
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_splash"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 495
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_8c} :catch_8d

    goto :goto_11

    .line 497
    :catch_8d
    move-exception v1

    goto :goto_11

    .line 508
    :cond_8f
    :try_start_8f
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
    :try_end_96
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_96} :catch_9a

    move-result-object v1

    goto :goto_35

    .line 530
    :catch_98
    move-exception v3

    goto :goto_5d

    .line 536
    :catch_9a
    move-exception v0

    .line 538
    :cond_9b
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 392
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_59

    .line 393
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->f:Ljava/util/WeakHashMap;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$b;

    .line 394
    if-eqz v0, :cond_2b

    .line 395
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_4c

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/bytedance/sdk/openadsdk/core/d/n;

    if-eqz v1, :cond_4c

    .line 396
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/d/n;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a$b;->a(Lcom/bytedance/sdk/openadsdk/core/d/n;)V

    .line 397
    const-string v1, "SplashAdCacheManager"

    const-string v4, "\u7f13\u5b58\u53cd\u5e8f\u5217\u5316\u6210\u529f"

    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_2b
    :goto_2b
    const-string v1, "SplashAdCacheManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OnLoadCacheCallback is null: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_57

    move v0, v2

    :goto_3b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->e:Lcom/bytedance/sdk/openadsdk/utils/ak;

    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/openadsdk/utils/ak;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 419
    :cond_4b
    :goto_4b
    return-void

    .line 399
    :cond_4c
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a$b;->a()V

    .line 400
    const-string v1, "SplashAdCacheManager"

    const-string v4, "\u7f13\u5b58\u53cd\u5e8f\u5217\u5316\u5931\u8d25"

    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    :cond_57
    move v0, v3

    .line 403
    goto :goto_3b

    .line 405
    :cond_59
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4b

    .line 406
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->f:Ljava/util/WeakHashMap;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$b;

    .line 407
    if-eqz v0, :cond_82

    .line 408
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_a2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/bytedance/sdk/openadsdk/core/d/n;

    if-eqz v1, :cond_a2

    .line 409
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/d/n;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a$b;->a(Lcom/bytedance/sdk/openadsdk/core/d/n;)V

    .line 410
    const-string v1, "SplashAdCacheManager"

    const-string v4, "\u89c6\u9891\u7269\u6599\u7f13\u5b58\u53cd\u5e8f\u5217\u5316\u6210\u529f"

    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_82
    :goto_82
    const-string v1, "SplashAdCacheManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OnLoadCacheCallback is null: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_ad

    :goto_91
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->e:Lcom/bytedance/sdk/openadsdk/utils/ak;

    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/openadsdk/utils/ak;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_4b

    .line 412
    :cond_a2
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a$b;->a()V

    .line 413
    const-string v1, "SplashAdCacheManager"

    const-string v4, "\u89c6\u9891\u7269\u6599\u7f13\u5b58\u53cd\u5e8f\u5217\u5316\u5931\u8d25"

    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_82

    :cond_ad
    move v2, v3

    .line 416
    goto :goto_91
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 7

    .prologue
    .line 815
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->t()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 816
    if-eqz p1, :cond_1c

    .line 817
    if-nez p2, :cond_1d

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;-><init>()V

    .line 818
    :goto_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bytedance/sdk/openadsdk/core/d/l;->f:J

    .line 819
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 822
    :cond_1c
    return-void

    .line 817
    :cond_1d
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->a()Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v0

    goto :goto_13
.end method

.method a(Lcom/bytedance/sdk/openadsdk/core/d/n;)V
    .registers 6

    .prologue
    .line 133
    if-nez p1, :cond_3

    .line 154
    :cond_2
    :goto_2
    return-void

    .line 137
    :cond_3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->c(Lcom/bytedance/sdk/openadsdk/core/d/n;)I

    move-result v1

    .line 138
    if-lez v1, :cond_2

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tt_splash_image_cache_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string v0, "splash_ad_cache/"

    :goto_28
    invoke-static {v3, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/n;->a()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->S()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(IJ)V

    .line 153
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/n;Ljava/io/File;)V

    goto :goto_2

    .line 143
    :cond_3d
    const-string v0, "/splash_ad_cache/"

    goto :goto_28
.end method

.method public a(Ljava/io/File;)V
    .registers 6

    .prologue
    .line 357
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->p()Lcom/bytedance/sdk/openadsdk/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/b/c;->a(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    .line 362
    :goto_b
    return-void

    .line 358
    :catch_c
    move-exception v0

    .line 359
    const-string v1, "SplashAdCacheManager"

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

.method a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/component/splash/a$b;)V
    .registers 6
    .param p2    # Lcom/bytedance/sdk/openadsdk/component/splash/a$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 203
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->f:Ljava/util/WeakHashMap;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 205
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->e:Lcom/bytedance/sdk/openadsdk/utils/ak;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 206
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 207
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->e:Lcom/bytedance/sdk/openadsdk/utils/ak;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->sendMessage(Landroid/os/Message;)Z

    .line 244
    :goto_1b
    return-void

    .line 210
    :cond_1c
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/splash/a$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/a;Ljava/lang/String;)V

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/i/a;->c(Ljava/lang/Runnable;I)V

    goto :goto_1b
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/AdSlot;Z)Z
    .registers 11

    .prologue
    .line 428
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/splash/a;

    move-result-object v0

    .line 429
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/component/splash/a$a;

    move-result-object v0

    .line 431
    if-eqz p2, :cond_54

    .line 433
    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->a:Z

    if-eqz v1, :cond_54

    .line 435
    :try_start_14
    iget-wide v2, v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->d:J

    iget-wide v4, v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->b:J

    sub-long/2addr v2, v4

    .line 437
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 438
    const-string v4, "available_type"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 439
    const-string v4, "creative_timeout_duration"

    const-wide/16 v6, 0xe10

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 441
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a/d;->b()Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v2

    const/4 v3, 0x4

    .line 442
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/f/a/d;->a(I)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v2

    .line 443
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/f/a/d;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v2

    .line 444
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v1

    .line 446
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/f/a;->n(Lcom/bytedance/sdk/openadsdk/f/a/d;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_54} :catch_57

    .line 453
    :cond_54
    :goto_54
    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->a:Z

    return v0

    .line 447
    :catch_57
    move-exception v1

    goto :goto_54
.end method

.method a(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 281
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 288
    :goto_7
    return v0

    .line 284
    :cond_8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 285
    const-string v1, "tt_splash"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "has_ad_cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_7

    .line 287
    :cond_28
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_splash"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "has_ad_cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_7
.end method

.method b(Lcom/bytedance/sdk/openadsdk/core/d/n;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 157
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->c(Lcom/bytedance/sdk/openadsdk/core/d/n;)I

    move-result v0

    .line 158
    if-gtz v0, :cond_8

    .line 168
    :goto_7
    return-void

    .line 161
    :cond_8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 162
    const-string v1, "tt_splash"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "has_video_ad_cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_7

    .line 164
    :cond_2b
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_splash"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 165
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "has_video_ad_cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_7
.end method

.method b(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/component/splash/a$b;)V
    .registers 9
    .param p2    # Lcom/bytedance/sdk/openadsdk/component/splash/a$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 252
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 253
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/component/splash/a$b;->a()V

    .line 266
    :goto_9
    return-void

    .line 257
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tt_splash_image_cache_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 258
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_49

    const-string v0, "splash_ad_cache/"

    :goto_29
    invoke-static {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_45

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_4c

    .line 261
    :cond_45
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/component/splash/a$b;->a()V

    goto :goto_9

    .line 258
    :cond_49
    const-string v0, "/splash_ad_cache/"

    goto :goto_29

    .line 264
    :cond_4c
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->f:Ljava/util/WeakHashMap;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a:Ljava/lang/Integer;

    invoke-virtual {v1, v2, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v1

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Ljava/lang/String;Ljava/io/File;)Ljava/lang/Runnable;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/i/a;->c(Ljava/lang/Runnable;I)V

    goto :goto_9
.end method

.method b(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 292
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 299
    :goto_7
    return v0

    .line 295
    :cond_8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 296
    const-string v1, "tt_splash"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "has_video_ad_cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_7

    .line 298
    :cond_28
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_splash"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "has_video_ad_cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_7
.end method

.method c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/component/splash/a$a;
    .registers 14
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-wide/16 v8, 0x0

    .line 309
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;-><init>()V

    .line 310
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    move-object v0, v2

    .line 335
    :goto_12
    return-object v0

    .line 313
    :cond_13
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v3

    if-eqz v3, :cond_63

    .line 314
    const-string v3, "tt_splash"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expiration"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8, v9}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    .line 315
    const-string v3, "tt_splash"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v8, v9}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v6

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    div-long/2addr v8, v10

    .line 318
    cmp-long v3, v8, v6

    if-ltz v3, :cond_58

    cmp-long v3, v8, v4

    if-ltz v3, :cond_59

    :cond_58
    move v0, v1

    :cond_59
    iput-boolean v0, v2, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->a:Z

    .line 319
    iput-wide v6, v2, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->b:J

    .line 320
    iput-wide v4, v2, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->c:J

    .line 321
    iput-wide v8, v2, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->d:J

    move-object v0, v2

    .line 323
    goto :goto_12

    .line 325
    :cond_63
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b()Landroid/content/Context;

    move-result-object v3

    const-string v4, "tt_splash"

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 326
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expiration"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 327
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    div-long/2addr v8, v10

    .line 330
    cmp-long v3, v8, v6

    if-ltz v3, :cond_a8

    cmp-long v3, v8, v4

    if-ltz v3, :cond_a9

    :cond_a8
    move v0, v1

    :cond_a9
    iput-boolean v0, v2, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->a:Z

    .line 331
    iput-wide v6, v2, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->b:J

    .line 332
    iput-wide v4, v2, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->c:J

    .line 333
    iput-wide v8, v2, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->d:J

    move-object v0, v2

    .line 335
    goto/16 :goto_12
.end method

.method d(Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 460
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 481
    :goto_7
    return-void

    .line 463
    :cond_8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 464
    const-string v0, "tt_materialMeta"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "materialMeta"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v0, "tt_splash"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has_ad_cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const-string v0, "tt_splash"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has_video_ad_cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v0, "tt_splash"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expiration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string v0, "tt_splash"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expiration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 472
    :cond_87
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_materialMeta"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 473
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "materialMeta"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 474
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_splash"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 475
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has_ad_cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 476
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has_video_ad_cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 477
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expiration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 478
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expiration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 479
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 480
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_7
.end method
