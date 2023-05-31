.class Lcom/JoyFramework/d/cg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anythink/rewardvideo/api/ATRewardVideoListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

.field final synthetic c:Lcom/JoyFramework/d/ce;


# direct methods
.method constructor <init>(Lcom/JoyFramework/d/ce;Ljava/lang/String;Lcom/anythink/rewardvideo/api/ATRewardVideoAd;)V
    .registers 4

    .prologue
    .line 273
    iput-object p1, p0, Lcom/JoyFramework/d/cg;->c:Lcom/JoyFramework/d/ce;

    iput-object p2, p0, Lcom/JoyFramework/d/cg;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/JoyFramework/d/cg;->b:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReward(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 8

    .prologue
    .line 374
    :try_start_0
    const-string v0, "TopOnUtil-inspire"

    const-string v1, "preLoadRewardAd-onReward"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-static {}, Lcom/JoyFramework/d/bf;->a()Lcom/JoyFramework/d/bf;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/d/cg;->a:Ljava/lang/String;

    const-string v3, "\u6fc0\u52b1\u5e7f\u544a"

    const/4 v4, 0x5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u9884\u52a0\u8f7d\u6fc0\u52b1\u89c6\u9891\uff0c\u56de\u8c03\u5956\u52b1\u63a5\u53e3\uff0c\u56de\u8c03\u7c7b\uff1a"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lcom/JoyFramework/d/cg;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    if-eqz v0, :cond_43

    const/4 v0, 0x1

    :goto_24
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/JoyFramework/d/bf;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/JoyFramework/d/cg;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 377
    iget-object v0, p0, Lcom/JoyFramework/d/cg;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Inspire:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    invoke-interface {v0, v1}, Lcom/JoyFramework/common/IOnAdListener;->onStimulateSuccess(Lcom/JoyFramework/common/IOnAdListener$Ad_Type;)V

    .line 384
    :goto_42
    return-void

    .line 375
    :cond_43
    const/4 v0, 0x0

    goto :goto_24

    .line 379
    :cond_45
    const-string v0, "TopOnUtil"

    const-string v1, "preLoadRewardAd-onReward: mOnAdListener == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4c} :catch_4d

    goto :goto_42

    .line 381
    :catch_4d
    move-exception v0

    .line 382
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_42
.end method

.method public onRewardedVideoAdClosed(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 8

    .prologue
    .line 339
    :try_start_0
    const-string v0, "TopOnUtil-inspire"

    const-string v1, "preLoadRewardAd-onRewardedVideoAdClosed "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v0, p0, Lcom/JoyFramework/d/cg;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 341
    iget-object v0, p0, Lcom/JoyFramework/d/cg;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Inspire:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    invoke-interface {v0, v1}, Lcom/JoyFramework/common/IOnAdListener;->onAdClose(Lcom/JoyFramework/common/IOnAdListener$Ad_Type;)V

    .line 345
    :goto_1a
    invoke-static {}, Lcom/JoyFramework/d/bf;->a()Lcom/JoyFramework/d/bf;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/d/cg;->a:Ljava/lang/String;

    const-string v3, "\u6fc0\u52b1\u5e7f\u544a"

    const/4 v4, 0x4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5173\u95ed\u9884\u52a0\u8f7d\u6fc0\u52b1\u89c6\u9891\uff0c\u56de\u8c03\u7c7b\uff1a"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lcom/JoyFramework/d/cg;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    if-eqz v0, :cond_6a

    const/4 v0, 0x1

    :goto_37
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/JoyFramework/d/bf;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/JoyFramework/d/cg;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->e(Lcom/JoyFramework/d/ce;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 348
    iget-object v0, p0, Lcom/JoyFramework/d/cg;->b:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    invoke-virtual {v0}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->load()V

    .line 349
    iget-object v0, p0, Lcom/JoyFramework/d/cg;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->c(Lcom/JoyFramework/d/ce;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/d/cg;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/JoyFramework/d/cg;->b:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    :cond_5c
    :goto_5c
    return-void

    .line 343
    :cond_5d
    const-string v0, "TopOnUtil"

    const-string v1, "preLoadRewardAd-onRewardedVideoAdClosed: mOnAdListener == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_64} :catch_65

    goto :goto_1a

    .line 351
    :catch_65
    move-exception v0

    .line 352
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5c

    .line 345
    :cond_6a
    const/4 v0, 0x0

    goto :goto_37
.end method

.method public onRewardedVideoAdFailed(Lcom/anythink/core/api/AdError;)V
    .registers 5

    .prologue
    .line 282
    const-string v0, "TopOnUtil-inspire"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preLoadRewardAd-onRewardedVideoAdFailed error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void
.end method

.method public onRewardedVideoAdLoaded()V
    .registers 4

    .prologue
    .line 276
    const-string v0, "TopOnUtil-inspire"

    const-string v1, "preLoadRewardAd-onRewardedVideoAdLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/JoyFramework/d/cg;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->c(Lcom/JoyFramework/d/ce;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/d/cg;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/JoyFramework/d/cg;->b:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    return-void
.end method

.method public onRewardedVideoAdPlayClicked(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 8

    .prologue
    .line 359
    :try_start_0
    const-string v0, "TopOnUtil-inspire"

    const-string v1, "preLoadRewardAd-onRewardedVideoAdPlayClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lcom/JoyFramework/d/cg;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 361
    iget-object v0, p0, Lcom/JoyFramework/d/cg;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Inspire:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    invoke-interface {v0, v1}, Lcom/JoyFramework/common/IOnAdListener;->onAdClick(Lcom/JoyFramework/common/IOnAdListener$Ad_Type;)V

    .line 365
    :goto_1a
    invoke-static {}, Lcom/JoyFramework/d/bf;->a()Lcom/JoyFramework/d/bf;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/d/cg;->a:Ljava/lang/String;

    const-string v3, "\u6fc0\u52b1\u5e7f\u544a"

    const/4 v4, 0x6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u9884\u52a0\u8f7d\u6fc0\u52b1\u89c6\u9891\uff0c\u70b9\u51fb\u5e7f\u544a\uff0c\u56de\u8c03\u7c7b\uff1a"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lcom/JoyFramework/d/cg;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    if-eqz v0, :cond_50

    const/4 v0, 0x1

    :goto_37
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/JoyFramework/d/bf;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 369
    :goto_42
    return-void

    .line 363
    :cond_43
    const-string v0, "TopOnUtil"

    const-string v1, "preLoadRewardAd-onRewardedVideoAdPlayClicked: mOnAdListener == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4a} :catch_4b

    goto :goto_1a

    .line 366
    :catch_4b
    move-exception v0

    .line 367
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_42

    .line 365
    :cond_50
    const/4 v0, 0x0

    goto :goto_37
.end method

.method public onRewardedVideoAdPlayEnd(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .prologue
    .line 302
    const-string v0, "TopOnUtil-inspire"

    const-string v1, "preLoadRewardAd-onRewardedVideoAdPlayEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-void
.end method

.method public onRewardedVideoAdPlayFailed(Lcom/anythink/core/api/AdError;Lcom/anythink/core/api/ATAdInfo;)V
    .registers 10

    .prologue
    .line 308
    if-eqz p1, :cond_1e

    .line 309
    :try_start_2
    const-string v0, "TopOnUtil-inspire"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preLoadRewardAd-onRewardedVideoAdPlayFailed error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_1e
    iget-object v0, p0, Lcom/JoyFramework/d/cg;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    if-eqz v0, :cond_98

    .line 311
    if-eqz p1, :cond_85

    .line 312
    iget-object v0, p0, Lcom/JoyFramework/d/cg;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Inspire:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/common/IOnAdListener;->onAdError(Lcom/JoyFramework/common/IOnAdListener$Ad_Type;Ljava/lang/String;)V

    .line 318
    :goto_37
    const-string v0, "\u5e7f\u544a\u52a0\u8f7d\u5931\u8d25\u4e86\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5..."

    .line 319
    if-eqz p1, :cond_ae

    .line 320
    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getDesc()Ljava/lang/String;

    move-result-object v0

    .line 321
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 322
    const-string v0, "\u5e7f\u544a\u52a0\u8f7d\u5931\u8d25\u4e86\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5..."

    .line 324
    :cond_47
    const-string v1, "is loading"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 325
    const-string v0, "\u5e7f\u544a\u6b63\u5728\u52a0\u8f7d\u4e2d\uff0c\u8bf7\u7a0d\u7b49..."

    move-object v1, v0

    .line 330
    :goto_52
    invoke-static {}, Lcom/JoyFramework/d/bf;->a()Lcom/JoyFramework/d/bf;

    move-result-object v2

    iget-object v3, p0, Lcom/JoyFramework/d/cg;->a:Ljava/lang/String;

    const-string v4, "\u6fc0\u52b1\u5e7f\u544a"

    const/4 v5, 0x3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u9884\u52a0\u8f7d\u6fc0\u52b1\u89c6\u9891\u64ad\u653e\u5931\u8d25\uff0c\u56de\u8c03\u7c7b\uff1a"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, p0, Lcom/JoyFramework/d/cg;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    if-eqz v0, :cond_ac

    const/4 v0, 0x1

    :goto_6f
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ",desc:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/JoyFramework/d/bf;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 334
    :goto_84
    return-void

    .line 314
    :cond_85
    iget-object v0, p0, Lcom/JoyFramework/d/cg;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Inspire:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    const-string v2, "\u64ad\u653e\u5931\u8d25\uff01"

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/common/IOnAdListener;->onAdError(Lcom/JoyFramework/common/IOnAdListener$Ad_Type;Ljava/lang/String;)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_92} :catch_93

    goto :goto_37

    .line 331
    :catch_93
    move-exception v0

    .line 332
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_84

    .line 316
    :cond_98
    :try_start_98
    const-string v0, "TopOnUtil"

    const-string v1, "preLoadRewardAd-onRewardedVideoAdPlayFailed: mOnAdListener == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 326
    :cond_a0
    const-string v1, "Return Ad is empty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 327
    const-string v0, "\u5e7f\u544a\u4e0d\u89c1\u4e86\uff0c\u8bf7\u91cd\u8bd5..."
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_aa} :catch_93

    move-object v1, v0

    goto :goto_52

    .line 330
    :cond_ac
    const/4 v0, 0x0

    goto :goto_6f

    :cond_ae
    move-object v1, v0

    goto :goto_52
.end method

.method public onRewardedVideoAdPlayStart(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 8

    .prologue
    .line 288
    :try_start_0
    const-string v0, "TopOnUtil-inspire"

    const-string v1, "preLoadRewardAd-onRewardedVideoAdPlayStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/JoyFramework/d/cg;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 290
    iget-object v0, p0, Lcom/JoyFramework/d/cg;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Inspire:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    invoke-interface {v0, v1}, Lcom/JoyFramework/common/IOnAdListener;->onAdShow(Lcom/JoyFramework/common/IOnAdListener$Ad_Type;)V

    .line 294
    :goto_1a
    invoke-static {}, Lcom/JoyFramework/d/bf;->a()Lcom/JoyFramework/d/bf;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/d/cg;->a:Ljava/lang/String;

    const-string v3, "\u6fc0\u52b1\u5e7f\u544a"

    const/4 v4, 0x7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5f00\u59cb\u64ad\u653e\u9884\u52a0\u8f7d\u7684\u6fc0\u52b1\u89c6\u9891\uff0c\u56de\u8c03\u7c7b\uff1a"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lcom/JoyFramework/d/cg;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    if-eqz v0, :cond_50

    const/4 v0, 0x1

    :goto_37
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/JoyFramework/d/bf;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 298
    :goto_42
    return-void

    .line 292
    :cond_43
    const-string v0, "TopOnUtil"

    const-string v1, "preLoadRewardAd-onRewardedVideoAdPlayStart: mOnAdListener == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4a} :catch_4b

    goto :goto_1a

    .line 295
    :catch_4b
    move-exception v0

    .line 296
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_42

    .line 294
    :cond_50
    const/4 v0, 0x0

    goto :goto_37
.end method
