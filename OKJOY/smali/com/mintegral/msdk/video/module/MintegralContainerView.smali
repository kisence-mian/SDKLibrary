.class public Lcom/mintegral/msdk/video/module/MintegralContainerView;
.super Lcom/mintegral/msdk/video/module/MintegralBaseView;
.source "MintegralContainerView.java"

# interfaces
.implements Lcom/mintegral/msdk/video/js/d;
.implements Lcom/mintegral/msdk/video/js/f;


# instance fields
.field private A:Z

.field private i:Lcom/mintegral/msdk/video/module/MintegralPlayableView;

.field private j:Lcom/mintegral/msdk/video/module/MintegralClickCTAView;

.field private k:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

.field private l:Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;

.field private m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

.field private n:Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;

.field private o:Lcom/mintegral/msdk/video/module/MintegralLandingPageView;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/video/module/MintegralBaseView;-><init>(Landroid/content/Context;)V

    .line 59
    iput v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->r:I

    .line 62
    iput v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->s:I

    .line 65
    iput v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->t:I

    .line 68
    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->u:Z

    .line 70
    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->v:Z

    .line 72
    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->w:Z

    .line 75
    iput-boolean v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->x:Z

    .line 77
    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->y:Z

    .line 81
    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->A:Z

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/mintegral/msdk/video/module/MintegralBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    iput v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->r:I

    .line 62
    iput v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->s:I

    .line 65
    iput v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->t:I

    .line 68
    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->u:Z

    .line 70
    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->v:Z

    .line 72
    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->w:Z

    .line 75
    iput-boolean v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->x:Z

    .line 77
    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->y:Z

    .line 81
    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->A:Z

    .line 97
    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/video/module/MintegralContainerView;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->p:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)V
    .registers 6

    .prologue
    .line 700
    packed-switch p1, :pswitch_data_6e

    .line 722
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->j:Lcom/mintegral/msdk/video/module/MintegralClickCTAView;

    if-nez v0, :cond_10

    .line 723
    new-instance v0, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->j:Lcom/mintegral/msdk/video/module/MintegralClickCTAView;

    .line 725
    :cond_10
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->j:Lcom/mintegral/msdk/video/module/MintegralClickCTAView;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->setCampaign(Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 726
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->j:Lcom/mintegral/msdk/video/module/MintegralClickCTAView;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->setUnitId(Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->j:Lcom/mintegral/msdk/video/module/MintegralClickCTAView;

    new-instance v1, Lcom/mintegral/msdk/video/module/a/a/i;

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->e:Lcom/mintegral/msdk/video/module/a/a;

    invoke-direct {v1, v2}, Lcom/mintegral/msdk/video/module/a/a/i;-><init>(Lcom/mintegral/msdk/video/module/a/a;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->setNotifyListener(Lcom/mintegral/msdk/video/module/a/a;)V

    .line 728
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->j:Lcom/mintegral/msdk/video/module/MintegralClickCTAView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->preLoadData()V

    .line 731
    :cond_2f
    :goto_2f
    :pswitch_2f
    return-void

    .line 707
    :pswitch_30
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideo_end_type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2f

    .line 708
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->k:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    if-nez v0, :cond_4a

    .line 709
    new-instance v0, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->k:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    .line 711
    :cond_4a
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->k:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->setCampaign(Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 712
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->k:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    new-instance v1, Lcom/mintegral/msdk/video/module/a/a/g;

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->k:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->e:Lcom/mintegral/msdk/video/module/a/a;

    invoke-direct {v1, v2, v3}, Lcom/mintegral/msdk/video/module/a/a/g;-><init>(Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;Lcom/mintegral/msdk/video/module/a/a;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->setNotifyListener(Lcom/mintegral/msdk/video/module/a/a;)V

    .line 713
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->k:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->preLoadData()V

    .line 714
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->setMatchParent()V

    .line 715
    invoke-direct {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->f()V

    .line 716
    invoke-direct {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->g()V

    goto :goto_2f

    .line 700
    :pswitch_data_6e
    .packed-switch -0x3
        :pswitch_2f
        :pswitch_30
    .end packed-switch
.end method

.method private static a(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 461
    if-eqz p0, :cond_d

    .line 462
    :try_start_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 463
    if-eqz v0, :cond_d

    .line 464
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_d} :catch_e

    .line 470
    :cond_d
    :goto_d
    return-void

    .line 467
    :catch_e
    move-exception v0

    .line 468
    const-string v1, "MintegralBaseView"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method static synthetic a(Lcom/mintegral/msdk/video/module/MintegralContainerView;Ljava/lang/Integer;)V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method private a(Ljava/lang/Integer;)V
    .registers 5

    .prologue
    .line 609
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_84

    .line 610
    if-nez p1, :cond_10

    .line 611
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideo_end_type()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 613
    :cond_10
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->isLast()Z

    move-result v0

    if-nez v0, :cond_19

    .line 614
    invoke-direct {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->g()V

    .line 616
    :cond_19
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_fa

    .line 623
    :pswitch_20
    iget v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->r:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_85

    .line 624
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    if-nez v0, :cond_32

    .line 625
    new-instance v0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    .line 627
    :cond_32
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->setCampaign(Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 629
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    iget v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->s:I

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->setCloseDelayShowTime(I)V

    .line 630
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    new-instance v1, Lcom/mintegral/msdk/video/module/a/a/i;

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->e:Lcom/mintegral/msdk/video/module/a/a;

    invoke-direct {v1, v2}, Lcom/mintegral/msdk/video/module/a/a/i;-><init>(Lcom/mintegral/msdk/video/module/a/a;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->setNotifyListener(Lcom/mintegral/msdk/video/module/a/a;)V

    .line 631
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->setUnitId(Ljava/lang/String;)V

    .line 632
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->preLoadData()V

    .line 633
    const-string v0, "MintegralBaseView"

    const-string v1, "preload H5Endcard"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->w:Z

    if-nez v0, :cond_84

    .line 636
    const-string v0, "MintegralBaseView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showTransparent = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->w:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " addview"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->addView(Landroid/view/View;)V

    .line 668
    :cond_84
    :goto_84
    :pswitch_84
    return-void

    .line 640
    :cond_85
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->l:Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;

    if-nez v0, :cond_92

    .line 641
    new-instance v0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->l:Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;

    .line 643
    :cond_92
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->l:Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->setCampaign(Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 644
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->l:Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->setUnitId(Ljava/lang/String;)V

    .line 645
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->l:Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;

    new-instance v1, Lcom/mintegral/msdk/video/module/a/a/i;

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->e:Lcom/mintegral/msdk/video/module/a/a;

    invoke-direct {v1, v2}, Lcom/mintegral/msdk/video/module/a/a/i;-><init>(Lcom/mintegral/msdk/video/module/a/a;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->setNotifyListener(Lcom/mintegral/msdk/video/module/a/a;)V

    .line 646
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->l:Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->preLoadData()V

    goto :goto_84

    .line 650
    :pswitch_b2
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->n:Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;

    if-nez v0, :cond_bf

    .line 651
    new-instance v0, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->n:Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;

    .line 653
    :cond_bf
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->n:Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;->setCampaign(Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 654
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->n:Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;

    new-instance v1, Lcom/mintegral/msdk/video/module/a/a/l;

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->e:Lcom/mintegral/msdk/video/module/a/a;

    invoke-direct {v1, v2}, Lcom/mintegral/msdk/video/module/a/a/l;-><init>(Lcom/mintegral/msdk/video/module/a/a;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;->setNotifyListener(Lcom/mintegral/msdk/video/module/a/a;)V

    .line 655
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->n:Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;->preLoadData()V

    goto :goto_84

    .line 658
    :pswitch_d8
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->o:Lcom/mintegral/msdk/video/module/MintegralLandingPageView;

    if-nez v0, :cond_e5

    .line 659
    new-instance v0, Lcom/mintegral/msdk/video/module/MintegralLandingPageView;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralLandingPageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->o:Lcom/mintegral/msdk/video/module/MintegralLandingPageView;

    .line 661
    :cond_e5
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->o:Lcom/mintegral/msdk/video/module/MintegralLandingPageView;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralLandingPageView;->setCampaign(Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 662
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->o:Lcom/mintegral/msdk/video/module/MintegralLandingPageView;

    new-instance v1, Lcom/mintegral/msdk/video/module/a/a/i;

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->e:Lcom/mintegral/msdk/video/module/a/a;

    invoke-direct {v1, v2}, Lcom/mintegral/msdk/video/module/a/a/i;-><init>(Lcom/mintegral/msdk/video/module/a/a;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralLandingPageView;->setNotifyListener(Lcom/mintegral/msdk/video/module/a/a;)V

    goto :goto_84

    .line 616
    nop

    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_84
        :pswitch_20
        :pswitch_b2
        :pswitch_d8
        :pswitch_84
    .end packed-switch
.end method

.method private d()V
    .registers 4

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 482
    iget v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->r:I

    if-ne v0, v1, :cond_89

    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->A:Z

    if-nez v0, :cond_89

    .line 7509
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    if-nez v0, :cond_15

    .line 7510
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->a(Ljava/lang/Integer;)V

    .line 7512
    :cond_15
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->isLoadSuccess()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 7513
    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->A:Z

    .line 7515
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->addView(Landroid/view/View;)V

    .line 7516
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->webviewshow()V

    .line 7517
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7518
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->excuteTask()V

    .line 7520
    new-instance v1, Lcom/mintegral/msdk/base/entity/q;

    invoke-direct {v1}, Lcom/mintegral/msdk/base/entity/q;-><init>()V

    .line 7521
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->k(Ljava/lang/String;)V

    .line 7522
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->m(Ljava/lang/String;)V

    .line 7523
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isMraid()Z

    move-result v0

    if-eqz v0, :cond_72

    sget v0, Lcom/mintegral/msdk/base/entity/q;->a:I

    :goto_5c
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->a(I)V

    .line 7524
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->p:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/mintegral/msdk/base/common/e/a;->b(Lcom/mintegral/msdk/base/entity/q;Landroid/content/Context;Ljava/lang/String;)V

    .line 7534
    :cond_66
    :goto_66
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    if-eqz v0, :cond_71

    .line 7535
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->setUnitId(Ljava/lang/String;)V

    .line 487
    :cond_71
    :goto_71
    return-void

    .line 7523
    :cond_72
    sget v0, Lcom/mintegral/msdk/base/entity/q;->b:I

    goto :goto_5c

    .line 7526
    :cond_75
    invoke-direct {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->e()V

    .line 7527
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    if-eqz v0, :cond_66

    .line 7529
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    const-string v1, "timeout"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->reportRenderFailed(Ljava/lang/String;)V

    .line 7530
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->setError(Z)V

    goto :goto_66

    .line 485
    :cond_89
    invoke-direct {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->e()V

    goto :goto_71
.end method

.method private e()V
    .registers 2

    .prologue
    .line 540
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->r:I

    .line 541
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->l:Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;

    if-nez v0, :cond_f

    .line 542
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->a(Ljava/lang/Integer;)V

    .line 544
    :cond_f
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->l:Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->addView(Landroid/view/View;)V

    .line 545
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 546
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->l:Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->notifyShowListener()V

    .line 547
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->bringToFront()V

    .line 548
    return-void
.end method

.method private f()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 569
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->k:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    if-nez v0, :cond_a

    .line 570
    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->a(I)V

    .line 572
    :cond_a
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 573
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 574
    iget-boolean v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->w:Z

    if-eqz v1, :cond_23

    iget-boolean v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->x:Z

    if-eqz v1, :cond_23

    .line 575
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->x:Z

    .line 576
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 577
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 579
    :cond_23
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->k:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    invoke-virtual {p0, v1, v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 580
    return-void
.end method

.method private g()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 685
    iput-boolean v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->v:Z

    .line 686
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 687
    if-eqz v0, :cond_23

    move v2, v1

    .line 688
    :goto_c
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_23

    .line 689
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 690
    instance-of v4, v3, Lcom/mintegral/msdk/video/module/MintegralContainerView;

    if-nez v4, :cond_20

    .line 691
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 688
    :goto_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 693
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 697
    :cond_23
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 386
    if-eqz p1, :cond_9

    .line 387
    invoke-static {p1}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->a(Landroid/view/View;)V

    .line 388
    invoke-super {p0, p1}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->addView(Landroid/view/View;)V

    .line 392
    :goto_8
    return-void

    .line 390
    :cond_9
    const-string v0, "MintegralBaseView"

    const-string v1, "view is null"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .prologue
    .line 396
    if-eqz p1, :cond_9

    .line 397
    invoke-static {p1}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->a(Landroid/view/View;)V

    .line 398
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    :goto_8
    return-void

    .line 400
    :cond_9
    const-string v0, "MintegralBaseView"

    const-string v1, "view is null"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method public canBackPress()Z
    .registers 3

    .prologue
    .line 405
    const/4 v0, 0x0

    .line 406
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->l:Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;

    if-eqz v1, :cond_7

    .line 407
    const/4 v0, 0x1

    .line 415
    :cond_6
    :goto_6
    return v0

    .line 408
    :cond_7
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    if-eqz v1, :cond_12

    .line 409
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->canBackPress()Z

    move-result v0

    goto :goto_6

    .line 410
    :cond_12
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->o:Lcom/mintegral/msdk/video/module/MintegralLandingPageView;

    if-eqz v1, :cond_1d

    .line 411
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->o:Lcom/mintegral/msdk/video/module/MintegralLandingPageView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralLandingPageView;->canBackPress()Z

    move-result v0

    goto :goto_6

    .line 412
    :cond_1d
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->i:Lcom/mintegral/msdk/video/module/MintegralPlayableView;

    if-eqz v1, :cond_6

    .line 413
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->i:Lcom/mintegral/msdk/video/module/MintegralPlayableView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralPlayableView;->canBackPress()Z

    move-result v0

    goto :goto_6
.end method

.method public configurationChanged(III)V
    .registers 5

    .prologue
    .line 353
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->k:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->k:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_11

    .line 354
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->k:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    invoke-virtual {v0, p1, p2}, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->resizeMiniCard(II)V

    .line 356
    :cond_11
    return-void
.end method

.method public defaultShow()V
    .registers 1

    .prologue
    .line 381
    invoke-super {p0}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->defaultShow()V

    .line 382
    return-void
.end method

.method public endCardShowing()Z
    .registers 2

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->u:Z

    return v0
.end method

.method public endcardIsPlayable()Z
    .registers 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->isPlayable()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getH5EndCardView()Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;
    .registers 2

    .prologue
    .line 820
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    if-nez v0, :cond_7

    .line 821
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->i:Lcom/mintegral/msdk/video/module/MintegralPlayableView;

    .line 822
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    goto :goto_6
.end method

.method public getShowingTransparent()Z
    .registers 2

    .prologue
    .line 427
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->w:Z

    return v0
.end method

.method public getUnitID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoInteractiveType()I
    .registers 2

    .prologue
    .line 448
    iget v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->q:I

    return v0
.end method

.method public getVideoSkipTime()I
    .registers 2

    .prologue
    .line 84
    iget v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->z:I

    return v0
.end method

.method public handlerPlayableException(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 309
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    if-eqz v0, :cond_d

    .line 310
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->handlerPlayableException(Ljava/lang/String;)V

    .line 311
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->A:Z

    if-eqz v0, :cond_10

    .line 315
    :cond_d
    invoke-direct {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->d()V

    .line 317
    :cond_10
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->setVisibility(I)V

    .line 102
    return-void
.end method

.method public install(Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    .registers 4

    .prologue
    .line 365
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/16 v1, 0x69

    invoke-interface {v0, v1, p1}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 366
    return-void
.end method

.method public isLast()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 675
    .line 676
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 677
    if-eqz v0, :cond_13

    .line 678
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 679
    if-nez v0, :cond_11

    const/4 v0, 0x1

    .line 681
    :goto_10
    return v0

    :cond_11
    move v0, v1

    .line 679
    goto :goto_10

    :cond_13
    move v0, v1

    goto :goto_10
.end method

.method public miniCardLoaded()Z
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->k:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->k:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->isLoadSuccess()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public miniCardShowing()Z
    .registers 2

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->v:Z

    return v0
.end method

.method public notifyCloseBtn(I)V
    .registers 3

    .prologue
    .line 281
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->i:Lcom/mintegral/msdk/video/module/MintegralPlayableView;

    if-eqz v0, :cond_9

    .line 282
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->i:Lcom/mintegral/msdk/video/module/MintegralPlayableView;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/video/module/MintegralPlayableView;->notifyCloseBtn(I)V

    .line 284
    :cond_9
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    if-eqz v0, :cond_12

    .line 285
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->notifyCloseBtn(I)V

    .line 287
    :cond_12
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7

    .prologue
    const/4 v4, 0x7

    const/4 v0, 0x0

    .line 106
    invoke-super {p0, p1}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 107
    new-array v1, v4, [Lcom/mintegral/msdk/video/module/MintegralBaseView;

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->i:Lcom/mintegral/msdk/video/module/MintegralPlayableView;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->j:Lcom/mintegral/msdk/video/module/MintegralClickCTAView;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->k:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->l:Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->n:Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->o:Lcom/mintegral/msdk/video/module/MintegralLandingPageView;

    aput-object v3, v1, v2

    .line 1746
    :goto_29
    if-ge v0, v4, :cond_51

    aget-object v2, v1, v0

    .line 1747
    if-eqz v2, :cond_39

    instance-of v3, v2, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    if-eqz v3, :cond_39

    .line 1748
    invoke-virtual {v2, p1}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->onSelfConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1746
    :cond_36
    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 1750
    :cond_39
    if-eqz v2, :cond_36

    invoke-virtual {v2}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_36

    invoke-virtual {v2}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_36

    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->isLast()Z

    move-result v3

    if-nez v3, :cond_36

    .line 1751
    invoke-virtual {v2, p1}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->onSelfConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_36

    .line 108
    :cond_51
    return-void
.end method

.method public onEndcardBackPress()V
    .registers 4

    .prologue
    .line 793
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->l:Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->n:Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;

    if-eqz v0, :cond_12

    .line 794
    :cond_8
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/16 v1, 0x68

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 804
    :cond_11
    :goto_11
    return-void

    .line 797
    :cond_12
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->o:Lcom/mintegral/msdk/video/module/MintegralLandingPageView;

    if-eqz v0, :cond_20

    .line 798
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/16 v1, 0x67

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    goto :goto_11

    .line 801
    :cond_20
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    if-eqz v0, :cond_11

    .line 802
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->onBackPress()V

    goto :goto_11
.end method

.method public onMiniEndcardBackPress()V
    .registers 4

    .prologue
    .line 787
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->v:Z

    if-eqz v0, :cond_d

    .line 788
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/16 v1, 0x6b

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 790
    :cond_d
    return-void
.end method

.method public onPlayableBackPress()V
    .registers 2

    .prologue
    .line 781
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->i:Lcom/mintegral/msdk/video/module/MintegralPlayableView;

    if-eqz v0, :cond_9

    .line 782
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->i:Lcom/mintegral/msdk/video/module/MintegralPlayableView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralPlayableView;->onBackPress()V

    .line 784
    :cond_9
    return-void
.end method

.method public orientation(Landroid/content/res/Configuration;)V
    .registers 7

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x0

    .line 370
    new-array v1, v4, [Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->i:Lcom/mintegral/msdk/video/module/MintegralPlayableView;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->k:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    aput-object v3, v1, v2

    .line 5766
    :goto_12
    if-ge v0, v4, :cond_2c

    aget-object v2, v1, v0

    .line 5767
    if-eqz v2, :cond_29

    invoke-virtual {v2}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_29

    .line 5768
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->orientation(Landroid/content/res/Configuration;)V

    .line 5766
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 371
    :cond_2c
    return-void
.end method

.method public preLoadData()V
    .registers 5

    .prologue
    .line 113
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_40

    .line 115
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPlayable_ads_without_video()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_41

    .line 2583
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->i:Lcom/mintegral/msdk/video/module/MintegralPlayableView;

    if-nez v0, :cond_1a

    .line 2584
    new-instance v0, Lcom/mintegral/msdk/video/module/MintegralPlayableView;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralPlayableView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->i:Lcom/mintegral/msdk/video/module/MintegralPlayableView;

    .line 2586
    :cond_1a
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->i:Lcom/mintegral/msdk/video/module/MintegralPlayableView;

    iget v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->s:I

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralPlayableView;->setCloseDelayShowTime(I)V

    .line 2587
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->i:Lcom/mintegral/msdk/video/module/MintegralPlayableView;

    iget v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->t:I

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralPlayableView;->setPlayCloseBtnTm(I)V

    .line 2588
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->i:Lcom/mintegral/msdk/video/module/MintegralPlayableView;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralPlayableView;->setCampaign(Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 2589
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->i:Lcom/mintegral/msdk/video/module/MintegralPlayableView;

    new-instance v1, Lcom/mintegral/msdk/video/module/MintegralContainerView$2;

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->e:Lcom/mintegral/msdk/video/module/a/a;

    invoke-direct {v1, p0, v2}, Lcom/mintegral/msdk/video/module/MintegralContainerView$2;-><init>(Lcom/mintegral/msdk/video/module/MintegralContainerView;Lcom/mintegral/msdk/video/module/a/a;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralPlayableView;->setNotifyListener(Lcom/mintegral/msdk/video/module/a/a;)V

    .line 2605
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->i:Lcom/mintegral/msdk/video/module/MintegralPlayableView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralPlayableView;->preLoadData()V

    .line 128
    :cond_40
    :goto_40
    return-void

    .line 118
    :cond_41
    iget v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->q:I

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->a(I)V

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/mintegral/msdk/video/module/MintegralContainerView$1;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView$1;-><init>(Lcom/mintegral/msdk/video/module/MintegralContainerView;)V

    .line 125
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->getVideoSkipTime()I

    move-result v2

    int-to-long v2, v2

    .line 120
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_40
.end method

.method public readyStatus(I)V
    .registers 3

    .prologue
    .line 302
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    if-eqz v0, :cond_9

    .line 303
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->readyStatus(I)V

    .line 305
    :cond_9
    return-void
.end method

.method public release()V
    .registers 2

    .prologue
    .line 807
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    if-eqz v0, :cond_c

    .line 808
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->release()V

    .line 809
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    .line 811
    :cond_c
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->i:Lcom/mintegral/msdk/video/module/MintegralPlayableView;

    if-eqz v0, :cond_15

    .line 812
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->i:Lcom/mintegral/msdk/video/module/MintegralPlayableView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralPlayableView;->release()V

    .line 814
    :cond_15
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->o:Lcom/mintegral/msdk/video/module/MintegralLandingPageView;

    if-eqz v0, :cond_1e

    .line 815
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->o:Lcom/mintegral/msdk/video/module/MintegralLandingPageView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralLandingPageView;->release()V

    .line 817
    :cond_1e
    return-void
.end method

.method public resizeMiniCard(III)V
    .registers 5

    .prologue
    .line 340
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->k:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    if-eqz v0, :cond_1a

    .line 341
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->k:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    invoke-virtual {v0, p1, p2}, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->resizeMiniCard(II)V

    .line 342
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->k:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    invoke-virtual {v0, p3}, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->setRadius(I)V

    .line 343
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->removeAllViews()V

    .line 344
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->setMatchParent()V

    .line 345
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->bringToFront()V

    .line 346
    invoke-direct {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->f()V

    .line 348
    :cond_1a
    return-void
.end method

.method public setCloseDelayTime(I)V
    .registers 2

    .prologue
    .line 452
    iput p1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->s:I

    .line 453
    return-void
.end method

.method public setEndscreenType(I)V
    .registers 2

    .prologue
    .line 444
    iput p1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->r:I

    .line 445
    return-void
.end method

.method public setMintegralClickMiniCardViewTransparent()V
    .registers 3

    .prologue
    .line 774
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->k:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    if-eqz v0, :cond_f

    .line 775
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->k:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->setMintegralClickMiniCardViewTransparent()V

    .line 776
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->k:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->setMintegralClickMiniCardViewClickable(Z)V

    .line 778
    :cond_f
    return-void
.end method

.method public setNotifyListener(Lcom/mintegral/msdk/video/module/a/a;)V
    .registers 8

    .prologue
    const/4 v5, 0x7

    const/4 v0, 0x0

    .line 375
    invoke-super {p0, p1}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->setNotifyListener(Lcom/mintegral/msdk/video/module/a/a;)V

    .line 376
    new-array v1, v5, [Lcom/mintegral/msdk/video/module/MintegralBaseView;

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->i:Lcom/mintegral/msdk/video/module/MintegralPlayableView;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->j:Lcom/mintegral/msdk/video/module/MintegralClickCTAView;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->k:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->l:Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->n:Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->o:Lcom/mintegral/msdk/video/module/MintegralLandingPageView;

    aput-object v3, v1, v2

    .line 6734
    :goto_29
    if-ge v0, v5, :cond_49

    aget-object v2, v1, v0

    .line 6735
    if-eqz v2, :cond_3d

    .line 6736
    instance-of v3, v2, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    if-eqz v3, :cond_40

    .line 6737
    new-instance v3, Lcom/mintegral/msdk/video/module/a/a/g;

    iget-object v4, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->k:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    invoke-direct {v3, v4, p1}, Lcom/mintegral/msdk/video/module/a/a/g;-><init>(Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;Lcom/mintegral/msdk/video/module/a/a;)V

    invoke-virtual {v2, v3}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->setNotifyListener(Lcom/mintegral/msdk/video/module/a/a;)V

    .line 6734
    :cond_3d
    :goto_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 6739
    :cond_40
    new-instance v3, Lcom/mintegral/msdk/video/module/a/a/i;

    invoke-direct {v3, p1}, Lcom/mintegral/msdk/video/module/a/a/i;-><init>(Lcom/mintegral/msdk/video/module/a/a;)V

    invoke-virtual {v2, v3}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->setNotifyListener(Lcom/mintegral/msdk/video/module/a/a;)V

    goto :goto_3d

    .line 377
    :cond_49
    return-void
.end method

.method public setPlayCloseBtnTm(I)V
    .registers 2

    .prologue
    .line 456
    iput p1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->t:I

    .line 457
    return-void
.end method

.method public setShowingTransparent(Z)V
    .registers 2

    .prologue
    .line 423
    iput-boolean p1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->w:Z

    .line 424
    return-void
.end method

.method public setUnitID(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 435
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->p:Ljava/lang/String;

    .line 436
    return-void
.end method

.method public setVideoInteractiveType(I)V
    .registers 2

    .prologue
    .line 440
    iput p1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->q:I

    .line 441
    return-void
.end method

.method public setVideoSkipTime(I)V
    .registers 2

    .prologue
    .line 88
    iput p1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->z:I

    .line 89
    return-void
.end method

.method public showEndcard(I)V
    .registers 5

    .prologue
    const/4 v2, -0x1

    .line 220
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_1d

    .line 221
    packed-switch p1, :pswitch_data_88

    .line 243
    :pswitch_8
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->removeAllViews()V

    .line 244
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->setMatchParent()V

    .line 245
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->bringToFront()V

    .line 246
    invoke-direct {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->d()V

    .line 247
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/16 v1, 0x75

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 251
    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->u:Z

    .line 252
    return-void

    .line 223
    :pswitch_21
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/16 v1, 0x68

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    goto :goto_1d

    .line 226
    :pswitch_2b
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->removeAllViews()V

    .line 227
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->setMatchParent()V

    .line 5490
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->n:Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;

    if-nez v0, :cond_3d

    .line 5491
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->a(Ljava/lang/Integer;)V

    .line 5493
    :cond_3d
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5494
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 5495
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->n:Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;

    invoke-virtual {p0, v1, v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5496
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->n:Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;->notifyShowListener()V

    .line 229
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->bringToFront()V

    goto :goto_1d

    .line 232
    :pswitch_55
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/16 v1, 0x71

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 233
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->removeAllViews()V

    .line 234
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->setMatchParent()V

    .line 5500
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->o:Lcom/mintegral/msdk/video/module/MintegralLandingPageView;

    if-nez v0, :cond_70

    .line 5501
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->a(Ljava/lang/Integer;)V

    .line 5504
    :cond_70
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->o:Lcom/mintegral/msdk/video/module/MintegralLandingPageView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralLandingPageView;->preLoadData()V

    .line 5505
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->o:Lcom/mintegral/msdk/video/module/MintegralLandingPageView;

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->addView(Landroid/view/View;)V

    .line 236
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->bringToFront()V

    goto :goto_1d

    .line 239
    :pswitch_7e
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/16 v1, 0x6a

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    goto :goto_1d

    .line 221
    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_21
        :pswitch_8
        :pswitch_2b
        :pswitch_55
        :pswitch_7e
    .end packed-switch
.end method

.method public showMiniCard(IIIII)V
    .registers 9

    .prologue
    .line 321
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->k:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    if-eqz v0, :cond_40

    .line 322
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->k:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->setMiniCardLocation(IIII)V

    .line 323
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->k:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    invoke-virtual {v0, p5}, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->setRadius(I)V

    .line 324
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->k:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->setCloseVisible(I)V

    .line 325
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->k:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->setClickable(Z)V

    .line 326
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->removeAllViews()V

    .line 327
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->setMatchParent()V

    .line 328
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->bringToFront()V

    .line 329
    invoke-direct {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->f()V

    .line 330
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->y:Z

    if-nez v0, :cond_40

    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->y:Z

    .line 332
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/16 v1, 0x6d

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 333
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/16 v1, 0x75

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 336
    :cond_40
    return-void
.end method

.method public showPlayableView()V
    .registers 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_24

    .line 134
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->removeAllViews()V

    .line 135
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->setMatchParent()V

    .line 3551
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->i:Lcom/mintegral/msdk/video/module/MintegralPlayableView;

    if-nez v0, :cond_11

    .line 3552
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->preLoadData()V

    .line 3555
    :cond_11
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->i:Lcom/mintegral/msdk/video/module/MintegralPlayableView;

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->addView(Landroid/view/View;)V

    .line 3556
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->i:Lcom/mintegral/msdk/video/module/MintegralPlayableView;

    if-eqz v0, :cond_21

    .line 3557
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->i:Lcom/mintegral/msdk/video/module/MintegralPlayableView;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralPlayableView;->setUnitId(Ljava/lang/String;)V

    .line 137
    :cond_21
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->bringToFront()V

    .line 139
    :cond_24
    return-void
.end method

.method public showVideoClickView(I)V
    .registers 6

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 144
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_9

    .line 145
    packed-switch p1, :pswitch_data_11a

    .line 216
    :cond_9
    :goto_9
    :pswitch_9
    return-void

    .line 147
    :pswitch_a
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->isLast()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->endCardShowing()Z

    move-result v0

    if-nez v0, :cond_9

    .line 148
    invoke-direct {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->g()V

    goto :goto_9

    .line 152
    :pswitch_1a
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->u:Z

    if-nez v0, :cond_9

    .line 155
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 156
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->removeView(Landroid/view/View;)V

    .line 158
    :cond_2f
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->k:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->k:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 159
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->k:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->removeView(Landroid/view/View;)V

    .line 161
    :cond_40
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->j:Lcom/mintegral/msdk/video/module/MintegralClickCTAView;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->j:Lcom/mintegral/msdk/video/module/MintegralClickCTAView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_77

    .line 4473
    :cond_4c
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->setWrapContent()V

    .line 4474
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4475
    instance-of v1, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_5e

    .line 4476
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 4477
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 164
    :cond_5e
    :try_start_5e
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPlayable_ads_without_video()I

    move-result v0

    if-ne v0, v3, :cond_77

    .line 4562
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->j:Lcom/mintegral/msdk/video/module/MintegralClickCTAView;

    if-nez v0, :cond_72

    .line 4563
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->a(I)V

    .line 4565
    :cond_72
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->j:Lcom/mintegral/msdk/video/module/MintegralClickCTAView;

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->addView(Landroid/view/View;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_77} :catch_81

    .line 172
    :cond_77
    :goto_77
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->isLast()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 173
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->bringToFront()V

    goto :goto_9

    .line 168
    :catch_81
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_77

    .line 177
    :pswitch_86
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->j:Lcom/mintegral/msdk/video/module/MintegralClickCTAView;

    if-eqz v0, :cond_97

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->j:Lcom/mintegral/msdk/video/module/MintegralClickCTAView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_97

    .line 178
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->j:Lcom/mintegral/msdk/video/module/MintegralClickCTAView;

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->removeView(Landroid/view/View;)V

    .line 180
    :cond_97
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->k:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->k:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_b5

    .line 182
    :cond_a3
    :try_start_a3
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_b5

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPlayable_ads_without_video()I

    move-result v0

    if-ne v0, v3, :cond_b5

    .line 183
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->setMatchParent()V

    .line 184
    invoke-direct {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->f()V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_b5} :catch_fe

    .line 191
    :cond_b5
    :goto_b5
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->miniCardLoaded()Z

    move-result v0

    if-eqz v0, :cond_115

    .line 192
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    if-eqz v0, :cond_cc

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_cc

    .line 193
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->removeView(Landroid/view/View;)V

    .line 195
    :cond_cc
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/16 v1, 0x70

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 196
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_ed

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isHasReportAdTrackPause()Z

    move-result v0

    if-nez v0, :cond_ed

    .line 197
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setHasReportAdTrackPause(Z)V

    .line 198
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/video/module/b/a;->f(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 200
    :cond_ed
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->w:Z

    if-eqz v0, :cond_103

    .line 201
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/16 v1, 0x73

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 209
    :goto_fa
    iput-boolean v3, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->v:Z

    goto/16 :goto_9

    .line 187
    :catch_fe
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b5

    .line 203
    :cond_103
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->bringToFront()V

    .line 204
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->webviewshow()V

    .line 206
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_fa

    .line 211
    :cond_115
    invoke-direct {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->g()V

    goto/16 :goto_9

    .line 145
    :pswitch_data_11a
    .packed-switch -0x1
        :pswitch_a
        :pswitch_9
        :pswitch_1a
        :pswitch_86
    .end packed-switch
.end method

.method public toggleCloseBtn(I)V
    .registers 3

    .prologue
    .line 271
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->i:Lcom/mintegral/msdk/video/module/MintegralPlayableView;

    if-eqz v0, :cond_9

    .line 272
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->i:Lcom/mintegral/msdk/video/module/MintegralPlayableView;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/video/module/MintegralPlayableView;->toggleCloseBtn(I)V

    .line 274
    :cond_9
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    if-eqz v0, :cond_12

    .line 275
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->toggleCloseBtn(I)V

    .line 277
    :cond_12
    return-void
.end method

.method public triggerCloseBtn(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 295
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_d

    .line 296
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/16 v1, 0x7a

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 298
    :cond_d
    return-void
.end method

.method public webviewshow()V
    .registers 6

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x0

    .line 360
    new-array v1, v4, [Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->i:Lcom/mintegral/msdk/video/module/MintegralPlayableView;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->k:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView;->m:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    aput-object v3, v1, v2

    .line 5758
    :goto_12
    if-ge v0, v4, :cond_30

    aget-object v2, v1, v0

    .line 5759
    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2d

    invoke-virtual {v2}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2d

    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->isLast()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 5760
    invoke-virtual {v2}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->webviewshow()V

    .line 5758
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 361
    :cond_30
    return-void
.end method
