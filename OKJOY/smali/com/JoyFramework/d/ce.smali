.class public Lcom/JoyFramework/d/ce;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JoyFramework/d/ce$b;,
        Lcom/JoyFramework/d/ce$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "TopOnUtil"


# instance fields
.field b:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

.field private c:Lcom/JoyFramework/common/IOnAdListener;

.field private d:Lcom/JoyFramework/wight/Loading/af;

.field private e:Z

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/JoyFramework/remote/bean/b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/app/Activity;

.field private h:Lcom/anythink/interstitial/api/ATInterstitial;

.field private i:Lrx/subscriptions/CompositeSubscription;

.field private j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/anythink/rewardvideo/api/ATRewardVideoAd;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/JoyFramework/common/IOnAdListener;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/JoyFramework/d/ce;->c:Lcom/JoyFramework/common/IOnAdListener;

    .line 46
    iput-object v0, p0, Lcom/JoyFramework/d/ce;->d:Lcom/JoyFramework/wight/Loading/af;

    .line 48
    iput-boolean v1, p0, Lcom/JoyFramework/d/ce;->e:Z

    .line 50
    iput-object v0, p0, Lcom/JoyFramework/d/ce;->f:Ljava/util/List;

    .line 52
    iput-object v0, p0, Lcom/JoyFramework/d/ce;->g:Landroid/app/Activity;

    .line 252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/d/ce;->j:Ljava/util/HashMap;

    .line 489
    iput-boolean v1, p0, Lcom/JoyFramework/d/ce;->k:Z

    .line 613
    iput-boolean v1, p0, Lcom/JoyFramework/d/ce;->l:Z

    .line 616
    iput-boolean v1, p0, Lcom/JoyFramework/d/ce;->n:Z

    .line 853
    iput-boolean v1, p0, Lcom/JoyFramework/d/ce;->o:Z

    .line 57
    :try_start_1e
    iput-object p1, p0, Lcom/JoyFramework/d/ce;->g:Landroid/app/Activity;

    .line 58
    new-instance v0, Lcom/JoyFramework/wight/Loading/af$a;

    invoke-direct {v0, p1}, Lcom/JoyFramework/wight/Loading/af$a;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "JoyGame_Dialog_theme"

    const-string v3, "style"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/JoyFramework/wight/Loading/af$a;->a(I)Lcom/JoyFramework/wight/Loading/af$a;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/JoyFramework/wight/Loading/af$a;->a()Lcom/JoyFramework/wight/Loading/af;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/d/ce;->d:Lcom/JoyFramework/wight/Loading/af;

    .line 61
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->d:Lcom/JoyFramework/wight/Loading/af;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/JoyFramework/wight/Loading/af;->setCanceledOnTouchOutside(Z)V

    .line 62
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->d:Lcom/JoyFramework/wight/Loading/af;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/JoyFramework/wight/Loading/af;->setCancelable(Z)V

    .line 63
    iput-object p2, p0, Lcom/JoyFramework/d/ce;->c:Lcom/JoyFramework/common/IOnAdListener;

    .line 64
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/d/ce;->i:Lrx/subscriptions/CompositeSubscription;

    .line 65
    invoke-direct {p0, p1}, Lcom/JoyFramework/d/ce;->a(Landroid/app/Activity;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_53} :catch_54

    .line 69
    :goto_53
    return-void

    .line 66
    :catch_54
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_53
.end method

.method static synthetic a(Lcom/JoyFramework/d/ce;)Ljava/util/List;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/JoyFramework/d/ce;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 41
    iput-object p1, p0, Lcom/JoyFramework/d/ce;->f:Ljava/util/List;

    return-object p1
.end method

.method private a()V
    .registers 5

    .prologue
    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->d:Lcom/JoyFramework/wight/Loading/af;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/JoyFramework/d/ce;->d:Lcom/JoyFramework/wight/Loading/af;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/Loading/af;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 74
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->g:Landroid/app/Activity;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/JoyFramework/d/ce;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 75
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->d:Lcom/JoyFramework/wight/Loading/af;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/Loading/af;->show()V

    .line 89
    :cond_1d
    :goto_1d
    return-void

    .line 77
    :cond_1e
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->g:Landroid/app/Activity;

    if-eqz v0, :cond_1d

    .line 78
    new-instance v0, Lcom/JoyFramework/wight/Loading/af$a;

    iget-object v1, p0, Lcom/JoyFramework/d/ce;->g:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/JoyFramework/wight/Loading/af$a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/JoyFramework/d/ce;->g:Landroid/app/Activity;

    .line 79
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "JoyGame_Dialog_theme"

    const-string v3, "style"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/JoyFramework/wight/Loading/af$a;->a(I)Lcom/JoyFramework/wight/Loading/af$a;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/JoyFramework/wight/Loading/af$a;->a()Lcom/JoyFramework/wight/Loading/af;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/d/ce;->d:Lcom/JoyFramework/wight/Loading/af;

    .line 81
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->d:Lcom/JoyFramework/wight/Loading/af;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/JoyFramework/wight/Loading/af;->setCanceledOnTouchOutside(Z)V

    .line 82
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->d:Lcom/JoyFramework/wight/Loading/af;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/JoyFramework/wight/Loading/af;->setCancelable(Z)V

    .line 83
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->d:Lcom/JoyFramework/wight/Loading/af;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/Loading/af;->show()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_52} :catch_53

    goto :goto_1d

    .line 86
    :catch_53
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d
.end method

.method private a(Landroid/app/Activity;)V
    .registers 8

    .prologue
    .line 112
    :try_start_0
    invoke-static {}, Lcom/JoyFramework/remote/a/a;->d()Ljava/util/HashMap;

    move-result-object v0

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/JoyFramework/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/JoyFramework/a/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/JoyFramework/remote/b/d/f;->a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {}, Lcom/JoyFramework/remote/b/d/b;->a()Lcom/JoyFramework/remote/b/d/b;

    move-result-object v1

    new-instance v2, Lcom/JoyFramework/remote/b/c/b;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/JoyFramework/d/cf;

    invoke-direct {v5, p0, p1}, Lcom/JoyFramework/d/cf;-><init>(Lcom/JoyFramework/d/ce;Landroid/app/Activity;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/JoyFramework/remote/b/c/b;-><init>(Ljava/lang/Boolean;Landroid/content/Context;Lcom/JoyFramework/remote/b/c/c;)V

    invoke-virtual {v1, v0, v2}, Lcom/JoyFramework/remote/b/d/b;->m(Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/JoyFramework/d/ce;->i:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3d} :catch_3e

    .line 158
    :goto_3d
    return-void

    .line 155
    :catch_3e
    move-exception v0

    .line 156
    const-string v1, "TopOnUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetchAdParameters: Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d
.end method

.method private a(Lcom/JoyFramework/d/ce$b;Lcom/anythink/core/api/AdError;)V
    .registers 5

    .prologue
    .line 992
    if-eqz p1, :cond_25

    .line 993
    if-eqz p2, :cond_1f

    .line 994
    :try_start_4
    const-string v0, "\u5e7f\u544a\u52a0\u8f7d\u5931\u8d25\u4e86\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5..."

    .line 995
    invoke-virtual {p2}, Lcom/anythink/core/api/AdError;->getDesc()Ljava/lang/String;

    move-result-object v0

    .line 996
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 997
    const-string v0, "\u5e7f\u544a\u52a0\u8f7d\u5931\u8d25\u4e86\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5..."

    .line 999
    :cond_12
    const-string v1, "is loading"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1000
    const-string v0, "\u5e7f\u544a\u6b63\u5728\u52a0\u8f7d\u4e2d\uff0c\u8bf7\u7a0d\u7b49..."

    .line 1004
    :cond_1c
    :goto_1c
    invoke-virtual {p1, v0}, Lcom/JoyFramework/d/ce$b;->a(Ljava/lang/String;)V

    .line 1006
    :cond_1f
    invoke-virtual {p1}, Lcom/JoyFramework/d/ce$b;->onFinish()V

    .line 1007
    invoke-virtual {p1}, Lcom/JoyFramework/d/ce$b;->cancel()V

    .line 1013
    :cond_25
    :goto_25
    return-void

    .line 1001
    :cond_26
    const-string v1, "Return Ad is empty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1002
    const-string v0, "\u5e7f\u544a\u4e0d\u89c1\u4e86\uff0c\u8bf7\u91cd\u8bd5..."
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_30} :catch_31

    goto :goto_1c

    .line 1010
    :catch_31
    move-exception v0

    .line 1011
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25
.end method

.method static synthetic a(Lcom/JoyFramework/d/ce;Lcom/JoyFramework/d/ce$b;Lcom/anythink/core/api/AdError;)V
    .registers 3

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/JoyFramework/d/ce;->a(Lcom/JoyFramework/d/ce$b;Lcom/anythink/core/api/AdError;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->g:Landroid/app/Activity;

    if-nez v0, :cond_5

    .line 477
    :goto_4
    return-void

    .line 402
    :cond_5
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->h:Lcom/anythink/interstitial/api/ATInterstitial;

    if-eqz v0, :cond_c

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/JoyFramework/d/ce;->h:Lcom/anythink/interstitial/api/ATInterstitial;

    .line 405
    :cond_c
    new-instance v0, Lcom/anythink/interstitial/api/ATInterstitial;

    iget-object v1, p0, Lcom/JoyFramework/d/ce;->g:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/anythink/interstitial/api/ATInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/JoyFramework/d/ce;->h:Lcom/anythink/interstitial/api/ATInterstitial;

    .line 406
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->h:Lcom/anythink/interstitial/api/ATInterstitial;

    new-instance v1, Lcom/JoyFramework/d/ch;

    invoke-direct {v1, p0}, Lcom/JoyFramework/d/ch;-><init>(Lcom/JoyFramework/d/ce;)V

    invoke-virtual {v0, v1}, Lcom/anythink/interstitial/api/ATInterstitial;->setAdListener(Lcom/anythink/interstitial/api/ATInterstitialListener;)V

    .line 472
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->h:Lcom/anythink/interstitial/api/ATInterstitial;

    invoke-virtual {v0}, Lcom/anythink/interstitial/api/ATInterstitial;->load()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    goto :goto_4

    .line 473
    :catch_25
    move-exception v0

    .line 474
    const-string v1, "TopOnUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preLoadInsertAd: Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->g:Landroid/app/Activity;

    if-nez v0, :cond_5

    .line 392
    :goto_4
    return-void

    .line 266
    :cond_5
    new-instance v0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    iget-object v1, p0, Lcom/JoyFramework/d/ce;->g:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 267
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/JoyFramework/user/UserManager;->getUser()Lcom/JoyFramework/user/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/JoyFramework/user/User;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 268
    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->setUserData(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    new-instance v1, Lcom/anythink/network/toutiao/TTRewardedVideoSetting;

    invoke-direct {v1}, Lcom/anythink/network/toutiao/TTRewardedVideoSetting;-><init>()V

    .line 271
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/anythink/network/toutiao/TTRewardedVideoSetting;->setRequirePermission(Z)V

    .line 272
    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->addSetting(ILcom/anythink/core/api/ATMediationSetting;)V

    .line 273
    new-instance v1, Lcom/JoyFramework/d/cg;

    invoke-direct {v1, p0, p2, v0}, Lcom/JoyFramework/d/cg;-><init>(Lcom/JoyFramework/d/ce;Ljava/lang/String;Lcom/anythink/rewardvideo/api/ATRewardVideoAd;)V

    invoke-virtual {v0, v1}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->setAdListener(Lcom/anythink/rewardvideo/api/ATRewardVideoListener;)V

    .line 387
    invoke-virtual {v0}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->load()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_37

    goto :goto_4

    .line 388
    :catch_37
    move-exception v0

    .line 389
    const-string v1, "TopOnUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preLoadRewardAd: Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method static synthetic a(Lcom/JoyFramework/d/ce;Z)Z
    .registers 2

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/JoyFramework/d/ce;->e:Z

    return p1
.end method

.method private b()V
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->d:Lcom/JoyFramework/wight/Loading/af;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/JoyFramework/d/ce;->d:Lcom/JoyFramework/wight/Loading/af;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/Loading/af;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 93
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->d:Lcom/JoyFramework/wight/Loading/af;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/Loading/af;->dismiss()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/JoyFramework/d/ce;->d:Lcom/JoyFramework/wight/Loading/af;

    .line 96
    :cond_14
    return-void
.end method

.method static synthetic b(Lcom/JoyFramework/d/ce;)V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/JoyFramework/d/ce;->d()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 485
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->g:Landroid/app/Activity;

    if-nez v0, :cond_4

    .line 487
    :cond_4
    return-void
.end method

.method static synthetic b(Lcom/JoyFramework/d/ce;Z)Z
    .registers 2

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/JoyFramework/d/ce;->k:Z

    return p1
.end method

.method static synthetic c(Lcom/JoyFramework/d/ce;)Ljava/util/HashMap;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->j:Ljava/util/HashMap;

    return-object v0
.end method

.method private c()Z
    .registers 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/JoyFramework/d/ar;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 169
    :try_start_18
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/JoyFramework/d/ar;->g(Landroid/content/Context;)Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_21} :catch_26

    move-result v0

    .line 171
    if-eqz v0, :cond_2a

    .line 172
    const/4 v0, 0x1

    .line 178
    :goto_25
    return v0

    .line 174
    :catch_26
    move-exception v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 178
    :cond_2a
    const/4 v0, 0x0

    goto :goto_25
.end method

.method static synthetic c(Lcom/JoyFramework/d/ce;Z)Z
    .registers 2

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/JoyFramework/d/ce;->n:Z

    return p1
.end method

.method static synthetic d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->c:Lcom/JoyFramework/common/IOnAdListener;

    return-object v0
.end method

.method private d()V
    .registers 5

    .prologue
    .line 185
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->f:Ljava/util/List;

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/JoyFramework/d/ce;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_60

    .line 186
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/JoyFramework/d/ar;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_65

    const-string v1, "WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 190
    :try_start_24
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/JoyFramework/d/ar;->g(Landroid/content/Context;)Z

    move-result v0

    .line 192
    if-eqz v0, :cond_60

    .line 193
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_36
    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/b;

    .line 197
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/b;->b()Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 200
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/b;->a()Ljava/lang/String;

    move-result-object v3

    .line 201
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/b;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_9c

    goto :goto_36

    .line 204
    :pswitch_58
    invoke-direct {p0, v2, v3}, Lcom/JoyFramework/d/ce;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_5b} :catch_5c

    goto :goto_36

    .line 218
    :catch_5c
    move-exception v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 250
    :cond_60
    return-void

    .line 208
    :pswitch_61
    :try_start_61
    invoke-direct {p0, v2}, Lcom/JoyFramework/d/ce;->a(Ljava/lang/String;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_5c

    goto :goto_36

    .line 223
    :cond_65
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6b
    :goto_6b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/b;

    .line 225
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/b;->d()I

    move-result v2

    .line 226
    const/4 v3, 0x1

    if-ne v2, v3, :cond_6b

    .line 227
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/b;->b()Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6b

    .line 230
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/b;->a()Ljava/lang/String;

    move-result-object v3

    .line 231
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/b;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_a4

    goto :goto_6b

    .line 234
    :pswitch_94
    invoke-direct {p0, v2, v3}, Lcom/JoyFramework/d/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6b

    .line 238
    :pswitch_98
    invoke-direct {p0, v2}, Lcom/JoyFramework/d/ce;->a(Ljava/lang/String;)V

    goto :goto_6b

    .line 201
    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_58
        :pswitch_61
    .end packed-switch

    .line 231
    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_94
        :pswitch_98
    .end packed-switch
.end method

.method static synthetic d(Lcom/JoyFramework/d/ce;Z)Z
    .registers 2

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/JoyFramework/d/ce;->m:Z

    return p1
.end method

.method private e()V
    .registers 4

    .prologue
    .line 847
    new-instance v0, Lcom/anythink/network/toutiao/TTRewardedVideoSetting;

    invoke-direct {v0}, Lcom/anythink/network/toutiao/TTRewardedVideoSetting;-><init>()V

    .line 848
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anythink/network/toutiao/TTRewardedVideoSetting;->setRequirePermission(Z)V

    .line 849
    iget-object v1, p0, Lcom/JoyFramework/d/ce;->b:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v0}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->addSetting(ILcom/anythink/core/api/ATMediationSetting;)V

    .line 851
    return-void
.end method

.method static synthetic e(Lcom/JoyFramework/d/ce;)Z
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/JoyFramework/d/ce;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/JoyFramework/d/ce;Z)Z
    .registers 2

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/JoyFramework/d/ce;->l:Z

    return p1
.end method

.method static synthetic f(Lcom/JoyFramework/d/ce;)Z
    .registers 2

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/JoyFramework/d/ce;->k:Z

    return v0
.end method

.method static synthetic f(Lcom/JoyFramework/d/ce;Z)Z
    .registers 2

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/JoyFramework/d/ce;->o:Z

    return p1
.end method

.method static synthetic g(Lcom/JoyFramework/d/ce;)Z
    .registers 2

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/JoyFramework/d/ce;->m:Z

    return v0
.end method

.method static synthetic h(Lcom/JoyFramework/d/ce;)V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/JoyFramework/d/ce;->b()V

    return-void
.end method

.method static synthetic i(Lcom/JoyFramework/d/ce;)Z
    .registers 2

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/JoyFramework/d/ce;->n:Z

    return v0
.end method

.method static synthetic j(Lcom/JoyFramework/d/ce;)Z
    .registers 2

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/JoyFramework/d/ce;->l:Z

    return v0
.end method

.method static synthetic k(Lcom/JoyFramework/d/ce;)Z
    .registers 2

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/JoyFramework/d/ce;->o:Z

    return v0
.end method

.method static synthetic l(Lcom/JoyFramework/d/ce;)Lcom/anythink/interstitial/api/ATInterstitial;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->h:Lcom/anythink/interstitial/api/ATInterstitial;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 16

    .prologue
    .line 493
    :try_start_0
    iget-boolean v2, p0, Lcom/JoyFramework/d/ce;->e:Z

    if-nez v2, :cond_d

    .line 494
    const-string v2, "\u5e7f\u544a\u521d\u59cb\u5316\u672a\u6210\u529f\uff0c\u8bf7\u91cd\u542f\u6e38\u620f\u540e\u518d\u8bd5"

    const/4 v3, 0x0

    new-array v3, v3, [Z

    invoke-static {p1, v2, v3}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 610
    :goto_c
    return-void

    .line 497
    :cond_d
    iget-object v2, p0, Lcom/JoyFramework/d/ce;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/JoyFramework/remote/bean/b;

    .line 498
    invoke-virtual {v2}, Lcom/JoyFramework/remote/bean/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 499
    invoke-virtual {v2}, Lcom/JoyFramework/remote/bean/b;->b()Ljava/lang/String;

    move-result-object p2

    .line 504
    :cond_2d
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v9, v0

    .line 505
    new-instance v10, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v10, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 506
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x42f00000    # 120.0f

    invoke-static {v3, v4}, Lcom/JoyFramework/d/ar;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v11, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 507
    const/16 v2, 0x30

    iput v2, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 508
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 509
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 511
    new-instance v12, Lcom/anythink/banner/api/ATBannerView;

    invoke-direct {v12, p1}, Lcom/anythink/banner/api/ATBannerView;-><init>(Landroid/content/Context;)V

    .line 513
    invoke-virtual {v12, p2}, Lcom/anythink/banner/api/ATBannerView;->setUnitId(Ljava/lang/String;)V

    .line 514
    invoke-virtual {v12}, Lcom/anythink/banner/api/ATBannerView;->loadAd()V

    .line 515
    invoke-direct {p0}, Lcom/JoyFramework/d/ce;->a()V

    .line 516
    new-instance v2, Lcom/JoyFramework/d/ce$b;

    const-wide/16 v4, 0x3e80

    const-wide/16 v6, 0x3e8

    new-instance v8, Lcom/JoyFramework/d/ci;

    invoke-direct {v8, p0, p1}, Lcom/JoyFramework/d/ci;-><init>(Lcom/JoyFramework/d/ce;Landroid/app/Activity;)V

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/JoyFramework/d/ce$b;-><init>(Lcom/JoyFramework/d/ce;JJLcom/JoyFramework/d/ce$a;)V

    .line 524
    invoke-virtual {v2}, Lcom/JoyFramework/d/ce$b;->start()Landroid/os/CountDownTimer;

    move-result-object v7

    check-cast v7, Lcom/JoyFramework/d/ce$b;

    .line 525
    new-instance v2, Lcom/JoyFramework/d/cj;

    move-object v3, p0

    move-object v4, v10

    move-object v5, v12

    move-object v6, v11

    move-object v8, v9

    invoke-direct/range {v2 .. v8}, Lcom/JoyFramework/d/cj;-><init>(Lcom/JoyFramework/d/ce;Landroid/view/ViewGroup;Lcom/anythink/banner/api/ATBannerView;Landroid/widget/FrameLayout$LayoutParams;Lcom/JoyFramework/d/ce$b;Landroid/view/ViewGroup;)V

    invoke-virtual {v12, v2}, Lcom/anythink/banner/api/ATBannerView;->setBannerAdListener(Lcom/anythink/banner/api/ATBannerListener;)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8c} :catch_8d

    goto :goto_c

    .line 607
    :catch_8d
    move-exception v2

    .line 608
    const-string v3, "TopOnUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playBannerAd: Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c
.end method

.method public a(Lcom/JoyFramework/common/IOnAdListener;)V
    .registers 2

    .prologue
    .line 99
    if-eqz p1, :cond_4

    .line 100
    iput-object p1, p0, Lcom/JoyFramework/d/ce;->c:Lcom/JoyFramework/common/IOnAdListener;

    .line 102
    :cond_4
    return-void
.end method

.method public b(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 619
    :try_start_0
    iget-boolean v0, p0, Lcom/JoyFramework/d/ce;->e:Z

    if-nez v0, :cond_d

    .line 620
    const-string v0, "\u5e7f\u544a\u521d\u59cb\u5316\u672a\u6210\u529f\uff0c\u8bf7\u91cd\u542f\u6e38\u620f\u540e\u518d\u8bd5"

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-static {p1, v0, v1}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 844
    :goto_c
    return-void

    .line 623
    :cond_d
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->j:Ljava/util/HashMap;

    if-eqz v0, :cond_b7

    iget-object v0, p0, Lcom/JoyFramework/d/ce;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_b7

    .line 624
    const-string v0, "TopOnUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playInspireAd: preLoadInspireView.size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/d/ce;->j:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",placementId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    .line 626
    if-eqz v0, :cond_b7

    .line 627
    invoke-virtual {v0}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->isAdReady()Z

    move-result v1

    if-eqz v1, :cond_af

    .line 628
    const-string v1, "TopOnUtil"

    const-string v2, "playInspireAd: \u4ece\u7f13\u5b58\u5bf9\u8c61\u4e2d\u64ad\u653e ..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-virtual {v0}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->show()V

    .line 630
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    const-string v0, "TopOnUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playInspireAd2: preLoadInspireView.size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/d/ce;->j:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",placementId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8c} :catch_8d

    goto :goto_c

    .line 839
    :catch_8d
    move-exception v0

    .line 840
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 841
    const-string v1, "TopOnUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playInspireAd: Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 634
    :cond_af
    :try_start_af
    invoke-virtual {v0}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->onDestory()V

    .line 635
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    :cond_b7
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_bd
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_123

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/b;

    .line 642
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bd

    .line 643
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 647
    :goto_d7
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/JoyFramework/d/ce;->l:Z

    .line 648
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/JoyFramework/d/ce;->m:Z

    .line 649
    new-instance v1, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    invoke-direct {v1, p1, v0}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/JoyFramework/d/ce;->b:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    .line 650
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/UserManager;->getUser()Lcom/JoyFramework/user/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/User;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 651
    iget-object v1, p0, Lcom/JoyFramework/d/ce;->b:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->setUserData(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-direct {p0}, Lcom/JoyFramework/d/ce;->e()V

    .line 653
    new-instance v0, Lcom/JoyFramework/d/ce$b;

    const-wide/16 v2, 0x3e80

    const-wide/16 v4, 0x3e8

    new-instance v6, Lcom/JoyFramework/d/ck;

    invoke-direct {v6, p0, p1, p2}, Lcom/JoyFramework/d/ck;-><init>(Lcom/JoyFramework/d/ce;Landroid/app/Activity;Ljava/lang/String;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/JoyFramework/d/ce$b;-><init>(Lcom/JoyFramework/d/ce;JJLcom/JoyFramework/d/ce$a;)V

    .line 672
    invoke-virtual {v0}, Lcom/JoyFramework/d/ce$b;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/d/ce$b;

    .line 674
    iget-object v1, p0, Lcom/JoyFramework/d/ce;->b:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    new-instance v2, Lcom/JoyFramework/d/cl;

    invoke-direct {v2, p0, v0, p2}, Lcom/JoyFramework/d/cl;-><init>(Lcom/JoyFramework/d/ce;Lcom/JoyFramework/d/ce$b;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->setAdListener(Lcom/anythink/rewardvideo/api/ATRewardVideoListener;)V

    .line 837
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->b:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    invoke-virtual {v0}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->load()V

    .line 838
    invoke-direct {p0}, Lcom/JoyFramework/d/ce;->a()V
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_121} :catch_8d

    goto/16 :goto_c

    :cond_123
    move-object v0, p2

    goto :goto_d7
.end method

.method public c(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 857
    :try_start_0
    iget-boolean v0, p0, Lcom/JoyFramework/d/ce;->e:Z

    if-nez v0, :cond_d

    .line 858
    const-string v0, "\u5e7f\u544a\u521d\u59cb\u5316\u672a\u6210\u529f\uff0c\u8bf7\u91cd\u542f\u6e38\u620f\u540e\u518d\u8bd5"

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-static {p1, v0, v1}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 982
    :goto_c
    return-void

    .line 861
    :cond_d
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->h:Lcom/anythink/interstitial/api/ATInterstitial;

    if-eqz v0, :cond_40

    .line 862
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->h:Lcom/anythink/interstitial/api/ATInterstitial;

    invoke-virtual {v0}, Lcom/anythink/interstitial/api/ATInterstitial;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 863
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->h:Lcom/anythink/interstitial/api/ATInterstitial;

    invoke-virtual {v0}, Lcom/anythink/interstitial/api/ATInterstitial;->show()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    goto :goto_c

    .line 979
    :catch_1f
    move-exception v0

    .line 980
    const-string v1, "TopOnUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playInsertAd: Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 866
    :cond_3d
    const/4 v0, 0x0

    :try_start_3e
    iput-object v0, p0, Lcom/JoyFramework/d/ce;->h:Lcom/anythink/interstitial/api/ATInterstitial;

    .line 869
    :cond_40
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_46
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/b;

    .line 870
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 871
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/b;->b()Ljava/lang/String;

    move-result-object p2

    .line 875
    :cond_60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/JoyFramework/d/ce;->o:Z

    .line 876
    new-instance v0, Lcom/anythink/interstitial/api/ATInterstitial;

    invoke-direct {v0, p1, p2}, Lcom/anythink/interstitial/api/ATInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/JoyFramework/d/ce;->h:Lcom/anythink/interstitial/api/ATInterstitial;

    .line 877
    new-instance v0, Lcom/JoyFramework/d/ce$b;

    const-wide/16 v2, 0x3e80

    const-wide/16 v4, 0x3e8

    new-instance v6, Lcom/JoyFramework/d/cm;

    invoke-direct {v6, p0, p1}, Lcom/JoyFramework/d/cm;-><init>(Lcom/JoyFramework/d/ce;Landroid/app/Activity;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/JoyFramework/d/ce$b;-><init>(Lcom/JoyFramework/d/ce;JJLcom/JoyFramework/d/ce$a;)V

    .line 886
    invoke-virtual {v0}, Lcom/JoyFramework/d/ce$b;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/d/ce$b;

    .line 888
    iget-object v1, p0, Lcom/JoyFramework/d/ce;->h:Lcom/anythink/interstitial/api/ATInterstitial;

    new-instance v2, Lcom/JoyFramework/d/cn;

    invoke-direct {v2, p0, v0}, Lcom/JoyFramework/d/cn;-><init>(Lcom/JoyFramework/d/ce;Lcom/JoyFramework/d/ce$b;)V

    invoke-virtual {v1, v2}, Lcom/anythink/interstitial/api/ATInterstitial;->setAdListener(Lcom/anythink/interstitial/api/ATInterstitialListener;)V

    .line 977
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->h:Lcom/anythink/interstitial/api/ATInterstitial;

    invoke-virtual {v0}, Lcom/anythink/interstitial/api/ATInterstitial;->load()V

    .line 978
    invoke-direct {p0}, Lcom/JoyFramework/d/ce;->a()V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_91} :catch_1f

    goto/16 :goto_c
.end method

.method public d(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 1022
    iget-boolean v0, p0, Lcom/JoyFramework/d/ce;->e:Z

    if-nez v0, :cond_25

    .line 1023
    const-string v0, "TopOnUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isReadyAtPlacementId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",ad is not ready to load ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1039
    :goto_24
    return v0

    .line 1026
    :cond_25
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->j:Ljava/util/HashMap;

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/JoyFramework/d/ce;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_ae

    .line 1027
    const-string v0, "TopOnUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isReadyAtPlacementId: preLoadInspireView.size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/JoyFramework/d/ce;->j:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",placementId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    iget-object v0, p0, Lcom/JoyFramework/d/ce;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    .line 1029
    if-eqz v0, :cond_ae

    .line 1030
    invoke-virtual {v0}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 1031
    const-string v0, "TopOnUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isReadyAtPlacementId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",ad is ready to play ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    const/4 v0, 0x1

    goto :goto_24

    .line 1034
    :cond_8d
    const-string v0, "TopOnUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isReadyAtPlacementId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",ad is not ready to play ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1035
    goto/16 :goto_24

    :cond_ae
    move v0, v1

    .line 1039
    goto/16 :goto_24
.end method
