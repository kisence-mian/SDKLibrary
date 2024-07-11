.class public Lcom/sigmob/sdk/videoAd/h;
.super Lcom/sigmob/sdk/videoAd/b;

# interfaces
.implements Lcom/sigmob/sdk/base/common/d$a;
.implements Lcom/sigmob/sdk/videoAd/g$a;


# instance fields
.field private A:Lcom/sigmob/sdk/videoAd/a;

.field private B:I

.field private C:Lcom/sigmob/sdk/videoAd/BaseVideoView;

.field private D:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private E:Landroid/view/View;

.field private F:Lcom/sigmob/sdk/base/common/p;

.field private G:Lcom/sigmob/sdk/base/views/VideoProgressBarWidget;

.field private H:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

.field private I:Lcom/sigmob/sdk/base/views/SkipButtonWidget;

.field private J:Lcom/sigmob/sdk/videoAd/g;

.field private K:Lcom/sigmob/sdk/videoAd/c;

.field private L:I

.field private M:I

.field private N:Z

.field private O:Z

.field private P:I

.field private Q:Z

.field private R:Landroid/widget/RelativeLayout;

.field private S:Z

.field private T:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

.field private U:Z

.field private V:Z

.field private W:Lcom/sigmob/volley/toolbox/k$c;

.field private X:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

.field private Y:Z

.field private Z:Z

.field private aa:Z

.field private ab:I

.field g:Ljava/lang/String;

.field private h:Lcom/sigmob/sdk/base/views/AdLogoView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/RelativeLayout;

.field private k:I

.field private l:Z

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:J

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Landroid/os/Handler;

.field private v:Z

.field private w:Lcom/sigmob/sdk/base/views/AlertDialogWidget;

.field private x:Ljava/lang/String;

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;JLcom/sigmob/sdk/base/common/h;)V
    .registers 8

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-direct {p0, p1, p4, p6}, Lcom/sigmob/sdk/videoAd/b;-><init>(Landroid/app/Activity;Ljava/lang/Long;Lcom/sigmob/sdk/base/common/h;)V

    const/4 p4, 0x0

    iput p4, p0, Lcom/sigmob/sdk/videoAd/h;->k:I

    iput-boolean p4, p0, Lcom/sigmob/sdk/videoAd/h;->l:Z

    iput p4, p0, Lcom/sigmob/sdk/videoAd/h;->m:I

    const-string p5, "undone"

    iput-object p5, p0, Lcom/sigmob/sdk/videoAd/h;->n:Ljava/lang/String;

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, p0, Lcom/sigmob/sdk/videoAd/h;->o:Ljava/util/List;

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, p0, Lcom/sigmob/sdk/videoAd/h;->p:Ljava/util/List;

    const-string p5, "none"

    iput-object p5, p0, Lcom/sigmob/sdk/videoAd/h;->r:Ljava/lang/String;

    const/4 p5, 0x0

    iput-object p5, p0, Lcom/sigmob/sdk/videoAd/h;->s:Ljava/lang/String;

    new-instance p6, Landroid/os/Handler;

    invoke-direct {p6}, Landroid/os/Handler;-><init>()V

    iput-object p6, p0, Lcom/sigmob/sdk/videoAd/h;->u:Landroid/os/Handler;

    const/4 p6, 0x1

    iput-boolean p6, p0, Lcom/sigmob/sdk/videoAd/h;->v:Z

    iput-object p5, p0, Lcom/sigmob/sdk/videoAd/h;->D:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput p4, p0, Lcom/sigmob/sdk/videoAd/h;->L:I

    iput-boolean p4, p0, Lcom/sigmob/sdk/videoAd/h;->Q:Z

    iput-boolean p4, p0, Lcom/sigmob/sdk/videoAd/h;->S:Z

    iput-boolean p4, p0, Lcom/sigmob/sdk/videoAd/h;->U:Z

    iput-boolean p4, p0, Lcom/sigmob/sdk/videoAd/h;->V:Z

    iput-boolean p4, p0, Lcom/sigmob/sdk/videoAd/h;->Y:Z

    const-string p5, "ad_scene"

    invoke-virtual {p2, p5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lcom/sigmob/sdk/videoAd/h;->s:Ljava/lang/String;

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->b()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p5

    iput-object p5, p0, Lcom/sigmob/sdk/videoAd/h;->D:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {p5}, Lcom/sigmob/sdk/videoAd/a;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object p5

    iput-object p5, p0, Lcom/sigmob/sdk/videoAd/h;->A:Lcom/sigmob/sdk/videoAd/a;

    iget-object p5, p0, Lcom/sigmob/sdk/videoAd/h;->D:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p5}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lcom/sigmob/sdk/videoAd/h;->x:Ljava/lang/String;

    iget-object p5, p0, Lcom/sigmob/sdk/videoAd/h;->D:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p5}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    move-result-object p5

    iget-object p5, p5, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->display_orientation:Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    packed-switch p5, :pswitch_data_142

    const/4 p5, 0x3

    const-string v0, "REQUESTED_ORIENTATION"

    invoke-virtual {p2, v0, p5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p5

    goto :goto_77

    :pswitch_72
    const/4 p5, 0x4

    goto :goto_77

    :pswitch_74
    const/4 p5, 0x6

    goto :goto_77

    :pswitch_76
    const/4 p5, 0x7

    :goto_77
    iput p5, p0, Lcom/sigmob/sdk/videoAd/h;->B:I

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->j()Landroid/app/Activity;

    move-result-object p5

    iget v0, p0, Lcom/sigmob/sdk/videoAd/h;->B:I

    invoke-virtual {p5, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->j()Landroid/app/Activity;

    move-result-object p5

    invoke-virtual {p5, p6}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->j()Landroid/app/Activity;

    move-result-object p5

    invoke-virtual {p5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p5

    const/16 v0, 0x400

    invoke-virtual {p5, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0, p2}, Lcom/sigmob/sdk/videoAd/h;->b(Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/h;->D:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object p2

    check-cast p2, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string p5, "_PLAYLASTFRAME_"

    const-string v0, "1"

    invoke-virtual {p2, p5, v0}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/h;->D:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object p2

    iget-object p2, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object p5, Lcom/sigmob/sdk/base/common/j;->e:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {p5}, Lcom/sigmob/sdk/base/common/j;->a()I

    move-result p5

    if-eq p2, p5, :cond_be

    move p2, p6

    goto :goto_bf

    :cond_be
    move p2, p4

    :goto_bf
    iput-boolean p2, p0, Lcom/sigmob/sdk/videoAd/h;->v:Z

    const/4 p2, -0x1

    if-eqz p3, :cond_dc

    const-string p5, "current_position"

    invoke-virtual {p3, p5, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p5

    iput p5, p0, Lcom/sigmob/sdk/videoAd/h;->M:I

    const-string p5, "video_finished"

    invoke-virtual {p3, p5, p4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p5

    iput-boolean p5, p0, Lcom/sigmob/sdk/videoAd/h;->N:Z

    const-string p5, "companionAd_visable"

    invoke-virtual {p3, p5, p4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    iput-boolean p3, p0, Lcom/sigmob/sdk/videoAd/h;->Q:Z

    :cond_dc
    iget-object p3, p0, Lcom/sigmob/sdk/videoAd/h;->A:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {p3}, Lcom/sigmob/sdk/videoAd/a;->a()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_13a

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->i()Landroid/view/ViewGroup;

    move-result-object p3

    const/high16 p5, -0x1000000

    invoke-virtual {p3, p5}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    new-instance p3, Landroid/widget/RelativeLayout;

    invoke-direct {p3, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/sigmob/sdk/videoAd/h;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {p3, p5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-direct {p0, p1, p4}, Lcom/sigmob/sdk/videoAd/h;->a(Landroid/content/Context;I)Lcom/sigmob/sdk/videoAd/BaseVideoView;

    move-result-object p3

    iput-object p3, p0, Lcom/sigmob/sdk/videoAd/h;->C:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p4, -0x2

    invoke-direct {p3, p2, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p4, 0xd

    invoke-virtual {p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p4, p0, Lcom/sigmob/sdk/videoAd/h;->j:Landroid/widget/RelativeLayout;

    iget-object p5, p0, Lcom/sigmob/sdk/videoAd/h;->C:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    invoke-virtual {p4, p5, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->i()Landroid/view/ViewGroup;

    move-result-object p3

    iget-object p4, p0, Lcom/sigmob/sdk/videoAd/h;->j:Landroid/widget/RelativeLayout;

    new-instance p5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p5, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, p4, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean p2, p0, Lcom/sigmob/sdk/videoAd/h;->l:Z

    if-eqz p2, :cond_127

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/videoAd/h;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/h;->w()V

    :cond_127
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->k()V

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/h;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p6}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/h;->j:Landroid/widget/RelativeLayout;

    new-instance p3, Lcom/sigmob/sdk/videoAd/h$1;

    invoke-direct {p3, p0, p1}, Lcom/sigmob/sdk/videoAd/h$1;-><init>(Lcom/sigmob/sdk/videoAd/h;Landroid/app/Activity;)V

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_13a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "BaseVideoConfig does not have a video disk path"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_142
    .packed-switch 0x1
        :pswitch_76
        :pswitch_74
        :pswitch_72
    .end packed-switch
.end method

.method private A()F
    .registers 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->r()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->q()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method static synthetic A(Lcom/sigmob/sdk/videoAd/h;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/videoAd/h;->p:Ljava/util/List;

    return-object p0
.end method

.method static synthetic B(Lcom/sigmob/sdk/videoAd/h;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/videoAd/h;->r:Ljava/lang/String;

    return-object p0
.end method

.method private B()V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->q()I

    move-result v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h;->A:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/videoAd/a;->i(I)I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/videoAd/h;->L:I
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    goto :goto_15

    :catchall_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :goto_15
    return-void
.end method

.method static synthetic C(Lcom/sigmob/sdk/videoAd/h;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/videoAd/h;->n:Ljava/lang/String;

    return-object p0
.end method

.method private C()V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->D:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    new-instance v1, Lcom/sigmob/sdk/videoAd/h$16;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/videoAd/h$16;-><init>(Lcom/sigmob/sdk/videoAd/h;)V

    const-string v2, "play_loading"

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/s$a;)V

    return-void
.end method

.method static synthetic D(Lcom/sigmob/sdk/videoAd/h;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/videoAd/h;->b:Landroid/content/Context;

    return-object p0
.end method

.method private D()V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->A:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/a;->k()I

    move-result v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->q()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const v2, 0x5f5e0ff

    if-ne v0, v2, :cond_16

    const/4 v0, 0x0

    :goto_12
    invoke-direct {p0, v0}, Lcom/sigmob/sdk/videoAd/h;->a(I)V

    goto :goto_24

    :cond_16
    const v2, -0x5f5e0ff

    if-ne v0, v2, :cond_1f

    invoke-direct {p0, v1}, Lcom/sigmob/sdk/videoAd/h;->a(I)V

    goto :goto_24

    :cond_1f
    if-lez v0, :cond_22

    goto :goto_12

    :cond_22
    add-int/2addr v0, v1

    goto :goto_12

    :goto_24
    return-void
.end method

.method static synthetic E(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/common/h;
    .registers 1

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object p0

    return-object p0
.end method

.method private E()V
    .registers 6

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->s()V

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/h;->v:Z

    const/4 v1, 0x0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1d

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1d

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/h;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1d
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->i()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/h;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_26
    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->e()Lcom/sigmob/sdk/base/common/d;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/base/common/d;->a(Lcom/sigmob/sdk/base/common/d$a;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->H:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    if-nez v0, :cond_3a

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->h()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/videoAd/h;->e(Landroid/content/Context;I)V

    goto :goto_3d

    :cond_3a
    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->setVisibility(I)V

    :goto_3d
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->h:Lcom/sigmob/sdk/base/views/AdLogoView;

    const/16 v2, 0x8

    if-eqz v0, :cond_46

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/base/views/AdLogoView;->setVisibility(I)V

    :cond_46
    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/h;->C()V

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/h;->x()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->E:Landroid/view/View;

    if-nez v0, :cond_82

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "endcard can\'t show "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/h;->D:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndCardIndexPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "error"

    const-string v4, "endcard can\'t show"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "com.sigmob.action.rewardedvideo.playFail"

    invoke-virtual {p0, v3, v0}, Lcom/sigmob/sdk/videoAd/h;->a(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->f:Lcom/sigmob/sdk/base/common/h;

    invoke-interface {v0}, Lcom/sigmob/sdk/base/common/h;->a()V

    :cond_82
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->E:Landroid/view/View;

    if-eqz v0, :cond_8e

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->E:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_8e
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->j:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_9b

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const-string v0, "com.sigmob.action.rewardedvideo.Close"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/videoAd/h;->a(Ljava/lang/String;)V

    :cond_9b
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->I:Lcom/sigmob/sdk/base/views/SkipButtonWidget;

    if-eqz v0, :cond_a2

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->setVisibility(I)V

    :cond_a2
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->T:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    if-eqz v0, :cond_a9

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->setVisibility(I)V

    :cond_a9
    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/h;->Y:Z

    if-eqz v0, :cond_b2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->G:Lcom/sigmob/sdk/base/views/VideoProgressBarWidget;

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/base/views/VideoProgressBarWidget;->setVisibility(I)V

    :cond_b2
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->X:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    if-eqz v0, :cond_b9

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->setVisibility(I)V

    :cond_b9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/videoAd/h;->Q:Z

    return-void
.end method

.method private F()V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->K:Lcom/sigmob/sdk/videoAd/c;

    if-eqz v0, :cond_9

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/videoAd/c;->a(J)V

    :cond_9
    return-void
.end method

.method static synthetic F(Lcom/sigmob/sdk/videoAd/h;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/sigmob/sdk/videoAd/h;->v:Z

    return p0
.end method

.method static synthetic G(Lcom/sigmob/sdk/videoAd/h;)Landroid/content/Context;
    .registers 1

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->h()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private G()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->K:Lcom/sigmob/sdk/videoAd/c;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/c;->b()V

    :cond_7
    return-void
.end method

.method static synthetic H(Lcom/sigmob/sdk/videoAd/h;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/videoAd/h;->x:Ljava/lang/String;

    return-object p0
.end method

.method private H()V
    .registers 3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sigmob/sdk/videoAd/h$7;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/videoAd/h$7;-><init>(Lcom/sigmob/sdk/videoAd/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic I(Lcom/sigmob/sdk/videoAd/h;)Landroid/content/Context;
    .registers 1

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->h()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic J(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/common/h;
    .registers 1

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object p0

    return-object p0
.end method

.method static synthetic K(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/views/SkipButtonWidget;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/videoAd/h;->I:Lcom/sigmob/sdk/base/views/SkipButtonWidget;

    return-object p0
.end method

.method static synthetic L(Lcom/sigmob/sdk/videoAd/h;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/sigmob/sdk/videoAd/h;->V:Z

    return p0
.end method

.method static synthetic M(Lcom/sigmob/sdk/videoAd/h;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/videoAd/h;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic N(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/views/VideoButtonWidget;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/videoAd/h;->H:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    return-object p0
.end method

.method static synthetic O(Lcom/sigmob/sdk/videoAd/h;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/sigmob/sdk/videoAd/h;->S:Z

    return p0
.end method

.method static synthetic P(Lcom/sigmob/sdk/videoAd/h;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/sigmob/sdk/videoAd/h;->t:Z

    return p0
.end method

.method static synthetic Q(Lcom/sigmob/sdk/videoAd/h;)V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/h;->H()V

    return-void
.end method

.method static synthetic R(Lcom/sigmob/sdk/videoAd/h;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/sigmob/sdk/videoAd/h;->Z:Z

    return p0
.end method

.method static synthetic S(Lcom/sigmob/sdk/videoAd/h;)V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/h;->F()V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/videoAd/h;I)I
    .registers 2

    iput p1, p0, Lcom/sigmob/sdk/videoAd/h;->P:I

    return p1
.end method

.method private a(Landroid/content/Context;Lcom/sigmob/sdk/videoAd/g;I)Landroid/view/View;
    .registers 9

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    if-nez p2, :cond_f

    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x4

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    return-object p2

    :cond_f
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->i()Landroid/view/ViewGroup;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/videoAd/h;->a(Landroid/content/Context;Lcom/sigmob/sdk/videoAd/g;)Lcom/sigmob/sdk/base/views/CreativeWebView;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/sigmob/sdk/base/views/CreativeWebView;->setVisibility(I)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method static synthetic a(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/videoAd/h;->D:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object p0
.end method

.method private a(Landroid/content/Context;Lcom/sigmob/sdk/videoAd/g;)Lcom/sigmob/sdk/base/views/CreativeWebView;
    .registers 7

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    invoke-static {p2}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/sigmob/sdk/videoAd/g;->a()Lcom/sigmob/sdk/base/views/b;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h;->D:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_source_logo()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sigmob/sdk/videoAd/h;->v:Z

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/h;->D:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getInvisibleAdLabel()Z

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/sigmob/sdk/base/views/CreativeWebView;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/views/b;Ljava/lang/String;ZZ)Lcom/sigmob/sdk/base/views/CreativeWebView;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/videoAd/h$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/sigmob/sdk/videoAd/h$4;-><init>(Lcom/sigmob/sdk/videoAd/h;Lcom/sigmob/sdk/videoAd/g;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/CreativeWebView;->setWebViewClickListener(Lcom/sigmob/sdk/base/views/CreativeWebView$a;)V

    new-instance v1, Lcom/sigmob/sdk/videoAd/h$5;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/sigmob/sdk/videoAd/h$5;-><init>(Lcom/sigmob/sdk/videoAd/h;Lcom/sigmob/sdk/videoAd/g;Landroid/content/Context;Lcom/sigmob/sdk/base/views/CreativeWebView;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/CreativeWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    new-instance p1, Lcom/sigmob/sdk/videoAd/h$6;

    invoke-direct {p1, p0, p2}, Lcom/sigmob/sdk/videoAd/h$6;-><init>(Lcom/sigmob/sdk/videoAd/h;Lcom/sigmob/sdk/videoAd/g;)V

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/views/CreativeWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;I)Lcom/sigmob/sdk/videoAd/BaseVideoView;
    .registers 6

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->A:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/a;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6f

    new-instance v0, Lcom/sigmob/sdk/videoAd/BaseVideoView;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/videoAd/BaseVideoView;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/sigmob/sdk/videoAd/h$13;

    invoke-direct {v1, p0, v0}, Lcom/sigmob/sdk/videoAd/h$13;-><init>(Lcom/sigmob/sdk/videoAd/h;Lcom/sigmob/sdk/videoAd/BaseVideoView;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    :try_start_15
    iget-boolean v1, p0, Lcom/sigmob/sdk/videoAd/h;->v:Z

    if-nez v1, :cond_2c

    iget-object v1, v0, Lcom/sigmob/sdk/videoAd/BaseVideoView;->a:Landroid/media/MediaMetadataRetriever;

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/h;->A:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoAd/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/videoAd/h;->b(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/h;->i:Landroid/widget/ImageView;
    :try_end_2a
    .catchall {:try_start_15 .. :try_end_2a} :catchall_2b

    goto :goto_2c

    :catchall_2b
    move-exception p1

    :cond_2c
    :goto_2c
    new-instance p1, Lcom/sigmob/sdk/videoAd/h$14;

    invoke-direct {p1, p0}, Lcom/sigmob/sdk/videoAd/h$14;-><init>(Lcom/sigmob/sdk/videoAd/h;)V

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    new-instance p1, Lcom/sigmob/sdk/videoAd/h$15;

    invoke-direct {p1, p0, v0}, Lcom/sigmob/sdk/videoAd/h$15;-><init>(Lcom/sigmob/sdk/videoAd/h;Lcom/sigmob/sdk/videoAd/BaseVideoView;)V

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h;->D:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isVideoExist()Z

    move-result p1

    if-eqz p1, :cond_57

    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h;->A:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->setVideoURI(Landroid/net/Uri;)V

    goto :goto_6b

    :cond_57
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sigmob/sdk/videoAd/h;->l:Z

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->e()Lcom/sigmob/sdk/base/common/d;

    move-result-object p1

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h;->D:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/sigmob/sdk/base/common/d;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/d$b;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->e()Lcom/sigmob/sdk/base/common/d;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sigmob/sdk/base/common/d;->a(Lcom/sigmob/sdk/base/common/d$a;)V

    :goto_6b
    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->setVisibility(I)V

    return-object v0

    :cond_6f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "BaseVideoConfig does not have a video disk path"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/sigmob/sdk/videoAd/h;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/h;->r:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/sigmob/sdk/videoAd/h;Ljava/util/List;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/videoAd/h;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_36

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_36

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_14
    if-eqz v1, :cond_1b

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1b
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_14

    const/16 p1, 0x5d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_36
    :goto_36
    const-string p1, ""

    return-object p1
.end method

.method private a(I)V
    .registers 5

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get video image begin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->C:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    iget-object v0, v0, Lcom/sigmob/sdk/videoAd/BaseVideoView;->a:Landroid/media/MediaMetadataRetriever;

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v1, p1

    const/4 p1, 0x2

    invoke-virtual {v0, v1, v2, p1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get video image end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_45
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_45} :catch_46

    goto :goto_4e

    :catch_46
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :goto_4e
    return-void
.end method

.method private a(ILandroid/widget/RelativeLayout$LayoutParams;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->b:Landroid/content/Context;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1, v0}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    move-result v0

    const/16 v1, 0xa

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h;->T:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->getId()I

    move-result v1

    invoke-virtual {p2, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    mul-int/lit8 v0, v0, 0x2

    const/4 p1, 0x0

    invoke-virtual {p2, p1, v0, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2b

    :cond_1f
    invoke-virtual {v1}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->getId()I

    move-result v1

    invoke-virtual {p2, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    mul-int/lit8 p1, v0, 0x2

    invoke-virtual {p2, v0, p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_2b
    return-void
.end method

.method private a(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->I:Lcom/sigmob/sdk/base/views/SkipButtonWidget;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->a()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->I:Lcom/sigmob/sdk/base/views/SkipButtonWidget;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->b()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->m()Lcom/sigmob/sdk/base/common/p;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/sigmob/sdk/base/common/p;->a(ZI)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->m()Lcom/sigmob/sdk/base/common/p;

    move-result-object p2

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->F:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {p2, v0, p1}, Lcom/sigmob/sdk/base/common/p;->a(Lcom/sigmob/sdk/base/common/a;I)V

    :cond_1f
    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/videoAd/h;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/videoAd/h;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/videoAd/h;Landroid/content/Context;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/videoAd/h;->c(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/videoAd/h;Ljava/lang/String;Ljava/util/Map;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/sdk/videoAd/h;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/videoAd/h;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/videoAd/h;->aa:Z

    return p1
.end method

.method static synthetic b(Lcom/sigmob/sdk/videoAd/h;I)I
    .registers 2

    iput p1, p0, Lcom/sigmob/sdk/videoAd/h;->ab:I

    return p1
.end method

.method private b(Landroid/content/Context;)Landroid/widget/ImageView;
    .registers 4

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method static synthetic b(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/views/AlertDialogWidget;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/videoAd/h;->w:Lcom/sigmob/sdk/base/views/AlertDialogWidget;

    return-object p0
.end method

.method static synthetic b(Lcom/sigmob/sdk/videoAd/h;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/h;->n:Ljava/lang/String;

    return-object p1
.end method

.method private b(ILandroid/widget/RelativeLayout$LayoutParams;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->b:Landroid/content/Context;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1, v0}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    move-result v0

    const/16 v1, 0xa

    packed-switch p1, :pswitch_data_22

    goto :goto_21

    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p1, 0xb

    goto :goto_19

    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p1, 0x9

    :goto_19
    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    mul-int/lit8 p1, v0, 0x2

    invoke-virtual {p2, v0, p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_21
    return-void

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_14
        :pswitch_14
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method private b(Landroid/content/Context;I)V
    .registers 4

    new-instance v0, Lcom/sigmob/sdk/base/views/VideoProgressBarWidget;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/base/views/VideoProgressBarWidget;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->G:Lcom/sigmob/sdk/base/views/VideoProgressBarWidget;

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h;->C:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/views/VideoProgressBarWidget;->setAnchorId(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h;->G:Lcom/sigmob/sdk/base/views/VideoProgressBarWidget;

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/views/VideoProgressBarWidget;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->i()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/h;->G:Lcom/sigmob/sdk/base/views/VideoProgressBarWidget;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/sigmob/sdk/videoAd/h;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/videoAd/h;->O:Z

    return p1
.end method

.method static synthetic c(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/videoAd/g;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/videoAd/h;->J:Lcom/sigmob/sdk/videoAd/g;

    return-object p0
.end method

.method private c(Landroid/content/Context;I)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->w:Lcom/sigmob/sdk/base/views/AlertDialogWidget;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h;->A:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/a;->l()Lcom/sigmob/sdk/videoAd/d;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/sigmob/sdk/base/views/AlertDialogWidget;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/videoAd/d;)V

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->w:Lcom/sigmob/sdk/base/views/AlertDialogWidget;

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->i()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/h;->w:Lcom/sigmob/sdk/base/views/AlertDialogWidget;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h;->w:Lcom/sigmob/sdk/base/views/AlertDialogWidget;

    new-instance p2, Lcom/sigmob/sdk/videoAd/h$17;

    invoke-direct {p2, p0}, Lcom/sigmob/sdk/videoAd/h$17;-><init>(Lcom/sigmob/sdk/videoAd/h;)V

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->setDialogListener(Lcom/sigmob/sdk/base/views/AlertDialogWidget$a;)V

    return-void
.end method

.method static synthetic c(Lcom/sigmob/sdk/videoAd/h;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/videoAd/h;->a(I)V

    return-void
.end method

.method static synthetic c(Lcom/sigmob/sdk/videoAd/h;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/videoAd/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/sigmob/sdk/videoAd/h;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/videoAd/h;->N:Z

    return p1
.end method

.method static synthetic d(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/views/CompanionAdsWidget;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/videoAd/h;->X:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    return-object p0
.end method

.method private d(Landroid/content/Context;I)V
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v15, p1

    iget-object v0, v1, Lcom/sigmob/sdk/videoAd/h;->D:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v2, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->companion:Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;

    if-eqz v2, :cond_1e3

    iget-object v0, v2, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->icon_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e3

    iget-object v0, v2, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e3

    iget-object v0, v2, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->desc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, v2, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->score:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_34

    goto/16 :goto_1e3

    :cond_34
    sget v3, Lcom/sigmob/sdk/base/views/c;->a:I

    const/16 v4, 0xe5

    const/4 v5, -0x1

    :try_start_39
    iget-object v0, v2, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->button_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    const/high16 v6, 0x437f0000    # 255.0f

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    if-eqz v0, :cond_7a

    iget-object v0, v2, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->button_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;->alpha:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0
    :try_end_4c
    .catchall {:try_start_39 .. :try_end_4c} :catchall_ef

    float-to-double v9, v0

    cmpl-double v0, v9, v7

    if-lez v0, :cond_7a

    :try_start_51
    iget-object v0, v2, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->button_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;->alpha:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v6

    float-to-int v0, v0

    iget-object v9, v2, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->button_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    iget-object v9, v9, Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;->red:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, v2, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->button_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    iget-object v10, v10, Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;->green:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, v2, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->button_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    iget-object v11, v11, Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;->blue:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v0, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0
    :try_end_77
    .catchall {:try_start_51 .. :try_end_77} :catchall_79

    move v3, v0

    goto :goto_7a

    :catchall_79
    move-exception v0

    :cond_7a
    :goto_7a
    :try_start_7a
    iget-object v0, v2, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    if-eqz v0, :cond_b4

    iget-object v0, v2, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;->alpha:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0
    :try_end_86
    .catchall {:try_start_7a .. :try_end_86} :catchall_ef

    float-to-double v9, v0

    cmpl-double v0, v9, v7

    if-lez v0, :cond_b4

    :try_start_8b
    iget-object v0, v2, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;->alpha:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v6

    float-to-int v0, v0

    iget-object v9, v2, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    iget-object v9, v9, Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;->red:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, v2, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    iget-object v10, v10, Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;->green:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, v2, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    iget-object v11, v11, Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;->blue:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v0, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0
    :try_end_b1
    .catchall {:try_start_8b .. :try_end_b1} :catchall_b3

    move v9, v0

    goto :goto_b5

    :catchall_b3
    move-exception v0

    :cond_b4
    move v9, v5

    :goto_b5
    :try_start_b5
    iget-object v0, v2, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->bar_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    if-eqz v0, :cond_f1

    iget-object v0, v2, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->bar_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;->alpha:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v10, v0

    cmpl-double v0, v10, v7

    if-lez v0, :cond_f1

    iget-object v0, v2, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->bar_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;->alpha:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v6

    float-to-int v4, v0

    iget-object v0, v2, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;->red:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v6, v2, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    iget-object v6, v6, Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;->green:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v2, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;

    iget-object v7, v7, Lcom/sigmob/sdk/common/models/sigdsp/pb/Color;->blue:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v0, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5
    :try_end_ec
    .catchall {:try_start_b5 .. :try_end_ec} :catchall_ed

    goto :goto_f1

    :catchall_ed
    move-exception v0

    goto :goto_f1

    :catchall_ef
    move-exception v0

    move v9, v5

    :cond_f1
    :goto_f1
    move v11, v3

    move/from16 v16, v4

    move v14, v5

    move v12, v9

    const/4 v13, 0x0

    :try_start_f7
    iget-object v0, v2, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->click_type:Ljava/lang/Integer;

    if-eqz v0, :cond_103

    iget-object v0, v2, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->click_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_101
    .catchall {:try_start_f7 .. :try_end_101} :catchall_102

    goto :goto_104

    :catchall_102
    move-exception v0

    :cond_103
    move v0, v13

    :goto_104
    const/high16 v10, 0x428c0000    # 70.0f

    iget-object v3, v2, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->button_text:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v9, 0x2

    if-nez v4, :cond_119

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_117

    goto :goto_119

    :cond_117
    :goto_117
    move-object v5, v3

    goto :goto_12f

    :cond_119
    :goto_119
    invoke-virtual/range {p0 .. p0}, Lcom/sigmob/sdk/videoAd/h;->l()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v3

    iget-object v3, v3, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->interaction_type:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v9, :cond_12c

    const-string v3, "\u4e0b\u8f7d"

    goto :goto_117

    :cond_12c
    const-string v3, "\u8be6\u60c5"

    goto :goto_117

    :goto_12f
    new-instance v8, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    iget-object v4, v2, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->title:Ljava/lang/String;

    iget-object v3, v2, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->score:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v7, v2, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->desc:Ljava/lang/String;

    iget-object v3, v2, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->animate_type:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    iget-object v3, v1, Lcom/sigmob/sdk/videoAd/h;->D:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v3

    iget-object v3, v3, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->template_type:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v18

    iget-object v3, v2, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->icon_url:Ljava/lang/String;

    const/high16 v19, 0x428c0000    # 70.0f

    move-object v2, v8

    move-object/from16 v20, v3

    move-object/from16 v3, p1

    move-object v1, v8

    move/from16 v8, v17

    move-object/from16 p2, v1

    move v1, v9

    move/from16 v9, v18

    move v1, v10

    move-object/from16 v10, v20

    move v13, v0

    move-object v1, v15

    move/from16 v15, v16

    move/from16 v16, v19

    invoke-direct/range {v2 .. v16}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;IILjava/lang/String;IIIIIF)V

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    iput-object v3, v2, Lcom/sigmob/sdk/videoAd/h;->X:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->am()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->setId(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/high16 v0, 0x428c0000    # 70.0f

    invoke-static {v0, v1}, Lcom/sigmob/sdk/common/f/d;->c(FLandroid/content/Context;)I

    move-result v0

    invoke-direct {v5, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0, v1}, Lcom/sigmob/sdk/common/f/d;->c(FLandroid/content/Context;)I

    move-result v0

    iget-object v3, v2, Lcom/sigmob/sdk/videoAd/h;->h:Lcom/sigmob/sdk/base/views/AdLogoView;

    const/16 v4, 0xb

    if-eqz v3, :cond_1b8

    const/4 v3, 0x0

    invoke-virtual {v5, v0, v3, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, v2, Lcom/sigmob/sdk/videoAd/h;->h:Lcom/sigmob/sdk/base/views/AdLogoView;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/AdLogoView;->getId()I

    move-result v0

    const/4 v4, 0x2

    invoke-virtual {v5, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1c7

    :cond_1b8
    const/4 v3, 0x0

    iget v6, v2, Lcom/sigmob/sdk/videoAd/h;->k:I

    add-int/2addr v6, v0

    invoke-virtual {v5, v0, v3, v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xc

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_1c7
    invoke-virtual/range {p0 .. p0}, Lcom/sigmob/sdk/videoAd/h;->i()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v4, v2, Lcom/sigmob/sdk/videoAd/h;->X:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v3, v2, Lcom/sigmob/sdk/videoAd/h;->z:Z

    iget-object v0, v2, Lcom/sigmob/sdk/videoAd/h;->X:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->setClickable(Z)V

    iget-object v0, v2, Lcom/sigmob/sdk/videoAd/h;->X:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    new-instance v3, Lcom/sigmob/sdk/videoAd/h$18;

    invoke-direct {v3, v2, v1}, Lcom/sigmob/sdk/videoAd/h$18;-><init>(Lcom/sigmob/sdk/videoAd/h;Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_1e3
    :goto_1e3
    move-object v2, v1

    const-string v0, "ompanionEnd lose informations of UI Display"

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/sigmob/sdk/videoAd/h;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/videoAd/h;->S:Z

    return p1
.end method

.method static synthetic e(Lcom/sigmob/sdk/videoAd/h;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/videoAd/h;->u:Landroid/os/Handler;

    return-object p0
.end method

.method private e(Landroid/content/Context;I)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->H:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h;->A:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/a;->f()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->H:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->setVisibility(I)V

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0, p1}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    move-result v1

    invoke-static {v0, p1}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    move-result p1

    invoke-direct {p2, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h;->A:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoAd/a;->f()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/videoAd/h;->b(ILandroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->i()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->H:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/sigmob/sdk/videoAd/h$19;

    invoke-direct {p1, p0}, Lcom/sigmob/sdk/videoAd/h$19;-><init>(Lcom/sigmob/sdk/videoAd/h;)V

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/h;->H:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->setOnTouchListenerToContent(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h;->H:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    sget-object p2, Lcom/sigmob/sdk/base/views/d;->d:Lcom/sigmob/sdk/base/views/d;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/views/d;->a()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->a(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h;->A:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoAd/a;->b()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_58

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/h;->H:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->a(Ljava/lang/String;)V

    :cond_58
    return-void
.end method

.method static synthetic e(Lcom/sigmob/sdk/videoAd/h;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/videoAd/h;->U:Z

    return p1
.end method

.method static synthetic f(Lcom/sigmob/sdk/videoAd/h;)I
    .registers 1

    iget p0, p0, Lcom/sigmob/sdk/videoAd/h;->P:I

    return p0
.end method

.method private f(Landroid/content/Context;I)V
    .registers 6

    new-instance v0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/base/views/SkipButtonWidget;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->I:Lcom/sigmob/sdk/base/views/SkipButtonWidget;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->am()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->setId(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->I:Lcom/sigmob/sdk/base/views/SkipButtonWidget;

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->setVisibility(I)V

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->A:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/a;->h()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_30

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->A:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/a;->g()I

    move-result v0

    if-gt v0, v2, :cond_3c

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/sigmob/sdk/videoAd/h;->a(ILandroid/widget/RelativeLayout$LayoutParams;)V

    goto :goto_45

    :cond_30
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->A:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/a;->g()I

    move-result v0

    if-le v0, v2, :cond_3c

    invoke-direct {p0, v1, p2}, Lcom/sigmob/sdk/videoAd/h;->a(ILandroid/widget/RelativeLayout$LayoutParams;)V

    goto :goto_45

    :cond_3c
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->A:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/a;->g()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/sigmob/sdk/videoAd/h;->b(ILandroid/widget/RelativeLayout$LayoutParams;)V

    :goto_45
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->i()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/h;->I:Lcom/sigmob/sdk/base/views/SkipButtonWidget;

    invoke-virtual {v0, v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/h;->I:Lcom/sigmob/sdk/base/views/SkipButtonWidget;

    new-instance v0, Lcom/sigmob/sdk/videoAd/h$2;

    invoke-direct {v0, p0, p1}, Lcom/sigmob/sdk/videoAd/h$2;-><init>(Lcom/sigmob/sdk/videoAd/h;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h;->A:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoAd/a;->m()I

    move-result p1

    if-nez p1, :cond_68

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h;->A:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoAd/a;->n()I

    move-result p1

    if-ltz p1, :cond_70

    :cond_68
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h;->A:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoAd/a;->n()I

    move-result p1

    if-nez p1, :cond_73

    :cond_70
    invoke-direct {p0, v1, v1}, Lcom/sigmob/sdk/videoAd/h;->a(IZ)V

    :cond_73
    return-void
.end method

.method static synthetic f(Lcom/sigmob/sdk/videoAd/h;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/videoAd/h;->t:Z

    return p1
.end method

.method private g(Landroid/content/Context;I)V
    .registers 5

    new-instance v0, Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h;->A:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/a;->h()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->T:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->am()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->setId(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->T:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->setVisibility(I)V

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0, p1}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    move-result v1

    invoke-static {v0, p1}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    move-result p1

    invoke-direct {p2, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h;->A:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoAd/a;->h()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/videoAd/h;->b(ILandroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->i()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->T:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/sigmob/sdk/videoAd/h$3;

    invoke-direct {p1, p0}, Lcom/sigmob/sdk/videoAd/h$3;-><init>(Lcom/sigmob/sdk/videoAd/h;)V

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/h;->T:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->setOnTouchListenerToContent(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h;->A:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoAd/a;->j()I

    move-result p1

    if-eqz p1, :cond_61

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h;->T:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    sget-object p2, Lcom/sigmob/sdk/base/views/d;->b:Lcom/sigmob/sdk/base/views/d;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/views/d;->a()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->a(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h;->C:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->setVolume(F)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sigmob/sdk/videoAd/h;->U:Z

    goto :goto_6c

    :cond_61
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h;->T:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    sget-object p2, Lcom/sigmob/sdk/base/views/d;->c:Lcom/sigmob/sdk/base/views/d;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/views/d;->a()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->a(Landroid/graphics/Bitmap;)V

    :goto_6c
    return-void
.end method

.method static synthetic g(Lcom/sigmob/sdk/videoAd/h;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/sigmob/sdk/videoAd/h;->N:Z

    return p0
.end method

.method static synthetic g(Lcom/sigmob/sdk/videoAd/h;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/videoAd/h;->Z:Z

    return p1
.end method

.method static synthetic h(Lcom/sigmob/sdk/videoAd/h;)V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/h;->x()V

    return-void
.end method

.method static synthetic h(Lcom/sigmob/sdk/videoAd/h;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/videoAd/h;->l:Z

    return p1
.end method

.method static synthetic i(Lcom/sigmob/sdk/videoAd/h;)I
    .registers 1

    iget p0, p0, Lcom/sigmob/sdk/videoAd/h;->ab:I

    return p0
.end method

.method static synthetic j(Lcom/sigmob/sdk/videoAd/h;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/sigmob/sdk/videoAd/h;->U:Z

    return p0
.end method

.method static synthetic k(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/views/VideoButtonWidget;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/videoAd/h;->T:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    return-object p0
.end method

.method static synthetic l(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/videoAd/BaseVideoView;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/videoAd/h;->C:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    return-object p0
.end method

.method static synthetic m(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/videoAd/a;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/videoAd/h;->A:Lcom/sigmob/sdk/videoAd/a;

    return-object p0
.end method

.method static synthetic n(Lcom/sigmob/sdk/videoAd/h;)I
    .registers 1

    iget p0, p0, Lcom/sigmob/sdk/videoAd/h;->M:I

    return p0
.end method

.method static synthetic o(Lcom/sigmob/sdk/videoAd/h;)V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/h;->B()V

    return-void
.end method

.method static synthetic p(Lcom/sigmob/sdk/videoAd/h;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/sigmob/sdk/videoAd/h;->Y:Z

    return p0
.end method

.method static synthetic q(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/views/VideoProgressBarWidget;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/videoAd/h;->G:Lcom/sigmob/sdk/base/views/VideoProgressBarWidget;

    return-object p0
.end method

.method static synthetic r(Lcom/sigmob/sdk/videoAd/h;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/sigmob/sdk/videoAd/h;->l:Z

    return p0
.end method

.method static synthetic s(Lcom/sigmob/sdk/videoAd/h;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/sigmob/sdk/videoAd/h;->aa:Z

    return p0
.end method

.method static synthetic t(Lcom/sigmob/sdk/videoAd/h;)V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/h;->w()V

    return-void
.end method

.method static synthetic u(Lcom/sigmob/sdk/videoAd/h;)V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/h;->G()V

    return-void
.end method

.method static synthetic v(Lcom/sigmob/sdk/videoAd/h;)F
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/h;->A()F

    move-result p0

    return p0
.end method

.method private w()V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->R:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_38

    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sigmob/sdk/videoAd/h;->q:J

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->R:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const-string v0, "loading"

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->r:Ljava/lang/String;

    iget v0, p0, Lcom/sigmob/sdk/videoAd/h;->m:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/sdk/videoAd/h;->m:I

    const/4 v2, 0x2

    if-le v0, v2, :cond_2c

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->r()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/videoAd/h;->a(IZ)V

    goto :goto_38

    :cond_2c
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->u:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/sdk/videoAd/h$12;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/videoAd/h$12;-><init>(Lcom/sigmob/sdk/videoAd/h;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_38
    :goto_38
    return-void
.end method

.method static synthetic w(Lcom/sigmob/sdk/videoAd/h;)V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/h;->E()V

    return-void
.end method

.method static synthetic x(Lcom/sigmob/sdk/videoAd/h;)Landroid/content/Context;
    .registers 1

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->h()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private x()V
    .registers 8

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->R:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_51

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->o:Ljava/util/List;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/sigmob/sdk/videoAd/h;->q:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->p:Ljava/util/List;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->r()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "%.2f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "play"

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->r:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->u:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->R:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_51
    return-void
.end method

.method static synthetic y(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/common/h;
    .registers 1

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object p0

    return-object p0
.end method

.method private y()V
    .registers 4

    :try_start_0
    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/h;->N:Z

    if-nez v0, :cond_6b

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/h;->F()V

    iget v0, p0, Lcom/sigmob/sdk/videoAd/h;->M:I

    if-lez v0, :cond_36

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->m()Lcom/sigmob/sdk/base/common/p;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->f:Lcom/sigmob/sdk/base/common/a;

    iget v2, p0, Lcom/sigmob/sdk/videoAd/h;->M:I

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/p;->a(Lcom/sigmob/sdk/base/common/a;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video seek to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sigmob/sdk/videoAd/h;->M:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->C:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    iget v1, p0, Lcom/sigmob/sdk/videoAd/h;->M:I

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->seekTo(I)V

    goto :goto_43

    :cond_36
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->m()Lcom/sigmob/sdk/base/common/p;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->g:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->r()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/p;->a(Lcom/sigmob/sdk/base/common/a;I)V

    :goto_43
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->w:Lcom/sigmob/sdk/base/views/AlertDialogWidget;

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_52

    :cond_4d
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->C:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->start()V

    :cond_52
    iget v0, p0, Lcom/sigmob/sdk/videoAd/h;->M:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6b

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->A:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->h()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/sigmob/sdk/videoAd/h;->M:I

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/videoAd/a;->a(Landroid/content/Context;I)V
    :try_end_62
    .catchall {:try_start_0 .. :try_end_62} :catchall_63

    goto :goto_6b

    :catchall_63
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_6b
    :goto_6b
    return-void
.end method

.method static synthetic z(Lcom/sigmob/sdk/videoAd/h;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/videoAd/h;->o:Ljava/util/List;

    return-object p0
.end method

.method private z()V
    .registers 4

    :try_start_0
    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/h;->N:Z

    if-nez v0, :cond_38

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/h;->G()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->C:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->pause()V

    const-string v0, "videoView.pause()"

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->r()I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/videoAd/h;->M:I

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->m()Lcom/sigmob/sdk/base/common/p;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->h:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->r()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/p;->a(Lcom/sigmob/sdk/base/common/a;I)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->A:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->h()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/sigmob/sdk/videoAd/h;->M:I

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/videoAd/a;->b(Landroid/content/Context;I)V
    :try_end_2f
    .catchall {:try_start_0 .. :try_end_2f} :catchall_30

    goto :goto_38

    :catchall_30
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_38
    :goto_38
    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    invoke-super {p0}, Lcom/sigmob/sdk/videoAd/b;->a()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->A:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/a;->c()Lcom/sigmob/sdk/common/a$a;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/common/a$a;->a:Lcom/sigmob/sdk/common/a$a;

    if-ne v0, v1, :cond_16

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object v0

    const/4 v1, 0x1

    :goto_12
    invoke-interface {v0, v1}, Lcom/sigmob/sdk/base/common/h;->a(I)V

    goto :goto_20

    :cond_16
    sget-object v1, Lcom/sigmob/sdk/common/a$a;->b:Lcom/sigmob/sdk/common/a$a;

    if-ne v0, v1, :cond_20

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object v0

    const/4 v1, 0x6

    goto :goto_12

    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->D:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->T()I

    move-result v1

    iput v1, p0, Lcom/sigmob/sdk/videoAd/h;->k:I

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->j()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sigmob/sdk/videoAd/h;->Q:Z

    if-nez v2, :cond_83

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/h;->A:Lcom/sigmob/sdk/videoAd/a;

    if-eqz v2, :cond_7b

    iget-boolean v2, p0, Lcom/sigmob/sdk/videoAd/h;->Y:Z

    const/4 v3, 0x4

    if-eqz v2, :cond_44

    invoke-direct {p0, v1, v3}, Lcom/sigmob/sdk/videoAd/h;->b(Landroid/content/Context;I)V

    :cond_44
    iget-object v2, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->has_companion_endcard:Ljava/lang/Boolean;

    if-eqz v2, :cond_61

    iget-object v2, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->has_companion_endcard:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_61

    iget-object v2, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->companion:Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;

    if-eqz v2, :cond_61

    invoke-direct {p0, v1, v3}, Lcom/sigmob/sdk/videoAd/h;->d(Landroid/content/Context;I)V

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->companion:Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->show_delay_secs:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/videoAd/h;->y:I

    :cond_61
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/sigmob/sdk/videoAd/h;->g(Landroid/content/Context;I)V

    invoke-direct {p0, v1, v0}, Lcom/sigmob/sdk/videoAd/h;->f(Landroid/content/Context;I)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sigmob/sdk/videoAd/c;

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/h;->A:Lcom/sigmob/sdk/videoAd/a;

    invoke-direct {v1, p0, v2, v0}, Lcom/sigmob/sdk/videoAd/c;-><init>(Lcom/sigmob/sdk/videoAd/h;Lcom/sigmob/sdk/videoAd/a;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sigmob/sdk/videoAd/h;->K:Lcom/sigmob/sdk/videoAd/c;

    goto :goto_86

    :cond_7b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BaseVideoConfig does not have a video disk path"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_83
    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/h;->E()V

    :goto_86
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .registers 4

    const/4 p1, -0x1

    if-ne p2, p1, :cond_a

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object p1

    invoke-interface {p1}, Lcom/sigmob/sdk/base/common/h;->a()V

    :cond_a
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 10

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->R:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/sigmob/sdk/base/views/d;->a:Lcom/sigmob/sdk/base/views/d;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/views/d;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/sigmob/sdk/common/a;->am()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setId(I)V

    new-instance p1, Landroid/view/animation/RotateAnimation;

    const v1, 0x36ee80

    int-to-float v3, v1

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const v1, 0x7a1200

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h;->R:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h;->R:Landroid/widget/RelativeLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->i()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h;->R:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 4

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h;->A:Lcom/sigmob/sdk/videoAd/a;

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h;->J:Lcom/sigmob/sdk/videoAd/g;

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h;->D:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/a;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/videoAd/g;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/h;->J:Lcom/sigmob/sdk/videoAd/g;

    :cond_10
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->m()Lcom/sigmob/sdk/base/common/p;

    move-result-object p1

    if-eqz p1, :cond_23

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->m()Lcom/sigmob/sdk/base/common/p;

    move-result-object p1

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->x:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->r()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/sigmob/sdk/base/common/p;->a(Lcom/sigmob/sdk/base/common/a;I)V

    :cond_23
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 4

    :try_start_0
    const-string v0, "video_finished"

    iget-boolean v1, p0, Lcom/sigmob/sdk/videoAd/h;->N:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "current_position"

    iget v1, p0, Lcom/sigmob/sdk/videoAd/h;->M:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "companionAd_visable"

    iget-boolean v1, p0, Lcom/sigmob/sdk/videoAd/h;->Q:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    goto :goto_1e

    :catchall_16
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :goto_1e
    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 3

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->D:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    return-void

    :cond_11
    const-string p1, "cache_video_ready() called"

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/sigmob/sdk/videoAd/h$8;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/videoAd/h$8;-><init>(Lcom/sigmob/sdk/videoAd/h;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Z)V
    .registers 6

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/h;->V:Z

    if-nez v0, :cond_7

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/videoAd/h;->b(Z)V

    :cond_7
    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/h;->V:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->A:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object p1

    invoke-interface {p1}, Lcom/sigmob/sdk/base/common/h;->a()V

    return-void

    :cond_1b
    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/h;->v:Z

    if-nez v0, :cond_2c

    if-eqz p1, :cond_25

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/h;->D()V

    goto :goto_2c

    :cond_25
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->r()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/videoAd/h;->a(I)V

    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->C:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->stopPlayback()V

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/h;->G()V

    if-eqz p1, :cond_67

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h;->D:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object p1

    check-cast p1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v0, "_PLAYLASTFRAME_"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h;->A:Lcom/sigmob/sdk/videoAd/a;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->r()I

    move-result v1

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->q()I

    move-result v2

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/h;->D:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sigmob/sdk/videoAd/a;->a(Landroid/content/Context;IILcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-boolean p1, p0, Lcom/sigmob/sdk/videoAd/h;->O:Z

    if-nez p1, :cond_67

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->m()Lcom/sigmob/sdk/base/common/p;

    move-result-object p1

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->l:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->r()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/sigmob/sdk/base/common/p;->a(Lcom/sigmob/sdk/base/common/a;I)V

    :cond_67
    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/h;->E()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sigmob/sdk/videoAd/h;->N:Z

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h;->J:Lcom/sigmob/sdk/videoAd/g;

    if-eqz p1, :cond_82

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->r()I

    move-result v1

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->l()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/h;->x:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sigmob/sdk/videoAd/g;->a(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :cond_82
    return-void
.end method

.method public b()V
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/h;->S:Z

    if-eqz v0, :cond_a

    const-string v0, "com.sigmob.action.interstitial.dismiss"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/videoAd/h;->a(Ljava/lang/String;)V

    return-void

    :cond_a
    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/h;->Q:Z

    if-nez v0, :cond_11

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/h;->z()V

    :cond_11
    return-void
.end method

.method public b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 3

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->D:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    return-void

    :cond_11
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/sigmob/sdk/videoAd/h$9;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/videoAd/h$9;-><init>(Lcom/sigmob/sdk/videoAd/h;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method b(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/a;->valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/base/common/a;

    move-result-object p1

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->a:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "com.sigmob.action.rewardedvideo.play"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/videoAd/h;->a(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->m()Lcom/sigmob/sdk/base/common/p;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->m()Lcom/sigmob/sdk/base/common/p;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->r()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/sdk/base/common/p;->a(Lcom/sigmob/sdk/base/common/a;I)V

    :cond_22
    return-void
.end method

.method b(Z)V
    .registers 6

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->D:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    return-void

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/videoAd/h;->V:Z

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->q()I

    move-result p1

    goto :goto_18

    :cond_14
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->r()I

    move-result p1

    :goto_18
    const-string v0, "com.sigmob.action.rewardedvideo.complete"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/videoAd/h;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->m()Lcom/sigmob/sdk/base/common/p;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->b:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v0, v1, p1}, Lcom/sigmob/sdk/base/common/p;->a(Lcom/sigmob/sdk/base/common/a;I)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->A:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->q()I

    move-result v2

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->l()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/sigmob/sdk/videoAd/a;->c(Landroid/content/Context;IILcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method

.method public b_()V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/h;->H()V

    return-void
.end method

.method public c()V
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/h;->Q:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/h;->y()V

    :cond_7
    return-void
.end method

.method public c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h;->D:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->e()Lcom/sigmob/sdk/base/common/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/sdk/base/common/d;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/d$b;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/h;->G()V

    const-string p1, "cache_video_update() called"

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public c_()V
    .registers 2

    const-string v0, "onHandleClickFailed"

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .registers 5

    :try_start_0
    const-string v0, "VideoViewController onDestroy() called"

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/h;->G()V

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->e()Lcom/sigmob/sdk/base/common/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/d;->a(Lcom/sigmob/sdk/base/common/d$a;)V

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/h;->S:Z

    if-nez v0, :cond_19

    const-string v0, "com.sigmob.action.interstitial.dismiss"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/videoAd/h;->a(Ljava/lang/String;)V

    :cond_19
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->W:Lcom/sigmob/volley/toolbox/k$c;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/sigmob/volley/toolbox/k$c;->a()V

    iput-object v1, p0, Lcom/sigmob/sdk/videoAd/h;->W:Lcom/sigmob/volley/toolbox/k$c;

    :cond_22
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->F:Lcom/sigmob/sdk/base/common/p;

    if-eqz v0, :cond_33

    sget-object v2, Lcom/sigmob/sdk/base/common/a;->r:Lcom/sigmob/sdk/base/common/a;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/sigmob/sdk/base/common/p;->a(Lcom/sigmob/sdk/base/common/a;I)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->F:Lcom/sigmob/sdk/base/common/p;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/p;->a()V

    iput-object v1, p0, Lcom/sigmob/sdk/videoAd/h;->F:Lcom/sigmob/sdk/base/common/p;

    :cond_33
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->J:Lcom/sigmob/sdk/videoAd/g;

    if-eqz v0, :cond_3a

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoAd/g;->a(Lcom/sigmob/sdk/videoAd/g$a;)V

    :cond_3a
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->C:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    iget-object v0, v0, Lcom/sigmob/sdk/videoAd/BaseVideoView;->a:Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->C:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    iget-object v0, v0, Lcom/sigmob/sdk/videoAd/BaseVideoView;->a:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_47
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->H:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    if-eqz v0, :cond_4e

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->setOnTouchListenerToContent(Landroid/view/View$OnTouchListener;)V

    :cond_4e
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->I:Lcom/sigmob/sdk/base/views/SkipButtonWidget;

    if-eqz v0, :cond_55

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_55
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->T:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    if-eqz v0, :cond_5c

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->setOnTouchListenerToContent(Landroid/view/View$OnTouchListener;)V

    :cond_5c
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->C:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    if-eqz v0, :cond_63

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->a()V

    :cond_63
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->E:Landroid/view/View;

    if-eqz v0, :cond_70

    instance-of v2, v0, Lcom/sigmob/sdk/base/views/CreativeWebView;

    if-eqz v2, :cond_70

    check-cast v0, Lcom/sigmob/sdk/base/views/CreativeWebView;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/CreativeWebView;->setWebViewClickListener(Lcom/sigmob/sdk/base/views/CreativeWebView$a;)V

    :cond_70
    iput-object v1, p0, Lcom/sigmob/sdk/videoAd/h;->E:Landroid/view/View;

    iput-object v1, p0, Lcom/sigmob/sdk/videoAd/h;->G:Lcom/sigmob/sdk/base/views/VideoProgressBarWidget;
    :try_end_74
    .catchall {:try_start_0 .. :try_end_74} :catchall_75

    goto :goto_7d

    :catchall_75
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :goto_7d
    return-void
.end method

.method public d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 3

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->D:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    return-void

    :cond_11
    const-string p1, "cache_video_update() called"

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/sigmob/sdk/videoAd/h;->aa:Z

    if-eqz p1, :cond_2b

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/sigmob/sdk/videoAd/h$10;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/videoAd/h$10;-><init>(Lcom/sigmob/sdk/videoAd/h;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2b
    return-void
.end method

.method public e()V
    .registers 1

    return-void
.end method

.method public e(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h;->D:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isEndCardIndexExist()Z

    move-result p1

    if-eqz p1, :cond_28

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/sigmob/sdk/videoAd/h$11;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/videoAd/h$11;-><init>(Lcom/sigmob/sdk/videoAd/h;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_28
    return-void
.end method

.method public f(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 2

    return-void
.end method

.method public f()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public k()V
    .registers 5

    new-instance v0, Lcom/sigmob/sdk/base/views/AdLogoView;

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->h()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/base/views/AdLogoView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->h:Lcom/sigmob/sdk/base/views/AdLogoView;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->am()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/AdLogoView;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->h()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3, v1}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    move-result v1

    const/4 v3, -0x2

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h;->b:Landroid/content/Context;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3, v1}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    move-result v1

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/h;->X:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    if-eqz v3, :cond_39

    const/16 v1, 0x8

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_41

    :cond_39
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_41
    :try_start_41
    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h;->h:Lcom/sigmob/sdk/base/views/AdLogoView;

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/h;->D:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_source_logo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/base/views/AdLogoView;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h;->D:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getInvisibleAdLabel()Z

    move-result v1

    if-nez v1, :cond_5f

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h;->h:Lcom/sigmob/sdk/base/views/AdLogoView;

    invoke-static {}, Lcom/sigmob/sdk/base/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/base/views/AdLogoView;->b(Ljava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_41 .. :try_end_5d} :catchall_5e

    goto :goto_5f

    :catchall_5e
    move-exception v1

    :cond_5f
    :goto_5f
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->i()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/h;->h:Lcom/sigmob/sdk/base/views/AdLogoView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public l()Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->D:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object v0
.end method

.method public m()Lcom/sigmob/sdk/base/common/p;
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->F:Lcom/sigmob/sdk/base/common/p;

    if-nez v0, :cond_18

    new-instance v0, Lcom/sigmob/sdk/base/common/p;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/base/common/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->F:Lcom/sigmob/sdk/base/common/p;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->l()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/h;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sigmob/sdk/base/common/p;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :cond_18
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->F:Lcom/sigmob/sdk/base/common/p;

    return-object v0
.end method

.method public n()Z
    .registers 8

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->r()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/h;->A:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v3}, Lcom/sigmob/sdk/videoAd/a;->n()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/high16 v6, 0x447a0000    # 1000.0f

    if-le v3, v4, :cond_26

    long-to-float v1, v1

    div-float/2addr v1, v6

    const v2, 0x3e99999a    # 0.3f

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/h;->A:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoAd/a;->n()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_24

    goto :goto_30

    :cond_24
    move v0, v5

    goto :goto_30

    :cond_26
    iget v3, p0, Lcom/sigmob/sdk/videoAd/h;->L:I
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_31

    int-to-float v3, v3

    div-float/2addr v3, v6

    long-to-float v1, v1

    div-float/2addr v1, v6

    cmpg-float v1, v3, v1

    if-gez v1, :cond_24

    :goto_30
    return v0

    :catchall_31
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    return v0
.end method

.method public o()Z
    .registers 7

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->X:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->r()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget v0, p0, Lcom/sigmob/sdk/videoAd/h;->y:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1d

    move v0, v1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    if-eqz v0, :cond_25

    const-string v2, "showAble CompanionAds"

    invoke-static {v2}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_26

    :cond_25
    return v0

    :catchall_26
    move-exception v0

    const-string v2, "shouldBeShowCompanionAds"

    invoke-static {v2, v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public p()V
    .registers 3

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/h;->z:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->X:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->bringToFront()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->X:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/videoAd/h;->z:Z

    :cond_15
    return-void
.end method

.method q()I
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->C:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget v1, p0, Lcom/sigmob/sdk/videoAd/h;->P:I

    if-lez v1, :cond_11

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->A:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoAd/a;->a(I)I

    move-result v0

    return v0

    :cond_11
    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h;->A:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->getDuration()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/videoAd/a;->a(I)I

    move-result v0

    return v0
.end method

.method r()I
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->C:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method s()V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->E:Landroid/view/View;

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->D:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isEndCardIndexExist()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_59

    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->D:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/a;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/videoAd/g;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->J:Lcom/sigmob/sdk/videoAd/g;

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->j()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h;->J:Lcom/sigmob/sdk/videoAd/g;

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lcom/sigmob/sdk/videoAd/h;->a(Landroid/content/Context;Lcom/sigmob/sdk/videoAd/g;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->E:Landroid/view/View;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->J:Lcom/sigmob/sdk/videoAd/g;

    iget v1, p0, Lcom/sigmob/sdk/videoAd/h;->P:I

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoAd/g;->a(I)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->h()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/sigmob/sdk/videoAd/h;->e(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->J:Lcom/sigmob/sdk/videoAd/g;

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/videoAd/g;->a(Lcom/sigmob/sdk/videoAd/g$a;)V
    :try_end_35
    .catchall {:try_start_d .. :try_end_35} :catchall_36

    goto :goto_59

    :catchall_36
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sigmob/sdk/videoAd/h;->J:Lcom/sigmob/sdk/videoAd/g;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "error"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.sigmob.action.rewardedvideo.playFail"

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/sdk/videoAd/h;->a(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->f:Lcom/sigmob/sdk/base/common/h;

    invoke-interface {v0}, Lcom/sigmob/sdk/base/common/h;->a()V

    :cond_59
    :goto_59
    return-void
.end method

.method t()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h;->D:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->disable_auto_deeplink:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->s()V

    :cond_11
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->r()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/videoAd/h;->a(IZ)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->q()I

    move-result v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->r()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h;->I:Lcom/sigmob/sdk/base/views/SkipButtonWidget;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->a(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h;->w:Lcom/sigmob/sdk/base/views/AlertDialogWidget;

    if-eqz v1, :cond_36

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->setduration(I)V

    :cond_36
    return-void
.end method

.method u()Z
    .registers 3

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/h;->V:Z

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/h;->A()F

    move-result v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h;->A:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/a;->i()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method v()V
    .registers 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->q()I

    move-result v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->r()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h;->I:Lcom/sigmob/sdk/base/views/SkipButtonWidget;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->a(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h;->w:Lcom/sigmob/sdk/base/views/AlertDialogWidget;

    if-eqz v1, :cond_1d

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->setduration(I)V

    :cond_1d
    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/h;->Y:Z

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/h;->r()I

    move-result v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h;->G:Lcom/sigmob/sdk/base/views/VideoProgressBarWidget;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/views/VideoProgressBarWidget;->a(I)V

    :cond_2a
    return-void
.end method
