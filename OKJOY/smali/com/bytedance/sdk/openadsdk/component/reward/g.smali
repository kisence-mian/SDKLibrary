.class public Lcom/bytedance/sdk/openadsdk/component/reward/g;
.super Ljava/lang/Object;
.source "RewardVideoLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/reward/g$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/component/reward/g;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/content/Context;

.field private final c:Lcom/bytedance/sdk/openadsdk/core/p;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/component/reward/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->e:Ljava/util/List;

    .line 319
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/g$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/g$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/g;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->f:Landroid/content/BroadcastReceiver;

    .line 66
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->f()Lcom/bytedance/sdk/openadsdk/core/p;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->c:Lcom/bytedance/sdk/openadsdk/core/p;

    .line 67
    if-nez p1, :cond_2f

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    :goto_29
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b:Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->c()V

    .line 70
    return-void

    .line 67
    :cond_2f
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_29
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/reward/g;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/g;
    .registers 3

    .prologue
    .line 55
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a:Lcom/bytedance/sdk/openadsdk/component/reward/g;

    if-nez v0, :cond_13

    .line 56
    const-class v1, Lcom/bytedance/sdk/openadsdk/component/reward/g;

    monitor-enter v1

    .line 57
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a:Lcom/bytedance/sdk/openadsdk/component/reward/g;

    if-nez v0, :cond_12

    .line 58
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/g;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a:Lcom/bytedance/sdk/openadsdk/component/reward/g;

    .line 60
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 62
    :cond_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a:Lcom/bytedance/sdk/openadsdk/component/reward/g;

    return-object v0

    .line 60
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V
    .registers 7

    .prologue
    .line 127
    if-eqz p2, :cond_7

    .line 129
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b(Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V

    .line 165
    :goto_6
    return-void

    .line 132
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_56

    .line 135
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/j;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/j;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 136
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->r()Z

    move-result v2

    if-nez v2, :cond_31

    .line 138
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/j;->a(Ljava/lang/String;)V

    .line 141
    :cond_31
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 142
    if-eqz p3, :cond_42

    .line 143
    invoke-interface {p3, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;->onRewardVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V

    .line 144
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->r()Z

    move-result v1

    if-nez v1, :cond_42

    .line 145
    invoke-interface {p3}, Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;->onRewardVideoCached()V

    .line 149
    :cond_42
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a()Lcom/bytedance/sdk/openadsdk/core/g/a;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/g$1;

    invoke-direct {v2, p0, p3, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/g$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/g;Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/core/g/a$a;)V

    .line 158
    const-string v0, "RewardVideoLoadManager"

    const-string v1, "get cache data success"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 163
    :cond_56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b(Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V

    goto :goto_6
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/component/reward/g$a;)V
    .registers 4

    .prologue
    .line 279
    if-nez p1, :cond_3

    .line 293
    :goto_2
    return-void

    .line 286
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 287
    const/4 v1, 0x1

    if-lt v0, v1, :cond_12

    .line 289
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->e:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 292
    :cond_12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/reward/g;Lcom/bytedance/sdk/openadsdk/component/reward/g$a;)V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Lcom/bytedance/sdk/openadsdk/component/reward/g$a;)V

    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/reward/g;)Ljava/util/List;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->e:Ljava/util/List;

    return-object v0
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V
    .registers 8

    .prologue
    const/4 v1, 0x2

    .line 168
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/d/l;-><init>()V

    .line 169
    if-eqz p2, :cond_30

    move v0, v1

    :goto_9
    iput v0, v2, Lcom/bytedance/sdk/openadsdk/core/d/l;->b:I

    .line 170
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/h/l;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 171
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedWidth()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_24

    .line 172
    :cond_22
    iput v1, v2, Lcom/bytedance/sdk/openadsdk/core/d/l;->e:I

    .line 174
    :cond_24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->c:Lcom/bytedance/sdk/openadsdk/core/p;

    const/4 v1, 0x7

    new-instance v3, Lcom/bytedance/sdk/openadsdk/component/reward/g$2;

    invoke-direct {v3, p0, p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/g$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/g;ZLcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    invoke-interface {v0, p1, v2, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/l;ILcom/bytedance/sdk/openadsdk/core/p$b;)V

    .line 267
    return-void

    .line 169
    :cond_30
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private c()V
    .registers 4

    .prologue
    .line 296
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 306
    :goto_8
    return-void

    .line 299
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 300
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 301
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    :try_start_19
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_20} :catch_21

    goto :goto_8

    .line 304
    :catch_21
    move-exception v0

    goto :goto_8
.end method

.method private d()V
    .registers 3

    .prologue
    .line 309
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    .line 317
    :goto_8
    return-void

    .line 312
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 314
    :try_start_f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_17

    goto :goto_8

    .line 315
    :catch_17
    move-exception v0

    goto :goto_8
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->b()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 82
    :cond_16
    :goto_16
    return-void

    .line 78
    :cond_17
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/e;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    .line 79
    if-nez v1, :cond_16

    .line 80
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    goto :goto_16
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->b(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 91
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V
    .registers 6

    .prologue
    .line 116
    const-string v0, "RewardVideoLoadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load reward vide: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V

    .line 119
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 101
    :goto_9
    return-void

    .line 99
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 5

    .prologue
    .line 122
    const-string v0, "RewardVideoLoadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preload reward video: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V

    .line 124
    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 339
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 340
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->d()V

    .line 341
    return-void
.end method
