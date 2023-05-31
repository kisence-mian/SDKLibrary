.class final Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$c;
.super Lcom/mintegral/msdk/video/js/a/b$a;
.source "MTGRewardVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;


# direct methods
.method private constructor <init>(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)V
    .registers 2

    .prologue
    .line 881
    iput-object p1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$c;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-direct {p0}, Lcom/mintegral/msdk/video/js/a/b$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;B)V
    .registers 3

    .prologue
    .line 881
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$c;-><init>(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 885
    invoke-super {p0}, Lcom/mintegral/msdk/video/js/a/b$a;->a()V

    .line 886
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$c;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-virtual {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->receiveSuccess()V

    .line 887
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 939
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/a/b$a;->a(ILjava/lang/String;)V

    .line 940
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$c;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-virtual {v0, p1, p2}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->defaultLoad(ILjava/lang/String;)V

    .line 941
    return-void
.end method

.method public final a(Z)V
    .registers 4

    .prologue
    .line 933
    invoke-super {p0, p1}, Lcom/mintegral/msdk/video/js/a/b$a;->a(Z)V

    .line 934
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$c;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->k(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Lcom/mintegral/msdk/reward/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$c;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v1}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->l(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/mintegral/msdk/reward/a/d;->a(ZLjava/lang/String;)V

    .line 935
    return-void
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 945
    invoke-super {p0}, Lcom/mintegral/msdk/video/js/a/b$a;->b()V

    .line 947
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$c;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->u(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 948
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$c;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->w(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$c;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v1}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->v(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 950
    :cond_1a
    return-void
.end method

.method public final onFinishRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 901
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/a/b$a;->onFinishRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V

    .line 902
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$c;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->s(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Z

    .line 903
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$c;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->t(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)V

    .line 904
    if-eqz p1, :cond_47

    instance-of v0, p1, Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_47

    .line 906
    :try_start_13
    check-cast p1, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 907
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$c;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-virtual {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->getJSVideoModule()Lcom/mintegral/msdk/video/js/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/h;->getCurrentProgress()Ljava/lang/String;

    move-result-object v0

    .line 908
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 909
    const-string v0, "progress"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 910
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getLinkType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_47

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getEndcard_click_result()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_47

    .line 911
    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 912
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$c;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-virtual {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->finish()V
    :try_end_47
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_47} :catch_48

    .line 921
    :cond_47
    :goto_47
    return-void

    .line 916
    :catch_48
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_47
.end method

.method public final onRedirectionFailed(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 925
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/a/b$a;->onRedirectionFailed(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V

    .line 926
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$c;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->t(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)V

    .line 927
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$c;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->s(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Z

    .line 929
    return-void
.end method

.method public final onStartRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 891
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/a/b$a;->onStartRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V

    .line 892
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$c;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->r(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)V

    .line 893
    return-void
.end method
