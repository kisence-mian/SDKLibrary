.class public Lcom/bytedance/sdk/openadsdk/component/splash/b;
.super Ljava/lang/Object;
.source "SplashAdLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/al$a;


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
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/component/splash/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private B:Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

.field private a:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private b:Lcom/bytedance/sdk/openadsdk/core/d/m;

.field private c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

.field private final d:Lcom/bytedance/sdk/openadsdk/core/q;

.field private e:Landroid/content/Context;

.field private final f:Lcom/bytedance/sdk/openadsdk/utils/al;

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Lcom/bytedance/sdk/openadsdk/component/splash/e;

.field private i:Lcom/bytedance/sdk/openadsdk/component/splash/e;

.field private k:Lcom/bytedance/sdk/openadsdk/component/splash/a;

.field private l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private o:Z

.field private p:J

.field private q:J

.field private r:J

.field private final s:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final t:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private u:Lcom/bytedance/sdk/openadsdk/core/d/a;

.field private v:Lcom/bytedance/sdk/openadsdk/core/d/a;

.field private w:Lcom/bytedance/sdk/openadsdk/g/a/c;

.field private x:I

.field private y:I

.field private z:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->j:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 99
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 100
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 101
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 109
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->r:J

    .line 112
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 113
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 130
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->x:I

    .line 136
    const/4 v0, 0x4

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->y:I

    .line 931
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 933
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 143
    if-eqz p1, :cond_50

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->e:Landroid/content/Context;

    .line 146
    :cond_50
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->f()Lcom/bytedance/sdk/openadsdk/core/q;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->d:Lcom/bytedance/sdk/openadsdk/core/q;

    .line 147
    new-instance p1, Lcom/bytedance/sdk/openadsdk/utils/al;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/al;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/openadsdk/utils/al$a;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->f:Lcom/bytedance/sdk/openadsdk/utils/al;

    .line 148
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->e:Landroid/content/Context;

    if-eqz p1, :cond_66

    goto :goto_6a

    :cond_66
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p1

    :goto_6a
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/splash/a;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->k:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    .line 149
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->u()Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->o:Z

    .line 150
    sget-object p1, Lcom/bytedance/sdk/openadsdk/component/splash/b;->j:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/b;I)I
    .registers 2

    .line 62
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->y:I

    return p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/b;J)J
    .registers 3

    .line 62
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->p:J

    return-wide p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Lcom/bytedance/sdk/openadsdk/component/splash/a;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->k:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/splash/b;
    .registers 2

    .line 139
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/e;
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->i:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    return-object p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/core/d/p;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/component/splash/e;
    .registers 3

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/p;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/component/splash/e;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/d/p;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/component/splash/e;
    .registers 11

    .line 1082
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/p;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 1084
    :cond_8
    if-eqz p2, :cond_12

    .line 1085
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->a()Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->d(Z)V

    .line 1088
    :cond_12
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/e;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->e:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->a()Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v4

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    const-string v7, "splash_ad"

    move-object v2, v0

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/component/splash/e;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V

    .line 1089
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->h:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    .line 1090
    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/core/d/a;)Lcom/bytedance/sdk/openadsdk/core/d/a;
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->v:Lcom/bytedance/sdk/openadsdk/core/d/a;

    return-object p1
.end method

.method private a(ILcom/bytedance/sdk/openadsdk/core/d/p;)Lcom/bytedance/sdk/openadsdk/g/a/c;
    .registers 7

    .line 376
    nop

    .line 377
    nop

    .line 378
    nop

    .line 380
    const/4 v0, 0x0

    if-eqz p2, :cond_30

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/p;->a()Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 381
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/p;->a()Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v1

    .line 382
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/p;->a()Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object p2

    .line 383
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 385
    :try_start_22
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 386
    const-string v3, "req_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_2e

    .line 388
    goto :goto_32

    .line 387
    :catchall_2e
    move-exception v2

    goto :goto_32

    .line 392
    :cond_30
    move-object p2, v0

    move-object v1, p2

    :cond_32
    :goto_32
    if-nez v0, :cond_38

    .line 393
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/m;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/d/m;->a:Ljava/lang/String;

    .line 396
    :cond_38
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b()Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v2

    .line 397
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v0

    .line 398
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->a(I)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 399
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    .line 401
    if-eqz v1, :cond_53

    .line 402
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 405
    :cond_53
    if-eqz p2, :cond_58

    .line 406
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/g/a/c;->h(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 410
    :cond_58
    return-object p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/core/d/p;)Lcom/bytedance/sdk/openadsdk/g/a/c;
    .registers 3

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(ILcom/bytedance/sdk/openadsdk/core/d/p;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .registers 4

    .line 211
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->k:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    if-nez v0, :cond_5

    .line 212
    return-void

    .line 214
    :cond_5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/m;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/m;)V

    .line 215
    return-void
.end method

.method private declared-synchronized a(ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/d/p;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V
    .registers 14

    monitor-enter p0

    .line 948
    const/16 v0, 0x3a9c

    const/16 v1, 0x3a9b

    const/16 v2, 0x3a99

    const/4 v3, 0x1

    const/16 v4, 0x3a98

    if-ne p1, v4, :cond_2d

    .line 949
    :try_start_c
    const-string v5, "splashLoadAd"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "splashAdTryCallback start....\u5b9e\u65f6\u8bf7\u6c42\u6765\u4e86\uff01="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_85

    .line 947
    :catchall_2a
    move-exception p1

    goto/16 :goto_2ed

    .line 951
    :cond_2d
    if-ne p1, v2, :cond_4d

    .line 952
    const-string v5, "splashLoadAd"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "splashAdTryCallback start....\u7f13\u5b58\u8bf7\u6c42\u6765\u4e86\uff01="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_85

    .line 954
    :cond_4d
    if-ne p1, v0, :cond_6b

    .line 955
    const-string v5, "splashLoadAd"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "splashAdTryCallback start....\u8d85\u65f6\u8bf7\u6c42\u6765\u4e86\uff01="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    const/4 v5, 0x2

    iput v5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->y:I

    goto :goto_85

    .line 958
    :cond_6b
    if-ne p1, v1, :cond_85

    .line 959
    const-string v5, "splashLoadAd"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "splashAdTryCallback start....\u6e32\u67d3\u8d85\u65f6\u8bf7\u6c42\u6765\u4e86\uff01="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    :cond_85
    :goto_85
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_96

    .line 963
    const-string p1, "splashLoadAd"

    const-string p2, "splashAdTryCallback mSplashAdHasLoad==true \u5df2\u6210\u529f\u56de\u8c03\uff0c\u4e0d\u518d\u6267\u884c\u56de\u8c03\u64cd\u4f5c\uff01\uff01\uff01"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_94
    .catchall {:try_start_c .. :try_end_94} :catchall_2a

    .line 964
    monitor-exit p0

    return-void

    .line 968
    :cond_96
    if-nez p4, :cond_1b4

    .line 969
    :try_start_98
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-nez p3, :cond_b2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-eqz p3, :cond_a9

    goto :goto_b2

    .line 1027
    :cond_a9
    const-string p1, "splashLoadAd"

    const-string p3, "\u666e\u901a\u7c7b\u578b\u8d70\u8fd9\uff0c\u76f4\u63a5\u5931\u8d25\u56de\u8c03"

    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/utils/u;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1af

    .line 972
    :cond_b2
    :goto_b2
    if-ne p1, v4, :cond_10f

    .line 973
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_c5

    .line 974
    const-string p1, "splashLoadAd"

    const-string p2, "splashAdTryCallback \u5b9e\u65f6\u8bf7\u6c42\u5931\u8d25\uff08\u5b9e\u65f6\u5148\u56de\uff0c\u7f13\u5b58\u8fd8\u6ca1\u56de\uff09...\u7b49\u5f85\u7f13\u5b58"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c3
    .catchall {:try_start_98 .. :try_end_c3} :catchall_2a

    .line 975
    monitor-exit p0

    return-void

    .line 977
    :cond_c5
    :try_start_c5
    const-string p1, "splashLoadAd"

    const-string p3, "splashAdTryCallback \u5b9e\u65f6\u8bf7\u6c42\u5931\u8d25\uff08\u7f13\u5b58\u5148\u56de\uff0c\u5b9e\u65f6\u540e\u56de\uff09...."

    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/utils/u;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_f6

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_e4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_f6

    :cond_e4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->B:Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    if-eqz p1, :cond_f6

    .line 980
    const-string p1, "splashLoadAd"

    const-string p2, "splashAdTryCallback \u5b9e\u65f6\u8bf7\u6c42\u5931\u8d25\uff08\u7f13\u5b58\u5148\u56de\uff0c\u5b9e\u65f6\u540e\u56de\uff09....\u5c1d\u8bd5\u56de\u8c03\u7f13\u5b58\u6210\u529f\uff01"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->B:Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b$a;)V
    :try_end_f4
    .catchall {:try_start_c5 .. :try_end_f4} :catchall_2a

    .line 983
    monitor-exit p0

    return-void

    .line 985
    :cond_f6
    :try_start_f6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1af

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1af

    .line 987
    const-string p1, "splashLoadAd"

    const-string p2, "splashAdTryCallback \u5f53\u4e3a\u6a21\u7248\u5e7f\u544a\uff0c\u5b58\u5728\u7f13\u5b58\u7684\u60c5\u51b5\u4e0b\uff0c\u6a21\u7248\u6e32\u67d3\u8fd8\u6ca1\u6709\u56de\u6765\u65f6\u7b49\u5f85\u6a21\u7248\u5e7f\u544a\u6e32\u67d3\u56de\u6765\uff01"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10d
    .catchall {:try_start_f6 .. :try_end_10d} :catchall_2a

    .line 988
    monitor-exit p0

    return-void

    .line 994
    :cond_10f
    if-ne p1, v2, :cond_12b

    .line 996
    :try_start_111
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_122

    .line 997
    const-string p1, "splashLoadAd"

    const-string p2, "splashAdTryCallback \u7f13\u5b58\u8bf7\u6c42\u5931\u8d25(\u7f13\u5b58\u5148\u56de\u6765)\uff0c\u5b9e\u65f6\u8fd8\u6ca1\u6709\u56de\u8c03....\u7b49\u5f85...\uff01"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_120
    .catchall {:try_start_111 .. :try_end_120} :catchall_2a

    .line 998
    monitor-exit p0

    return-void

    .line 1000
    :cond_122
    :try_start_122
    const-string p1, "splashLoadAd"

    const-string p3, "splashAdTryCallback \u7f13\u5b58\u8bf7\u6c42\u5931\u8d25(\u7f13\u5b58\u5148\u56de\u6765)\uff0c\u5b9e\u65f6\u4e5f\u5931\u8d25....\u76f4\u63a5\u56de\u8c03\u51fa\u53bb\uff01"

    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/utils/u;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1af

    .line 1004
    :cond_12b
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-eqz p3, :cond_1af

    if-ne p1, v0, :cond_1af

    .line 1005
    const-string p1, "splashLoadAd"

    const-string p3, "\u5982\u679c\u5b9e\u65f6\u5df2\u8d85\u65f6\uff0cREQUEST_TYPE_TIMEOUT--->>>>"

    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/utils/u;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1a8

    .line 1008
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1af

    .line 1009
    const-string p1, "splashLoadAd"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\u5982\u679c\u5b9e\u65f6\u5df2\u8d85\u65f6\uff0c\u5b9e\u65f6\u662f\u5426\u6e32\u67d3\u6210\u529f "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " \u7f13\u5b58\u6e32\u67d3\u662f\u5426\u6210\u529f "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/utils/u;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1a0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_192

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1a0

    .line 1011
    :cond_192
    const-string p1, "splashLoadAd"

    const-string p2, "\u5982\u679c\u5b9e\u65f6\u5df2\u8d85\u65f6\uff0c\u7f13\u5b58\u6210\u529f\u76f4\u63a5\u56de\u8c03"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->B:Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b$a;)V
    :try_end_19e
    .catchall {:try_start_122 .. :try_end_19e} :catchall_2a

    .line 1013
    monitor-exit p0

    return-void

    .line 1017
    :cond_1a0
    :try_start_1a0
    const-string p1, "splashLoadAd"

    const-string p3, "\u5982\u679c\u5b9e\u65f6\u5df2\u8d85\u65f6\uff0c\u76f4\u63a5\u5931\u8d25\u56de\u8c03"

    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/utils/u;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1af

    .line 1023
    :cond_1a8
    const-string p1, "splashLoadAd"

    const-string p3, "\u5982\u679c\u5b9e\u65f6\u5df2\u8d85\u65f6\uff0c\u7f13\u5b58\u4e5f\u5931\u8d25\u76f4\u63a5\u56de\u8c03\uff0c\u76f4\u63a5\u5931\u8d25\u56de\u8c03"

    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/utils/u;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    :cond_1af
    :goto_1af
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b$a;)V
    :try_end_1b2
    .catchall {:try_start_1a0 .. :try_end_1b2} :catchall_2a

    .line 1031
    monitor-exit p0

    return-void

    .line 1037
    :cond_1b4
    if-nez p5, :cond_1c1

    if-eqz p3, :cond_1c1

    if-eqz p4, :cond_1c1

    .line 1038
    :try_start_1ba
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/d/p;->b()[B

    move-result-object p3

    invoke-virtual {p4, p3}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a([B)V

    .line 1042
    :cond_1c1
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-eqz p3, :cond_246

    if-ne p1, v2, :cond_246

    .line 1043
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-eqz p3, :cond_22b

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-nez p3, :cond_22b

    .line 1045
    const-string p3, "splashLoadAd"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "\u5982\u679c\u7f13\u5b58\u5148\u56de\u6765,\u5b9e\u65f6\u8fd8\u6ca1\u6709\u56de\u6765\uff0c\u5b9e\u65f6\u662f\u5426\u6e32\u67d3\u6210\u529f "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, " \u7f13\u5b58\u6e32\u67d3\u662f\u5426\u6210\u529f "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/bytedance/sdk/openadsdk/utils/u;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-eqz p3, :cond_22b

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-eqz p3, :cond_22b

    .line 1047
    const-string p1, "splashLoadAd"

    const-string p3, "\u7f13\u5b58\u8d4b\u503c\u7ed9resultTemp"

    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/utils/u;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->B:Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    .line 1049
    const-string p1, "splashLoadAd"

    const-string p2, "\u5982\u679c\u7f13\u5b58\u5148\u56de\u6765,\u5b9e\u65f6\u8fd8\u6ca1\u6709\u56de\u6765\uff0c\u7b49\u5f85\u5b9e\u65f6\u56de\u6765"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_229
    .catchall {:try_start_1ba .. :try_end_229} :catchall_2a

    .line 1050
    monitor-exit p0

    return-void

    .line 1055
    :cond_22b
    :try_start_22b
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-eqz p3, :cond_246

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->i:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    if-eqz p3, :cond_246

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a()Z

    move-result p3

    if-eqz p3, :cond_246

    .line 1056
    const-string p1, "splashLoadAd"

    const-string p2, "\u6b64\u65f6\u5b9e\u65f6\u53ef\u80fd\u5728\u6e32\u67d3\uff0c\u907f\u514d\u7f13\u5b58\u7684\u6e32\u67d3\u6210\u529f\u540e\u76f4\u63a5\u88ab\u56de\u8c03"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_244
    .catchall {:try_start_22b .. :try_end_244} :catchall_2a

    .line 1057
    monitor-exit p0

    return-void

    .line 1061
    :cond_246
    if-ne p1, v4, :cond_24f

    .line 1062
    :try_start_248
    const-string p3, "splashLoadAd"

    const-string p4, "splashAdTryCallback \u5b9e\u65f6\u6216\u6e32\u67d3\u6210\u529f\u56de\u8c03......\uff01"

    invoke-static {p3, p4}, Lcom/bytedance/sdk/openadsdk/utils/u;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    :cond_24f
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-eqz p3, :cond_26a

    if-ne p1, v4, :cond_26a

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-nez p3, :cond_26a

    .line 1066
    const-string p1, "splashLoadAd"

    const-string p2, "\u4f18\u5148\u5b9e\u65f6\uff0c\u4e14\u5b9e\u65f6\u7c7b\u578b\u5e7f\u544a\u56fe\u7247\u52a0\u8f7d\u6210\u529f\uff1b\u5982\u679c\u662f\u6a21\u677f\u5e7f\u544a\u4e14\u6e32\u67d3\u672a\u6210\u529f\uff0c\u5219\u7ee7\u7eed\u7b49\u5f85"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_268
    .catchall {:try_start_248 .. :try_end_268} :catchall_2a

    .line 1067
    monitor-exit p0

    return-void

    .line 1070
    :cond_26a
    :try_start_26a
    const-string p3, "splashLoadAd"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "splashAdTryCallback..\uff08 \u662f\u5426\u7f13\u5b58\u5df2check\u6210\u529f\uff1a"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, " || \u662f\u5426\u6e32\u67d3\u8d85\u65f6\uff1a"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const/4 p5, 0x0

    if-ne p1, v1, :cond_28c

    move v0, v3

    goto :goto_28d

    :cond_28c
    move v0, p5

    :goto_28d
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, " || \u662f\u5426\u4e3a\u5b9e\u65f6\u8bf7\u6c42"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    if-ne p1, v4, :cond_29a

    goto :goto_29b

    :cond_29a
    move v3, p5

    :goto_29b
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, "\uff09 && \uff08\u662f\u5426\u5b9e\u65f6\u6a21\u7248\u6e32\u67d3\u5b8c\u6210\uff1a"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1072
    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, " || \u662f\u5426\u7f13\u5b58\u6a21\u7248\u6e32\u67d3\u5b8c\u6210\uff1a"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, "\uff09"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 1070
    invoke-static {p3, p4}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-nez p3, :cond_2d8

    if-eq p1, v4, :cond_2d8

    if-ne p1, v1, :cond_2eb

    :cond_2d8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_2e8

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2eb

    .line 1075
    :cond_2e8
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b$a;)V
    :try_end_2eb
    .catchall {:try_start_26a .. :try_end_2eb} :catchall_2a

    .line 1078
    :cond_2eb
    monitor-exit p0

    return-void

    .line 947
    :goto_2ed
    monitor-exit p0

    throw p1
.end method

.method private a(ILjava/lang/String;)V
    .registers 5

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tryDisplaySplashAdFromCache rit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "splashLoadAd"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->k:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 316
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->k:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/splash/b$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;Ljava/lang/String;I)V

    invoke-virtual {v0, p2, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/component/splash/a$c;)V

    goto :goto_2e

    .line 364
    :cond_2b
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Ljava/lang/String;)V

    .line 366
    :goto_2e
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 7

    .line 471
    const-string v0, "splashLoadAd"

    const-string v1, "try LoadSplashAdFromNetwork......"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    nop

    .line 473
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(ILcom/bytedance/sdk/openadsdk/core/d/p;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v1

    .line 477
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/h/h;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 478
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedWidth()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2a

    .line 479
    :cond_25
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/m;

    const/4 v3, 0x2

    iput v3, v2, Lcom/bytedance/sdk/openadsdk/core/d/m;->e:I

    .line 481
    :cond_2a
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->d:Lcom/bytedance/sdk/openadsdk/core/q;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/m;

    new-instance v4, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;

    invoke-direct {v4, p0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    invoke-interface {v2, p1, v3, v0, v4}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/m;ILcom/bytedance/sdk/openadsdk/core/q$b;)V

    .line 554
    return-void
.end method

.method private declared-synchronized a(Lcom/bytedance/sdk/openadsdk/component/splash/b$a;)V
    .registers 6

    monitor-enter p0

    .line 1141
    :try_start_1
    const-string v0, "splashLoadAd"

    const-string v1, "onCallback ......"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->f()V

    .line 1143
    if-nez p1, :cond_19

    .line 1144
    const-string p1, "splashAdListener is null, then return"

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;)V

    .line 1145
    sget-object p1, Lcom/bytedance/sdk/openadsdk/component/splash/b;->j:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_af

    .line 1146
    monitor-exit p0

    return-void

    .line 1149
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    const/4 v1, 0x3

    if-nez v0, :cond_33

    .line 1150
    const-string v0, "splashAdListener is null, then return"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;)V

    .line 1151
    iget v0, p1, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;->a:I

    if-ne v0, v1, :cond_2c

    .line 1152
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;->e:Lcom/bytedance/sdk/openadsdk/g/a/c;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    .line 1154
    :cond_2c
    sget-object p1, Lcom/bytedance/sdk/openadsdk/component/splash/b;->j:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_19 .. :try_end_31} :catchall_af

    .line 1155
    monitor-exit p0

    return-void

    .line 1158
    :cond_33
    :try_start_33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_9d

    .line 1159
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1169
    iget v0, p1, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;->a:I

    packed-switch v0, :pswitch_data_b2

    .line 1186
    const/4 p1, -0x2

    .line 1187
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    goto :goto_80

    .line 1181
    :pswitch_4b
    const-string v0, "splashLoadAd"

    const-string v3, "onCallback CALLBACK_RESULT_TIMEOUT"

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;->e:Lcom/bytedance/sdk/openadsdk/g/a/c;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    .line 1183
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;->onTimeout()V

    .line 1184
    goto :goto_87

    .line 1176
    :pswitch_5d
    const-string v0, "splashLoadAd"

    const-string v3, "onCallback CALLBACK_RESULT_FAILED"

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;->e:Lcom/bytedance/sdk/openadsdk/g/a/c;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->b(Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    .line 1178
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    iget v3, p1, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;->b:I

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;->c:Ljava/lang/String;

    invoke-interface {v0, v3, p1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;->onError(ILjava/lang/String;)V

    .line 1179
    goto :goto_87

    .line 1172
    :pswitch_73
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;->e:Lcom/bytedance/sdk/openadsdk/g/a/c;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c(Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    .line 1173
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;->d:Lcom/bytedance/sdk/openadsdk/TTSplashAd;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;->onSplashAdLoad(Lcom/bytedance/sdk/openadsdk/TTSplashAd;)V

    .line 1174
    goto :goto_87

    .line 1187
    :goto_80
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;->onError(ILjava/lang/String;)V

    .line 1191
    :goto_87
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->f:Lcom/bytedance/sdk/openadsdk/utils/al;

    if-eqz p1, :cond_94

    .line 1193
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeMessages(I)V

    .line 1194
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->f:Lcom/bytedance/sdk/openadsdk/utils/al;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeMessages(I)V

    .line 1197
    :cond_94
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    .line 1198
    sget-object p1, Lcom/bytedance/sdk/openadsdk/component/splash/b;->j:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_9b
    .catchall {:try_start_33 .. :try_end_9b} :catchall_af

    .line 1199
    monitor-exit p0

    return-void

    .line 1161
    :cond_9d
    :try_start_9d
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    .line 1162
    iget v0, p1, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;->a:I

    if-ne v0, v1, :cond_a8

    .line 1163
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;->e:Lcom/bytedance/sdk/openadsdk/g/a/c;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    .line 1165
    :cond_a8
    sget-object p1, Lcom/bytedance/sdk/openadsdk/component/splash/b;->j:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_ad
    .catchall {:try_start_9d .. :try_end_ad} :catchall_af

    .line 1166
    monitor-exit p0

    return-void

    .line 1140
    :catchall_af
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_73
        :pswitch_5d
        :pswitch_4b
    .end packed-switch
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/d/p;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V
    .registers 6

    .line 62
    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/d/p;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILjava/lang/String;)V
    .registers 3

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 2

    .line 62
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/core/d/a;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/g/a/c;)V
    .registers 4

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/a;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/core/d/p;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V
    .registers 4

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/p;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/core/d/p;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/c;)V
    .registers 5

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/p;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Ljava/lang/String;)V
    .registers 2

    .line 62
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/d/a;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/g/a/c;)V
    .registers 15

    .line 558
    const-string v0, "splashLoadAd"

    const-string v1, " SplashUtils preLoadImage"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->b(Lcom/bytedance/sdk/openadsdk/core/d/a;)Z

    move-result v0

    if-eqz v0, :cond_5e

    if-nez p2, :cond_10

    goto :goto_5e

    .line 564
    :cond_10
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 566
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/d/l;->V()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    .line 567
    if-nez v0, :cond_2c

    .line 568
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/d/l;->Z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 570
    :cond_2c
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v9

    .line 571
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->b()I

    move-result v0

    .line 574
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v2

    const/4 v10, 0x1

    if-eqz v2, :cond_3d

    move v6, v10

    goto :goto_3e

    :cond_3d
    move v6, v1

    .line 575
    :goto_3e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->q:J

    .line 576
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->r:J

    .line 579
    if-eqz v6, :cond_4d

    const/4 v1, 0x2

    :cond_4d
    invoke-static {v5, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;I)V

    .line 581
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v7, p3

    move-object v8, v9

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/core/d/a;Lcom/bytedance/sdk/openadsdk/core/d/l;ZLcom/bytedance/sdk/openadsdk/g/a/c;Ljava/lang/String;)V

    invoke-static {p2, v9, v0, v1, v10}, Lcom/bytedance/sdk/openadsdk/utils/o;->a(Landroid/content/Context;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/utils/o$a;Z)V

    .line 664
    return-void

    .line 560
    :cond_5e
    :goto_5e
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/d/p;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V
    .registers 14

    .line 882
    const-string v0, "splashLoadAd"

    const-string v1, "\u6267\u884c checkAdFromServer \u68c0\u6d4b\u7f13\u5b58...."

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/p;)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_30

    .line 887
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->a()Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v0

    .line 888
    invoke-direct {p0, v2, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(ILcom/bytedance/sdk/openadsdk/core/d/p;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v6

    .line 890
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->f()Lcom/bytedance/sdk/openadsdk/core/q;

    move-result-object v1

    .line 891
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v2

    .line 892
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Lcom/bytedance/sdk/openadsdk/component/splash/b$10;

    move-object v3, v9

    move-object v4, p0

    move-object v5, p2

    move-object v7, p1

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/component/splash/b$10;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/component/splash/e;Lcom/bytedance/sdk/openadsdk/g/a/c;Lcom/bytedance/sdk/openadsdk/core/d/p;Ljava/lang/String;)V

    .line 891
    invoke-interface {v1, v2, v0, v9}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/q$a;)V

    .line 915
    goto :goto_64

    .line 916
    :cond_30
    const-string p2, "checkAdFromServer check fail !!!!"

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->e()Z

    move-result p2

    if-eqz p2, :cond_46

    .line 918
    const-string p1, "checkAdFromServer check fail !!!! ---> tryLoadSplashAdFromNetwork !!!"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    goto :goto_64

    .line 922
    :cond_46
    const/4 p2, 0x0

    invoke-direct {p0, v2, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(ILcom/bytedance/sdk/openadsdk/core/d/p;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v9

    .line 923
    const-string p2, "checkAdFromServer check fail !!!! ---> return callback !!!"

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    const/16 v2, 0x3a99

    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/d/p;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    .line 928
    :goto_64
    return-void
.end method

.method private declared-synchronized a(Lcom/bytedance/sdk/openadsdk/core/d/p;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/c;)V
    .registers 12

    monitor-enter p0

    .line 808
    if-nez p2, :cond_5

    .line 809
    monitor-exit p0

    return-void

    .line 811
    :cond_5
    :try_start_5
    new-instance v6, Lcom/bytedance/sdk/openadsdk/component/splash/b$8;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/splash/b$8;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/core/d/p;Lcom/bytedance/sdk/openadsdk/component/splash/e;Lcom/bytedance/sdk/openadsdk/g/a/c;Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->renderExpressAd(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_15

    .line 840
    monitor-exit p0

    return-void

    .line 807
    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/g/a/c;)V
    .registers 4

    .line 1202
    const-string v0, "splashLoadAd"

    const-string v1, "onLogTimeoutEvent"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->b(Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    .line 1204
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a;->a()Lcom/bytedance/sdk/openadsdk/g/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/g/a;->g(Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    .line 1205
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    .line 414
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->k:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;)V

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/component/splash/a$c;)V

    .line 464
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private b()V
    .registers 5

    .line 221
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    if-nez v0, :cond_5

    .line 222
    return-void

    .line 224
    :cond_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->r()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "splashLoadAd"

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_82

    goto :goto_80

    .line 254
    :pswitch_15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 255
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 256
    const-string v0, "splash_type_concurrent_first_come_first_use=====\u5e76\u53d1\u8bf7\u6c42\u5e7f\u544a\u548ccheck\u7f13\u5b58\uff0c\u8c01\u5148\u5230\u7528\u8c01"

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 258
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c()Z

    goto :goto_80

    .line 246
    :pswitch_2d
    const-string v0, "splash_type_concurrent_priority_real_time=====\u5e76\u53d1\u8bf7\u6c42\u5e7f\u544a\u548ccheck\u7f13\u5b58\uff0c\u4f18\u5148\u4f7f\u7528\u5b9e\u65f6"

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 248
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 249
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 250
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c()Z

    .line 252
    return-void

    .line 233
    :pswitch_45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 234
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 235
    const-string v0, "splash_type_priorrity_cache_defualt=====\u4f18\u5148\u7f13\u5b58"

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c()Z

    move-result v0

    .line 237
    if-nez v0, :cond_65

    .line 238
    const-string v0, "splash_type_priorrity_cache_defualt=====\u4f18\u5148\u7f13\u5b58--->\u6267\u884c\u7f13\u5b58\u5931\u8d25\uff0c\u8fdb\u884c\u7f51\u7edc\u8bf7\u6c42"

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    goto :goto_6a

    .line 242
    :cond_65
    const-string v0, "splash_type_priorrity_cache_defualt=====\u4f18\u5148\u7f13\u5b58--->\u6267\u884c\u7f13\u5b58\u6210\u529f\uff01\uff01"

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :goto_6a
    return-void

    .line 226
    :pswitch_6b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 227
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 229
    const-string v0, "splash_type_real_time=====\u53ea\u8d70\u5b9e\u65f6"

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 231
    return-void

    .line 260
    :goto_80
    return-void

    nop

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_45
        :pswitch_2d
        :pswitch_15
    .end packed-switch
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/core/d/a;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/g/a/c;)V
    .registers 4

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->b(Lcom/bytedance/sdk/openadsdk/core/d/a;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/core/d/p;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/c;)V
    .registers 5

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->b(Lcom/bytedance/sdk/openadsdk/core/d/p;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    return-void
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/core/d/a;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/g/a/c;)V
    .registers 18

    .line 667
    move-object v10, p0

    move-object v4, p1

    const-string v0, "splashLoadAd"

    const-string v1, " SplashUtils preLoadVideo"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->b(Lcom/bytedance/sdk/openadsdk/core/d/a;)Z

    move-result v1

    if-eqz v1, :cond_109

    if-nez p2, :cond_13

    goto/16 :goto_109

    .line 672
    :cond_13
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 673
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->d(Ljava/lang/String;)I

    move-result v6

    .line 674
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v1

    .line 676
    const/4 v3, 0x1

    if-eqz v1, :cond_30

    move v7, v3

    goto :goto_31

    :cond_30
    move v7, v2

    .line 677
    :goto_31
    nop

    .line 680
    if-eqz v7, :cond_35

    const/4 v2, 0x2

    :cond_35
    invoke-static {v5, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;I)V

    .line 681
    if-eqz v1, :cond_fe

    .line 682
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 683
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/t;->i()Ljava/lang/String;

    move-result-object v11

    .line 684
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SplashUtils preLoadVideo videoUrl "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    if-nez v11, :cond_5e

    .line 687
    invoke-direct/range {p0 .. p3}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/a;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    .line 688
    return-void

    .line 691
    :cond_5e
    iput-object v4, v10, Lcom/bytedance/sdk/openadsdk/component/splash/b;->u:Lcom/bytedance/sdk/openadsdk/core/d/a;

    .line 692
    move-object/from16 v9, p3

    iput-object v9, v10, Lcom/bytedance/sdk/openadsdk/component/splash/b;->w:Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 694
    invoke-static {v5, v3}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;I)V

    .line 696
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/t;->l()Ljava/lang/String;

    move-result-object v1

    .line 697
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-static {v11}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_75
    move-object v3, v1

    .line 698
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/splash/a;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v12

    invoke-virtual {v1, v2, v12}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 699
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v3}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 702
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/bytedance/sdk/openadsdk/core/h/h;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e7

    .line 703
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/x;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_e7

    .line 705
    if-eqz v3, :cond_e1

    .line 706
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_e1

    .line 707
    const-string v1, "\u975ewifi\u73af\u5883\uff0c\u5df2\u7f13\u5b58\u76f8\u540curl\u7684\u89c6\u9891\u6587\u4ef6\u4e5f\u662f\u53ef\u4ee5\u64ad\u653e\u7684"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/splash/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/d/p;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v5, v2}, Lcom/bytedance/sdk/openadsdk/core/d/p;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/a;Lcom/bytedance/sdk/openadsdk/core/d/l;[B)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b(Lcom/bytedance/sdk/openadsdk/core/d/p;)V

    .line 710
    const/16 v0, 0x3a98

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(ILjava/lang/String;)V

    .line 711
    return-void

    .line 714
    :cond_e1
    const-string v1, "\u975ewifi\u73af\u5883"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    return-void

    .line 720
    :cond_e7
    nop

    .line 721
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v12

    new-instance v13, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;

    move-object v0, v13

    move-object v1, p0

    move-object v4, p1

    move-object/from16 v9, p3

    invoke-direct/range {v0 .. v9}, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;Ljava/io/File;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/a;Lcom/bytedance/sdk/openadsdk/core/d/l;IJLcom/bytedance/sdk/openadsdk/g/a/c;)V

    invoke-virtual {v12, v11, v13}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/b$a;)V

    .line 797
    goto :goto_108

    .line 799
    :cond_fe
    move-object/from16 v9, p3

    const-string v1, "\u672a\u4e0b\u53d1\u89c6\u9891\u6587\u4ef6\uff0c\u5219\u52a0\u8f7d\u56fe\u7247\u5b8c\u6210\u540e\u7ed9\u4e88\u56de\u8c03"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    invoke-direct/range {p0 .. p3}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/a;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    .line 803
    :goto_108
    return-void

    .line 669
    :cond_109
    :goto_109
    return-void
.end method

.method private declared-synchronized b(Lcom/bytedance/sdk/openadsdk/core/d/p;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/c;)V
    .registers 12

    monitor-enter p0

    .line 845
    if-nez p2, :cond_5

    .line 846
    monitor-exit p0

    return-void

    .line 848
    :cond_5
    :try_start_5
    new-instance v6, Lcom/bytedance/sdk/openadsdk/component/splash/b$9;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/splash/b$9;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/core/d/p;Lcom/bytedance/sdk/openadsdk/component/splash/e;Lcom/bytedance/sdk/openadsdk/g/a/c;Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->renderExpressAd(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_15

    .line 877
    monitor-exit p0

    return-void

    .line 844
    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/g/a/c;)V
    .registers 7

    .line 1350
    const-string v0, "splashLoadAd"

    const-string v1, "reportMarkAtRespFail outer_call_no_rsp"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    if-nez p1, :cond_a

    .line 1352
    return-void

    .line 1355
    :cond_a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1357
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->d()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1358
    const/4 v2, 0x1

    goto :goto_23

    .line 1360
    :cond_17
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->x:I

    .line 1361
    const/4 v3, 0x2

    if-ne v2, v3, :cond_23

    .line 1362
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->e:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 1365
    :cond_23
    :goto_23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportMarkAtRespFail cacheStatus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    :try_start_39
    const-string v0, "if_have_cache"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1368
    const-string v0, "if_have_rt_ads"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->y:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_45
    .catchall {:try_start_39 .. :try_end_45} :catchall_46

    .line 1370
    goto :goto_47

    .line 1369
    :catchall_46
    move-exception v0

    .line 1371
    :goto_47
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a;->a()Lcom/bytedance/sdk/openadsdk/g/a;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/g/a;->d(Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    .line 1372
    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private c(Lcom/bytedance/sdk/openadsdk/g/a/c;)V
    .registers 6

    .line 1375
    const-string v0, "splashLoadAd"

    const-string v1, "reportMarkAtRespSucc outer_call_send"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    if-nez p1, :cond_a

    .line 1377
    return-void

    .line 1380
    :cond_a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportMarkAtRespSucc sSplashLoadImageSource "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/bytedance/sdk/openadsdk/h/a/b;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    :try_start_27
    const-string v0, "image_CacheType"

    sget v2, Lcom/bytedance/sdk/openadsdk/h/a/b;->a:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_2f

    .line 1385
    goto :goto_30

    .line 1384
    :catchall_2f
    move-exception v0

    .line 1386
    :goto_30
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a;->a()Lcom/bytedance/sdk/openadsdk/g/a;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/g/a;->c(Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    .line 1387
    return-void
.end method

.method private c()Z
    .registers 3

    .line 269
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->d()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 270
    const/16 v0, 0x3a99

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(ILjava/lang/String;)V

    .line 271
    const/4 v0, 0x1

    return v0

    .line 273
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method private d()Z
    .registers 12

    .line 277
    const-string v0, "splashLoadAd"

    const-string v1, "try checkSpashAdCacheIsValidAndTryShowAd......"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const/16 v1, 0x3a99

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(ILcom/bytedance/sdk/openadsdk/core/d/p;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v9

    .line 280
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->k:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5e

    .line 281
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->k:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 282
    const-string v1, "\u6ca1\u6709\u7f13\u5b58\u6570\u636e.........."

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 284
    :cond_40
    const/16 v0, -0xc

    .line 285
    const/16 v1, 0x3a99

    new-instance v10, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    const/4 v5, 0x2

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v6, -0xc

    move-object v3, v10

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move v4, v1

    move-object v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/d/p;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    .line 287
    :cond_5b
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->x:I

    .line 288
    return v2

    .line 293
    :cond_5e
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->k:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Z)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 294
    const-string v1, "======== \u7f13\u5b58\u8fc7\u671f ========"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_7e

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_99

    .line 296
    :cond_7e
    const/16 v0, -0xb

    .line 297
    const/16 v1, 0x3a99

    new-instance v10, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    const/4 v5, 0x2

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v6, -0xb

    move-object v3, v10

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move v4, v1

    move-object v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/d/p;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    .line 299
    :cond_99
    const/4 v0, 0x2

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->x:I

    .line 300
    return v2

    .line 303
    :cond_9d
    return v4
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Z
    .registers 1

    .line 62
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->o:Z

    return p0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private e()Z
    .registers 3

    .line 307
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->r()I

    move-result v0

    .line 308
    const/4 v1, 0x2

    if-eq v1, v0, :cond_10

    const/4 v1, 0x3

    if-eq v1, v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private f()V
    .registers 4

    .line 1130
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->k:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    if-eqz v0, :cond_b

    .line 1131
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/m;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/m;)V

    .line 1133
    :cond_b
    return-void
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Z
    .registers 1

    .line 62
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->e()Z

    move-result p0

    return p0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Lcom/bytedance/sdk/openadsdk/AdSlot;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    return-object p0
.end method

.method private g()V
    .registers 6

    .line 1310
    const-string v0, "splashLoadAd"

    const-string v1, "loadSplashOnLineVideo"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->u:Lcom/bytedance/sdk/openadsdk/core/d/a;

    if-eqz v1, :cond_8c

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->w:Lcom/bytedance/sdk/openadsdk/g/a/c;

    if-nez v2, :cond_11

    goto/16 :goto_8c

    .line 1314
    :cond_11
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8b

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->u:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_24

    goto :goto_8b

    .line 1317
    :cond_24
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->u:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 1318
    if-nez v1, :cond_34

    .line 1319
    return-void

    .line 1321
    :cond_34
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->x()I

    move-result v2

    .line 1322
    const/4 v3, 0x3

    if-eq v2, v3, :cond_3c

    .line 1323
    return-void

    .line 1326
    :cond_3c
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/d/p;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->u:Lcom/bytedance/sdk/openadsdk/core/d/a;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/bytedance/sdk/openadsdk/core/d/p;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/a;Lcom/bytedance/sdk/openadsdk/core/d/l;[B)V

    .line 1327
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v3

    if-nez v3, :cond_4b

    .line 1328
    return-void

    .line 1330
    :cond_4b
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/t;->i()Ljava/lang/String;

    move-result-object v1

    .line 1331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadSplashOnLineVideo videoPath "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 1333
    return-void

    .line 1335
    :cond_70
    invoke-direct {p0, v2, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/p;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/component/splash/e;

    move-result-object v3

    .line 1337
    const-string v4, "loadSplashOnLineVideo splashAdTryCallback"

    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/bytedance/sdk/openadsdk/component/splash/b$3;

    invoke-direct {v4, p0, v3, v2, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/b$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/component/splash/e;Lcom/bytedance/sdk/openadsdk/core/d/p;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1347
    return-void

    .line 1315
    :cond_8b
    :goto_8b
    return-void

    .line 1312
    :cond_8c
    :goto_8c
    return-void
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Landroid/content/Context;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->e:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic i(Lcom/bytedance/sdk/openadsdk/component/splash/b;)J
    .registers 3

    .line 62
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->q:J

    return-wide v0
.end method

.method static synthetic j(Lcom/bytedance/sdk/openadsdk/component/splash/b;)J
    .registers 3

    .line 62
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->r:J

    return-wide v0
.end method

.method static synthetic k(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic l(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Lcom/bytedance/sdk/openadsdk/g/a/c;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->w:Lcom/bytedance/sdk/openadsdk/g/a/c;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .registers 8

    .line 1210
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2b

    .line 1211
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v3, "SplashAdLoadManager"

    if-nez v0, :cond_1e

    .line 1213
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1214
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->b()V

    .line 1215
    const-string v0, "\u5c1d\u8bd5\u4ece\u7f13\u5b58\u4e2d\u53d6"

    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 1218
    :cond_1e
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->f()V

    .line 1219
    const-string v0, "\u5f00\u59cb\u9884\u52a0\u8f7d"

    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    :goto_26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->f:Lcom/bytedance/sdk/openadsdk/utils/al;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1224
    :cond_2b
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    const-string v4, "splashLoadAd"

    if-ne v0, v3, :cond_5b

    .line 1225
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->f:Lcom/bytedance/sdk/openadsdk/utils/al;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1226
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1227
    return-void

    .line 1229
    :cond_40
    const-string v0, "MSG_USER_TIME_OUT----7-"

    invoke-static {v4, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(ILcom/bytedance/sdk/openadsdk/core/d/p;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v0

    .line 1232
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lcom/bytedance/sdk/openadsdk/component/splash/b$11;

    invoke-direct {v5, p0, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b$11;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1240
    :cond_5b
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_10e

    .line 1241
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->f:Lcom/bytedance/sdk/openadsdk/utils/al;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeMessages(I)V

    .line 1242
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_6e

    .line 1243
    return-void

    .line 1246
    :cond_6e
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1247
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1248
    nop

    .line 1249
    nop

    .line 1251
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->r()I

    move-result p1

    const/4 v1, 0x4

    packed-switch p1, :pswitch_data_110

    goto :goto_e1

    .line 1278
    :pswitch_87
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->h:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    if-eqz p1, :cond_9c

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_9c

    .line 1279
    const-string p1, "\u8c01\u56de\u6765\u7528\u8c01//--mCacheTTSplashAd"

    invoke-static {v4, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->h:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    .line 1281
    move v0, v1

    goto :goto_9d

    .line 1283
    :cond_9c
    move-object p1, v2

    :goto_9d
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->i:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    if-eqz v1, :cond_e2

    .line 1284
    const-string p1, "\u8c01\u56de\u6765\u7528\u8c01//--mRealNetWorkTTSplashAd"

    invoke-static {v4, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->i:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    goto :goto_e2

    .line 1267
    :pswitch_a9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->i:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    if-eqz p1, :cond_b4

    .line 1268
    nop

    .line 1269
    const-string v1, "\u8d85\u65f6\u4f7f\u7528\u5b9e\u65f6--mRealNetWorkTTSplashAd"

    invoke-static {v4, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e2

    .line 1270
    :cond_b4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->h:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    if-eqz p1, :cond_e1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_e1

    .line 1271
    const-string p1, "\u8d85\u65f6\u4f7f\u7528\u5b9e\u65f6//--mCacheTTSplashAd"

    invoke-static {v4, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->h:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    .line 1273
    move v0, v1

    goto :goto_e2

    .line 1258
    :pswitch_c9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->h:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    if-eqz p1, :cond_d9

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_d9

    .line 1259
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->h:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    .line 1260
    move v0, v1

    goto :goto_e2

    .line 1261
    :cond_d9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->i:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    if-eqz p1, :cond_e1

    .line 1262
    goto :goto_e2

    .line 1254
    :pswitch_de
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->i:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    .line 1255
    goto :goto_e2

    .line 1290
    :cond_e1
    :goto_e1
    move-object p1, v2

    :cond_e2
    :goto_e2
    if-eqz p1, :cond_106

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a()Z

    move-result v1

    if-eqz v1, :cond_106

    .line 1291
    const-string v1, "\u8d85\u65f6\u4e86 temp != null "

    invoke-static {v4, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    invoke-direct {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(ILcom/bytedance/sdk/openadsdk/core/d/p;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v0

    .line 1293
    nop

    .line 1295
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/splash/b$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/component/splash/e;Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1301
    goto :goto_10e

    .line 1303
    :cond_106
    const-string p1, "\u8d85\u65f6\u4e86 \u5f00\u59cb\u52a0\u8f7d\u5728\u7ebf\u89c6\u9891"

    invoke-static {v4, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g()V

    .line 1307
    :cond_10e
    :goto_10e
    return-void

    nop

    :pswitch_data_110
    .packed-switch 0x0
        :pswitch_de
        :pswitch_c9
        :pswitch_a9
        :pswitch_87
    .end packed-switch
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;I)V
    .registers 11

    .line 162
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 163
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    .line 164
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 165
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->h:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    .line 166
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->i:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    .line 167
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5f00\u53d1\u8005\u4f20\u5165\u7684\u8d85\u65f6\u65f6\u957f timeOut "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "splashLoadAd"

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    int-to-long v1, p3

    .line 169
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->c(Ljava/lang/String;)I

    move-result p1

    .line 170
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e91\u63a7\u7684\u8d85\u65f6\u65f6\u957f cloudTimeOut "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const/16 p2, 0x1f4

    if-lez p1, :cond_57

    .line 173
    const-string p2, "\u4e91\u63a7\u63a7\u5236\u7684\u8d85\u65f6\u65f6\u957f\u5927\u4e8e0\u6bd4\u8f83 \u8f83\u670d\u52a1\u7aef\u4e0b\u53d1\u7684\u8d85\u65f6\u65f6\u957f\u548c\u5f00\u53d1\u8005\u914d\u7f6e\u7684\u8d85\u65f6\u65f6\u957f "

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    if-lt p1, p3, :cond_5a

    .line 175
    move p3, p1

    goto :goto_5a

    .line 178
    :cond_57
    if-ge p3, p2, :cond_5a

    .line 179
    move p3, p2

    .line 182
    :cond_5a
    :goto_5a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSplashAd \u5b9e\u9645 timeOut "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->f:Lcom/bytedance/sdk/openadsdk/utils/al;

    const/4 v0, 0x2

    int-to-long v3, p3

    invoke-virtual {p2, v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendEmptyMessageDelayed(IJ)Z

    .line 184
    add-int/lit16 p2, p3, -0x12c

    .line 185
    if-lez p2, :cond_7c

    move p3, p2

    .line 186
    :cond_7c
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->f:Lcom/bytedance/sdk/openadsdk/utils/al;

    int-to-long v5, p3

    const/4 p3, 0x3

    invoke-virtual {p2, p3, v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendEmptyMessageDelayed(IJ)Z

    .line 188
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/d/m;

    invoke-direct {p2}, Lcom/bytedance/sdk/openadsdk/core/d/m;-><init>()V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/m;

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p2, Lcom/bytedance/sdk/openadsdk/core/d/m;->f:J

    .line 190
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/m;

    iput-wide v1, p2, Lcom/bytedance/sdk/openadsdk/core/d/m;->g:J

    .line 191
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/m;

    int-to-long v5, p1

    iput-wide v5, p2, Lcom/bytedance/sdk/openadsdk/core/d/m;->h:J

    .line 192
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/m;

    iput-wide v3, p1, Lcom/bytedance/sdk/openadsdk/core/d/m;->i:J

    .line 194
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 196
    :try_start_a2
    const-string p2, "publisher_timeout_control"

    invoke-virtual {p1, p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_a7
    .catchall {:try_start_a2 .. :try_end_a7} :catchall_a8

    .line 198
    goto :goto_a9

    .line 197
    :catchall_a8
    move-exception p2

    .line 199
    :goto_a9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a;->a()Lcom/bytedance/sdk/openadsdk/g/a;

    move-result-object p2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b()Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v0

    .line 200
    invoke-virtual {v0, p3}, Lcom/bytedance/sdk/openadsdk/g/a/c;->a(I)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/m;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/d/m;->a:Ljava/lang/String;

    .line 201
    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p3

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    .line 199
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/g/a;->b(Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    .line 203
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->b()V

    .line 204
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a()V

    .line 205
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z
    .registers 4

    .line 369
    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 370
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->d()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0

    .line 372
    :cond_c
    return v0
.end method
