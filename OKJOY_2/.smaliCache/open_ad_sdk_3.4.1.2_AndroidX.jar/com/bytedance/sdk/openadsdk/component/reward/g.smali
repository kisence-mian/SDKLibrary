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


# instance fields
.field private b:Landroid/content/Context;

.field private final c:Lcom/bytedance/sdk/openadsdk/core/q;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/component/reward/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->e:Ljava/util/List;

    .line 335
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/g$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/g$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/g;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->f:Landroid/content/BroadcastReceiver;

    .line 68
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->f()Lcom/bytedance/sdk/openadsdk/core/q;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->c:Lcom/bytedance/sdk/openadsdk/core/q;

    .line 69
    if-nez p1, :cond_2a

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p1

    goto :goto_2e

    :cond_2a
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_2e
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b:Landroid/content/Context;

    .line 71
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->c()V

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/reward/g;)Landroid/content/Context;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/g;
    .registers 3

    .line 57
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a:Lcom/bytedance/sdk/openadsdk/component/reward/g;

    if-nez v0, :cond_17

    .line 58
    const-class v0, Lcom/bytedance/sdk/openadsdk/component/reward/g;

    monitor-enter v0

    .line 59
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a:Lcom/bytedance/sdk/openadsdk/component/reward/g;

    if-nez v1, :cond_12

    .line 60
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/g;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a:Lcom/bytedance/sdk/openadsdk/component/reward/g;

    .line 62
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 64
    :cond_17
    :goto_17
    sget-object p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a:Lcom/bytedance/sdk/openadsdk/component/reward/g;

    return-object p0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V
    .registers 6

    .line 135
    if-eqz p2, :cond_15

    .line 137
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExtraSmartLookParam()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_10

    .line 138
    const-string p1, "TTMediationSDK"

    const-string p2, "smartLook\u53c2\u6570\u4e0d\u4e3anull\u65f6 \u6fc0\u52b1\u89c6\u9891\u4e0d\u9700\u8981\u7f13\u5b58"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void

    .line 142
    :cond_10
    const/4 p2, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b(Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V

    goto :goto_6e

    .line 145
    :cond_15
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/e;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p2

    .line 146
    if-eqz p2, :cond_6a

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExtraSmartLookParam()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6a

    .line 148
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/j;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/j;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 149
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->D()Z

    move-result p1

    if-nez p1, :cond_45

    .line 151
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/e;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/j;->a(Ljava/lang/String;)V

    .line 154
    :cond_45
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 155
    if-eqz p3, :cond_56

    .line 156
    invoke-interface {p3, v0}, Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;->onRewardVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V

    .line 157
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->D()Z

    move-result p1

    if-nez p1, :cond_56

    .line 158
    invoke-interface {p3}, Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;->onRewardVideoCached()V

    .line 162
    :cond_56
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a()Lcom/bytedance/sdk/openadsdk/core/g/a;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/g$1;

    invoke-direct {v0, p0, p3, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/g$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/g;Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/core/g/a$a;)V

    .line 171
    const-string p1, "RewardVideoLoadManager"

    const-string p2, "get cache data success"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void

    .line 176
    :cond_6a
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b(Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V

    .line 178
    :goto_6e
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/component/reward/g$a;)V
    .registers 4

    .line 295
    if-nez p1, :cond_3

    .line 296
    return-void

    .line 302
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 303
    const/4 v1, 0x1

    if-lt v0, v1, :cond_12

    .line 305
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->e:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 308
    :cond_12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/reward/g;Lcom/bytedance/sdk/openadsdk/component/reward/g$a;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Lcom/bytedance/sdk/openadsdk/component/reward/g$a;)V

    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/reward/g;)Ljava/util/List;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->e:Ljava/util/List;

    return-object p0
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V
    .registers 8

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reward video doNetwork \u83b7\u53d6\u65b0\u7269\u6599:BidAdm->MD5->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/i/g/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bidding"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/m;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/d/m;-><init>()V

    .line 183
    const/4 v1, 0x2

    if-eqz p2, :cond_2a

    move v2, v1

    goto :goto_2b

    :cond_2a
    const/4 v2, 0x1

    :goto_2b
    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/d/m;->b:I

    .line 184
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/h/h;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_44

    .line 185
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedWidth()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_46

    .line 186
    :cond_44
    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/d/m;->e:I

    .line 188
    :cond_46
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->c:Lcom/bytedance/sdk/openadsdk/core/q;

    const/4 v2, 0x7

    new-instance v3, Lcom/bytedance/sdk/openadsdk/component/reward/g$2;

    invoke-direct {v3, p0, p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/g$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/g;ZLcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    invoke-interface {v1, p1, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/m;ILcom/bytedance/sdk/openadsdk/core/q$b;)V

    .line 283
    return-void
.end method

.method private c()V
    .registers 4

    .line 312
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 313
    return-void

    .line 315
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 316
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 317
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    :try_start_19
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_20} :catch_21

    .line 321
    goto :goto_22

    .line 320
    :catch_21
    move-exception v0

    .line 322
    :goto_22
    return-void
.end method

.method private d()V
    .registers 3

    .line 325
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    .line 326
    return-void

    .line 328
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 330
    :try_start_f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_17

    .line 332
    goto :goto_18

    .line 331
    :catch_17
    move-exception v0

    .line 333
    :goto_18
    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 75
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->b()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_2b

    .line 80
    :cond_17
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/e;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v1

    .line 81
    if-nez v1, :cond_2a

    .line 82
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 84
    :cond_2a
    return-void

    .line 77
    :cond_2b
    :goto_2b
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->b(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 93
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V
    .registers 5

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load reward vide: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RewardVideoLoadManager"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load reward vide: BidAdm->MD5->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/i/g/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bidding"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V

    .line 122
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 286
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot;
    .registers 3

    .line 291
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .registers 2

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a()V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    .line 102
    goto :goto_b

    .line 101
    :catchall_a
    move-exception v0

    .line 103
    :goto_b
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 4

    .line 126
    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preload bidding \u903b\u8f91\u4e0d\u8d70\u9884\u52a0\u8f7d\u903b\u8f91\uff1aBidAdm->MD5->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/i/g/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "bidding"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void

    .line 130
    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preload reward video: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RewardVideoLoadManager"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V

    .line 132
    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 355
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 356
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->d()V

    .line 357
    return-void
.end method
