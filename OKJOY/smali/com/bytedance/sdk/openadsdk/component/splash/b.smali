.class public Lcom/bytedance/sdk/openadsdk/component/splash/b;
.super Ljava/lang/Object;
.source "SplashAdLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/ak$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/splash/b$a;
    }
.end annotation


# static fields
.field private static j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/bytedance/sdk/openadsdk/component/splash/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private b:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field private c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

.field private final d:Lcom/bytedance/sdk/openadsdk/core/p;

.field private e:Landroid/content/Context;

.field private final f:Lcom/bytedance/sdk/openadsdk/utils/ak;

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Lcom/bytedance/sdk/openadsdk/component/splash/e;

.field private i:Lcom/bytedance/sdk/openadsdk/component/splash/e;

.field private k:Lcom/bytedance/sdk/openadsdk/component/splash/a;

.field private l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private n:Z

.field private o:J

.field private p:J

.field private q:J

.field private final r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final s:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private t:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private u:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private v:Lcom/bytedance/sdk/openadsdk/component/splash/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->j:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 89
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 98
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->q:J

    .line 101
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 657
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 659
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 109
    if-eqz p1, :cond_44

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->e:Landroid/content/Context;

    .line 112
    :cond_44
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->f()Lcom/bytedance/sdk/openadsdk/core/p;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->d:Lcom/bytedance/sdk/openadsdk/core/p;

    .line 113
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/ak;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/utils/ak;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/openadsdk/utils/ak$a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->f:Lcom/bytedance/sdk/openadsdk/utils/ak;

    .line 114
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->e:Landroid/content/Context;

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->e:Landroid/content/Context;

    :goto_5b
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/splash/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->k:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    .line 115
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->u()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->n:Z

    .line 116
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->j:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    return-void

    .line 114
    :cond_71
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    goto :goto_5b
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/b;J)J
    .registers 4

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->o:J

    return-wide p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Lcom/bytedance/sdk/openadsdk/component/splash/a;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->k:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/splash/b;
    .registers 2

    .prologue
    .line 105
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/e;
    .registers 2

    .prologue
    .line 49
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->i:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    return-object p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/core/d/n;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/component/splash/e;
    .registers 4

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/n;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/component/splash/e;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/d/n;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/component/splash/e;
    .registers 9

    .prologue
    .line 794
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/n;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 802
    :goto_7
    return-object v0

    .line 796
    :cond_8
    if-eqz p2, :cond_12

    .line 797
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/n;->a()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->d(Z)V

    .line 800
    :cond_12
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/e;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->e:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/n;->a()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v2

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    const-string v5, "splash_ad"

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/splash/e;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V

    .line 801
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->h:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    goto :goto_7
.end method

.method private a(ILcom/bytedance/sdk/openadsdk/core/d/n;)Lcom/bytedance/sdk/openadsdk/f/a/d;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 302
    .line 306
    if-eqz p2, :cond_53

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/n;->a()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 307
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/n;->a()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->M()Ljava/lang/String;

    move-result-object v2

    .line 308
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/n;->a()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v1

    .line 309
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 311
    :try_start_1f
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 312
    const-string v4, "req_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_29} :catch_51

    move-result-object v0

    .line 318
    :cond_2a
    :goto_2a
    if-nez v0, :cond_30

    .line 319
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/d/l;->a:Ljava/lang/String;

    .line 322
    :cond_30
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a/d;->b()Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v3

    .line 323
    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/f/a/d;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    .line 324
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->a(I)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 325
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/f/a/d;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    .line 327
    if-eqz v2, :cond_4b

    .line 328
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/f/a/d;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 331
    :cond_4b
    if-eqz v1, :cond_50

    .line 332
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->h(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 336
    :cond_50
    return-object v0

    .line 313
    :catch_51
    move-exception v3

    goto :goto_2a

    :cond_53
    move-object v1, v0

    move-object v2, v0

    goto :goto_2a
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/core/d/n;)Lcom/bytedance/sdk/openadsdk/f/a/d;
    .registers 4

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(ILcom/bytedance/sdk/openadsdk/core/d/n;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 167
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    if-nez v0, :cond_7

    .line 206
    :goto_6
    return-void

    .line 170
    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->r()I

    move-result v0

    packed-switch v0, :pswitch_data_8c

    goto :goto_6

    .line 172
    :pswitch_13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 173
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 175
    const-string v0, "splashLoadAd"

    const-string v1, "splash_type_real_time=====\u53ea\u8d70\u5b9e\u65f6"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    goto :goto_6

    .line 179
    :pswitch_2a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 180
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 181
    const-string v0, "splashLoadAd"

    const-string v1, "splash_type_priorrity_cache_defualt=====\u4f18\u5148\u7f13\u5b58"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->b()Z

    move-result v0

    .line 183
    if-nez v0, :cond_4e

    .line 184
    const-string v0, "splashLoadAd"

    const-string v1, "splash_type_priorrity_cache_defualt=====\u4f18\u5148\u7f13\u5b58--->\u6267\u884c\u7f13\u5b58\u5931\u8d25\uff0c\u8fdb\u884c\u7f51\u7edc\u8bf7\u6c42"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    goto :goto_6

    .line 188
    :cond_4e
    const-string v0, "splashLoadAd"

    const-string v1, "splash_type_priorrity_cache_defualt=====\u4f18\u5148\u7f13\u5b58--->\u6267\u884c\u7f13\u5b58\u6210\u529f\uff01\uff01"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 192
    :pswitch_56
    const-string v0, "splashLoadAd"

    const-string v1, "splash_type_concurrent_priority_real_time=====\u5e76\u53d1\u8bf7\u6c42\u5e7f\u544a\u548ccheck\u7f13\u5b58\uff0c\u4f18\u5148\u4f7f\u7528\u5b9e\u65f6"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 194
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 195
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 196
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->b()Z

    goto :goto_6

    .line 200
    :pswitch_70
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 201
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 202
    const-string v0, "splashLoadAd"

    const-string v1, "splash_type_concurrent_first_come_first_use=====\u5e76\u53d1\u8bf7\u6c42\u5e7f\u544a\u548ccheck\u7f13\u5b58\uff0c\u8c01\u5148\u5230\u7528\u8c01"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 204
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->b()Z

    goto/16 :goto_6

    .line 170
    nop

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_13
        :pswitch_2a
        :pswitch_56
        :pswitch_70
    .end packed-switch
.end method

.method private declared-synchronized a(ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/d/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V
    .registers 14

    .prologue
    const/4 v1, 0x0

    const/16 v7, 0x3a9b

    const/16 v6, 0x3a99

    const/4 v0, 0x1

    const/16 v5, 0x3a98

    .line 674
    monitor-enter p0

    if-ne p1, v5, :cond_3a

    .line 675
    :try_start_b
    const-string v2, "splashLoadAd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "splashAdTryCallback start....\u5b9e\u65f6\u8bf7\u6c42\u6765\u4e86\uff01="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 687
    :cond_29
    :goto_29
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_96

    .line 688
    const-string v0, "splashLoadAd"

    const-string v1, "splashAdTryCallback mSplashAdHasLoad==true \u5df2\u6210\u529f\u56de\u8c03\uff0c\u4e0d\u518d\u6267\u884c\u56de\u8c03\u64cd\u4f5c\uff01\uff01\uff01"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_b .. :try_end_38} :catchall_5b

    .line 790
    :cond_38
    :goto_38
    monitor-exit p0

    return-void

    .line 677
    :cond_3a
    if-ne p1, v6, :cond_5e

    .line 678
    :try_start_3c
    const-string v2, "splashLoadAd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "splashAdTryCallback start....\u7f13\u5b58\u8bf7\u6c42\u6765\u4e86\uff01="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_5a
    .catchall {:try_start_3c .. :try_end_5a} :catchall_5b

    goto :goto_29

    .line 674
    :catchall_5b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 680
    :cond_5e
    const/16 v2, 0x3a9c

    if-ne p1, v2, :cond_7b

    .line 681
    :try_start_62
    const-string v2, "splashLoadAd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "splashAdTryCallback start....\u8d85\u65f6\u8bf7\u6c42\u6765\u4e86\uff01="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 683
    :cond_7b
    if-ne p1, v7, :cond_29

    .line 684
    const-string v2, "splashLoadAd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "splashAdTryCallback start....\u6e32\u67d3\u8d85\u65f6\u8bf7\u6c42\u6765\u4e86\uff01="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 693
    :cond_96
    if-nez p4, :cond_164

    .line 694
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_a8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_15c

    .line 697
    :cond_a8
    if-ne p1, v5, :cond_f0

    .line 698
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_bb

    .line 699
    const-string v0, "splashLoadAd"

    const-string v1, "splashAdTryCallback \u5b9e\u65f6\u8bf7\u6c42\u5931\u8d25\uff08\u5b9e\u65f6\u5148\u56de\uff0c\u7f13\u5b58\u8fd8\u6ca1\u56de\uff09...\u7b49\u5f85\u7f13\u5b58"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_38

    .line 702
    :cond_bb
    const-string v0, "splashLoadAd"

    const-string v1, "splashAdTryCallback \u5b9e\u65f6\u8bf7\u6c42\u5931\u8d25\uff08\u7f13\u5b58\u5148\u56de\uff0c\u5b9e\u65f6\u540e\u56de\uff09...."

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_e4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_e4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->v:Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    if-eqz v0, :cond_e4

    .line 705
    const-string v0, "splashLoadAd"

    const-string v1, "splashAdTryCallback \u5b9e\u65f6\u8bf7\u6c42\u5931\u8d25\uff08\u7f13\u5b58\u5148\u56de\uff0c\u5b9e\u65f6\u540e\u56de\uff09....\u5c1d\u8bd5\u56de\u8c03\u7f13\u5b58\u6210\u529f\uff01"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->v:Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b$a;)V

    goto/16 :goto_38

    .line 710
    :cond_e4
    const-string v0, "splashLoadAd"

    const-string v1, "splashAdTryCallback \u5b9e\u65f6\u8bf7\u6c42\u5931\u8d25\uff08\u7f13\u5b58\u5148\u56de\uff0c\u5b9e\u65f6\u540e\u56de\uff09....\u5c1d\u8bd5\u56de\u8c03\u7f13\u5b58\u5931\u8d25\uff01"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    :cond_eb
    :goto_eb
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b$a;)V

    goto/16 :goto_38

    .line 715
    :cond_f0
    if-ne p1, v6, :cond_10b

    .line 717
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_103

    .line 718
    const-string v0, "splashLoadAd"

    const-string v1, "splashAdTryCallback \u7f13\u5b58\u8bf7\u6c42\u5931\u8d25(\u7f13\u5b58\u5148\u56de\u6765)\uff0c\u5b9e\u65f6\u8fd8\u6ca1\u6709\u56de\u8c03....\u7b49\u5f85...\uff01"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_38

    .line 721
    :cond_103
    const-string v0, "splashLoadAd"

    const-string v1, "splashAdTryCallback \u7f13\u5b58\u8bf7\u6c42\u5931\u8d25(\u7f13\u5b58\u5148\u56de\u6765)\uff0c\u5b9e\u65f6\u4e5f\u5931\u8d25....\u76f4\u63a5\u56de\u8c03\u51fa\u53bb\uff01"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_eb

    .line 725
    :cond_10b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_eb

    const/16 v0, 0x3a9c

    if-ne p1, v0, :cond_eb

    .line 726
    const-string v0, "splashLoadAd"

    const-string v1, "\u5982\u679c\u5b9e\u65f6\u5df2\u8d85\u65f6\uff0cREQUEST_TYPE_TIMEOUT--->>>>"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_154

    .line 729
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_eb

    .line 730
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_14c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_14c

    .line 731
    const-string v0, "splashLoadAd"

    const-string v1, "\u5982\u679c\u5b9e\u65f6\u5df2\u8d85\u65f6\uff0c\u7f13\u5b58\u6210\u529f\u76f4\u63a5\u56de\u8c03"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->v:Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b$a;)V

    goto/16 :goto_38

    .line 737
    :cond_14c
    const-string v0, "splashLoadAd"

    const-string v1, "\u5982\u679c\u5b9e\u65f6\u5df2\u8d85\u65f6\uff0c\u76f4\u63a5\u5931\u8d25\u56de\u8c03"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_eb

    .line 743
    :cond_154
    const-string v0, "splashLoadAd"

    const-string v1, "\u5982\u679c\u5b9e\u65f6\u5df2\u8d85\u65f6\uff0c\u7f13\u5b58\u4e5f\u5931\u8d25\u76f4\u63a5\u56de\u8c03\uff0c\u76f4\u63a5\u5931\u8d25\u56de\u8c03"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_eb

    .line 747
    :cond_15c
    const-string v0, "splashLoadAd"

    const-string v1, "\u666e\u901a\u7c7b\u578b\u8d70\u8fd9\uff0c\u76f4\u63a5\u5931\u8d25\u56de\u8c03"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_eb

    .line 757
    :cond_164
    if-nez p5, :cond_171

    if-eqz p3, :cond_171

    if-eqz p4, :cond_171

    .line 758
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/d/n;->b()[B

    move-result-object v2

    invoke-virtual {p4, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a([B)V

    .line 762
    :cond_171
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1ca

    if-ne p1, v6, :cond_1ca

    .line 763
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1ad

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1ad

    .line 765
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1ad

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1ad

    .line 766
    const-string v0, "splashLoadAd"

    const-string v1, "\u7f13\u5b58\u8d4b\u503c\u7ed9resultTemp"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->v:Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    .line 768
    const-string v0, "splashLoadAd"

    const-string v1, "\u5982\u679c\u7f13\u5b58\u5148\u56de\u6765,\u5b9e\u65f6\u8fd8\u6ca1\u6709\u56de\u6765\uff0c\u7b49\u5f85\u5b9e\u65f6\u56de\u6765"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_38

    .line 774
    :cond_1ad
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1ca

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->i:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    if-eqz v2, :cond_1ca

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->i:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a()Z

    move-result v2

    if-eqz v2, :cond_1ca

    .line 775
    const-string v0, "splashLoadAd"

    const-string v1, "\u6b64\u65f6\u5b9e\u65f6\u53ef\u80fd\u5728\u6e32\u67d3\uff0c\u907f\u514d\u7f13\u5b58\u7684\u6e32\u67d3\u6210\u529f\u540e\u76f4\u63a5\u88ab\u56de\u8c03"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_38

    .line 780
    :cond_1ca
    if-ne p1, v5, :cond_1d3

    .line 781
    const-string v2, "splashLoadAd"

    const-string v3, "splashAdTryCallback \u5b9e\u65f6\u6216\u6e32\u67d3\u6210\u529f\u56de\u8c03......\uff01"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    :cond_1d3
    const-string v3, "splashLoadAd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "splashAdTryCallback..\uff08 \u662f\u5426\u7f13\u5b58\u5df2check\u6210\u529f\uff1a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " || \u662f\u5426\u6e32\u67d3\u8d85\u65f6\uff1a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne p1, v7, :cond_233

    move v2, v0

    :goto_1f3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " || \u662f\u5426\u4e3a\u5b9e\u65f6\u8bf7\u6c42"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ne p1, v5, :cond_235

    :goto_1ff
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uff09 && \u662f\u5426\u6e32\u67d3\u6210\u529f\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_226

    if-eq p1, v5, :cond_226

    if-ne p1, v7, :cond_38

    :cond_226
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 787
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b$a;)V
    :try_end_231
    .catchall {:try_start_62 .. :try_end_231} :catchall_5b

    goto/16 :goto_38

    :cond_233
    move v2, v1

    .line 784
    goto :goto_1f3

    :cond_235
    move v0, v1

    goto :goto_1ff
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 7

    .prologue
    .line 397
    const-string v0, "splashLoadAd"

    const-string v1, "try LoadSplashAdFromNetwork......"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const/4 v0, 0x3

    .line 399
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(ILcom/bytedance/sdk/openadsdk/core/d/n;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v1

    .line 403
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/h/l;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 404
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedWidth()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_29

    .line 405
    :cond_24
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const/4 v3, 0x2

    iput v3, v2, Lcom/bytedance/sdk/openadsdk/core/d/l;->e:I

    .line 408
    :cond_29
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->d:Lcom/bytedance/sdk/openadsdk/core/p;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    new-instance v4, Lcom/bytedance/sdk/openadsdk/component/splash/b$3;

    invoke-direct {v4, p0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/b$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    invoke-interface {v2, p1, v3, v0, v4}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/l;ILcom/bytedance/sdk/openadsdk/core/p$b;)V

    .line 462
    return-void
.end method

.method private declared-synchronized a(Lcom/bytedance/sdk/openadsdk/component/splash/b$a;)V
    .registers 5

    .prologue
    const/4 v2, 0x3

    .line 853
    monitor-enter p0

    :try_start_2
    const-string v0, "splashLoadAd"

    const-string v1, "onCallback ......"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->f()V

    .line 855
    if-nez p1, :cond_1a

    .line 856
    const-string v0, "splashAdListener is null, then return"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;)V

    .line 857
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->j:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_32

    .line 908
    :goto_18
    monitor-exit p0

    return-void

    .line 861
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    if-nez v0, :cond_35

    .line 862
    const-string v0, "splashAdListener is null, then return"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;)V

    .line 863
    iget v0, p1, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;->a:I

    if-ne v0, v2, :cond_2c

    .line 864
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;->e:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    .line 866
    :cond_2c
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->j:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_1a .. :try_end_31} :catchall_32

    goto :goto_18

    .line 853
    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0

    .line 870
    :cond_35
    :try_start_35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_6b

    .line 871
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 881
    iget v0, p1, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;->a:I

    packed-switch v0, :pswitch_data_ac

    .line 895
    const/4 v0, -0x2

    .line 896
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;->onError(ILjava/lang/String;)V

    .line 900
    :goto_52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->f:Lcom/bytedance/sdk/openadsdk/utils/ak;

    if-eqz v0, :cond_62

    .line 902
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->f:Lcom/bytedance/sdk/openadsdk/utils/ak;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->removeMessages(I)V

    .line 903
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->f:Lcom/bytedance/sdk/openadsdk/utils/ak;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->removeMessages(I)V

    .line 906
    :cond_62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    .line 907
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->j:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_18

    .line 873
    :cond_6b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    .line 874
    iget v0, p1, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;->a:I

    if-ne v0, v2, :cond_77

    .line 875
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;->e:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    .line 877
    :cond_77
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->j:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_18

    .line 883
    :pswitch_7d
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object v0

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;->e:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a;->c(Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    .line 884
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;->d:Lcom/bytedance/sdk/openadsdk/TTSplashAd;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;->onSplashAdLoad(Lcom/bytedance/sdk/openadsdk/TTSplashAd;)V

    goto :goto_52

    .line 887
    :pswitch_8e
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object v0

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;->e:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a;->d(Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    .line 888
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    iget v1, p1, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;->b:I

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;->onError(ILjava/lang/String;)V

    goto :goto_52

    .line 891
    :pswitch_a1
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;->e:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    .line 892
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;->onTimeout()V
    :try_end_ab
    .catchall {:try_start_35 .. :try_end_ab} :catchall_32

    goto :goto_52

    .line 881
    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_7d
        :pswitch_8e
        :pswitch_a1
    .end packed-switch
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/d/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 49
    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/d/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/core/d/a;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/a/d;)V
    .registers 4

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/a;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/core/d/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/core/d/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/f/a/d;)V
    .registers 5

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/d/a;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/a/d;)V
    .registers 14

    .prologue
    const/4 v1, 0x0

    .line 466
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->b(Lcom/bytedance/sdk/openadsdk/core/d/a;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez p2, :cond_a

    .line 565
    :cond_9
    :goto_9
    return-void

    .line 471
    :cond_a
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 473
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/k;->D()Lcom/bytedance/sdk/openadsdk/core/d/j;

    move-result-object v0

    .line 474
    if-nez v0, :cond_24

    .line 475
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/k;->F()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/j;

    .line 477
    :cond_24
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Ljava/lang/String;

    move-result-object v6

    .line 478
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/j;->b()I

    move-result v7

    .line 481
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    if-eqz v0, :cond_51

    const/4 v4, 0x1

    .line 482
    :goto_33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->p:J

    .line 483
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->q:J

    .line 486
    if-eqz v4, :cond_42

    const/4 v1, 0x2

    :cond_42
    invoke-static {v3, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;I)V

    .line 489
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/core/d/a;Lcom/bytedance/sdk/openadsdk/core/d/k;ZLcom/bytedance/sdk/openadsdk/f/a/d;Ljava/lang/String;)V

    invoke-static {p2, v6, v7, v0}, Lcom/bytedance/sdk/openadsdk/utils/n;->a(Landroid/content/Context;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/utils/n$a;)V

    goto :goto_9

    :cond_51
    move v4, v1

    .line 481
    goto :goto_33
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/d/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V
    .registers 15

    .prologue
    const/4 v2, 0x4

    const/4 v4, 0x0

    .line 608
    const-string v0, "splashLoadAd"

    const-string v1, "\u6267\u884c checkAdFromServer \u68c0\u6d4b\u7f13\u5b58...."

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/n;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 613
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/n;->a()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    .line 614
    invoke-direct {p0, v2, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(ILcom/bytedance/sdk/openadsdk/core/d/n;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v3

    .line 616
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->f()Lcom/bytedance/sdk/openadsdk/core/p;

    move-result-object v6

    .line 617
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->M()Ljava/lang/String;

    move-result-object v7

    .line 618
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;

    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/component/splash/e;Lcom/bytedance/sdk/openadsdk/f/a/d;Lcom/bytedance/sdk/openadsdk/core/d/n;Ljava/lang/String;)V

    .line 617
    invoke-interface {v6, v7, v8, v0}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/p$a;)V

    .line 654
    :goto_2f
    return-void

    .line 642
    :cond_30
    const-string v0, "splashLoadAd"

    const-string v1, "checkAdFromServer check fail !!!!"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 644
    const-string v0, "splashLoadAd"

    const-string v1, "checkAdFromServer check fail !!!! ---> tryLoadSplashAdFromNetwork !!!"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    goto :goto_2f

    .line 648
    :cond_4a
    invoke-direct {p0, v2, v4}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(ILcom/bytedance/sdk/openadsdk/core/d/n;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v6

    .line 649
    const-string v0, "splashLoadAd"

    const-string v1, "checkAdFromServer check fail !!!! ---> return callback !!!"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const/16 v7, 0x3a99

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object v1, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    move-object v5, p0

    move v6, v7

    move-object v7, v0

    move-object v8, p1

    move-object v9, v4

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/d/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    goto :goto_2f
.end method

.method private declared-synchronized a(Lcom/bytedance/sdk/openadsdk/core/d/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/f/a/d;)V
    .registers 11

    .prologue
    .line 571
    monitor-enter p0

    if-nez p2, :cond_5

    .line 603
    :goto_3
    monitor-exit p0

    return-void

    .line 574
    :cond_5
    :try_start_5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/component/splash/e;Lcom/bytedance/sdk/openadsdk/core/d/n;Lcom/bytedance/sdk/openadsdk/f/a/d;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->renderExpressAd(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    goto :goto_3

    .line 571
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/f/a/d;)V
    .registers 3

    .prologue
    .line 911
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/a;->d(Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    .line 912
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/a;->g(Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    .line 913
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/splash/b;)V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->e()V

    return-void
.end method

.method private b()Z
    .registers 10

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x3a99

    const/4 v5, 0x0

    .line 214
    const-string v1, "splashLoadAd"

    const-string v3, "try checkSpashAdCacheIsValidAndTryShowAd......"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-direct {p0, v7, v5}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(ILcom/bytedance/sdk/openadsdk/core/d/n;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v6

    .line 217
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->k:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5a

    .line 218
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->k:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5a

    .line 219
    const-string v0, "splashLoadAd"

    const-string v1, "\u6ca1\u6709\u7f13\u5b58\u6570\u636e.........."

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 221
    :cond_44
    const/16 v3, -0xc

    .line 222
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    move-object v2, p0

    move v3, v7

    move-object v4, v0

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/d/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    :cond_58
    move v0, v8

    .line 241
    :goto_59
    return v0

    .line 229
    :cond_5a
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->k:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v1, v3, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Z)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 230
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 231
    const-string v0, "splashLoadAd"

    const-string v1, "======== \u7f13\u5b58\u8fc7\u671f ========"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_82

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 233
    :cond_82
    const/16 v3, -0xb

    .line 234
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    move-object v2, p0

    move v3, v7

    move-object v4, v0

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/d/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    :cond_96
    move v0, v8

    .line 236
    goto :goto_59

    .line 240
    :cond_98
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->d()V

    goto :goto_59
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private c()Z
    .registers 3

    .prologue
    .line 245
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->r()I

    move-result v0

    .line 246
    const/4 v1, 0x2

    if-eq v1, v0, :cond_10

    const/4 v1, 0x3

    if-eq v1, v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private d()V
    .registers 4

    .prologue
    .line 252
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->k:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 253
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->k:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/splash/b$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/component/splash/a$b;)V

    .line 299
    :goto_1e
    return-void

    .line 297
    :cond_1f
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->e()V

    goto :goto_1e
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Z
    .registers 2

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->n:Z

    return v0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private e()V
    .registers 4

    .prologue
    .line 340
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->k:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/splash/b$2;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/component/splash/a$b;)V

    .line 390
    return-void
.end method

.method private f()V
    .registers 4

    .prologue
    .line 842
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->k:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    if-eqz v0, :cond_d

    .line 843
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->k:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 845
    :cond_d
    return-void
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Z
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Lcom/bytedance/sdk/openadsdk/AdSlot;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    return-object v0
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lcom/bytedance/sdk/openadsdk/component/splash/b;)J
    .registers 3

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->p:J

    return-wide v0
.end method

.method static synthetic j(Lcom/bytedance/sdk/openadsdk/component/splash/b;)J
    .registers 3

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->q:J

    return-wide v0
.end method

.method static synthetic k(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .registers 10

    .prologue
    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 918
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v6, :cond_24

    .line 919
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_37

    .line 921
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 922
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a()V

    .line 923
    const-string v3, "SplashAdLoadManager"

    const-string v4, "\u5c1d\u8bd5\u4ece\u7f13\u5b58\u4e2d\u53d6"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    :goto_1f
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->f:Lcom/bytedance/sdk/openadsdk/utils/ak;

    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 932
    :cond_24
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5f

    .line 933
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->f:Lcom/bytedance/sdk/openadsdk/utils/ak;

    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 934
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 1009
    :cond_36
    :goto_36
    return-void

    .line 926
    :cond_37
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->f()V

    .line 927
    const-string v3, "SplashAdLoadManager"

    const-string v4, "\u5f00\u59cb\u9884\u52a0\u8f7d"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 937
    :cond_42
    const-string v3, "splashLoadAd"

    const-string v4, "MSG_USER_TIME_OUT----7-"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(ILcom/bytedance/sdk/openadsdk/core/d/n;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v3

    .line 940
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;

    invoke-direct {v5, p0, v3}, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 948
    :cond_5f
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v1, :cond_36

    .line 949
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->f:Lcom/bytedance/sdk/openadsdk/utils/ak;

    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->removeMessages(I)V

    .line 950
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_36

    .line 954
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 958
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/h/l;->r()I

    move-result v3

    packed-switch v3, :pswitch_data_112

    :cond_80
    move-object v0, v2

    .line 997
    :goto_81
    if-eqz v0, :cond_36

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 998
    invoke-direct {p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(ILcom/bytedance/sdk/openadsdk/core/d/n;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v1

    .line 1001
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/bytedance/sdk/openadsdk/component/splash/b$8;

    invoke-direct {v3, p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/b$8;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/component/splash/e;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_36

    .line 961
    :pswitch_9f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->i:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    goto :goto_81

    .line 965
    :pswitch_a2
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->h:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    if-eqz v3, :cond_b4

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 966
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->h:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    move v7, v0

    move-object v0, v1

    move v1, v7

    .line 967
    goto :goto_81

    .line 968
    :cond_b4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->i:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    if-eqz v0, :cond_80

    .line 969
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->i:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    goto :goto_81

    .line 974
    :pswitch_bb
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->i:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    if-eqz v3, :cond_c9

    .line 975
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->i:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    .line 976
    const-string v3, "splashLoadAd"

    const-string v4, "\u8d85\u65f6\u4f7f\u7528\u5b9e\u65f6--mRealNetWorkTTSplashAd"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_81

    .line 977
    :cond_c9
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->h:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    if-eqz v3, :cond_80

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_80

    .line 978
    const-string v1, "splashLoadAd"

    const-string v3, "\u8d85\u65f6\u4f7f\u7528\u5b9e\u65f6//--mCacheTTSplashAd"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->h:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    move v7, v0

    move-object v0, v1

    move v1, v7

    .line 980
    goto :goto_81

    .line 985
    :pswitch_e2
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->h:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    if-eqz v3, :cond_10e

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_10e

    .line 986
    const-string v1, "splashLoadAd"

    const-string v3, "\u8c01\u56de\u6765\u7528\u8c01//--mCacheTTSplashAd"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->h:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    .line 990
    :goto_f7
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->i:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    if-eqz v3, :cond_109

    .line 991
    const-string v1, "splashLoadAd"

    const-string v3, "\u8c01\u56de\u6765\u7528\u8c01//--mRealNetWorkTTSplashAd"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->i:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    move v7, v0

    move-object v0, v1

    move v1, v7

    goto/16 :goto_81

    :cond_109
    move v7, v0

    move-object v0, v1

    move v1, v7

    goto/16 :goto_81

    :cond_10e
    move v0, v1

    move-object v1, v2

    goto :goto_f7

    .line 958
    nop

    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_9f
        :pswitch_a2
        :pswitch_bb
        :pswitch_e2
    .end packed-switch
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;I)V
    .registers 13
    .param p2    # Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x3

    .line 128
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 129
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 131
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->h:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    .line 132
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->i:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    .line 133
    int-to-long v2, p3

    .line 134
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/l;->c(Ljava/lang/String;)I

    move-result v0

    .line 135
    const/4 v1, -0x1

    if-eq v0, v1, :cond_7e

    .line 139
    :goto_20
    if-gtz v0, :cond_24

    const/16 v0, 0xbb8

    .line 140
    :cond_24
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->f:Lcom/bytedance/sdk/openadsdk/utils/ak;

    const/4 v4, 0x2

    int-to-long v6, v0

    invoke-virtual {v1, v4, v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/ak;->sendEmptyMessageDelayed(IJ)Z

    .line 141
    add-int/lit16 v1, v0, -0x12c

    .line 142
    if-lez v1, :cond_30

    move v0, v1

    .line 143
    :cond_30
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->f:Lcom/bytedance/sdk/openadsdk/utils/ak;

    int-to-long v4, v0

    invoke-virtual {v1, v8, v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ak;->sendEmptyMessageDelayed(IJ)Z

    .line 146
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 147
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/bytedance/sdk/openadsdk/core/d/l;->f:J

    .line 150
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 152
    :try_start_4a
    const-string v1, "publisher_timeout_control"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4f} :catch_7c

    .line 155
    :goto_4f
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a/d;->b()Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v2

    .line 156
    invoke-virtual {v2, v8}, Lcom/bytedance/sdk/openadsdk/f/a/d;->a(I)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/f/a/d;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/core/d/l;->a:Ljava/lang/String;

    .line 157
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/f/a/d;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/f/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    .line 155
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/f/a;->b(Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    .line 159
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a()V

    .line 160
    return-void

    .line 153
    :catch_7c
    move-exception v1

    goto :goto_4f

    :cond_7e
    move v0, p3

    goto :goto_20
.end method
