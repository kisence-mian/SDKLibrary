.class Lcom/JoyFramework/d/cl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anythink/rewardvideo/api/ATRewardVideoListener;


# instance fields
.field final synthetic a:Lcom/JoyFramework/d/ce$b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/JoyFramework/d/ce;


# direct methods
.method constructor <init>(Lcom/JoyFramework/d/ce;Lcom/JoyFramework/d/ce$b;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 674
    iput-object p1, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    iput-object p2, p0, Lcom/JoyFramework/d/cl;->a:Lcom/JoyFramework/d/ce$b;

    iput-object p3, p0, Lcom/JoyFramework/d/cl;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReward(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 822
    iget-object v1, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v1, v0}, Lcom/JoyFramework/d/ce;->c(Lcom/JoyFramework/d/ce;Z)Z

    .line 824
    :try_start_6
    const-string v1, "TopOnUtil-inspire"

    const-string v2, "playInspireAd-onReward"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    invoke-static {}, Lcom/JoyFramework/d/bf;->a()Lcom/JoyFramework/d/bf;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/d/cl;->b:Ljava/lang/String;

    const-string v3, "\u6fc0\u52b1\u5e7f\u544a"

    const/4 v4, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u64ad\u653e\u6fc0\u52b1\u89c6\u9891\uff0c\u56de\u8c03\u5956\u52b1\u63a5\u53e3\uff0c\u56de\u8c03\u7c7b\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v6}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v6

    if-eqz v6, :cond_2a

    const/4 v0, 0x1

    :cond_2a
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/JoyFramework/d/bf;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 826
    iget-object v0, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 827
    iget-object v0, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Inspire:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    invoke-interface {v0, v1}, Lcom/JoyFramework/common/IOnAdListener;->onStimulateSuccess(Lcom/JoyFramework/common/IOnAdListener$Ad_Type;)V

    .line 834
    :goto_48
    return-void

    .line 829
    :cond_49
    const-string v0, "TopOnUtil"

    const-string v1, "playInspireAd-onReward: mOnAdListener == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_50} :catch_51

    goto :goto_48

    .line 831
    :catch_51
    move-exception v0

    .line 832
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_48
.end method

.method public onRewardedVideoAdClosed(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 784
    iget-object v2, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v2, v1}, Lcom/JoyFramework/d/ce;->c(Lcom/JoyFramework/d/ce;Z)Z

    .line 786
    :try_start_7
    const-string v2, "TopOnUtil-inspire"

    const-string v3, "playInspireAd-onRewardedVideoAdClosed "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iget-object v2, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v2}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v2

    if-eqz v2, :cond_6d

    .line 788
    iget-object v2, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v2}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v2

    sget-object v3, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Inspire:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    invoke-interface {v2, v3}, Lcom/JoyFramework/common/IOnAdListener;->onAdClose(Lcom/JoyFramework/common/IOnAdListener$Ad_Type;)V

    .line 792
    :goto_21
    invoke-static {}, Lcom/JoyFramework/d/bf;->a()Lcom/JoyFramework/d/bf;

    move-result-object v2

    iget-object v3, p0, Lcom/JoyFramework/d/cl;->b:Ljava/lang/String;

    const-string v4, "\u6fc0\u52b1\u5e7f\u544a"

    const/4 v5, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5173\u95ed\u6fc0\u52b1\u89c6\u9891\uff0c\u56de\u8c03\u7c7b\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v7}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v7

    if-eqz v7, :cond_7a

    :goto_3d
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/JoyFramework/d/bf;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 794
    iget-object v0, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->e(Lcom/JoyFramework/d/ce;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 795
    iget-object v0, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/JoyFramework/d/ce;->e(Lcom/JoyFramework/d/ce;Z)Z

    .line 796
    iget-object v0, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    iget-object v0, v0, Lcom/JoyFramework/d/ce;->b:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    invoke-virtual {v0}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->load()V

    .line 797
    iget-object v0, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->c(Lcom/JoyFramework/d/ce;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/d/cl;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    iget-object v2, v2, Lcom/JoyFramework/d/ce;->b:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    :cond_6c
    :goto_6c
    return-void

    .line 790
    :cond_6d
    const-string v2, "TopOnUtil"

    const-string v3, "playInspireAd-onRewardedVideoAdClosed: mOnAdListener == null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_74} :catch_75

    goto :goto_21

    .line 799
    :catch_75
    move-exception v0

    .line 800
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6c

    :cond_7a
    move v0, v1

    .line 792
    goto :goto_3d
.end method

.method public onRewardedVideoAdFailed(Lcom/anythink/core/api/AdError;)V
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 695
    if-eqz p1, :cond_1f

    .line 696
    :try_start_3
    const-string v1, "TopOnUtil-inspire"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playInspireAd-onRewardedVideoAdFailed error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_1f
    iget-object v1, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v1}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v1

    if-eqz v1, :cond_a5

    .line 698
    if-eqz p1, :cond_92

    .line 699
    iget-object v1, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v1}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v1

    sget-object v2, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Inspire:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/JoyFramework/common/IOnAdListener;->onAdError(Lcom/JoyFramework/common/IOnAdListener$Ad_Type;Ljava/lang/String;)V

    .line 705
    :goto_38
    const-string v1, "\u5e7f\u544a\u52a0\u8f7d\u5931\u8d25\u4e86\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5..."

    .line 706
    if-eqz p1, :cond_52

    .line 707
    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getDesc()Ljava/lang/String;

    move-result-object v1

    .line 708
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 709
    const-string v1, "\u5e7f\u544a\u52a0\u8f7d\u5931\u8d25\u4e86\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5..."

    .line 711
    :cond_48
    const-string v2, "is loading"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 712
    const-string v1, "\u5e7f\u544a\u6b63\u5728\u52a0\u8f7d\u4e2d\uff0c\u8bf7\u7a0d\u7b49..."

    .line 717
    :cond_52
    :goto_52
    invoke-static {}, Lcom/JoyFramework/d/bf;->a()Lcom/JoyFramework/d/bf;

    move-result-object v2

    iget-object v3, p0, Lcom/JoyFramework/d/cl;->b:Ljava/lang/String;

    const-string v4, "\u6fc0\u52b1\u5e7f\u544a"

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u52a0\u8f7d\u6fc0\u52b1\u89c6\u9891\u6ca1\u8fd4\u56de\uff0c\u56de\u8c03\u7c7b\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v7}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v7

    if-eqz v7, :cond_6f

    const/4 v0, 0x1

    :cond_6f
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

    .line 718
    iget-object v0, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;Z)Z

    .line 719
    iget-object v0, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    iget-object v1, p0, Lcom/JoyFramework/d/cl;->a:Lcom/JoyFramework/d/ce$b;

    invoke-static {v0, v1, p1}, Lcom/JoyFramework/d/ce;->a(Lcom/JoyFramework/d/ce;Lcom/JoyFramework/d/ce$b;Lcom/anythink/core/api/AdError;)V

    .line 723
    :goto_91
    return-void

    .line 701
    :cond_92
    iget-object v1, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v1}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v1

    sget-object v2, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Inspire:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    const-string v3, "\u64ad\u653e\u5931\u8d25"

    invoke-interface {v1, v2, v3}, Lcom/JoyFramework/common/IOnAdListener;->onAdError(Lcom/JoyFramework/common/IOnAdListener$Ad_Type;Ljava/lang/String;)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9f} :catch_a0

    goto :goto_38

    .line 720
    :catch_a0
    move-exception v0

    .line 721
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_91

    .line 703
    :cond_a5
    :try_start_a5
    const-string v1, "TopOnUtil"

    const-string v2, "playInspireAd-onRewardedVideoAdFailed: mOnAdListener == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 713
    :cond_ad
    const-string v2, "Return Ad is empty"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 714
    const-string v1, "\u5e7f\u544a\u4e0d\u89c1\u4e86\uff0c\u8bf7\u91cd\u8bd5..."
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_b7} :catch_a0

    goto :goto_52
.end method

.method public onRewardedVideoAdLoaded()V
    .registers 4

    .prologue
    .line 678
    :try_start_0
    const-string v0, "TopOnUtil-inspire"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playInspireAd-onRewardedVideoAdLoaded , isLoadAdTimeOut = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v2}, Lcom/JoyFramework/d/ce;->i(Lcom/JoyFramework/d/ce;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isReLoadRewardVideo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v2}, Lcom/JoyFramework/d/ce;->j(Lcom/JoyFramework/d/ce;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget-object v0, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    iget-object v0, v0, Lcom/JoyFramework/d/ce;->b:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    invoke-virtual {v0}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->i(Lcom/JoyFramework/d/ce;)Z

    move-result v0

    if-nez v0, :cond_5b

    iget-object v0, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->j(Lcom/JoyFramework/d/ce;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 680
    iget-object v0, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/JoyFramework/d/ce;->c(Lcom/JoyFramework/d/ce;Z)Z

    .line 681
    iget-object v0, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    iget-object v0, v0, Lcom/JoyFramework/d/ce;->b:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    invoke-virtual {v0}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->show()V

    .line 682
    iget-object v0, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;Z)Z

    .line 684
    :cond_5b
    iget-object v0, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->j(Lcom/JoyFramework/d/ce;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 690
    :goto_63
    return-void

    .line 686
    :cond_64
    iget-object v0, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    iget-object v1, p0, Lcom/JoyFramework/d/cl;->a:Lcom/JoyFramework/d/ce$b;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/ce;->a(Lcom/JoyFramework/d/ce;Lcom/JoyFramework/d/ce$b;Lcom/anythink/core/api/AdError;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6c} :catch_6d

    goto :goto_63

    .line 687
    :catch_6d
    move-exception v0

    .line 688
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_63
.end method

.method public onRewardedVideoAdPlayClicked(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 806
    iget-object v1, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v1, v0}, Lcom/JoyFramework/d/ce;->c(Lcom/JoyFramework/d/ce;Z)Z

    .line 808
    :try_start_6
    const-string v1, "TopOnUtil-inspire"

    const-string v2, "playInspireAd-onRewardedVideoAdPlayClicked"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v1, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v1}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v1

    if-eqz v1, :cond_49

    .line 810
    iget-object v1, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v1}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v1

    sget-object v2, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Inspire:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    invoke-interface {v1, v2}, Lcom/JoyFramework/common/IOnAdListener;->onAdClick(Lcom/JoyFramework/common/IOnAdListener$Ad_Type;)V

    .line 814
    :goto_20
    invoke-static {}, Lcom/JoyFramework/d/bf;->a()Lcom/JoyFramework/d/bf;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/d/cl;->b:Ljava/lang/String;

    const-string v3, "\u6fc0\u52b1\u5e7f\u544a"

    const/4 v4, 0x6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6fc0\u52b1\u89c6\u9891\uff0c\u70b9\u51fb\u5e7f\u544a\uff0c\u56de\u8c03\u7c7b\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v6}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v6

    if-eqz v6, :cond_3d

    const/4 v0, 0x1

    :cond_3d
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/JoyFramework/d/bf;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 818
    :goto_48
    return-void

    .line 812
    :cond_49
    const-string v1, "TopOnUtil"

    const-string v2, "playInspireAd-onRewardedVideoAdPlayClicked: mOnAdListener == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_50} :catch_51

    goto :goto_20

    .line 815
    :catch_51
    move-exception v0

    .line 816
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_48
.end method

.method public onRewardedVideoAdPlayEnd(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .prologue
    .line 743
    iget-object v0, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/JoyFramework/d/ce;->c(Lcom/JoyFramework/d/ce;Z)Z

    .line 744
    iget-object v0, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;Z)Z

    .line 745
    const-string v0, "TopOnUtil-inspire"

    const-string v1, "playInspireAd-onRewardedVideoAdPlayEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    return-void
.end method

.method public onRewardedVideoAdPlayFailed(Lcom/anythink/core/api/AdError;Lcom/anythink/core/api/ATAdInfo;)V
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 751
    if-eqz p1, :cond_1f

    .line 752
    :try_start_3
    const-string v1, "TopOnUtil-inspire"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playInspireAd-onRewardedVideoAdPlayFailed error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_1f
    iget-object v1, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v1}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v1

    if-eqz v1, :cond_a5

    .line 754
    if-eqz p1, :cond_92

    .line 755
    iget-object v1, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v1}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v1

    sget-object v2, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Inspire:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/JoyFramework/common/IOnAdListener;->onAdError(Lcom/JoyFramework/common/IOnAdListener$Ad_Type;Ljava/lang/String;)V

    .line 761
    :goto_38
    const-string v1, "\u5e7f\u544a\u52a0\u8f7d\u5931\u8d25\u4e86\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5..."

    .line 762
    if-eqz p1, :cond_52

    .line 763
    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getDesc()Ljava/lang/String;

    move-result-object v1

    .line 764
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 765
    const-string v1, "\u5e7f\u544a\u52a0\u8f7d\u5931\u8d25\u4e86\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5..."

    .line 767
    :cond_48
    const-string v2, "is loading"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 768
    const-string v1, "\u5e7f\u544a\u6b63\u5728\u52a0\u8f7d\u4e2d\uff0c\u8bf7\u7a0d\u7b49..."

    .line 773
    :cond_52
    :goto_52
    invoke-static {}, Lcom/JoyFramework/d/bf;->a()Lcom/JoyFramework/d/bf;

    move-result-object v2

    iget-object v3, p0, Lcom/JoyFramework/d/cl;->b:Ljava/lang/String;

    const-string v4, "\u6fc0\u52b1\u5e7f\u544a"

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u6fc0\u52b1\u89c6\u9891\u64ad\u653e\u5931\u8d25\uff0c\u56de\u8c03\u7c7b\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v7}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v7

    if-eqz v7, :cond_6f

    const/4 v0, 0x1

    :cond_6f
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

    .line 774
    iget-object v0, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;Z)Z

    .line 775
    iget-object v0, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    iget-object v1, p0, Lcom/JoyFramework/d/cl;->a:Lcom/JoyFramework/d/ce$b;

    invoke-static {v0, v1, p1}, Lcom/JoyFramework/d/ce;->a(Lcom/JoyFramework/d/ce;Lcom/JoyFramework/d/ce$b;Lcom/anythink/core/api/AdError;)V

    .line 780
    :goto_91
    return-void

    .line 757
    :cond_92
    iget-object v1, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v1}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v1

    sget-object v2, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Inspire:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    const-string v3, "\u64ad\u653e\u5931\u8d25"

    invoke-interface {v1, v2, v3}, Lcom/JoyFramework/common/IOnAdListener;->onAdError(Lcom/JoyFramework/common/IOnAdListener$Ad_Type;Ljava/lang/String;)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9f} :catch_a0

    goto :goto_38

    .line 776
    :catch_a0
    move-exception v0

    .line 777
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_91

    .line 759
    :cond_a5
    :try_start_a5
    const-string v1, "TopOnUtil"

    const-string v2, "playInspireAd-onRewardedVideoAdPlayFailed: mOnAdListener == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 769
    :cond_ad
    const-string v2, "Return Ad is empty"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 770
    const-string v1, "\u5e7f\u544a\u4e0d\u89c1\u4e86\uff0c\u8bf7\u91cd\u8bd5..."
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_b7} :catch_a0

    goto :goto_52
.end method

.method public onRewardedVideoAdPlayStart(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 727
    iget-object v1, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v1, v0}, Lcom/JoyFramework/d/ce;->c(Lcom/JoyFramework/d/ce;Z)Z

    .line 729
    :try_start_6
    const-string v1, "TopOnUtil-inspire"

    const-string v2, "playInspireAd-onRewardedVideoAdPlayStart"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v1, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v1}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v1

    if-eqz v1, :cond_49

    .line 731
    iget-object v1, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v1}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v1

    sget-object v2, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Inspire:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    invoke-interface {v1, v2}, Lcom/JoyFramework/common/IOnAdListener;->onAdShow(Lcom/JoyFramework/common/IOnAdListener$Ad_Type;)V

    .line 735
    :goto_20
    invoke-static {}, Lcom/JoyFramework/d/bf;->a()Lcom/JoyFramework/d/bf;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/d/cl;->b:Ljava/lang/String;

    const-string v3, "\u6fc0\u52b1\u5e7f\u544a"

    const/4 v4, 0x7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5f00\u59cb\u64ad\u653e\u6fc0\u52b1\u89c6\u9891\uff0c\u56de\u8c03\u7c7b\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/JoyFramework/d/cl;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v6}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v6

    if-eqz v6, :cond_3d

    const/4 v0, 0x1

    :cond_3d
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/JoyFramework/d/bf;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 739
    :goto_48
    return-void

    .line 733
    :cond_49
    const-string v1, "TopOnUtil"

    const-string v2, "playInspireAd-onRewardedVideoAdPlayStart: mOnAdListener == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_50} :catch_51

    goto :goto_20

    .line 736
    :catch_51
    move-exception v0

    .line 737
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_48
.end method
