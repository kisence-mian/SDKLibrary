.class Lcom/JoyFramework/d/cn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anythink/interstitial/api/ATInterstitialListener;


# instance fields
.field final synthetic a:Lcom/JoyFramework/d/ce$b;

.field final synthetic b:Lcom/JoyFramework/d/ce;


# direct methods
.method constructor <init>(Lcom/JoyFramework/d/ce;Lcom/JoyFramework/d/ce$b;)V
    .registers 3

    .prologue
    .line 888
    iput-object p1, p0, Lcom/JoyFramework/d/cn;->b:Lcom/JoyFramework/d/ce;

    iput-object p2, p0, Lcom/JoyFramework/d/cn;->a:Lcom/JoyFramework/d/ce$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterstitialAdClicked(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .prologue
    .line 920
    :try_start_0
    const-string v0, "TopOnUtil-insert"

    const-string v1, "onInterstitialAdClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-object v0, p0, Lcom/JoyFramework/d/cn;->b:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 922
    iget-object v0, p0, Lcom/JoyFramework/d/cn;->b:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Insert:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    invoke-interface {v0, v1}, Lcom/JoyFramework/common/IOnAdListener;->onAdClick(Lcom/JoyFramework/common/IOnAdListener$Ad_Type;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 927
    :cond_1a
    :goto_1a
    return-void

    .line 924
    :catch_1b
    move-exception v0

    .line 925
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method

.method public onInterstitialAdClose(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .prologue
    .line 944
    :try_start_0
    const-string v0, "TopOnUtil-insert"

    const-string v1, "onInterstitialAdClose"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    iget-object v0, p0, Lcom/JoyFramework/d/cn;->b:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 946
    iget-object v0, p0, Lcom/JoyFramework/d/cn;->b:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Insert:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    invoke-interface {v0, v1}, Lcom/JoyFramework/common/IOnAdListener;->onAdClose(Lcom/JoyFramework/common/IOnAdListener$Ad_Type;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 951
    :cond_1a
    :goto_1a
    return-void

    .line 948
    :catch_1b
    move-exception v0

    .line 949
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method

.method public onInterstitialAdLoadFail(Lcom/anythink/core/api/AdError;)V
    .registers 5

    .prologue
    .line 906
    :try_start_0
    const-string v0, "TopOnUtil-insert"

    const-string v1, "onInterstitialAdLoadFail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iget-object v0, p0, Lcom/JoyFramework/d/cn;->b:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 908
    iget-object v0, p0, Lcom/JoyFramework/d/cn;->b:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Insert:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/common/IOnAdListener;->onAdError(Lcom/JoyFramework/common/IOnAdListener$Ad_Type;Ljava/lang/String;)V

    .line 910
    :cond_1e
    iget-object v0, p0, Lcom/JoyFramework/d/cn;->b:Lcom/JoyFramework/d/ce;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/JoyFramework/d/ce;->f(Lcom/JoyFramework/d/ce;Z)Z

    .line 911
    iget-object v0, p0, Lcom/JoyFramework/d/cn;->b:Lcom/JoyFramework/d/ce;

    iget-object v1, p0, Lcom/JoyFramework/d/cn;->a:Lcom/JoyFramework/d/ce$b;

    invoke-static {v0, v1, p1}, Lcom/JoyFramework/d/ce;->a(Lcom/JoyFramework/d/ce;Lcom/JoyFramework/d/ce$b;Lcom/anythink/core/api/AdError;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    .line 915
    :goto_2b
    return-void

    .line 912
    :catch_2c
    move-exception v0

    .line 913
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2b
.end method

.method public onInterstitialAdLoaded()V
    .registers 4

    .prologue
    .line 892
    :try_start_0
    const-string v0, "TopOnUtil-insert"

    const-string v1, "onInterstitialAdLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    iget-object v0, p0, Lcom/JoyFramework/d/cn;->b:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->l(Lcom/JoyFramework/d/ce;)Lcom/anythink/interstitial/api/ATInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/interstitial/api/ATInterstitial;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 894
    iget-object v0, p0, Lcom/JoyFramework/d/cn;->b:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->l(Lcom/JoyFramework/d/ce;)Lcom/anythink/interstitial/api/ATInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/interstitial/api/ATInterstitial;->show()V

    .line 895
    iget-object v0, p0, Lcom/JoyFramework/d/cn;->b:Lcom/JoyFramework/d/ce;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/JoyFramework/d/ce;->f(Lcom/JoyFramework/d/ce;Z)Z

    .line 897
    :cond_22
    iget-object v0, p0, Lcom/JoyFramework/d/cn;->b:Lcom/JoyFramework/d/ce;

    iget-object v1, p0, Lcom/JoyFramework/d/cn;->a:Lcom/JoyFramework/d/ce$b;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/ce;->a(Lcom/JoyFramework/d/ce;Lcom/JoyFramework/d/ce$b;Lcom/anythink/core/api/AdError;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    .line 901
    :goto_2a
    return-void

    .line 898
    :catch_2b
    move-exception v0

    .line 899
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a
.end method

.method public onInterstitialAdShow(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .prologue
    .line 932
    :try_start_0
    const-string v0, "TopOnUtil-insert"

    const-string v1, "onInterstitialAdShow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    iget-object v0, p0, Lcom/JoyFramework/d/cn;->b:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 934
    iget-object v0, p0, Lcom/JoyFramework/d/cn;->b:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Insert:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    invoke-interface {v0, v1}, Lcom/JoyFramework/common/IOnAdListener;->onAdShow(Lcom/JoyFramework/common/IOnAdListener$Ad_Type;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 939
    :cond_1a
    :goto_1a
    return-void

    .line 936
    :catch_1b
    move-exception v0

    .line 937
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method

.method public onInterstitialAdVideoEnd(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .prologue
    .line 960
    const-string v0, "TopOnUtil-insert"

    const-string v1, "onInterstitialAdVideoEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    return-void
.end method

.method public onInterstitialAdVideoError(Lcom/anythink/core/api/AdError;)V
    .registers 5

    .prologue
    .line 966
    :try_start_0
    const-string v0, "TopOnUtil-insert"

    const-string v1, "onInterstitialAdVideoError"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    iget-object v0, p0, Lcom/JoyFramework/d/cn;->b:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 968
    iget-object v0, p0, Lcom/JoyFramework/d/cn;->b:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Insert:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/JoyFramework/common/IOnAdListener;->onAdError(Lcom/JoyFramework/common/IOnAdListener$Ad_Type;Ljava/lang/String;)V

    .line 970
    :cond_1e
    iget-object v0, p0, Lcom/JoyFramework/d/cn;->b:Lcom/JoyFramework/d/ce;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/JoyFramework/d/ce;->f(Lcom/JoyFramework/d/ce;Z)Z

    .line 971
    iget-object v0, p0, Lcom/JoyFramework/d/cn;->b:Lcom/JoyFramework/d/ce;

    iget-object v1, p0, Lcom/JoyFramework/d/cn;->a:Lcom/JoyFramework/d/ce$b;

    invoke-static {v0, v1, p1}, Lcom/JoyFramework/d/ce;->a(Lcom/JoyFramework/d/ce;Lcom/JoyFramework/d/ce$b;Lcom/anythink/core/api/AdError;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    .line 975
    :goto_2b
    return-void

    .line 972
    :catch_2c
    move-exception v0

    .line 973
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2b
.end method

.method public onInterstitialAdVideoStart(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .prologue
    .line 955
    const-string v0, "TopOnUtil-insert"

    const-string v1, "onInterstitialAdVideoStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    return-void
.end method
