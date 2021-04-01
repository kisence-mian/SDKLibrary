.class public Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;
.super Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;
.source "MTGRewardVideoActivity.java"

# interfaces
.implements Lcom/mintegral/msdk/f/b;
.implements Lcom/mintegral/msdk/mtgjscommon/mraid/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$c;,
        Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$b;,
        Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$a;,
        Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$d;
    }
.end annotation


# static fields
.field public static final INTENT_ISBID:Ljava/lang/String; = "isBid"

.field public static final INTENT_ISIV:Ljava/lang/String; = "isIV"

.field public static final INTENT_MUTE:Ljava/lang/String; = "mute"

.field public static final INTENT_REWARD:Ljava/lang/String; = "reward"

.field public static final INTENT_UNITID:Ljava/lang/String; = "unitId"

.field public static final INTENT_USERID:Ljava/lang/String; = "userId"


# instance fields
.field private a:Landroid/view/View;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/mintegral/msdk/videocommon/b/d;

.field private e:I

.field private f:Lcom/mintegral/msdk/base/entity/CampaignEx;

.field private g:Lcom/mintegral/msdk/videocommon/e/c;

.field private h:Lcom/mintegral/msdk/videocommon/download/a;

.field private i:Lcom/mintegral/msdk/reward/a/d;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Lcom/mintegral/msdk/mtgjscommon/mraid/d;

.field private t:Lcom/iab/omid/library/mintegral/adsession/AdSession;

.field private u:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

.field private v:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;-><init>()V

    .line 100
    const/4 v0, 0x2

    iput v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->e:I

    .line 109
    iput-boolean v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->j:Z

    .line 110
    iput-boolean v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->k:Z

    .line 111
    iput-boolean v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->l:Z

    .line 118
    iput-boolean v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->n:Z

    .line 119
    iput-boolean v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->o:Z

    .line 122
    iput-boolean v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->p:Z

    .line 124
    iput-boolean v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->q:Z

    .line 126
    iput-boolean v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->r:Z

    .line 130
    iput-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->t:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    .line 131
    iput-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->u:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    .line 133
    new-instance v0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$1;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$1;-><init>(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)V

    iput-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->v:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Landroid/view/View;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->a:Landroid/view/View;

    return-object v0
.end method

.method private a()V
    .registers 7

    .prologue
    .line 230
    new-instance v0, Lcom/mintegral/msdk/base/common/e/b;

    invoke-virtual {p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/base/common/e/b;-><init>(Landroid/content/Context;)V

    .line 231
    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v1, :cond_3a

    .line 232
    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->unitId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mintegral/msdk/mtgjscommon/mraid/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v5}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isBidCampaign()Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/mintegral/msdk/base/common/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 233
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/mtgjscommon/mraid/c;->b(Ljava/lang/String;)V

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->m:Z

    .line 236
    :cond_3a
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 648
    :try_start_0
    new-instance v1, Lcom/mintegral/msdk/base/entity/q;

    invoke-direct {v1}, Lcom/mintegral/msdk/base/entity/q;-><init>()V

    .line 649
    const-string v0, "2000037"

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->n(Ljava/lang/String;)V

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "code="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",desc="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->j(Ljava/lang/String;)V

    .line 651
    const-string v0, ""

    .line 652
    iget-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v2, :cond_3e

    iget-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRewardTemplateMode()Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 653
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRewardTemplateMode()Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object v0

    .line 655
    :cond_3e
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->i(Ljava/lang/String;)V

    .line 656
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->l(Ljava/lang/String;)V

    .line 657
    const-string v0, ""

    .line 658
    iget-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v2, :cond_52

    .line 659
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v0

    .line 661
    :cond_52
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->m(Ljava/lang/String;)V

    .line 662
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6e

    .line 663
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->k(Ljava/lang/String;)V

    .line 665
    :cond_6e
    invoke-virtual {p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->getApplicationContext()Landroid/content/Context;

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v0

    .line 666
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->b(I)V

    .line 667
    invoke-virtual {p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/mintegral/msdk/base/utils/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->q(Ljava/lang/String;)V

    .line 668
    invoke-static {v1}, Lcom/mintegral/msdk/base/entity/q;->f(Lcom/mintegral/msdk/base/entity/q;)Ljava/lang/String;

    move-result-object v0

    .line 669
    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/video/module/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8c} :catch_8d

    .line 673
    :goto_8c
    return-void

    .line 670
    :catch_8d
    move-exception v0

    .line 671
    const-string v1, "AbstractJSActivity"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8c
.end method

.method private a(I)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 713
    .line 715
    packed-switch p1, :pswitch_data_1c

    :goto_5
    move v0, v1

    .line 728
    :goto_6
    return v0

    .line 717
    :pswitch_7
    const/4 v2, 0x0

    :try_start_8
    invoke-virtual {p0, v2}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->setRequestedOrientation(I)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_6

    .line 725
    :catch_c
    move-exception v0

    .line 726
    const-string v2, "AbstractJSActivity"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 721
    :pswitch_17
    const/4 v2, 0x1

    :try_start_18
    invoke-virtual {p0, v2}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->setRequestedOrientation(I)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1b} :catch_c

    goto :goto_6

    .line 715
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_17
        :pswitch_7
    .end packed-switch
.end method

.method static synthetic a(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;Z)Z
    .registers 2

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Lcom/mintegral/msdk/base/entity/CampaignEx;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    return-object v0
.end method

.method private b()V
    .registers 5

    .prologue
    .line 624
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->k:Z

    .line 625
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->i:Lcom/mintegral/msdk/reward/a/d;

    if-eqz v0, :cond_10

    .line 626
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->i:Lcom/mintegral/msdk/reward/a/d;

    iget-boolean v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->j:Z

    iget-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->d:Lcom/mintegral/msdk/videocommon/b/d;

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/reward/a/d;->a(ZLcom/mintegral/msdk/videocommon/b/d;)V

    .line 628
    :cond_10
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 629
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mIsIV:Z

    iget-boolean v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->isBidCampaign:Z

    invoke-static {v0, v1}, Lcom/mintegral/msdk/reward/b/a;->a(ZZ)V

    .line 630
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mIsIV:Z

    if-nez v0, :cond_44

    .line 2583
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->j:Z

    if-eqz v0, :cond_44

    .line 2584
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->i:Lcom/mintegral/msdk/reward/a/d;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->i:Lcom/mintegral/msdk/reward/a/d;

    invoke-interface {v0}, Lcom/mintegral/msdk/reward/a/d;->b()Z

    move-result v0

    if-nez v0, :cond_44

    .line 2587
    :cond_32
    const-string v0, "AbstractJSActivity"

    const-string v1, "sendToServerRewardInfo"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2588
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->d:Lcom/mintegral/msdk/videocommon/b/d;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/mintegral/msdk/video/module/b/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/videocommon/b/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    :cond_44
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mIsIV:Z

    if-eqz v0, :cond_59

    .line 634
    const/16 v0, 0x11f

    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/videocommon/a;->b(ILcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 638
    :goto_4f
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    if-eqz v0, :cond_58

    .line 639
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->release()V

    .line 644
    :cond_58
    :goto_58
    return-void

    .line 636
    :cond_59
    const/16 v0, 0x5e

    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/videocommon/a;->b(ILcom/mintegral/msdk/base/entity/CampaignEx;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_60} :catch_61

    goto :goto_4f

    .line 641
    :catch_61
    move-exception v0

    .line 642
    const-string v1, "AbstractJSActivity"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_58
.end method

.method static synthetic c(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Lcom/mintegral/msdk/video/module/MintegralContainerView;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .registers 5

    .prologue
    .line 676
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    .line 678
    :try_start_6
    const-string v1, "VideoCache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "zhuangtai-->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->h:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-virtual {v3}, Lcom/mintegral/msdk/videocommon/download/a;->h()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->h:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-virtual {v3}, Lcom/mintegral/msdk/videocommon/download/a;->l()Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "name-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->h:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-virtual {v3}, Lcom/mintegral/msdk/videocommon/download/a;->l()Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->h:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/download/a;->h()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_54

    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->h:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/download/a;->h()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_a2

    .line 681
    :cond_54
    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->h:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/download/a;->c()Ljava/lang/String;

    move-result-object v1

    .line 682
    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/s;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6c

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6c

    move-object v0, v1

    .line 685
    :cond_6c
    const-string v1, "VideoCache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "path:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->h:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-virtual {v3}, Lcom/mintegral/msdk/videocommon/download/a;->l()Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "name-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->h:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-virtual {v3}, Lcom/mintegral/msdk/videocommon/download/a;->l()Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a2
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_a2} :catch_a3

    .line 691
    :cond_a2
    :goto_a2
    return-object v0

    .line 688
    :catch_a3
    move-exception v1

    .line 689
    const-string v2, "AbstractJSActivity"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a2
.end method

.method private static d()I
    .registers 5

    .prologue
    .line 733
    const/4 v1, 0x5

    .line 735
    :try_start_1
    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->a()Lcom/mintegral/msdk/videocommon/e/b;

    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->b()Lcom/mintegral/msdk/videocommon/e/a;

    move-result-object v0

    .line 736
    if-nez v0, :cond_10

    .line 737
    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->a()Lcom/mintegral/msdk/videocommon/e/b;

    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->c()Lcom/mintegral/msdk/videocommon/e/a;

    .line 739
    :cond_10
    if-eqz v0, :cond_36

    .line 740
    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/e/a;->i()J
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_15} :catch_2c

    move-result-wide v0

    long-to-int v0, v0

    .line 742
    :goto_17
    :try_start_17
    const-string v1, "AbstractJSActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MintegralBaseView buffetTimeout:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_2b} :catch_34

    .line 746
    :goto_2b
    return v0

    .line 744
    :catch_2c
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    :goto_30
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2b

    :catch_34
    move-exception v1

    goto :goto_30

    :cond_36
    move v0, v1

    goto :goto_17
.end method

.method static synthetic d(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Lcom/mintegral/msdk/video/module/MintegralContainerView;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    return-object v0
.end method

.method static synthetic e(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Lcom/mintegral/msdk/video/module/MintegralContainerView;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    return-object v0
.end method

.method static synthetic f(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->u:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    return-object v0
.end method

.method static synthetic g(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Z
    .registers 2

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->p:Z

    return v0
.end method

.method static synthetic h(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Lcom/mintegral/msdk/video/module/MintegralVideoView;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralVideoView:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    return-object v0
.end method

.method static synthetic i(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Lcom/mintegral/msdk/video/module/MintegralVideoView;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralVideoView:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    return-object v0
.end method

.method static synthetic j(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Lcom/mintegral/msdk/videocommon/download/a;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->h:Lcom/mintegral/msdk/videocommon/download/a;

    return-object v0
.end method

.method static synthetic k(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Lcom/mintegral/msdk/reward/a/d;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->i:Lcom/mintegral/msdk/reward/a/d;

    return-object v0
.end method

.method static synthetic l(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Z
    .registers 2

    .prologue
    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->j:Z

    return v0
.end method

.method static synthetic n(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Z
    .registers 2

    .prologue
    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->q:Z

    return v0
.end method

.method static synthetic o(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Z
    .registers 2

    .prologue
    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->r:Z

    return v0
.end method

.method static synthetic p(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->v:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic q(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic r(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)V
    .registers 2

    .prologue
    .line 82
    .line 3750
    invoke-virtual {p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->isLoadSuccess()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3751
    new-instance v0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$4;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$4;-><init>(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)V

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 82
    :cond_e
    return-void
.end method

.method static synthetic s(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Z
    .registers 2

    .prologue
    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->o:Z

    return v0
.end method

.method static synthetic t(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)V
    .registers 2

    .prologue
    .line 82
    .line 3763
    invoke-virtual {p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->isLoadSuccess()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3764
    new-instance v0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$5;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$5;-><init>(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)V

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 82
    :cond_e
    return-void
.end method

.method static synthetic u(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic v(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->receiveRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic w(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public canBackPress()Z
    .registers 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->canBackPress()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public checkEnv(Landroid/content/Intent;)Z
    .registers 11

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 242
    const-string v0, "unitId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->b:Ljava/lang/String;

    .line 243
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->unitId:Ljava/lang/String;

    .line 244
    const-string v0, "userId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->c:Ljava/lang/String;

    .line 245
    const-string v0, "mute"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->e:I

    .line 246
    const-string v0, "isIV"

    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mIsIV:Z

    .line 247
    const-string v0, "isBid"

    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->isBidCampaign:Z

    .line 248
    const-string v0, "reward"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3f

    move v0, v7

    .line 274
    :goto_3e
    return v0

    .line 252
    :cond_3f
    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->a()Lcom/mintegral/msdk/videocommon/e/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mintegral/msdk/videocommon/e/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/videocommon/e/c;

    move-result-object v1

    iput-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->g:Lcom/mintegral/msdk/videocommon/e/c;

    .line 253
    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->g:Lcom/mintegral/msdk/videocommon/e/c;

    if-nez v1, :cond_6b

    .line 254
    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->a()Lcom/mintegral/msdk/videocommon/e/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mIsIV:Z

    invoke-static {v1, v2, v3}, Lcom/mintegral/msdk/videocommon/e/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/mintegral/msdk/videocommon/e/c;

    move-result-object v1

    iput-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->g:Lcom/mintegral/msdk/videocommon/e/c;

    .line 256
    :cond_6b
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/c;->getInstance()Lcom/mintegral/msdk/videocommon/download/c;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->isBidCampaign:Z

    invoke-virtual {v1, v2, v3}, Lcom/mintegral/msdk/videocommon/download/c;->a(Ljava/lang/String;Z)Lcom/mintegral/msdk/videocommon/download/a;

    move-result-object v1

    iput-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->h:Lcom/mintegral/msdk/videocommon/download/a;

    .line 257
    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->h:Lcom/mintegral/msdk/videocommon/download/a;

    if-eqz v1, :cond_8f

    .line 258
    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->h:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/download/a;->l()Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v1

    iput-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 259
    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->h:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-virtual {v1, v8}, Lcom/mintegral/msdk/videocommon/download/a;->a(Z)V

    .line 260
    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->h:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-virtual {v1, v7}, Lcom/mintegral/msdk/videocommon/download/a;->b(Z)V

    .line 262
    :cond_8f
    invoke-static {v0}, Lcom/mintegral/msdk/videocommon/b/d;->a(Ljava/lang/String;)Lcom/mintegral/msdk/videocommon/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->d:Lcom/mintegral/msdk/videocommon/b/d;

    .line 263
    sget-object v0, Lcom/mintegral/msdk/reward/b/a;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/reward/a/d;

    iput-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->i:Lcom/mintegral/msdk/reward/a/d;

    .line 264
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->h:Lcom/mintegral/msdk/videocommon/download/a;

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->d:Lcom/mintegral/msdk/videocommon/b/d;

    if-nez v0, :cond_af

    :cond_ad
    move v0, v7

    .line 265
    goto :goto_3e

    .line 268
    :cond_af
    new-instance v0, Lcom/mintegral/msdk/reward/c/b;

    iget-boolean v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mIsIV:Z

    iget-object v3, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->g:Lcom/mintegral/msdk/videocommon/e/c;

    iget-object v4, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v5, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->i:Lcom/mintegral/msdk/reward/a/d;

    iget-object v6, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->b:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/mintegral/msdk/reward/c/b;-><init>(Landroid/content/Context;ZLcom/mintegral/msdk/videocommon/e/c;Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/reward/a/d;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->i:Lcom/mintegral/msdk/reward/a/d;

    .line 270
    new-instance v0, Lcom/mintegral/msdk/reward/c/d;

    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->i:Lcom/mintegral/msdk/reward/a/d;

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/reward/c/d;-><init>(Lcom/mintegral/msdk/reward/a/d;)V

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->registerErrorListener(Lcom/mintegral/msdk/video/js/activity/AbstractActivity$a;)V

    .line 272
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->g:Lcom/mintegral/msdk/videocommon/e/c;

    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 1696
    invoke-virtual {p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->getH5Orientation()I

    move-result v2

    .line 1698
    if-eq v2, v8, :cond_f2

    .line 1703
    if-eqz v1, :cond_e5

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRewardTemplateMode()Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    move-result-object v1

    if-eqz v1, :cond_e5

    .line 1704
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->b()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->a(I)Z

    move-result v7

    .line 1706
    :cond_e5
    if-nez v7, :cond_f2

    if-eqz v0, :cond_f2

    .line 1707
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->g:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/e/c;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->a(I)Z

    .line 273
    :cond_f2
    invoke-virtual {p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->setShowingTransparent()V

    move v0, v8

    .line 274
    goto/16 :goto_3e
.end method

.method public close()V
    .registers 3

    .prologue
    .line 990
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->getH5EndCardView()Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 991
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->getH5EndCardView()Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->onCloseViewClick()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 996
    :cond_15
    :goto_15
    return-void

    .line 993
    :catch_16
    move-exception v0

    .line 994
    const-string v1, "AbstractJSActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method

.method public defaultLoad(ILjava/lang/String;)V
    .registers 16

    .prologue
    const/4 v10, 0x0

    .line 469
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->defaultLoad(ILjava/lang/String;)V

    .line 470
    const-string v0, "AbstractJSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hybrid load error ,start defaultLoad,desc:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-virtual {p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->isLoadSuccess()Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 472
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPlayable_ads_without_video()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6d

    .line 473
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->setCampaign(Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 474
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->setUnitID(Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->g:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/e/c;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->setCloseDelayTime(I)V

    .line 476
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->g:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/e/c;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->setPlayCloseBtnTm(I)V

    .line 477
    iget-object v6, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    new-instance v0, Lcom/mintegral/msdk/video/module/a/a/h;

    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->h:Lcom/mintegral/msdk/videocommon/download/a;

    iget-object v3, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->d:Lcom/mintegral/msdk/videocommon/b/d;

    iget-object v4, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->b:Ljava/lang/String;

    new-instance v5, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$b;

    invoke-direct {v5, p0, v10}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$b;-><init>(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;B)V

    invoke-direct/range {v0 .. v5}, Lcom/mintegral/msdk/video/module/a/a/h;-><init>(Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/videocommon/download/a;Lcom/mintegral/msdk/videocommon/b/d;Ljava/lang/String;Lcom/mintegral/msdk/video/module/a/a;)V

    invoke-virtual {v6, v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->setNotifyListener(Lcom/mintegral/msdk/video/module/a/a;)V

    .line 478
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->preLoadData()V

    .line 479
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->showPlayableView()V

    .line 498
    :goto_6c
    return-void

    .line 481
    :cond_6d
    invoke-direct {p0, p1, p2}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->a(ILjava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 483
    invoke-virtual {p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->loadModuleDatas()V

    .line 484
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->g:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/e/c;->f()I

    move-result v0

    .line 485
    invoke-virtual {p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->getH5CloseType()I

    move-result v7

    .line 486
    if-eqz v7, :cond_dc

    .line 489
    :goto_86
    iget-object v12, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralVideoView:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    new-instance v0, Lcom/mintegral/msdk/video/module/a/a/m;

    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralVideoView:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    iget-object v3, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v4, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->d:Lcom/mintegral/msdk/videocommon/b/d;

    iget-object v5, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->h:Lcom/mintegral/msdk/videocommon/download/a;

    iget-object v6, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->b:Ljava/lang/String;

    iget-object v8, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->g:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-virtual {v8}, Lcom/mintegral/msdk/videocommon/e/c;->e()I

    move-result v8

    new-instance v9, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$d;

    invoke-direct {v9, p0, v10}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$d;-><init>(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;B)V

    iget-object v10, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->g:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-virtual {v10}, Lcom/mintegral/msdk/videocommon/e/c;->L()D

    move-result-wide v10

    invoke-direct/range {v0 .. v11}, Lcom/mintegral/msdk/video/module/a/a/m;-><init>(Lcom/mintegral/msdk/video/module/MintegralVideoView;Lcom/mintegral/msdk/video/module/MintegralContainerView;Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/videocommon/b/d;Lcom/mintegral/msdk/videocommon/download/a;Ljava/lang/String;IILcom/mintegral/msdk/video/module/a/a;D)V

    invoke-virtual {v12, v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->setNotifyListener(Lcom/mintegral/msdk/video/module/a/a;)V

    .line 490
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralVideoView:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->defaultShow()V

    .line 491
    iget-object v8, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    new-instance v0, Lcom/mintegral/msdk/video/module/a/a/b;

    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralVideoView:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    iget-object v3, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v4, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->d:Lcom/mintegral/msdk/videocommon/b/d;

    iget-object v5, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->h:Lcom/mintegral/msdk/videocommon/download/a;

    iget-object v6, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->b:Ljava/lang/String;

    new-instance v7, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$a;

    iget-object v9, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-direct {v7, p0, p0, v9}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$a;-><init>(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;Landroid/app/Activity;Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    invoke-direct/range {v0 .. v7}, Lcom/mintegral/msdk/video/module/a/a/b;-><init>(Lcom/mintegral/msdk/video/module/MintegralVideoView;Lcom/mintegral/msdk/video/module/MintegralContainerView;Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/videocommon/b/d;Lcom/mintegral/msdk/videocommon/download/a;Ljava/lang/String;Lcom/mintegral/msdk/video/module/a/a;)V

    invoke-virtual {v8, v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->setNotifyListener(Lcom/mintegral/msdk/video/module/a/a;)V

    .line 492
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->defaultShow()V

    goto :goto_6c

    .line 495
    :cond_d5
    invoke-direct {p0, p1, p2}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->a(ILjava/lang/String;)V

    .line 496
    invoke-virtual {p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->finish()V

    goto :goto_6c

    :cond_dc
    move v7, v0

    goto :goto_86
.end method

.method public expand(Ljava/lang/String;Z)V
    .registers 3

    .prologue
    .line 1020
    return-void
.end method

.method public findMintegralContainerView()Lcom/mintegral/msdk/video/module/MintegralContainerView;
    .registers 2

    .prologue
    .line 568
    const-string v0, "mintegral_video_templete_container"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/video/module/MintegralContainerView;

    return-object v0
.end method

.method public findMintegralVideoView()Lcom/mintegral/msdk/video/module/MintegralVideoView;
    .registers 2

    .prologue
    .line 563
    const-string v0, "mintegral_video_templete_videoview"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/video/module/MintegralVideoView;

    return-object v0
.end method

.method public findWindVaneWebView()Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;
    .registers 4

    .prologue
    .line 536
    :try_start_0
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mIsIV:Z

    if-eqz v0, :cond_2b

    .line 537
    const/16 v0, 0x11f

    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/videocommon/a;->a(ILcom/mintegral/msdk/base/entity/CampaignEx;)Lcom/mintegral/msdk/videocommon/a$a;

    move-result-object v0

    .line 541
    :goto_c
    if-eqz v0, :cond_44

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/a$a;->b()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 542
    iget-boolean v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mIsIV:Z

    if-eqz v1, :cond_34

    .line 543
    const/16 v1, 0x11f

    iget-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-static {v1, v2}, Lcom/mintegral/msdk/videocommon/a;->b(ILcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 547
    :goto_1f
    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/a$a;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    move-result-object v0

    .line 548
    iget-boolean v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->n:Z

    if-eqz v1, :cond_2a

    .line 549
    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->setWebViewTransparent()V

    .line 558
    :cond_2a
    :goto_2a
    return-object v0

    .line 539
    :cond_2b
    const/16 v0, 0x5e

    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/videocommon/a;->a(ILcom/mintegral/msdk/base/entity/CampaignEx;)Lcom/mintegral/msdk/videocommon/a$a;

    move-result-object v0

    goto :goto_c

    .line 545
    :cond_34
    const/16 v1, 0x5e

    iget-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-static {v1, v2}, Lcom/mintegral/msdk/videocommon/a;->b(ILcom/mintegral/msdk/base/entity/CampaignEx;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3c

    goto :goto_1f

    .line 553
    :catch_3c
    move-exception v0

    .line 554
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_44

    .line 555
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 558
    :cond_44
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method public finish()V
    .registers 2

    .prologue
    .line 218
    invoke-super {p0}, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->finish()V

    .line 219
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->k:Z

    if-nez v0, :cond_a

    .line 220
    invoke-direct {p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->b()V

    .line 223
    :cond_a
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->m:Z

    if-nez v0, :cond_11

    .line 224
    invoke-direct {p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->a()V

    .line 226
    :cond_11
    return-void
.end method

.method public getCampaignEx()Lcom/mintegral/msdk/base/entity/CampaignEx;
    .registers 2

    .prologue
    .line 579
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    return-object v0
.end method

.method public getH5Templete()Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity$a;
    .registers 2

    .prologue
    .line 523
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLayoutID()I
    .registers 2

    .prologue
    .line 528
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->n:Z

    if-eqz v0, :cond_b

    const-string v0, "mintegral_reward_activity_video_templete_transparent"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->findLayout(Ljava/lang/String;)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const-string v0, "mintegral_reward_activity_video_templete"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->findLayout(Ljava/lang/String;)I

    move-result v0

    goto :goto_a
.end method

.method public getMraidCampaign()Lcom/mintegral/msdk/base/entity/CampaignEx;
    .registers 2

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    return-object v0
.end method

.method public initViews()Z
    .registers 2

    .prologue
    .line 573
    const-string v0, "mintegral_video_templete_progressbar"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->a:Landroid/view/View;

    .line 574
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->a:Landroid/view/View;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public loadModuleDatas()V
    .registers 16

    .prologue
    const/4 v1, 0x0

    .line 354
    invoke-virtual {p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->getH5MuteState()I

    move-result v0

    .line 355
    if-eqz v0, :cond_9

    .line 356
    iput v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->e:I

    .line 358
    :cond_9
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->g:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/e/c;->f()I

    move-result v0

    .line 359
    invoke-virtual {p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->getH5CloseType()I

    move-result v9

    .line 360
    if-eqz v9, :cond_24e

    .line 363
    :goto_15
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_34

    .line 364
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOmid()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->b:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/mintegral/msdk/a/b;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/mintegral/adsession/AdSession;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->t:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    .line 366
    :cond_34
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralVideoView:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    iget v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->e:I

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->setSoundState(I)V

    .line 367
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralVideoView:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->setCampaign(Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 368
    const-string v2, ""

    .line 369
    invoke-direct {p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->c()Ljava/lang/String;

    move-result-object v0

    .line 370
    const-string v3, ".dltmp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1ea

    .line 372
    :try_start_50
    invoke-static {}, Lcom/mintegral/msdk/base/controller/b;->a()Lcom/mintegral/msdk/base/controller/b;

    move-result-object v3

    invoke-virtual {v3, p0, v0}, Lcom/mintegral/msdk/base/controller/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/mintegral/msdk/f/f;

    move-result-object v3

    .line 373
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/f/f;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_61} :catch_1d8
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_61} :catch_1e1

    move-result-object v0

    .line 374
    :try_start_62
    new-instance v2, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$3;

    invoke-direct {v2, p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$3;-><init>(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)V

    iget-object v4, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 391
    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v4

    .line 374
    invoke-virtual {v3, v2, v4}, Lcom/mintegral/msdk/f/f;->a(Lcom/mintegral/msdk/f/b;Ljava/lang/String;)V

    .line 392
    const-string v2, "VideoCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u4e0a\u9762"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "playUrl-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " id-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_b4} :catch_24c
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_b4} :catch_24a

    .line 403
    :goto_b4
    iget-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralVideoView:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-virtual {v2, v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->setPlayURL(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralVideoView:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->g:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-virtual {v2}, Lcom/mintegral/msdk/videocommon/e/c;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->setVideoSkipTime(I)V

    .line 405
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralVideoView:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->g:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-virtual {v2}, Lcom/mintegral/msdk/videocommon/e/c;->k()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->setCloseAlert(I)V

    .line 406
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralVideoView:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-static {}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->setBufferTimeout(I)V

    .line 407
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralVideoView:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    new-instance v3, Lcom/mintegral/msdk/video/module/a/a/n;

    iget-object v4, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->jsFactory:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    iget-object v5, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v6, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->d:Lcom/mintegral/msdk/videocommon/b/d;

    iget-object v7, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->h:Lcom/mintegral/msdk/videocommon/download/a;

    iget-object v8, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->g:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-virtual {v2}, Lcom/mintegral/msdk/videocommon/e/c;->e()I

    move-result v10

    new-instance v11, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$d;

    invoke-direct {v11, p0, v1}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$d;-><init>(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;B)V

    iget-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->g:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-virtual {v2}, Lcom/mintegral/msdk/videocommon/e/c;->L()D

    move-result-wide v12

    invoke-direct/range {v3 .. v13}, Lcom/mintegral/msdk/video/module/a/a/n;-><init>(Lcom/mintegral/msdk/video/js/factory/IJSFactory;Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/videocommon/b/d;Lcom/mintegral/msdk/videocommon/download/a;Ljava/lang/String;IILcom/mintegral/msdk/video/module/a/a;D)V

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->setNotifyListener(Lcom/mintegral/msdk/video/module/a/a;)V

    .line 408
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralVideoView:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    iget-boolean v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->n:Z

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->setShowingTransparent(Z)V

    .line 409
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralVideoView:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->t:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->setAdSession(Lcom/iab/omid/library/mintegral/adsession/AdSession;)V

    .line 411
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->setCampaign(Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 412
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->setUnitID(Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->g:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-virtual {v2}, Lcom/mintegral/msdk/videocommon/e/c;->m()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->setCloseDelayTime(I)V

    .line 414
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->g:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-virtual {v2}, Lcom/mintegral/msdk/videocommon/e/c;->j()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->setPlayCloseBtnTm(I)V

    .line 416
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->g:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-virtual {v2}, Lcom/mintegral/msdk/videocommon/e/c;->h()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->setVideoInteractiveType(I)V

    .line 417
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->g:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-virtual {v2}, Lcom/mintegral/msdk/videocommon/e/c;->o()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->setEndscreenType(I)V

    .line 418
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->g:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-virtual {v2}, Lcom/mintegral/msdk/videocommon/e/c;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->setVideoSkipTime(I)V

    .line 419
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    iget-boolean v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->n:Z

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->setShowingTransparent(Z)V

    .line 420
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPlayable_ads_without_video()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_218

    .line 421
    iget-object v6, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    new-instance v0, Lcom/mintegral/msdk/video/module/a/a/h;

    iget-object v7, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->h:Lcom/mintegral/msdk/videocommon/download/a;

    iget-object v3, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->d:Lcom/mintegral/msdk/videocommon/b/d;

    iget-object v4, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->b:Ljava/lang/String;

    new-instance v5, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$b;

    invoke-direct {v5, p0, v1}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$b;-><init>(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;B)V

    move-object v1, v7

    invoke-direct/range {v0 .. v5}, Lcom/mintegral/msdk/video/module/a/a/h;-><init>(Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/videocommon/download/a;Lcom/mintegral/msdk/videocommon/b/d;Ljava/lang/String;Lcom/mintegral/msdk/video/module/a/a;)V

    invoke-virtual {v6, v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->setNotifyListener(Lcom/mintegral/msdk/video/module/a/a;)V

    .line 423
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->preLoadData()V

    .line 424
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->showPlayableView()V

    .line 431
    :goto_182
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->n:Z

    if-eqz v0, :cond_18b

    .line 432
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->setMintegralClickMiniCardViewTransparent()V

    .line 434
    :cond_18b
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->t:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    if-eqz v0, :cond_1d7

    .line 435
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->t:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mintegral/adsession/AdSession;->addFriendlyObstruction(Landroid/view/View;)V

    .line 436
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->a:Landroid/view/View;

    if-eqz v0, :cond_1a1

    .line 437
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->t:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mintegral/adsession/AdSession;->addFriendlyObstruction(Landroid/view/View;)V

    .line 439
    :cond_1a1
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->windVaneWebView:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_1ac

    .line 440
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->t:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->windVaneWebView:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mintegral/adsession/AdSession;->addFriendlyObstruction(Landroid/view/View;)V

    .line 442
    :cond_1ac
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->t:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    invoke-static {v0}, Lcom/iab/omid/library/mintegral/adsession/AdEvents;->createAdEvents(Lcom/iab/omid/library/mintegral/adsession/AdSession;)Lcom/iab/omid/library/mintegral/adsession/AdEvents;

    move-result-object v0

    .line 443
    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->t:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    invoke-static {v1}, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->createVideoEvents(Lcom/iab/omid/library/mintegral/adsession/AdSession;)Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    move-result-object v1

    iput-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->u:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    .line 444
    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->t:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    invoke-virtual {v1}, Lcom/iab/omid/library/mintegral/adsession/AdSession;->start()V

    .line 445
    const/4 v1, 0x1

    sget-object v2, Lcom/iab/omid/library/mintegral/adsession/video/Position;->STANDALONE:Lcom/iab/omid/library/mintegral/adsession/video/Position;

    invoke-static {v1, v2}, Lcom/iab/omid/library/mintegral/adsession/video/VastProperties;->createVastPropertiesForNonSkippableVideo(ZLcom/iab/omid/library/mintegral/adsession/video/Position;)Lcom/iab/omid/library/mintegral/adsession/video/VastProperties;

    move-result-object v1

    .line 446
    iget-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->u:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    invoke-virtual {v2, v1}, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->loaded(Lcom/iab/omid/library/mintegral/adsession/video/VastProperties;)V

    .line 447
    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralVideoView:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->u:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->setVideoEvents(Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;)V

    .line 449
    if-eqz v0, :cond_1d7

    .line 450
    :try_start_1d4
    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/AdEvents;->impressionOccurred()V
    :try_end_1d7
    .catch Ljava/lang/Exception; {:try_start_1d4 .. :try_end_1d7} :catch_23f

    .line 456
    :cond_1d7
    :goto_1d7
    return-void

    .line 394
    :catch_1d8
    move-exception v0

    move-object v14, v0

    move-object v0, v2

    move-object v2, v14

    :goto_1dc
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_b4

    .line 396
    :catch_1e1
    move-exception v0

    move-object v14, v0

    move-object v0, v2

    move-object v2, v14

    :goto_1e5
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_b4

    .line 399
    :cond_1ea
    const-string v0, "VideoCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u4e0b\u9762"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-direct {p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->c()Ljava/lang/String;

    move-result-object v0

    .line 401
    const-string v2, "VideoCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u4e0b\u9762"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b4

    .line 426
    :cond_218
    iget-object v7, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    new-instance v0, Lcom/mintegral/msdk/video/module/a/a/c;

    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->jsFactory:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v3, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->d:Lcom/mintegral/msdk/videocommon/b/d;

    iget-object v4, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->h:Lcom/mintegral/msdk/videocommon/download/a;

    iget-object v5, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->b:Ljava/lang/String;

    new-instance v6, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$a;

    iget-object v8, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-direct {v6, p0, p0, v8}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$a;-><init>(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;Landroid/app/Activity;Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    invoke-direct/range {v0 .. v6}, Lcom/mintegral/msdk/video/module/a/a/c;-><init>(Lcom/mintegral/msdk/video/js/factory/IJSFactory;Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/videocommon/b/d;Lcom/mintegral/msdk/videocommon/download/a;Ljava/lang/String;Lcom/mintegral/msdk/video/module/a/a;)V

    invoke-virtual {v7, v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->setNotifyListener(Lcom/mintegral/msdk/video/module/a/a;)V

    .line 428
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->preLoadData()V

    .line 429
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralVideoView:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->preLoadData()V

    goto/16 :goto_182

    .line 452
    :catch_23f
    move-exception v0

    .line 453
    const-string v1, "omsdk"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d7

    .line 396
    :catch_24a
    move-exception v2

    goto :goto_1e5

    .line 394
    :catch_24c
    move-exception v2

    goto :goto_1dc

    :cond_24e
    move v9, v0

    goto/16 :goto_15
.end method

.method protected loadVideoData()V
    .registers 9

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 289
    new-instance v0, Lcom/mintegral/msdk/video/js/factory/b;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->windVaneWebView:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    iget-object v3, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralVideoView:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    iget-object v4, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->getCampaignEx()Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/mintegral/msdk/video/js/factory/b;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Lcom/mintegral/msdk/video/module/MintegralVideoView;Lcom/mintegral/msdk/video/module/MintegralContainerView;Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->registerJsFactory(Lcom/mintegral/msdk/video/js/factory/IJSFactory;)V

    .line 290
    iget-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->windVaneWebView:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    .line 2318
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/c;->getInstance()Lcom/mintegral/msdk/videocommon/download/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/download/c;->a(Z)V

    .line 2319
    invoke-virtual {p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->getJSCommon()Lcom/mintegral/msdk/video/js/b;

    move-result-object v0

    iget v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->e:I

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/video/js/b;->a(I)V

    .line 2320
    invoke-virtual {p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->getJSCommon()Lcom/mintegral/msdk/video/js/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/video/js/b;->a(Ljava/lang/String;)V

    .line 2321
    invoke-virtual {p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->getJSCommon()Lcom/mintegral/msdk/video/js/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->g:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/video/js/b;->a(Lcom/mintegral/msdk/videocommon/e/c;)V

    .line 2322
    invoke-virtual {p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->getJSCommon()Lcom/mintegral/msdk/video/js/b;

    move-result-object v0

    new-instance v1, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$c;

    invoke-direct {v1, p0, v6}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$c;-><init>(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;B)V

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/video/js/b;->a(Lcom/mintegral/msdk/video/js/b$a;)V

    .line 2325
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isMraid()Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isActiveOm()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 2326
    :cond_5a
    new-instance v0, Lcom/mintegral/msdk/mtgjscommon/mraid/d;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/mtgjscommon/mraid/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->s:Lcom/mintegral/msdk/mtgjscommon/mraid/d;

    .line 2327
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->s:Lcom/mintegral/msdk/mtgjscommon/mraid/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgjscommon/mraid/d;->c()V

    .line 2328
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->s:Lcom/mintegral/msdk/mtgjscommon/mraid/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgjscommon/mraid/d;->a()D

    .line 2329
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->s:Lcom/mintegral/msdk/mtgjscommon/mraid/d;

    new-instance v1, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$2;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$2;-><init>(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgjscommon/mraid/d;->a(Lcom/mintegral/msdk/mtgjscommon/mraid/d$b;)V

    .line 292
    :cond_75
    if-eqz v2, :cond_c8

    .line 293
    invoke-virtual {p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mintegral_video_templete_webview_parent"

    const-string v3, "id"

    invoke-static {v0, v1, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 294
    invoke-virtual {v2, p0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->setApiManagerContext(Landroid/content/Context;)V

    .line 295
    invoke-virtual {v2}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_98

    .line 296
    const-string v0, "preload template webview is null or load error"

    invoke-virtual {p0, v6, v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->defaultLoad(ILjava/lang/String;)V

    .line 309
    :goto_97
    return-void

    .line 299
    :cond_98
    invoke-virtual {v2}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/mintegral/msdk/video/js/a/h;

    if-eqz v1, :cond_bf

    .line 300
    invoke-virtual {v2}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mintegral/msdk/video/js/a/h;

    invoke-virtual {v1}, Lcom/mintegral/msdk/video/js/a/h;->l()I

    move-result v1

    .line 301
    invoke-virtual {p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->getJSContainerModule()Lcom/mintegral/msdk/video/js/d;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/mintegral/msdk/video/js/d;->readyStatus(I)V

    .line 302
    invoke-super {p0}, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->loadVideoData()V

    .line 303
    invoke-virtual {p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->getJSCommon()Lcom/mintegral/msdk/video/js/b;

    move-result-object v1

    check-cast v1, Lcom/mintegral/msdk/video/js/a/b;

    iget-object v1, v1, Lcom/mintegral/msdk/video/js/a/b;->j:Lcom/mintegral/msdk/video/js/b$a;

    invoke-interface {v1}, Lcom/mintegral/msdk/video/js/b$a;->a()V

    .line 305
    :cond_bf
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_97

    .line 308
    :cond_c8
    const-string v0, "preload template webview is null or load error"

    invoke-virtual {p0, v6, v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->defaultLoad(ILjava/lang/String;)V

    goto :goto_97
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 599
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->n:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralVideoView:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    if-eqz v0, :cond_e

    .line 600
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralVideoView:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->notifyVideoClose()V

    .line 620
    :cond_d
    :goto_d
    return-void

    .line 603
    :cond_e
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->p:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralVideoView:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    if-eqz v0, :cond_2e

    .line 604
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralVideoView:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->isMiniCardShowing()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 605
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    if-eqz v0, :cond_d

    .line 606
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->onMiniEndcardBackPress()V

    goto :goto_d

    .line 610
    :cond_28
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralVideoView:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->onBackPress()V

    goto :goto_d

    .line 613
    :cond_2e
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->r:Z

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    if-eqz v0, :cond_3c

    .line 614
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->onPlayableBackPress()V

    goto :goto_d

    .line 617
    :cond_3c
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->q:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    if-eqz v0, :cond_d

    .line 618
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->onEndcardBackPress()V

    goto :goto_d
.end method

.method public onCacheAvailable(Ljava/io/File;Ljava/lang/String;I)V
    .registers 7

    .prologue
    .line 776
    const-string v0, "VideoCache"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u53d8\u4e0b\u8fb9\u64ad\u5f00\u59cb\u4e0b\u8f7d\u4e86"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    return-void
.end method

.method public onCacheError(Ljava/lang/Throwable;)V
    .registers 2

    .prologue
    .line 782
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 145
    invoke-super {p0, p1}, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 146
    if-eqz p1, :cond_e

    .line 148
    :try_start_6
    const-string v0, "hasRelease"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->k:Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_2e

    .line 154
    :cond_e
    :goto_e
    invoke-virtual {p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mintegral_reward_activity_open"

    const-string v2, "anim"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 155
    invoke-virtual {p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mintegral_reward_activity_stay"

    const-string v3, "anim"

    invoke-static {v1, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 156
    if-le v0, v4, :cond_2d

    if-le v1, v4, :cond_2d

    .line 157
    invoke-virtual {p0, v0, v1}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->overridePendingTransition(II)V

    .line 159
    :cond_2d
    return-void

    .line 150
    :catch_2e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 196
    invoke-super {p0}, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->onDestroy()V

    .line 197
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->k:Z

    if-nez v0, :cond_a

    .line 198
    invoke-direct {p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->b()V

    .line 200
    :cond_a
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->m:Z

    if-nez v0, :cond_11

    .line 201
    invoke-direct {p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->a()V

    .line 204
    :cond_11
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->s:Lcom/mintegral/msdk/mtgjscommon/mraid/d;

    if-eqz v0, :cond_1a

    .line 205
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->s:Lcom/mintegral/msdk/mtgjscommon/mraid/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgjscommon/mraid/d;->d()V

    .line 207
    :cond_1a
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->t:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    if-eqz v0, :cond_2b

    .line 208
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->t:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/AdSession;->removeAllFriendlyObstructions()V

    .line 209
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->t:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/AdSession;->finish()V

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->t:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    .line 214
    :cond_2b
    return-void
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 169
    invoke-super {p0}, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->onPause()V

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->l:Z

    .line 172
    :try_start_6
    invoke-virtual {p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->getJSVideoModule()Lcom/mintegral/msdk/video/js/h;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/video/js/h;->videoOperate(I)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_e} :catch_f

    .line 176
    :goto_e
    return-void

    .line 173
    :catch_f
    move-exception v0

    .line 174
    const-string v1, "AbstractJSActivity"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 180
    invoke-super {p0}, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->onResume()V

    .line 182
    :try_start_3
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->l:Z

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->isShowingAlertView()Z

    move-result v0

    if-nez v0, :cond_15

    .line 183
    invoke-virtual {p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->getJSVideoModule()Lcom/mintegral/msdk/video/js/h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/video/js/h;->videoOperate(I)V

    .line 185
    :cond_15
    invoke-virtual {p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->a(Landroid/view/View;)V

    .line 186
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->n:Z

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->o:Z

    if-eqz v0, :cond_2b

    .line 187
    invoke-virtual {p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->finish()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_2b} :catch_2c

    .line 192
    :cond_2b
    :goto_2b
    return-void

    .line 189
    :catch_2c
    move-exception v0

    .line 190
    const-string v1, "AbstractJSActivity"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2b
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 163
    const-string v0, "hasRelease"

    iget-boolean v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->k:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 164
    invoke-super {p0, p1}, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 165
    return-void
.end method

.method public open(Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 958
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v6

    .line 959
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 960
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClickURL(Ljava/lang/String;)V

    .line 2981
    invoke-virtual {p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->getMraidCampaign()Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v2

    .line 2982
    if-eqz v2, :cond_34

    .line 2983
    new-instance v0, Lcom/mintegral/msdk/base/common/e/b;

    invoke-virtual {p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/base/common/e/b;-><init>(Landroid/content/Context;)V

    .line 2984
    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->unitId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isBidCampaign()Z

    move-result v5

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mintegral/msdk/base/common/e/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 963
    :cond_34
    new-instance v0, Lcom/mintegral/msdk/click/a;

    invoke-virtual {p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->unitId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/mintegral/msdk/click/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 964
    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/click/a;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 965
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0, v6}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClickURL(Ljava/lang/String;)V

    .line 968
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->i:Lcom/mintegral/msdk/reward/a/d;

    if-eqz v0, :cond_55

    .line 969
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->i:Lcom/mintegral/msdk/reward/a/d;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/reward/a/d;->a(ZLjava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_55} :catch_56

    .line 974
    :cond_55
    :goto_55
    return-void

    .line 971
    :catch_56
    move-exception v0

    .line 972
    const-string v1, "AbstractJSActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55
.end method

.method public receiveSuccess()V
    .registers 5

    .prologue
    .line 460
    invoke-super {p0}, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->receiveSuccess()V

    .line 461
    const-string v0, "AbstractJSActivity"

    const-string v1, "receiveSuccess ,start hybrid"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->jsbridgeConnectTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 463
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->v:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 464
    return-void
.end method

.method public setShowingTransparent()V
    .registers 4

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->getIsShowingTransparent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->n:Z

    .line 279
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->n:Z

    if-nez v0, :cond_1c

    .line 280
    invoke-virtual {p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mintegral_reward_theme"

    const-string v2, "style"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 281
    const/4 v1, 0x1

    if-le v0, v1, :cond_1c

    .line 282
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->setTheme(I)V

    .line 285
    :cond_1c
    return-void
.end method

.method public unload()V
    .registers 1

    .prologue
    .line 1000
    invoke-virtual {p0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->close()V

    .line 1001
    return-void
.end method

.method public useCustomClose(Z)V
    .registers 4

    .prologue
    .line 1011
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->getH5EndCardView()Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 1012
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->getH5EndCardView()Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    move-result-object v1

    if-eqz p1, :cond_19

    const/4 v0, 0x4

    :goto_15
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->setCloseVisibleForMraid(I)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_1b

    .line 1017
    :cond_18
    :goto_18
    return-void

    .line 1012
    :cond_19
    const/4 v0, 0x0

    goto :goto_15

    .line 1014
    :catch_1b
    move-exception v0

    .line 1015
    const-string v1, "AbstractJSActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18
.end method
