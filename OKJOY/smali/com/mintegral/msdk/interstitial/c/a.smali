.class public final Lcom/mintegral/msdk/interstitial/c/a;
.super Ljava/lang/Object;
.source "InterstitialController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/interstitial/c/a$c;,
        Lcom/mintegral/msdk/interstitial/c/a$a;,
        Lcom/mintegral/msdk/interstitial/c/a$b;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mintegral/msdk/interstitial/c/a$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Ljava/lang/String;

.field private f:Landroid/content/Context;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/os/Handler;

.field private j:Lcom/mintegral/msdk/c/d;

.field private k:Lcom/mintegral/msdk/out/InterstitialListener;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/interstitial/c/a;->b:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/interstitial/c/a;->c:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/interstitial/c/a;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "InterstitialController"

    iput-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->e:Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->l:Z

    .line 1142
    :try_start_a
    new-instance v0, Lcom/mintegral/msdk/interstitial/c/a$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mintegral/msdk/interstitial/c/a$1;-><init>(Lcom/mintegral/msdk/interstitial/c/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->i:Landroid/os/Handler;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_16

    .line 1208
    :goto_15
    return-void

    .line 1207
    :catch_16
    move-exception v0

    :try_start_17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_15

    .line 136
    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method

.method public static a(Ljava/lang/String;)I
    .registers 2

    .prologue
    .line 109
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    sget-object v0, Lcom/mintegral/msdk/interstitial/c/a;->b:Ljava/util/Map;

    if-eqz v0, :cond_25

    sget-object v0, Lcom/mintegral/msdk/interstitial/c/a;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 110
    sget-object v0, Lcom/mintegral/msdk/interstitial/c/a;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 111
    if-eqz v0, :cond_25

    .line 112
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_21

    move-result v0

    .line 118
    :goto_20
    return v0

    .line 116
    :catch_21
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    :cond_25
    const/4 v0, 0x0

    goto :goto_20
.end method

.method static synthetic a(Lcom/mintegral/msdk/interstitial/c/a;)Lcom/mintegral/msdk/out/InterstitialListener;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->k:Lcom/mintegral/msdk/out/InterstitialListener;

    return-object v0
.end method

.method static synthetic a(Lcom/mintegral/msdk/interstitial/c/a;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/interstitial/c/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 94
    :try_start_0
    sget-object v0, Lcom/mintegral/msdk/interstitial/c/a;->b:Ljava/util/Map;

    if-eqz v0, :cond_13

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 95
    sget-object v0, Lcom/mintegral/msdk/interstitial/c/a;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 100
    :cond_13
    :goto_13
    return-void

    .line 98
    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method private a(Z)V
    .registers 8

    .prologue
    .line 388
    :try_start_0
    new-instance v0, Lcom/mintegral/msdk/interstitial/a/a;

    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/c/a;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/c/a;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/mintegral/msdk/interstitial/c/a;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/mintegral/msdk/interstitial/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 390
    new-instance v1, Lcom/mintegral/msdk/interstitial/c/a$b;

    invoke-direct {v1, p0, v0}, Lcom/mintegral/msdk/interstitial/c/a$b;-><init>(Lcom/mintegral/msdk/interstitial/c/a;Lcom/mintegral/msdk/interstitial/a/a;)V

    .line 391
    new-instance v2, Lcom/mintegral/msdk/interstitial/c/a$a;

    invoke-direct {v2, p0, v0, v1}, Lcom/mintegral/msdk/interstitial/c/a$a;-><init>(Lcom/mintegral/msdk/interstitial/c/a;Lcom/mintegral/msdk/interstitial/a/a;Lcom/mintegral/msdk/interstitial/c/a$b;)V

    .line 393
    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/interstitial/a/a;->a(Lcom/mintegral/msdk/interstitial/c/a$a;)V

    .line 395
    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/c/a;->i:Landroid/os/Handler;

    if-eqz v2, :cond_23

    .line 396
    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/c/a;->i:Landroid/os/Handler;

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 398
    :cond_23
    invoke-virtual {v0}, Lcom/mintegral/msdk/interstitial/a/a;->b()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    .line 405
    :cond_26
    :goto_26
    return-void

    .line 400
    :catch_27
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 401
    if-nez p1, :cond_26

    .line 402
    const-string v0, "can\'t show because unknow error"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/interstitial/c/a;->b(Ljava/lang/String;)V

    goto :goto_26
.end method

.method static synthetic b(Lcom/mintegral/msdk/interstitial/c/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/mintegral/msdk/interstitial/c/a;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/interstitial/c/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 647
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->i:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 648
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 649
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 650
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 651
    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/c/a;->i:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 656
    :cond_12
    :goto_12
    return-void

    .line 654
    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method private b(Z)V
    .registers 7

    .prologue
    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showInterstitial isShowCall:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    new-instance v0, Lcom/mintegral/msdk/interstitial/a/a;

    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/c/a;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/c/a;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/mintegral/msdk/interstitial/c/a;->h:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mintegral/msdk/interstitial/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 423
    invoke-virtual {v0}, Lcom/mintegral/msdk/interstitial/a/a;->a()Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    .line 424
    if-eqz v0, :cond_71

    .line 2454
    new-instance v1, Lcom/mintegral/msdk/interstitial/c/a$c;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/interstitial/c/a$c;-><init>(Lcom/mintegral/msdk/interstitial/c/a;)V

    .line 2456
    sget-object v2, Lcom/mintegral/msdk/interstitial/c/a;->d:Ljava/util/Map;

    if-eqz v2, :cond_3e

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/c/a;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 2457
    sget-object v2, Lcom/mintegral/msdk/interstitial/c/a;->d:Ljava/util/Map;

    iget-object v3, p0, Lcom/mintegral/msdk/interstitial/c/a;->g:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2460
    :cond_3e
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/c/a;->f:Landroid/content/Context;

    const-class v3, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2461
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2462
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2463
    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/c/a;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 2464
    const-string v2, "unitId"

    iget-object v3, p0, Lcom/mintegral/msdk/interstitial/c/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2466
    :cond_60
    if-eqz v0, :cond_67

    .line 2467
    const-string v2, "campaign"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2469
    :cond_67
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->f:Landroid/content/Context;

    if-eqz v0, :cond_70

    .line 2470
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 447
    :cond_70
    :goto_70
    return-void

    .line 430
    :cond_71
    if-eqz p1, :cond_8d

    .line 431
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->e:Ljava/lang/String;

    const-string v1, "showInterstitial \u53d1\u73b0cmapaign\u4e3a\u7a7a \u53bbload\u4e00\u904d========="

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/interstitial/c/a;->a(Z)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7e} :catch_7f

    goto :goto_70

    .line 442
    :catch_7f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 443
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->k:Lcom/mintegral/msdk/out/InterstitialListener;

    if-eqz v0, :cond_70

    .line 444
    const-string v0, "can\'t show because unknow error"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/interstitial/c/a;->c(Ljava/lang/String;)V

    goto :goto_70

    .line 434
    :cond_8d
    :try_start_8d
    const-string v0, "no ads available can show"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/interstitial/c/a;->c(Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->e:Ljava/lang/String;

    const-string v1, "showInterstitial \u53d1\u73b0cmapaign\u4e3a\u7a7a"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_99} :catch_7f

    goto :goto_70
.end method

.method static synthetic c(Lcom/mintegral/msdk/interstitial/c/a;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->i:Landroid/os/Handler;

    return-object v0
.end method

.method private c()V
    .registers 6

    .prologue
    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->e:Ljava/lang/String;

    const-string v1, "initUnitSetting"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_41

    .line 1690
    :try_start_7
    new-instance v0, Lcom/mintegral/msdk/c/c;

    invoke-direct {v0}, Lcom/mintegral/msdk/c/c;-><init>()V

    .line 1691
    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/c/a;->f:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mintegral/msdk/interstitial/c/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mintegral/msdk/c/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_3c

    .line 364
    :goto_15
    :try_start_15
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/c/a;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/c/b;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->j:Lcom/mintegral/msdk/c/d;

    .line 365
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->j:Lcom/mintegral/msdk/c/d;

    if-nez v0, :cond_3b

    .line 366
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/c/d;->e(Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->j:Lcom/mintegral/msdk/c/d;

    .line 367
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->e:Ljava/lang/String;

    const-string v1, "\u83b7\u53d6\u9ed8\u8ba4\u7684unitsetting"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_3b
    :goto_3b
    return-void

    .line 1693
    :catch_3c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_40} :catch_41

    goto :goto_15

    .line 370
    :catch_41
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3b
.end method

.method private c(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 673
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->i:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 674
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 675
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 676
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 677
    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/c/a;->i:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 683
    :cond_12
    :goto_12
    return-void

    .line 680
    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method static synthetic d(Lcom/mintegral/msdk/interstitial/c/a;)V
    .registers 2

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/interstitial/c/a;->b(Z)V

    return-void
.end method

.method static synthetic e(Lcom/mintegral/msdk/interstitial/c/a;)V
    .registers 3

    .prologue
    .line 33
    .line 2636
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->i:Landroid/os/Handler;

    if-eqz v0, :cond_a

    .line 2637
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->i:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 33
    :cond_a
    return-void
.end method

.method static synthetic f(Lcom/mintegral/msdk/interstitial/c/a;)V
    .registers 3

    .prologue
    .line 33
    .line 2662
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->i:Landroid/os/Handler;

    if-eqz v0, :cond_a

    .line 2663
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->i:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 33
    :cond_a
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 260
    :try_start_1
    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/c/a;->f:Landroid/content/Context;

    if-nez v1, :cond_12

    .line 261
    const-string v0, "context is null"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/interstitial/c/a;->b(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->e:Ljava/lang/String;

    const-string v1, "load context is null"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :goto_11
    return-void

    .line 265
    :cond_12
    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/c/a;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 266
    const-string v0, "unitid is null"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/interstitial/c/a;->b(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->e:Ljava/lang/String;

    const-string v1, "load unitid is null"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_27

    goto :goto_11

    .line 286
    :catch_27
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 287
    const-string v0, "can\'t show because unknow error"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/interstitial/c/a;->b(Ljava/lang/String;)V

    goto :goto_11

    .line 271
    :cond_31
    :try_start_31
    iget-boolean v1, p0, Lcom/mintegral/msdk/interstitial/c/a;->l:Z

    if-nez v1, :cond_42

    .line 272
    const-string v0, "init error"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/interstitial/c/a;->b(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->e:Ljava/lang/String;

    const-string v1, "load init error"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 278
    :cond_42
    invoke-direct {p0}, Lcom/mintegral/msdk/interstitial/c/a;->c()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_45} :catch_27

    .line 1299
    :try_start_45
    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/c/a;->j:Lcom/mintegral/msdk/c/d;

    if-eqz v1, :cond_9c

    .line 1300
    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/c/a;->j:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v1}, Lcom/mintegral/msdk/c/d;->u()I

    move-result v2

    .line 1301
    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/c/a;->j:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v1}, Lcom/mintegral/msdk/c/d;->A()I

    move-result v1

    .line 1302
    if-gtz v2, :cond_58

    move v2, v0

    .line 1305
    :cond_58
    if-gtz v1, :cond_a7

    .line 1308
    :goto_5a
    mul-int/2addr v0, v2

    .line 1309
    sget-object v1, Lcom/mintegral/msdk/interstitial/c/a;->c:Ljava/util/Map;

    if-eqz v1, :cond_72

    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/c/a;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_72

    .line 1310
    sget-object v1, Lcom/mintegral/msdk/interstitial/c/a;->c:Ljava/util/Map;

    iget-object v3, p0, Lcom/mintegral/msdk/interstitial/c/a;->g:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    :cond_72
    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/c/a;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "maxOffset:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " apiCacheNum:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mUnitId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/c/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_9c} :catch_a2

    .line 283
    :cond_9c
    :goto_9c
    const/4 v0, 0x0

    :try_start_9d
    invoke-direct {p0, v0}, Lcom/mintegral/msdk/interstitial/c/a;->a(Z)V

    goto/16 :goto_11

    .line 1315
    :catch_a2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a6} :catch_27

    goto :goto_9c

    :cond_a7
    move v0, v1

    goto :goto_5a
.end method

.method public final a(Lcom/mintegral/msdk/out/InterstitialListener;)V
    .registers 2

    .prologue
    .line 127
    iput-object p1, p0, Lcom/mintegral/msdk/interstitial/c/a;->k:Lcom/mintegral/msdk/out/InterstitialListener;

    .line 128
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/util/Map;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 222
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->l:Z

    .line 223
    if-nez p2, :cond_f

    .line 224
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->e:Ljava/lang/String;

    const-string v2, "init error params==null"

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 253
    :goto_e
    return v0

    .line 228
    :cond_f
    if-nez p1, :cond_1a

    .line 229
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->e:Ljava/lang/String;

    const-string v2, "init context ==null"

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 230
    goto :goto_e

    .line 233
    :cond_1a
    const-string v0, "unit_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "unit_id"

    .line 234
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_35

    .line 235
    :cond_2c
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->e:Ljava/lang/String;

    const-string v2, "init error,make sure you have unitid"

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 236
    goto :goto_e

    .line 239
    :cond_35
    const-string v0, "catetory"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 240
    const-string v0, "catetory"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_51

    .line 241
    const-string v0, "catetory"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->h:Ljava/lang/String;

    .line 245
    :cond_51
    const-string v0, "unit_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->g:Ljava/lang/String;

    .line 246
    iput-object p1, p0, Lcom/mintegral/msdk/interstitial/c/a;->f:Landroid/content/Context;

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->l:Z
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_60} :catch_63

    .line 253
    :goto_60
    iget-boolean v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->l:Z

    goto :goto_e

    .line 250
    :catch_63
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 251
    iput-boolean v1, p0, Lcom/mintegral/msdk/interstitial/c/a;->l:Z

    goto :goto_60
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->f:Landroid/content/Context;

    if-nez v0, :cond_11

    .line 327
    const-string v0, "context is null"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/interstitial/c/a;->c(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->e:Ljava/lang/String;

    const-string v1, "show context is null"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :goto_10
    return-void

    .line 331
    :cond_11
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 332
    const-string v0, "unitid is null"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/interstitial/c/a;->c(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->e:Ljava/lang/String;

    const-string v1, "show unitid is null"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_10

    .line 349
    :catch_26
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 350
    const-string v0, "can\'t show because unknow error"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/interstitial/c/a;->c(Ljava/lang/String;)V

    goto :goto_10

    .line 337
    :cond_30
    :try_start_30
    iget-boolean v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->l:Z

    if-nez v0, :cond_41

    .line 338
    const-string v0, "init error"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/interstitial/c/a;->c(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a;->e:Ljava/lang/String;

    const-string v1, "show init error"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 344
    :cond_41
    invoke-direct {p0}, Lcom/mintegral/msdk/interstitial/c/a;->c()V

    .line 346
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/interstitial/c/a;->b(Z)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_48} :catch_26

    goto :goto_10
.end method
