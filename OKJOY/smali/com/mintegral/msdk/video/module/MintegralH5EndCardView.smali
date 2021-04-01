.class public Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;
.super Lcom/mintegral/msdk/video/module/MintegralBaseView;
.source "MintegralH5EndCardView.java"

# interfaces
.implements Lcom/mintegral/msdk/video/js/f;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field protected i:Landroid/view/View;

.field protected j:Landroid/widget/RelativeLayout;

.field protected k:Landroid/widget/ImageView;

.field protected l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

.field protected m:Landroid/os/Handler;

.field protected n:Ljava/lang/String;

.field o:Landroid/os/Handler;

.field p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:I

.field private v:I

.field private w:Z

.field private x:I

.field private y:Ljava/lang/String;

.field private z:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 132
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/video/module/MintegralBaseView;-><init>(Landroid/content/Context;)V

    .line 86
    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->q:Z

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->m:Landroid/os/Handler;

    .line 90
    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->r:Z

    .line 91
    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->s:Z

    .line 94
    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->t:Z

    .line 97
    iput v1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->u:I

    .line 99
    iput v1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->v:I

    .line 102
    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->w:Z

    .line 105
    iput v1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->x:I

    .line 109
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->z:J

    .line 113
    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->A:Z

    .line 116
    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->B:Z

    .line 118
    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->C:Z

    .line 120
    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->D:Z

    .line 123
    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->E:Z

    .line 126
    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->F:Z

    .line 129
    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->G:Z

    .line 139
    new-instance v0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$1;-><init>(Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->o:Landroid/os/Handler;

    .line 416
    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->H:Z

    .line 437
    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->I:Z

    .line 797
    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->p:Z

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/mintegral/msdk/video/module/MintegralBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->q:Z

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->m:Landroid/os/Handler;

    .line 90
    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->r:Z

    .line 91
    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->s:Z

    .line 94
    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->t:Z

    .line 97
    iput v1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->u:I

    .line 99
    iput v1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->v:I

    .line 102
    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->w:Z

    .line 105
    iput v1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->x:I

    .line 109
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->z:J

    .line 113
    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->A:Z

    .line 116
    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->B:Z

    .line 118
    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->C:Z

    .line 120
    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->D:Z

    .line 123
    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->E:Z

    .line 126
    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->F:Z

    .line 129
    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->G:Z

    .line 139
    new-instance v0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$1;-><init>(Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->o:Landroid/os/Handler;

    .line 416
    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->H:Z

    .line 437
    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->I:Z

    .line 797
    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->p:Z

    .line 137
    return-void
.end method

.method private a(JZ)V
    .registers 15

    .prologue
    const/4 v0, 0x2

    const/4 v10, 0x1

    .line 719
    :try_start_2
    iget-boolean v1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->w:Z

    if-eqz v1, :cond_e

    .line 720
    const-string v0, "MintegralBaseView"

    const-string v1, "insertEndCardReadyState hasInsertLoadEndCardReport true return"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    :goto_d
    return-void

    .line 723
    :cond_e
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->w:Z

    .line 724
    const-string v8, "2"

    .line 725
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 726
    const-string v8, "1"

    .line 728
    :cond_2f
    const/16 v2, 0xa

    .line 730
    const-string v7, "ready yes"

    .line 731
    if-eqz p3, :cond_143

    .line 732
    const/16 v2, 0xc

    .line 734
    const-string v7, "ready timeout"

    move v9, v0

    .line 743
    :goto_3a
    new-instance v0, Lcom/mintegral/msdk/base/entity/q;

    const-string v1, "2000043"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v5}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->y:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lcom/mintegral/msdk/base/entity/q;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_53} :catch_137

    .line 747
    :try_start_53
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdType()I

    move-result v1

    const/16 v3, 0x11f

    if-ne v1, v3, :cond_14f

    .line 748
    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->h(Ljava/lang/String;)V
    :try_end_62
    .catch Ljava/lang/NullPointerException; {:try_start_53 .. :try_end_62} :catch_160
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_62} :catch_137

    .line 758
    :cond_62
    :goto_62
    :try_start_62
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->k(Ljava/lang/String;)V

    .line 759
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->y:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/mintegral/msdk/base/common/e/a;->a(Lcom/mintegral/msdk/base/entity/q;Landroid/content/Context;Ljava/lang/String;)V

    .line 761
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->isLoadSuccess()Z

    move-result v1

    if-nez v1, :cond_d7

    if-ne v9, v10, :cond_d7

    .line 762
    invoke-virtual {v0, v9}, Lcom/mintegral/msdk/base/entity/q;->c(I)V

    .line 763
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->p(Ljava/lang/String;)V

    .line 764
    invoke-virtual {v0, v8}, Lcom/mintegral/msdk/base/entity/q;->g(Ljava/lang/String;)V

    .line 765
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->f(Ljava/lang/String;)V

    .line 766
    const-string v1, "2"

    .line 767
    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b4

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".zip"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 768
    const-string v1, "1"

    .line 770
    :cond_b4
    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->g(Ljava/lang/String;)V

    .line 771
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->m(Ljava/lang/String;)V

    .line 773
    invoke-virtual {v0, v7}, Lcom/mintegral/msdk/base/entity/q;->o(Ljava/lang/String;)V

    .line 774
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isMraid()Z

    move-result v1

    if-eqz v1, :cond_177

    sget v1, Lcom/mintegral/msdk/base/entity/q;->a:I

    :goto_cd
    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->a(I)V

    .line 775
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->y:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/mintegral/msdk/base/common/e/a;->c(Lcom/mintegral/msdk/base/entity/q;Landroid/content/Context;Ljava/lang/String;)V

    .line 778
    :cond_d7
    const-string v0, "MintegralBaseView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "insertEndCardReadyState result:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " endCardLoadTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " endcardurl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  unitid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_135
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_135} :catch_137

    goto/16 :goto_d

    .line 779
    :catch_137
    move-exception v0

    .line 780
    const-string v1, "MintegralBaseView"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 736
    :cond_143
    :try_start_143
    iget v1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->x:I

    if-ne v1, v0, :cond_17b

    .line 737
    const/4 v0, 0x3

    .line 738
    const/16 v2, 0xb

    .line 739
    const-string v7, "ready no"
    :try_end_14c
    .catch Ljava/lang/Throwable; {:try_start_143 .. :try_end_14c} :catch_137

    move v9, v0

    goto/16 :goto_3a

    .line 749
    :cond_14f
    :try_start_14f
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdType()I

    move-result v1

    const/16 v3, 0x5e

    if-ne v1, v3, :cond_166

    .line 750
    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->h(Ljava/lang/String;)V
    :try_end_15e
    .catch Ljava/lang/NullPointerException; {:try_start_14f .. :try_end_15e} :catch_160
    .catch Ljava/lang/Throwable; {:try_start_14f .. :try_end_15e} :catch_137

    goto/16 :goto_62

    .line 755
    :catch_160
    move-exception v1

    :try_start_161
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_164
    .catch Ljava/lang/Throwable; {:try_start_161 .. :try_end_164} :catch_137

    goto/16 :goto_62

    .line 751
    :cond_166
    :try_start_166
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdType()I

    move-result v1

    const/16 v3, 0x2a

    if-ne v1, v3, :cond_62

    .line 752
    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->h(Ljava/lang/String;)V
    :try_end_175
    .catch Ljava/lang/NullPointerException; {:try_start_166 .. :try_end_175} :catch_160
    .catch Ljava/lang/Throwable; {:try_start_166 .. :try_end_175} :catch_137

    goto/16 :goto_62

    .line 774
    :cond_177
    :try_start_177
    sget v1, Lcom/mintegral/msdk/base/entity/q;->b:I
    :try_end_179
    .catch Ljava/lang/Throwable; {:try_start_177 .. :try_end_179} :catch_137

    goto/16 :goto_cd

    :cond_17b
    move v9, v10

    goto/16 :goto_3a
.end method

.method static synthetic a(Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;J)V
    .registers 4

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->a(JZ)V

    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;)Z
    .registers 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->A:Z

    return v0
.end method

.method static synthetic b(Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;)Z
    .registers 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->s:Z

    return v0
.end method

.method static synthetic c(Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;)Z
    .registers 2

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->r:Z

    return v0
.end method

.method static synthetic d(Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;)J
    .registers 3

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->z:J

    return-wide v0
.end method

.method static synthetic e(Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;)Z
    .registers 2

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->s:Z

    return v0
.end method

.method static synthetic g(Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;)Z
    .registers 2

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->E:Z

    return v0
.end method

.method static synthetic h(Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;)Z
    .registers 2

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->F:Z

    return v0
.end method

.method static synthetic i(Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;)V
    .registers 7

    .prologue
    .line 59
    .line 3817
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_f3

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isMraid()Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 3818
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 3819
    const-string v0, "undefined"

    .line 3820
    packed-switch v1, :pswitch_data_106

    .line 3831
    :goto_1b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 3833
    :try_start_20
    const-string v2, "orientation"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3834
    const-string v0, "locked"

    const-string v2, "true"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2c} :catch_100

    .line 3839
    :goto_2c
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3840
    const-string v0, "placementType"

    const-string v3, "Interstitial"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3841
    const-string v0, "state"

    const-string v3, "default"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3842
    const-string v0, "viewable"

    const-string v3, "true"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3843
    const-string v0, "currentAppOrientation"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3845
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_91

    .line 3846
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/c;->n(Landroid/content/Context;)I

    move-result v0

    int-to-float v1, v0

    .line 3847
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/c;->o(Landroid/content/Context;)I

    move-result v0

    int-to-float v3, v0

    .line 3849
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3850
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3851
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    .line 3852
    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    .line 3854
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    iget-object v5, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-static {v5, v1, v3}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->b(Landroid/webkit/WebView;FF)V

    .line 3855
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-static {v1, v0, v4}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->c(Landroid/webkit/WebView;FF)V

    .line 3858
    :cond_91
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    .line 3859
    invoke-virtual {v1}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-virtual {v3}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getTop()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-virtual {v4}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-virtual {v5}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    .line 3858
    invoke-static {v0, v1, v3, v4, v5}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a(Landroid/webkit/WebView;FFFF)V

    .line 3860
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    .line 3861
    invoke-virtual {v1}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-virtual {v3}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getTop()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-virtual {v4}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-virtual {v5}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    .line 3860
    invoke-static {v0, v1, v3, v4, v5}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->b(Landroid/webkit/WebView;FFFF)V

    .line 3862
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-static {v0, v2}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a(Landroid/webkit/WebView;Ljava/util/Map;)V

    .line 3863
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    sget-wide v2, Lcom/mintegral/msdk/mtgjscommon/mraid/d;->a:D

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a(Landroid/webkit/WebView;D)V

    .line 3864
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a(Landroid/webkit/WebView;)V

    .line 59
    :cond_f3
    return-void

    .line 3822
    :pswitch_f4
    const-string v0, "undefined"

    goto/16 :goto_1b

    .line 3825
    :pswitch_f8
    const-string v0, "portrait"

    goto/16 :goto_1b

    .line 3828
    :pswitch_fc
    const-string v0, "landscape"

    goto/16 :goto_1b

    .line 3836
    :catch_100
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2c

    .line 3820
    :pswitch_data_106
    .packed-switch 0x0
        :pswitch_f4
        :pswitch_f8
        :pswitch_fc
    .end packed-switch
.end method

.method static synthetic j(Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;)Z
    .registers 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->G:Z

    return v0
.end method

.method static synthetic k(Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;)Z
    .registers 2

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->B:Z

    return v0
.end method


# virtual methods
.method protected final a()V
    .registers 3

    .prologue
    .line 176
    invoke-super {p0}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->a()V

    .line 177
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->f:Z

    if-eqz v0, :cond_11

    .line 178
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->k:Landroid/widget/ImageView;

    new-instance v1, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$2;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$2;-><init>(Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    :cond_11
    return-void
.end method

.method public canBackPress()Z
    .registers 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected d()Landroid/widget/RelativeLayout$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 604
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public defaultShow()V
    .registers 1

    .prologue
    .line 375
    invoke-super {p0}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->defaultShow()V

    .line 376
    return-void
.end method

.method protected e()V
    .registers 2

    .prologue
    .line 611
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->f:Z

    if-eqz v0, :cond_7

    .line 612
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->setMatchParent()V

    .line 614
    :cond_7
    return-void
.end method

.method public excuteEndCardShowTask(I)V
    .registers 6

    .prologue
    .line 708
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->m:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$9;

    invoke-direct {v1, p0, p1}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$9;-><init>(Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;I)V

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 715
    return-void
.end method

.method public excuteTask()V
    .registers 5

    .prologue
    .line 690
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->t:Z

    if-nez v0, :cond_17

    iget v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->u:I

    if-ltz v0, :cond_17

    .line 691
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->m:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$8;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$8;-><init>(Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;)V

    iget v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->u:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 701
    :cond_17
    return-void
.end method

.method protected f()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 620
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_f0

    .line 621
    iput-boolean v3, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->A:Z

    .line 623
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isMraid()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 624
    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->t:Z

    .line 626
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getMraid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_70

    .line 627
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 630
    :try_start_23
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 631
    const-string v1, "MintegralBaseView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Mraid file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file:////"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 673
    :cond_58
    :goto_58
    return-object v0

    .line 634
    :cond_59
    const-string v1, "MintegralBaseView"

    const-string v2, "Mraid file not found. Will use endcard url."

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getEndScreenUrl()Ljava/lang/String;
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_65} :catch_67

    move-result-object v0

    goto :goto_58

    .line 637
    :catch_67
    move-exception v1

    .line 638
    sget-boolean v2, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v2, :cond_58

    .line 639
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_58

    .line 644
    :cond_70
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getEndScreenUrl()Ljava/lang/String;

    move-result-object v0

    .line 645
    const-string v1, "MintegralBaseView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getURL playable=false endscreenurl\u515c\u5e95:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    .line 650
    :cond_8b
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v0

    .line 651
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/s;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d2

    .line 652
    iput-boolean v3, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->t:Z

    .line 653
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/g;->a()Lcom/mintegral/msdk/videocommon/download/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/videocommon/download/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 654
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 655
    const-string v1, "MintegralBaseView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getURL playable=true endcard\u672c\u5730\u8d44\u6e90\u5730\u5740\u4e3a\u7a7a\u62ff\u670d\u52a1\u7aef\u5730\u5740:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    .line 658
    :cond_bc
    const-string v0, "MintegralBaseView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getURL playable=true \u8d44\u6e90\u4e0d\u4e3a\u7a7aendcard\u5730\u5740:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 659
    goto :goto_58

    .line 662
    :cond_d2
    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->t:Z

    .line 663
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getEndScreenUrl()Ljava/lang/String;

    move-result-object v0

    .line 664
    const-string v1, "MintegralBaseView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getURL playable=false endscreenurl\u515c\u5e95:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_58

    .line 671
    :cond_f0
    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->A:Z

    .line 672
    const-string v0, "MintegralBaseView"

    const-string v1, "getURL playable=false url\u4e3a\u7a7a"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const/4 v0, 0x0

    goto/16 :goto_58
.end method

.method public handlerPlayableException(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 475
    const-string v0, "========"

    const-string v1, "===========handlerPlayableException"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->s:Z

    if-nez v0, :cond_36

    .line 478
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->s:Z

    .line 479
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->r:Z

    .line 480
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_36

    .line 481
    new-instance v0, Lcom/mintegral/msdk/base/entity/q;

    invoke-direct {v0}, Lcom/mintegral/msdk/base/entity/q;-><init>()V

    .line 482
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->k(Ljava/lang/String;)V

    .line 483
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->m(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/base/entity/q;->o(Ljava/lang/String;)V

    .line 485
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->y:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/common/e/a;->f(Lcom/mintegral/msdk/base/entity/q;Landroid/content/Context;Ljava/lang/String;)V

    .line 488
    :cond_36
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v3, -0x1

    .line 164
    const-string v0, "mintegral_reward_endcard_h5"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->findLayout(Ljava/lang/String;)I

    move-result v0

    .line 165
    if-ltz v0, :cond_6e

    .line 166
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->c:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->i:Landroid/view/View;

    .line 167
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->i:Landroid/view/View;

    .line 1678
    const-string v0, "mintegral_windwv_close"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->k:Landroid/widget/ImageView;

    .line 1679
    const-string v0, "mintegral_windwv_content_rl"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->j:Landroid/widget/RelativeLayout;

    .line 1680
    new-instance v0, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    .line 1681
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1683
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1684
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->j:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1685
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->k:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->isNotNULL([Landroid/view/View;)Z

    move-result v0

    .line 167
    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->f:Z

    .line 168
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->i:Landroid/view/View;

    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->d()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->a()V

    .line 170
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->e()V

    .line 172
    :cond_6e
    return-void
.end method

.method public install(Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    .registers 2

    .prologue
    .line 381
    return-void
.end method

.method public isLoadSuccess()Z
    .registers 2

    .prologue
    .line 565
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->r:Z

    return v0
.end method

.method public isPlayable()Z
    .registers 2

    .prologue
    .line 785
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->t:Z

    return v0
.end method

.method public notifyCloseBtn(I)V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 385
    packed-switch p1, :pswitch_data_c

    .line 393
    :goto_4
    return-void

    .line 387
    :pswitch_5
    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->C:Z

    goto :goto_4

    .line 390
    :pswitch_8
    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->D:Z

    goto :goto_4

    .line 385
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public onBackPress()V
    .registers 2

    .prologue
    .line 789
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->B:Z

    if-nez v0, :cond_24

    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->C:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->D:Z

    if-nez v0, :cond_24

    :cond_c
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->C:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->E:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->p:Z

    if-eqz v0, :cond_24

    :cond_18
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->C:Z

    if-nez v0, :cond_27

    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->F:Z

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->p:Z

    if-eqz v0, :cond_27

    .line 793
    :cond_24
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->onCloseViewClick()V

    .line 795
    :cond_27
    return-void
.end method

.method public onCloseViewClick()V
    .registers 6

    .prologue
    const/16 v4, 0x77

    const/16 v3, 0x67

    .line 189
    :try_start_4
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_22

    .line 190
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    const-string v1, "onSystemDestory"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$3;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$3;-><init>(Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 201
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 211
    :goto_21
    return-void

    .line 203
    :cond_22
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/16 v1, 0x67

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 204
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/16 v1, 0x77

    const-string v2, "webview is null when closing webview"

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_34} :catch_35

    goto :goto_21

    .line 206
    :catch_35
    move-exception v0

    .line 207
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const-string v2, ""

    invoke-interface {v1, v3, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 208
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->e:Lcom/mintegral/msdk/video/module/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "close webview exception"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 209
    const-string v1, "MintegralBaseView"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21
.end method

.method public onSelfConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->onSelfConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 159
    invoke-virtual {p0, p1}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->orientation(Landroid/content/res/Configuration;)V

    .line 160
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4

    .prologue
    .line 875
    invoke-super {p0, p1}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->onWindowFocusChanged(Z)V

    .line 876
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isMraid()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 877
    if-eqz p1, :cond_1c

    .line 878
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->b(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 883
    :cond_1b
    :goto_1b
    return-void

    .line 880
    :cond_1c
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    const-string v1, "false"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->b(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_1b
.end method

.method public orientation(Landroid/content/res/Configuration;)V
    .registers 5

    .prologue
    const/4 v2, 0x2

    .line 546
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 547
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_29

    .line 548
    const-string v1, "orientation"

    const-string v2, "landscape"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 552
    :goto_11
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 553
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    const-string v2, "orientation"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    :goto_28
    return-void

    .line 550
    :cond_29
    const-string v1, "orientation"

    const-string v2, "portrait"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_31

    goto :goto_11

    .line 555
    :catch_31
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_28
.end method

.method public preLoadData()V
    .registers 9

    .prologue
    const/16 v0, 0x14

    const/4 v6, 0x0

    .line 223
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->f()Ljava/lang/String;

    move-result-object v1

    .line 224
    iget-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->f:Z

    if-eqz v2, :cond_16c

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v2, :cond_16c

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16c

    .line 226
    new-instance v2, Lcom/mintegral/msdk/base/webview/BrowserView$MTGDownloadListener;

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-direct {v2, v3}, Lcom/mintegral/msdk/base/webview/BrowserView$MTGDownloadListener;-><init>(Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 227
    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mintegral/msdk/base/webview/BrowserView$MTGDownloadListener;->setTitle(Ljava/lang/String;)V

    .line 228
    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-virtual {v3, v2}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 229
    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->setCampaignId(Ljava/lang/String;)V

    .line 230
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->setCloseVisible(I)V

    .line 231
    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    new-instance v3, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$4;

    invoke-direct {v3, p0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$4;-><init>(Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;)V

    invoke-virtual {v2, v3}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->setWebViewListener(Lcom/mintegral/msdk/mtgjscommon/windvane/c;)V

    .line 285
    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getMraid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_100

    .line 2338
    :try_start_50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->z:J

    .line 2339
    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v2

    .line 2340
    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->a()Lcom/mintegral/msdk/videocommon/e/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->y:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/mintegral/msdk/videocommon/e/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/videocommon/e/c;

    move-result-object v3

    .line 2341
    iget-boolean v4, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->t:Z

    if-eqz v4, :cond_100

    invoke-static {v2}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_100

    const-string v4, "wfr=1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_87

    if-eqz v3, :cond_100

    invoke-virtual {v3}, Lcom/mintegral/msdk/videocommon/e/c;->l()I

    move-result v4

    if-lez v4, :cond_100

    .line 2342
    :cond_87
    const-string v4, "MintegralBaseView"

    const-string v5, "\u9700\u8981\u4e0a\u62a5endcard\u52a0\u8f7d\u65f6\u95f4"

    invoke-static {v4, v5}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2345
    const-string v4, "wfr=1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_133

    .line 2346
    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2347
    if-eqz v3, :cond_e7

    array-length v2, v3

    if-lez v2, :cond_e7

    .line 2348
    array-length v4, v3

    move v2, v6

    :goto_a3
    if-ge v2, v4, :cond_e7

    aget-object v5, v3, v2

    .line 2349
    invoke-static {v5}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12f

    const-string v7, "to"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_12f

    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_12f

    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_12f

    .line 2350
    const-string v0, "="

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2351
    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->a(Ljava/lang/Object;)I

    move-result v0

    .line 2352
    const-string v2, "MintegralBaseView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u4eceurl\u83b7\u53d6\u7684waitingtime:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2360
    :cond_e7
    :goto_e7
    if-ltz v0, :cond_140

    .line 2361
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->excuteEndCardShowTask(I)V

    .line 2362
    const-string v2, "MintegralBaseView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5f00\u542fexcuteEndCardShowTask:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_100
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_100} :catch_14d

    .line 290
    :cond_100
    :goto_100
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/h;->a()Lcom/mintegral/msdk/videocommon/download/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/download/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->setHtmlSource(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_158

    .line 295
    const-string v0, "MintegralBaseView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load url:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->loadUrl(Ljava/lang/String;)V

    .line 304
    :goto_12c
    iput-boolean v6, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->p:Z

    .line 305
    return-void

    .line 2348
    :cond_12f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a3

    .line 2357
    :cond_133
    if-eqz v3, :cond_e7

    :try_start_135
    invoke-virtual {v3}, Lcom/mintegral/msdk/videocommon/e/c;->l()I

    move-result v2

    if-lez v2, :cond_e7

    .line 2358
    invoke-virtual {v3}, Lcom/mintegral/msdk/videocommon/e/c;->l()I

    move-result v0

    goto :goto_e7

    .line 2364
    :cond_140
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->excuteEndCardShowTask(I)V

    .line 2365
    const-string v0, "MintegralBaseView"

    const-string v2, "\u5f00\u542fexcuteEndCardShowTask: 20s def"

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14c
    .catch Ljava/lang/Throwable; {:try_start_135 .. :try_end_14c} :catch_14d

    goto :goto_100

    .line 2368
    :catch_14d
    move-exception v0

    .line 2369
    const-string v2, "MintegralBaseView"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_100

    .line 298
    :cond_158
    const-string v0, "MintegralBaseView"

    const-string v2, "load html..."

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->n:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12c

    .line 302
    :cond_16c
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/16 v1, 0x65

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    goto :goto_12c
.end method

.method public readyStatus(I)V
    .registers 6

    .prologue
    .line 492
    const-string v0, "MintegralBaseView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "h5EncardView readyStatus:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "- isError"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->s:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iput p1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->x:I

    .line 494
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->s:Z

    if-nez v0, :cond_31

    .line 495
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->z:J

    sub-long/2addr v0, v2

    .line 496
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->a(JZ)V

    .line 498
    :cond_31
    return-void
.end method

.method public release()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 803
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->m:Landroid/os/Handler;

    if-eqz v0, :cond_a

    .line 804
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->m:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 806
    :cond_a
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->o:Landroid/os/Handler;

    if-eqz v0, :cond_13

    .line 807
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->o:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 810
    :cond_13
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 811
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->release()V

    .line 812
    iput-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    .line 813
    return-void
.end method

.method public reportRenderFailed(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 308
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_81

    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->s:Z

    if-nez v0, :cond_81

    .line 309
    new-instance v1, Lcom/mintegral/msdk/base/entity/q;

    invoke-direct {v1}, Lcom/mintegral/msdk/base/entity/q;-><init>()V

    .line 310
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->k(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->m(Ljava/lang/String;)V

    .line 313
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->c(I)V

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->z:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->p(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->f(Ljava/lang/String;)V

    .line 316
    const-string v0, "2"

    .line 317
    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 318
    const-string v0, "1"

    .line 320
    :cond_58
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->g(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v1, p1}, Lcom/mintegral/msdk/base/entity/q;->o(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdType()I

    move-result v0

    const/16 v2, 0x11f

    if-ne v0, v2, :cond_82

    .line 323
    const-string v0, "3"

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->h(Ljava/lang/String;)V

    .line 329
    :cond_6d
    :goto_6d
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isMraid()Z

    move-result v0

    if-eqz v0, :cond_a2

    sget v0, Lcom/mintegral/msdk/base/entity/q;->a:I

    :goto_77
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->a(I)V

    .line 330
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->y:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/mintegral/msdk/base/common/e/a;->c(Lcom/mintegral/msdk/base/entity/q;Landroid/content/Context;Ljava/lang/String;)V

    .line 332
    :cond_81
    return-void

    .line 324
    :cond_82
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdType()I

    move-result v0

    const/16 v2, 0x5e

    if-ne v0, v2, :cond_92

    .line 325
    const-string v0, "1"

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->h(Ljava/lang/String;)V

    goto :goto_6d

    .line 326
    :cond_92
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdType()I

    move-result v0

    const/16 v2, 0x2a

    if-ne v0, v2, :cond_6d

    .line 327
    const-string v0, "2"

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->h(Ljava/lang/String;)V

    goto :goto_6d

    .line 329
    :cond_a2
    sget v0, Lcom/mintegral/msdk/base/entity/q;->b:I

    goto :goto_77
.end method

.method public setCloseDelayShowTime(I)V
    .registers 2

    .prologue
    .line 573
    iput p1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->u:I

    .line 574
    return-void
.end method

.method public setCloseVisible(I)V
    .registers 3

    .prologue
    .line 585
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->f:Z

    if-eqz v0, :cond_9

    .line 586
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 588
    :cond_9
    return-void
.end method

.method public setCloseVisibleForMraid(I)V
    .registers 5

    .prologue
    .line 591
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->f:Z

    if-eqz v0, :cond_1c

    .line 592
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->G:Z

    .line 594
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1d

    .line 595
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->k:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, 0xff0000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 599
    :goto_16
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->k:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 601
    :cond_1c
    return-void

    .line 597
    :cond_1d
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->k:Landroid/widget/ImageView;

    const-string v1, "mintegral_reward_close"

    invoke-virtual {p0, v1}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->findDrawable(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_16
.end method

.method public setError(Z)V
    .registers 2

    .prologue
    .line 218
    iput-boolean p1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->s:Z

    .line 219
    return-void
.end method

.method public setHtmlSource(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 581
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->n:Ljava/lang/String;

    .line 582
    return-void
.end method

.method public setLoadPlayable(Z)V
    .registers 2

    .prologue
    .line 799
    iput-boolean p1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->p:Z

    .line 800
    return-void
.end method

.method public setPlayCloseBtnTm(I)V
    .registers 2

    .prologue
    .line 577
    iput p1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->v:I

    .line 578
    return-void
.end method

.method public setUnitId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 569
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->y:Ljava/lang/String;

    .line 570
    return-void
.end method

.method public toggleCloseBtn(I)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 397
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->k:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    .line 398
    packed-switch p1, :pswitch_data_70

    :cond_b
    :goto_b
    move v0, v1

    .line 413
    :goto_c
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->setCloseVisible(I)V

    .line 414
    return-void

    .line 401
    :pswitch_10
    iput-boolean v3, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->B:Z

    goto :goto_c

    .line 404
    :pswitch_13
    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->B:Z

    .line 405
    const/16 v1, 0x8

    .line 406
    iget-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->p:Z

    if-eqz v2, :cond_46

    .line 2439
    iget-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->I:Z

    if-nez v2, :cond_23

    iget-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->C:Z

    if-eqz v2, :cond_25

    :cond_23
    move v0, v1

    .line 2440
    goto :goto_c

    .line 2442
    :cond_25
    iput-boolean v3, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->I:Z

    .line 2443
    iget v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->v:I

    if-nez v2, :cond_2f

    .line 2444
    iput-boolean v3, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->F:Z

    move v0, v1

    .line 2445
    goto :goto_c

    .line 2447
    :cond_2f
    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->F:Z

    .line 2448
    iget v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->v:I

    if-ltz v0, :cond_44

    .line 2449
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->m:Landroid/os/Handler;

    new-instance v2, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$6;

    invoke-direct {v2, p0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$6;-><init>(Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;)V

    iget v3, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->v:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_44
    move v0, v1

    .line 407
    goto :goto_c

    .line 3418
    :cond_46
    iget-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->H:Z

    if-nez v2, :cond_4e

    iget-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->C:Z

    if-eqz v2, :cond_50

    :cond_4e
    move v0, v1

    .line 3419
    goto :goto_c

    .line 3421
    :cond_50
    iput-boolean v3, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->H:Z

    .line 3422
    iget v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->u:I

    if-nez v2, :cond_5a

    .line 3423
    iput-boolean v3, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->E:Z

    move v0, v1

    .line 3424
    goto :goto_c

    .line 3426
    :cond_5a
    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->E:Z

    .line 3427
    iget v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->u:I

    if-ltz v0, :cond_b

    .line 3428
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->m:Landroid/os/Handler;

    new-instance v2, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$5;

    invoke-direct {v2, p0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$5;-><init>(Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;)V

    iget v3, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->u:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b

    .line 398
    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_10
        :pswitch_13
    .end packed-switch
.end method

.method public volumeChange(D)V
    .registers 4

    .prologue
    .line 870
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-static {v0, p1, p2}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a(Landroid/webkit/WebView;D)V

    .line 871
    return-void
.end method

.method public webviewshow()V
    .registers 3

    .prologue
    .line 502
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_e

    .line 504
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    new-instance v1, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$7;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$7;-><init>(Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->post(Ljava/lang/Runnable;)Z

    .line 540
    :cond_e
    return-void
.end method
