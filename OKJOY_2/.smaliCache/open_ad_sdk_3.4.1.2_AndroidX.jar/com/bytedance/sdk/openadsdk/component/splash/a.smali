.class Lcom/bytedance/sdk/openadsdk/component/splash/a;
.super Ljava/lang/Object;
.source "SplashAdCacheManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/al$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/splash/a$a;,
        Lcom/bytedance/sdk/openadsdk/component/splash/a$d;,
        Lcom/bytedance/sdk/openadsdk/component/splash/a$c;,
        Lcom/bytedance/sdk/openadsdk/component/splash/a$f;,
        Lcom/bytedance/sdk/openadsdk/component/splash/a$e;,
        Lcom/bytedance/sdk/openadsdk/component/splash/a$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Integer;

.field private static final b:Ljava/lang/Integer;

.field private static final c:Ljava/lang/Integer;

.field private static volatile d:Lcom/bytedance/sdk/openadsdk/component/splash/a;


# instance fields
.field private e:Landroid/content/Context;

.field private final f:Lcom/bytedance/sdk/openadsdk/utils/al;

.field private final g:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/openadsdk/component/splash/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/openadsdk/component/splash/a$d;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/bytedance/sdk/openadsdk/component/splash/a$e;

.field private j:Lcom/bytedance/sdk/openadsdk/component/splash/a$f;

.field private k:J

.field private l:J

.field private m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private n:Lcom/bytedance/sdk/openadsdk/component/splash/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 95
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a:Ljava/lang/Integer;

    .line 96
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b:Ljava/lang/Integer;

    .line 97
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->c:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/al;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/utils/al;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/openadsdk/utils/al$a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->f:Lcom/bytedance/sdk/openadsdk/utils/al;

    .line 105
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->g:Ljava/util/WeakHashMap;

    .line 106
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->h:Ljava/util/WeakHashMap;

    .line 716
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->k:J

    .line 717
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->l:J

    .line 718
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 117
    if-eqz p1, :cond_32

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->e:Landroid/content/Context;

    .line 120
    :cond_32
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/a;J)J
    .registers 3

    .line 69
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->k:J

    return-wide p1
.end method

.method static a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/splash/a;
    .registers 3

    .line 123
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->d:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    if-nez v0, :cond_17

    .line 124
    const-class v0, Lcom/bytedance/sdk/openadsdk/component/splash/a;

    monitor-enter v0

    .line 125
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/component/splash/a;->d:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    if-nez v1, :cond_12

    .line 126
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/component/splash/a;->d:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    .line 128
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 130
    :cond_17
    :goto_17
    sget-object p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->d:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/a;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/a;
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Lcom/bytedance/sdk/openadsdk/utils/al;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->f:Lcom/bytedance/sdk/openadsdk/utils/al;

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/a;Lcom/bytedance/sdk/openadsdk/core/d/a;)Ljava/lang/String;
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/d/a;)Ljava/lang/String;
    .registers 5

    .line 1115
    const-string v0, ""

    if-nez p1, :cond_5

    .line 1116
    return-object v0

    .line 1119
    :cond_5
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_50

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_16

    goto :goto_50

    .line 1123
    :cond_16
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 1125
    if-nez p1, :cond_24

    .line 1126
    return-object v0

    .line 1129
    :cond_24
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->V()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v2

    .line 1130
    if-nez v2, :cond_48

    .line 1131
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->Z()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_47

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->Z()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3b

    goto :goto_47

    .line 1134
    :cond_3b
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->Z()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/d/k;

    goto :goto_48

    .line 1132
    :cond_47
    :goto_47
    return-object v0

    .line 1136
    :cond_48
    :goto_48
    if-nez v2, :cond_4b

    .line 1137
    return-object v0

    .line 1139
    :cond_4b
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1120
    :cond_50
    :goto_50
    return-object v0
.end method

.method private a(IJ)V
    .registers 13

    .line 196
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "has_ad_cache"

    const-wide/16 v3, 0x3e8

    const-string v5, "update"

    const-string v6, "expiration"

    const-string v7, "tt_splash"

    if-eqz v0, :cond_5f

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {v7, v0, p2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 198
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    div-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {v7, p2, p3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 199
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v7, p1, p2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 200
    return-void

    .line 202
    :cond_5f
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b()Landroid/content/Context;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 203
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 204
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    div-long/2addr v5, v3

    invoke-interface {p2, p3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 206
    invoke-interface {p2, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 207
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 208
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/splash/a;Lcom/bytedance/sdk/openadsdk/core/d/a;)I
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b(Lcom/bytedance/sdk/openadsdk/core/d/a;)I

    move-result p0

    return p0
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/core/d/a;)I
    .registers 5

    .line 1143
    const/4 v0, -0x1

    if-nez p1, :cond_4

    .line 1144
    return v0

    .line 1147
    :cond_4
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4f

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_15

    goto :goto_4f

    .line 1151
    :cond_15
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 1153
    if-nez p1, :cond_23

    .line 1154
    return v0

    .line 1157
    :cond_23
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->V()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v2

    .line 1158
    if-nez v2, :cond_47

    .line 1159
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->Z()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_46

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->Z()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3a

    goto :goto_46

    .line 1162
    :cond_3a
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->Z()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/d/k;

    goto :goto_47

    .line 1160
    :cond_46
    :goto_46
    return v0

    .line 1164
    :cond_47
    :goto_47
    if-nez v2, :cond_4a

    .line 1165
    return v0

    .line 1167
    :cond_4a
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->b()I

    move-result p1

    return p1

    .line 1148
    :cond_4f
    :goto_4f
    return v0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/splash/a;J)J
    .registers 3

    .line 69
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->l:J

    return-wide p1
.end method

.method private b()Landroid/content/Context;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->e:Landroid/content/Context;

    if-eqz v0, :cond_5

    goto :goto_9

    :cond_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    :goto_9
    return-object v0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Lcom/bytedance/sdk/openadsdk/component/splash/a$a;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->n:Lcom/bytedance/sdk/openadsdk/component/splash/a$a;

    return-object p0
.end method

.method private c(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/m;)V
    .registers 6

    .line 721
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 722
    const-string p1, "splashLoad"

    const-string p2, "\u5df2\u5728\u9884\u52a0\u8f7d\u5f00\u5c4f\u5e7f\u544a....\u4e0d\u518d\u53d1\u51fa"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    return-void

    .line 725
    :cond_11
    const/4 v0, 0x4

    .line 728
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 729
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedWidth()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2e

    :cond_29
    if-eqz p2, :cond_2e

    .line 730
    const/4 v1, 0x2

    iput v1, p2, Lcom/bytedance/sdk/openadsdk/core/d/m;->e:I

    .line 734
    :cond_2e
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->f()Lcom/bytedance/sdk/openadsdk/core/q;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/a;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    invoke-interface {v1, p1, p2, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/m;ILcom/bytedance/sdk/openadsdk/core/q$b;)V

    .line 832
    return-void
.end method

.method private c(Lcom/bytedance/sdk/openadsdk/core/d/p;)V
    .registers 3

    .line 183
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->j:Lcom/bytedance/sdk/openadsdk/component/splash/a$f;

    if-nez v0, :cond_c

    .line 184
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$f;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a$f;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/a;Lcom/bytedance/sdk/openadsdk/core/d/p;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->j:Lcom/bytedance/sdk/openadsdk/component/splash/a$f;

    goto :goto_f

    .line 186
    :cond_c
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a$f;->a(Lcom/bytedance/sdk/openadsdk/core/d/p;)V

    .line 189
    :goto_f
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->j:Lcom/bytedance/sdk/openadsdk/component/splash/a$f;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/Runnable;I)V

    .line 190
    return-void
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Landroid/content/Context;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->e:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/component/splash/a;)J
    .registers 3

    .line 69
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->k:J

    return-wide v0
.end method

.method private e(Ljava/lang/String;)Ljava/lang/Runnable;
    .registers 3

    .line 265
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->i:Lcom/bytedance/sdk/openadsdk/component/splash/a$e;

    if-nez v0, :cond_c

    .line 266
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$e;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a$e;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->i:Lcom/bytedance/sdk/openadsdk/component/splash/a$e;

    goto :goto_f

    .line 268
    :cond_c
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a$e;->a(Lcom/bytedance/sdk/openadsdk/component/splash/a$e;Ljava/lang/String;)V

    .line 270
    :goto_f
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->i:Lcom/bytedance/sdk/openadsdk/component/splash/a$e;

    return-object p1
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/component/splash/a;)J
    .registers 3

    .line 69
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->l:J

    return-wide v0
.end method

.method private f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/a;
    .registers 7

    .line 691
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 692
    return-object v1

    .line 695
    :cond_8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const-string v2, "materialMeta"

    const-string v3, "tt_materialMeta"

    if-eqz v0, :cond_28

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_46

    .line 698
    :cond_28
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b()Landroid/content/Context;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 699
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 702
    :goto_46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 704
    :try_start_4c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r$a;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/r$a;

    move-result-object p1

    .line 707
    if-eqz p1, :cond_5e

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/r$a;->h:Lcom/bytedance/sdk/openadsdk/core/d/a;

    if-eqz v0, :cond_5e

    .line 708
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/r$a;->h:Lcom/bytedance/sdk/openadsdk/core/d/a;
    :try_end_5d
    .catch Lorg/json/JSONException; {:try_start_4c .. :try_end_5d} :catch_5f

    return-object p1

    .line 711
    :cond_5e
    goto :goto_60

    .line 710
    :catch_5f
    move-exception p1

    .line 713
    :cond_60
    :goto_60
    return-object v1
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Ljava/lang/String;
    .registers 4

    .line 359
    if-eqz p1, :cond_38

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_38

    .line 363
    :cond_17
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->i()Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/t;->l()Ljava/lang/String;

    move-result-object v1

    .line 365
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->d(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 360
    :cond_38
    :goto_38
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 369
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 370
    return-object v1

    .line 373
    :cond_8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 374
    :cond_12
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result p3

    invoke-virtual {p0, p1, p3}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 375
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getVideoPath  cacheDirPath "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "splashLoadAd"

    invoke-static {v0, p3}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->e:Landroid/content/Context;

    invoke-static {p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 377
    if-eqz p1, :cond_69

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_69

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p2

    if-eqz p2, :cond_69

    .line 378
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getVideoPath  file.getAbsolutePath() "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 381
    :cond_69
    return-object v1
.end method

.method public a(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5

    .line 340
    const-string v0, "/"

    if-eqz p2, :cond_1c

    .line 341
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "splash_video_cache_"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_33

    .line 343
    :cond_1c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/splash_video_cache_"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 345
    :goto_33
    return-object p1
.end method

.method a()V
    .registers 5

    .line 494
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_39

    const-string v2, "tt_splash"

    const-string v3, "tt_materialMeta"

    if-eqz v1, :cond_12

    .line 495
    :try_start_b
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;)V

    .line 496
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;)V

    goto :goto_38

    .line 498
    :cond_12
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 499
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 500
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 501
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_38
    .catchall {:try_start_b .. :try_end_38} :catchall_39

    .line 504
    :goto_38
    goto :goto_3a

    .line 503
    :catchall_39
    move-exception v1

    .line 509
    :goto_3a
    :try_start_3a
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 510
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v1

    if-nez v1, :cond_5f

    :cond_4c
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_5f

    .line 512
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    goto :goto_67

    .line 514
    :cond_5f
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 517
    :goto_67
    nop

    .line 518
    nop

    .line 520
    if-eqz v1, :cond_92

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_92

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_92

    .line 521
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/splash/a$2;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/a;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 532
    if-eqz v1, :cond_92

    array-length v2, v1

    if-lez v2, :cond_92

    .line 533
    array-length v2, v1

    :goto_86
    if-ge v0, v2, :cond_92

    aget-object v3, v1, v0
    :try_end_8a
    .catchall {:try_start_3a .. :try_end_8a} :catchall_93

    .line 535
    :try_start_8a
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/l;->c(Ljava/io/File;)V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_8e

    .line 537
    goto :goto_8f

    .line 536
    :catchall_8e
    move-exception v3

    .line 533
    :goto_8f
    add-int/lit8 v0, v0, 0x1

    goto :goto_86

    .line 543
    :cond_92
    goto :goto_94

    .line 542
    :catchall_93
    move-exception v0

    .line 544
    :goto_94
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .registers 9

    .line 388
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "OnLoadCacheCallback is null: "

    const/4 v4, 0x1

    const-string v5, "SplashAdCacheManager"

    if-ne v0, v4, :cond_53

    .line 389
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->g:Ljava/util/WeakHashMap;

    sget-object v6, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v6}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$c;

    .line 390
    if-eqz v0, :cond_36

    .line 391
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v6, :cond_2e

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v6, v6, Lcom/bytedance/sdk/openadsdk/core/d/p;

    if-eqz v6, :cond_2e

    .line 392
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/d/p;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a$c;->a(Lcom/bytedance/sdk/openadsdk/core/d/p;)V

    .line 393
    const-string p1, "\u7f13\u5b58\u53cd\u5e8f\u5217\u5316\u6210\u529f"

    invoke-static {v5, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36

    .line 395
    :cond_2e
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a$c;->a()V

    .line 396
    const-string p1, "\u7f13\u5b58\u53cd\u5e8f\u5217\u5316\u5931\u8d25"

    invoke-static {v5, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :cond_36
    :goto_36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-nez v0, :cond_42

    move v2, v4

    :cond_42
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->f:Lcom/bytedance/sdk/openadsdk/utils/al;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 401
    goto :goto_ba

    :cond_53
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_a0

    .line 402
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->g:Ljava/util/WeakHashMap;

    sget-object v6, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v6}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$c;

    .line 403
    if-eqz v0, :cond_83

    .line 404
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v6, :cond_7b

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v6, v6, Lcom/bytedance/sdk/openadsdk/core/d/p;

    if-eqz v6, :cond_7b

    .line 405
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/d/p;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a$c;->a(Lcom/bytedance/sdk/openadsdk/core/d/p;)V

    .line 406
    const-string p1, "\u89c6\u9891\u7269\u6599\u7f13\u5b58\u53cd\u5e8f\u5217\u5316\u6210\u529f"

    invoke-static {v5, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_83

    .line 408
    :cond_7b
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a$c;->a()V

    .line 409
    const-string p1, "\u89c6\u9891\u7269\u6599\u7f13\u5b58\u53cd\u5e8f\u5217\u5316\u5931\u8d25"

    invoke-static {v5, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_83
    :goto_83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-nez v0, :cond_8f

    move v2, v4

    :cond_8f
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->f:Lcom/bytedance/sdk/openadsdk/utils/al;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_b9

    .line 414
    :cond_a0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_b9

    .line 416
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->h:Ljava/util/WeakHashMap;

    if-nez p1, :cond_aa

    .line 417
    return-void

    .line 419
    :cond_aa
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->c:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/component/splash/a$d;

    .line 420
    if-nez p1, :cond_b5

    .line 421
    return-void

    .line 423
    :cond_b5
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a$d;->a()V

    goto :goto_ba

    .line 414
    :cond_b9
    :goto_b9
    nop

    .line 425
    :goto_ba
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/m;)V
    .registers 5

    .line 838
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->t()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 839
    if-eqz p1, :cond_21

    .line 840
    if-nez p2, :cond_14

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/d/m;

    invoke-direct {p2}, Lcom/bytedance/sdk/openadsdk/core/d/m;-><init>()V

    goto :goto_18

    :cond_14
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/m;->a()Lcom/bytedance/sdk/openadsdk/core/d/m;

    move-result-object p2

    .line 841
    :goto_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/bytedance/sdk/openadsdk/core/d/m;->f:J

    .line 842
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->c(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/m;)V

    .line 845
    :cond_21
    return-void
.end method

.method a(Lcom/bytedance/sdk/openadsdk/core/d/p;)V
    .registers 5

    .line 143
    if-nez p1, :cond_3

    .line 144
    return-void

    .line 147
    :cond_3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->c(Lcom/bytedance/sdk/openadsdk/core/d/p;)I

    move-result v0

    .line 148
    if-gtz v0, :cond_a

    .line 149
    return-void

    .line 152
    :cond_a
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->a()Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->an()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(IJ)V

    .line 154
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->c(Lcom/bytedance/sdk/openadsdk/core/d/p;)V

    .line 155
    return-void
.end method

.method a(Lcom/bytedance/sdk/openadsdk/core/d/p;Lcom/bytedance/sdk/openadsdk/component/splash/a$d;)V
    .registers 5

    .line 158
    if-nez p2, :cond_3

    .line 159
    return-void

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->h:Ljava/util/WeakHashMap;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/component/splash/a;->c:Ljava/lang/Integer;

    invoke-virtual {v0, v1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/p;)V

    .line 163
    return-void
.end method

.method public a(Ljava/io/File;)V
    .registers 5

    .line 350
    :try_start_0
    const-string v0, "splashLoadAd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SplashAdCacheManager trimFileCache "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->q()Lcom/bytedance/sdk/openadsdk/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/b/c;->a(Ljava/io/File;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_27} :catch_28

    .line 354
    goto :goto_45

    .line 352
    :catch_28
    move-exception p1

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trimFileCache IOException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SplashAdCacheManager"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :goto_45
    return-void
.end method

.method a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/component/splash/a$c;)V
    .registers 5

    .line 211
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->g:Ljava/util/WeakHashMap;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 213
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->f:Lcom/bytedance/sdk/openadsdk/utils/al;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/utils/al;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 214
    const/4 p2, 0x2

    iput p2, p1, Landroid/os/Message;->what:I

    .line 215
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->f:Lcom/bytedance/sdk/openadsdk/utils/al;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendMessage(Landroid/os/Message;)Z

    .line 216
    return-void

    .line 218
    :cond_1c
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/splash/a$1;

    invoke-direct {p2, p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/a;Ljava/lang/String;)V

    const/16 p1, 0xa

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/Runnable;I)V

    .line 245
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/AdSlot;Z)Z
    .registers 9

    .line 434
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/splash/a;

    move-result-object v0

    .line 435
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/component/splash/a$b;

    move-result-object v0

    .line 437
    if-eqz p2, :cond_56

    .line 439
    iget-boolean p2, v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$b;->a:Z

    if-eqz p2, :cond_56

    .line 441
    :try_start_14
    iget-wide v1, v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$b;->d:J

    iget-wide v3, v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$b;->b:J

    sub-long/2addr v1, v3

    .line 443
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 444
    const-string v3, "available_type"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 445
    const-string v3, "creative_timeout_duration"

    const-wide/16 v4, 0xe10

    div-long/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 447
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b()Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v1

    const/4 v2, 0x4

    .line 448
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/g/a/c;->a(I)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v1

    .line 449
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    .line 450
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    .line 452
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a;->a()Lcom/bytedance/sdk/openadsdk/g/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/g/a;->n(Lcom/bytedance/sdk/openadsdk/g/a/c;)V
    :try_end_54
    .catchall {:try_start_14 .. :try_end_54} :catchall_55

    .line 454
    goto :goto_56

    .line 453
    :catchall_55
    move-exception p1

    .line 459
    :cond_56
    :goto_56
    iget-boolean p1, v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$b;->a:Z

    return p1
.end method

.method a(Ljava/lang/String;)Z
    .registers 6

    .line 274
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 275
    return v1

    .line 277
    :cond_8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const-string v2, "has_ad_cache"

    const-string v3, "tt_splash"

    if-eqz v0, :cond_28

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 280
    :cond_28
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 281
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/m;)V
    .registers 5

    .line 877
    if-eqz p1, :cond_17

    if-nez p2, :cond_5

    goto :goto_17

    .line 880
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->n:Lcom/bytedance/sdk/openadsdk/component/splash/a$a;

    if-nez v0, :cond_11

    .line 881
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/a$1;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->n:Lcom/bytedance/sdk/openadsdk/component/splash/a$a;

    .line 883
    :cond_11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->n:Lcom/bytedance/sdk/openadsdk/component/splash/a$a;

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->a(Lcom/bytedance/sdk/openadsdk/component/splash/a$a;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/m;)V

    .line 884
    return-void

    .line 878
    :cond_17
    :goto_17
    return-void
.end method

.method b(Lcom/bytedance/sdk/openadsdk/core/d/p;)V
    .registers 7

    .line 166
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->c(Lcom/bytedance/sdk/openadsdk/core/d/p;)I

    move-result p1

    .line 167
    if-gtz p1, :cond_7

    .line 168
    return-void

    .line 170
    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "has_video_ad_cache"

    const-string v3, "tt_splash"

    if-eqz v0, :cond_2b

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v3, p1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_50

    .line 173
    :cond_2b
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b()Landroid/content/Context;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 174
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 177
    :goto_50
    return-void
.end method

.method b(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/component/splash/a$c;)V
    .registers 5

    .line 253
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 254
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/component/splash/a$c;->a()V

    .line 255
    return-void

    .line 257
    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a;->g:Ljava/util/WeakHashMap;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->e(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p1

    const/16 p2, 0xa

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/Runnable;I)V

    .line 259
    return-void
.end method

.method b(Ljava/lang/String;)Z
    .registers 6

    .line 285
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 286
    return v1

    .line 288
    :cond_8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const-string v2, "has_video_ad_cache"

    const-string v3, "tt_splash"

    if-eqz v0, :cond_28

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 291
    :cond_28
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 292
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/component/splash/a$b;
    .registers 15

    .line 302
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$b;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a$b;-><init>()V

    .line 303
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 304
    return-object v0

    .line 306
    :cond_c
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v1

    const/4 v2, 0x1

    const-wide/16 v3, 0x3e8

    const-string v5, "update"

    const-string v6, "expiration"

    const/4 v7, 0x0

    const-string v8, "tt_splash"

    const-wide/16 v9, 0x0

    if-eqz v1, :cond_60

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1, v9, v10}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v11

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1, v9, v10}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v5

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    div-long/2addr v8, v3

    .line 311
    cmp-long p1, v8, v5

    if-ltz p1, :cond_57

    cmp-long p1, v8, v11

    if-ltz p1, :cond_56

    goto :goto_57

    :cond_56
    move v2, v7

    :cond_57
    :goto_57
    iput-boolean v2, v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$b;->a:Z

    .line 312
    iput-wide v5, v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$b;->b:J

    .line 313
    iput-wide v11, v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$b;->c:J

    .line 314
    iput-wide v8, v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$b;->d:J

    .line 316
    return-object v0

    .line 318
    :cond_60
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v8, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 319
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    .line 320
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    div-long/2addr v8, v3

    .line 323
    cmp-long p1, v8, v5

    if-ltz p1, :cond_a1

    cmp-long p1, v8, v11

    if-ltz p1, :cond_a0

    goto :goto_a1

    :cond_a0
    move v2, v7

    :cond_a1
    :goto_a1
    iput-boolean v2, v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$b;->a:Z

    .line 324
    iput-wide v5, v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$b;->b:J

    .line 325
    iput-wide v11, v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$b;->c:J

    .line 326
    iput-wide v8, v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$b;->d:J

    .line 328
    return-object v0
.end method

.method d(Ljava/lang/String;)V
    .registers 10

    .line 466
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 467
    return-void

    .line 469
    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const-string v1, "has_video_ad_cache"

    const-string v2, "has_ad_cache"

    const-string v3, "materialMeta"

    const-string v4, "tt_materialMeta"

    const-string v5, "expiration"

    const-string v6, "tt_splash"

    if-eqz v0, :cond_7e

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    return-void

    .line 478
    :cond_7e
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b()Landroid/content/Context;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 479
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 480
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 481
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 482
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 483
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 484
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 485
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 486
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 487
    return-void
.end method
