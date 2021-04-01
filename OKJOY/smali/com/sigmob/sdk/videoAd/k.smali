.class public Lcom/sigmob/sdk/videoAd/k;
.super Lcom/sigmob/sdk/videoAd/b;

# interfaces
.implements Lcom/sigmob/sdk/base/common/f;
.implements Lcom/sigmob/sdk/videoAd/h;


# static fields
.field private static final B:I = 0x0

.field static final g:Ljava/lang/String; = "video_config"

.field private static final i:Ljava/lang/String; = "current_position"

.field private static final j:Ljava/lang/String; = "video_finished"

.field private static final k:Ljava/lang/String; = "companionAd_visable"

.field private static final n:J = 0x32L

.field private static final o:I = -0x1


# instance fields
.field private A:Z

.field private C:Lcom/sigmob/sdk/base/views/AlertDialogWidget;

.field private D:Ljava/lang/String;

.field private E:I

.field private F:Z

.field private G:Lcom/sigmob/sdk/videoAd/a;

.field private H:I

.field private I:Lcom/sigmob/sdk/videoAd/BaseVideoView;

.field private J:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private K:Landroid/view/View;

.field private L:Lcom/sigmob/sdk/base/common/w;

.field private M:Lcom/sigmob/sdk/base/views/VideoProgressBarWidget;

.field private N:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

.field private O:Lcom/sigmob/sdk/base/views/SkipButtonWidget;

.field private P:Lcom/sigmob/sdk/videoAd/g;

.field private Q:Lcom/sigmob/sdk/videoAd/c;

.field private R:I

.field private S:I

.field private T:Z

.field private U:Z

.field private V:I

.field private W:Z

.field private X:Landroid/widget/RelativeLayout;

.field private Y:Z

.field private Z:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

.field private aa:Z

.field private ab:Z

.field private ac:Lcom/sigmob/volley/toolbox/s;

.field private ad:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

.field private ae:Z

.field private af:Z

.field private ag:Z

.field private ah:I

.field h:Ljava/lang/String;

.field private l:Lcom/sigmob/sdk/base/views/AdLogoView;

.field private m:Landroid/widget/ImageView;

.field private p:Landroid/widget/RelativeLayout;

.field private q:I

.field private r:Z

.field private s:I

.field private t:Ljava/lang/String;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private w:J

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;JLcom/sigmob/sdk/base/common/o;)V
    .registers 15

    const/4 v3, 0x0

    const/high16 v6, -0x1000000

    const/4 v1, 0x1

    const/4 v5, -0x1

    const/4 v2, 0x0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0, p6}, Lcom/sigmob/sdk/videoAd/b;-><init>(Landroid/app/Activity;Ljava/lang/Long;Lcom/sigmob/sdk/base/common/o;)V

    iput v2, p0, Lcom/sigmob/sdk/videoAd/k;->q:I

    iput-boolean v2, p0, Lcom/sigmob/sdk/videoAd/k;->r:Z

    iput v2, p0, Lcom/sigmob/sdk/videoAd/k;->s:I

    const-string v0, "undone"

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->t:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->u:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->v:Ljava/util/List;

    const-string v0, "none"

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->x:Ljava/lang/String;

    iput-object v3, p0, Lcom/sigmob/sdk/videoAd/k;->y:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->z:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/sigmob/sdk/videoAd/k;->A:Z

    iput-object v3, p0, Lcom/sigmob/sdk/videoAd/k;->J:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput v2, p0, Lcom/sigmob/sdk/videoAd/k;->R:I

    iput-boolean v2, p0, Lcom/sigmob/sdk/videoAd/k;->W:Z

    iput-boolean v2, p0, Lcom/sigmob/sdk/videoAd/k;->Y:Z

    iput-boolean v2, p0, Lcom/sigmob/sdk/videoAd/k;->aa:Z

    iput-boolean v2, p0, Lcom/sigmob/sdk/videoAd/k;->ab:Z

    iput-boolean v2, p0, Lcom/sigmob/sdk/videoAd/k;->ae:Z

    const-string v0, "ad_scene"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->y:Ljava/lang/String;

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->b()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->J:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->J:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/a;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->G:Lcom/sigmob/sdk/videoAd/a;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->J:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->D:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->J:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->display_orientation:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_150

    const-string v0, "REQUESTED_ORIENTATION"

    const/4 v3, 0x3

    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/videoAd/k;->H:I

    :goto_78
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->j()Landroid/app/Activity;

    move-result-object v0

    iget v3, p0, Lcom/sigmob/sdk/videoAd/k;->H:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->j()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->j()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x400

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0, p2}, Lcom/sigmob/sdk/videoAd/k;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->J:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v3, "_PLAYLASTFRAME_"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->J:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v3, Lcom/sigmob/sdk/base/common/q;->e:Lcom/sigmob/sdk/base/common/q;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/common/q;->a()I

    move-result v3

    if-eq v0, v3, :cond_f4

    move v0, v1

    :goto_bc
    iput-boolean v0, p0, Lcom/sigmob/sdk/videoAd/k;->A:Z

    if-eqz p3, :cond_d8

    const-string v0, "current_position"

    invoke-virtual {p3, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/videoAd/k;->S:I

    const-string v0, "video_finished"

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sigmob/sdk/videoAd/k;->T:Z

    const-string v0, "companionAd_visable"

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sigmob/sdk/videoAd/k;->W:Z

    :cond_d8
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->G:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/a;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f6

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BaseVideoConfig does not have a video disk path"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_e8
    const/4 v0, 0x7

    iput v0, p0, Lcom/sigmob/sdk/videoAd/k;->H:I

    goto :goto_78

    :pswitch_ec
    const/4 v0, 0x6

    iput v0, p0, Lcom/sigmob/sdk/videoAd/k;->H:I

    goto :goto_78

    :pswitch_f0
    const/4 v0, 0x4

    iput v0, p0, Lcom/sigmob/sdk/videoAd/k;->H:I

    goto :goto_78

    :cond_f4
    move v0, v2

    goto :goto_bc

    :cond_f6
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->i()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->u()V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->p:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-direct {p0, p1, v2}, Lcom/sigmob/sdk/videoAd/k;->a(Landroid/content/Context;I)Lcom/sigmob/sdk/videoAd/BaseVideoView;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->I:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/k;->p:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/k;->I:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->i()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/k;->p:Landroid/widget/RelativeLayout;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/k;->r:Z

    if-eqz v0, :cond_13c

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/videoAd/k;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/k;->y()V

    :cond_13c
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->l()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->p:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/sigmob/sdk/videoAd/k$1;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/sdk/videoAd/k$1;-><init>(Lcom/sigmob/sdk/videoAd/k;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    nop

    :pswitch_data_150
    .packed-switch 0x1
        :pswitch_e8
        :pswitch_ec
        :pswitch_f0
    .end packed-switch
.end method

.method static synthetic A(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/common/o;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->g()Lcom/sigmob/sdk/base/common/o;

    move-result-object v0

    return-object v0
.end method

.method private A()V
    .registers 4

    :try_start_0
    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/k;->T:Z

    if-nez v0, :cond_56

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/k;->H()V

    iget v0, p0, Lcom/sigmob/sdk/videoAd/k;->S:I

    if-lez v0, :cond_57

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->n()Lcom/sigmob/sdk/base/common/w;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->f:Lcom/sigmob/sdk/base/common/a;

    iget v2, p0, Lcom/sigmob/sdk/videoAd/k;->S:I

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/w;->a(Lcom/sigmob/sdk/base/common/a;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video seek to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sigmob/sdk/videoAd/k;->S:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->I:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    iget v1, p0, Lcom/sigmob/sdk/videoAd/k;->S:I

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->seekTo(I)V

    :goto_35
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->C:Lcom/sigmob/sdk/base/views/AlertDialogWidget;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->C:Lcom/sigmob/sdk/base/views/AlertDialogWidget;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_46

    :cond_41
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->I:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->start()V

    :cond_46
    iget v0, p0, Lcom/sigmob/sdk/videoAd/k;->S:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_56

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->G:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->h()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/sigmob/sdk/videoAd/k;->S:I

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/videoAd/a;->a(Landroid/content/Context;I)V

    :cond_56
    :goto_56
    return-void

    :cond_57
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->n()Lcom/sigmob/sdk/base/common/w;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->g:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->t()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/w;->a(Lcom/sigmob/sdk/base/common/a;I)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_64} :catch_65

    goto :goto_35

    :catch_65
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_56
.end method

.method private B()V
    .registers 4

    :try_start_0
    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/k;->T:Z

    if-nez v0, :cond_2a

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/k;->I()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->I:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->pause()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->t()I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/videoAd/k;->S:I

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->n()Lcom/sigmob/sdk/base/common/w;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->h:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->t()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/w;->a(Lcom/sigmob/sdk/base/common/a;I)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->G:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->h()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/sigmob/sdk/videoAd/k;->S:I

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/videoAd/a;->b(Landroid/content/Context;I)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2a} :catch_2b

    :cond_2a
    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_2a
.end method

.method static synthetic B(Lcom/sigmob/sdk/videoAd/k;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/k;->A:Z

    return v0
.end method

.method private C()F
    .registers 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->t()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->s()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method static synthetic C(Lcom/sigmob/sdk/videoAd/k;)Landroid/content/Context;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->h()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic D(Lcom/sigmob/sdk/videoAd/k;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->D:Ljava/lang/String;

    return-object v0
.end method

.method private D()V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->s()I

    move-result v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->G:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/videoAd/a;->i(I)I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/videoAd/k;->R:I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_c
.end method

.method static synthetic E(Lcom/sigmob/sdk/videoAd/k;)Landroid/content/Context;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->h()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private E()V
    .registers 9

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v1, "duration_seq"

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/k;->u:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/sigmob/sdk/videoAd/k;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "video_time_seq"

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/k;->v:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/sigmob/sdk/videoAd/k;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "skip_state"

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/k;->x:Ljava/lang/String;

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "video_duration"

    const-string v2, "%.2f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->s()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "endcard_loading_state"

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/k;->t:Ljava/lang/String;

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->J:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const-string v2, "5"

    const/4 v3, 0x0

    sget-object v4, Lcom/sigmob/sdk/base/common/b/b;->M:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic F(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/common/o;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->g()Lcom/sigmob/sdk/base/common/o;

    move-result-object v0

    return-object v0
.end method

.method private F()V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->G:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/a;->r()I

    move-result v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->s()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const v2, 0x5f5e0ff

    if-ne v0, v2, :cond_16

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/videoAd/k;->a(I)V

    :goto_15
    return-void

    :cond_16
    const v2, -0x5f5e0ff

    if-ne v0, v2, :cond_1f

    invoke-direct {p0, v1}, Lcom/sigmob/sdk/videoAd/k;->a(I)V

    goto :goto_15

    :cond_1f
    if-lez v0, :cond_25

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/videoAd/k;->a(I)V

    goto :goto_15

    :cond_25
    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/videoAd/k;->a(I)V

    goto :goto_15
.end method

.method static synthetic G(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/views/SkipButtonWidget;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->O:Lcom/sigmob/sdk/base/views/SkipButtonWidget;

    return-object v0
.end method

.method private G()V
    .registers 6

    const/4 v4, 0x0

    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->u()V

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->e()Lcom/sigmob/sdk/base/common/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/e;->a(Lcom/sigmob/sdk/base/common/f;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->N:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    if-nez v0, :cond_a3

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->h()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/sigmob/sdk/videoAd/k;->e(Landroid/content/Context;I)V

    :goto_19
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->l:Lcom/sigmob/sdk/base/views/AdLogoView;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->l:Lcom/sigmob/sdk/base/views/AdLogoView;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/views/AdLogoView;->setVisibility(I)V

    :cond_22
    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/k;->E()V

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/k;->z()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->K:Landroid/view/View;

    if-nez v0, :cond_5e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endcard can\'t show "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->J:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndCardIndexPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "error"

    const-string v2, "endcard can\'t show"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.sigmob.action.rewardedvideo.playFail"

    invoke-virtual {p0, v1, v0}, Lcom/sigmob/sdk/videoAd/k;->a(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->f:Lcom/sigmob/sdk/base/common/o;

    invoke-interface {v0}, Lcom/sigmob/sdk/base/common/o;->a()V

    :cond_5e
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->K:Landroid/view/View;

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->K:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->K:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_6c
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->p:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->p:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const-string v0, "com.sigmob.action.rewardedvideo.Close"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/videoAd/k;->a(Ljava/lang/String;)V

    :cond_7b
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->O:Lcom/sigmob/sdk/base/views/SkipButtonWidget;

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->O:Lcom/sigmob/sdk/base/views/SkipButtonWidget;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->setVisibility(I)V

    :cond_84
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->Z:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->Z:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->setVisibility(I)V

    :cond_8d
    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/k;->ae:Z

    if-eqz v0, :cond_96

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->M:Lcom/sigmob/sdk/base/views/VideoProgressBarWidget;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/views/VideoProgressBarWidget;->setVisibility(I)V

    :cond_96
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->ad:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->ad:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->setVisibility(I)V

    :cond_9f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/videoAd/k;->W:Z

    return-void

    :cond_a3
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->N:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    invoke-virtual {v0, v4}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->setVisibility(I)V

    goto/16 :goto_19
.end method

.method private H()V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->Q:Lcom/sigmob/sdk/videoAd/c;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->Q:Lcom/sigmob/sdk/videoAd/c;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Lcom/sigmob/sdk/videoAd/c;->a(J)V

    :cond_b
    return-void
.end method

.method static synthetic H(Lcom/sigmob/sdk/videoAd/k;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/k;->ab:Z

    return v0
.end method

.method static synthetic I(Lcom/sigmob/sdk/videoAd/k;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->b:Landroid/content/Context;

    return-object v0
.end method

.method private I()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->Q:Lcom/sigmob/sdk/videoAd/c;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->Q:Lcom/sigmob/sdk/videoAd/c;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/c;->b()V

    :cond_9
    return-void
.end method

.method static synthetic J(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/views/VideoButtonWidget;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->N:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    return-object v0
.end method

.method private J()V
    .registers 3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sigmob/sdk/videoAd/k$6;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/videoAd/k$6;-><init>(Lcom/sigmob/sdk/videoAd/k;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic K(Lcom/sigmob/sdk/videoAd/k;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/k;->Y:Z

    return v0
.end method

.method static synthetic L(Lcom/sigmob/sdk/videoAd/k;)V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/k;->J()V

    return-void
.end method

.method static synthetic M(Lcom/sigmob/sdk/videoAd/k;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/k;->af:Z

    return v0
.end method

.method static synthetic N(Lcom/sigmob/sdk/videoAd/k;)V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/k;->H()V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/videoAd/k;I)I
    .registers 2

    iput p1, p0, Lcom/sigmob/sdk/videoAd/k;->V:I

    return p1
.end method

.method private a(Landroid/content/Context;Lcom/sigmob/sdk/videoAd/g;I)Landroid/view/View;
    .registers 9

    const/4 v4, -0x1

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    if-nez p2, :cond_10

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_f
    return-object v0

    :cond_10
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->i()Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/videoAd/k;->a(Landroid/content/Context;Lcom/sigmob/sdk/videoAd/g;)Lcom/sigmob/sdk/base/views/CreativeWebView;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sigmob/sdk/base/views/CreativeWebView;->setVisibility(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_f
.end method

.method static synthetic a(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->J:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/sigmob/sdk/videoAd/g;)Lcom/sigmob/sdk/base/views/CreativeWebView;
    .registers 7

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    invoke-static {p2}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/sigmob/sdk/videoAd/g;->a()Lcom/sigmob/sdk/base/views/d;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->J:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_source_logo()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sigmob/sdk/videoAd/k;->A:Z

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/k;->J:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getInvisibleAdLabel()Z

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/sigmob/sdk/base/views/CreativeWebView;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/views/d;Ljava/lang/String;ZZ)Lcom/sigmob/sdk/base/views/CreativeWebView;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/videoAd/k$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/sigmob/sdk/videoAd/k$3;-><init>(Lcom/sigmob/sdk/videoAd/k;Lcom/sigmob/sdk/videoAd/g;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/CreativeWebView;->setWebViewClickListener(Lcom/sigmob/sdk/base/views/g;)V

    new-instance v1, Lcom/sigmob/sdk/videoAd/k$4;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/sigmob/sdk/videoAd/k$4;-><init>(Lcom/sigmob/sdk/videoAd/k;Lcom/sigmob/sdk/videoAd/g;Landroid/content/Context;Lcom/sigmob/sdk/base/views/CreativeWebView;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/CreativeWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    new-instance v1, Lcom/sigmob/sdk/videoAd/k$5;

    invoke-direct {v1, p0, p2}, Lcom/sigmob/sdk/videoAd/k$5;-><init>(Lcom/sigmob/sdk/videoAd/k;Lcom/sigmob/sdk/videoAd/g;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/CreativeWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;I)Lcom/sigmob/sdk/videoAd/BaseVideoView;
    .registers 7

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->G:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/a;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BaseVideoConfig does not have a video disk path"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Lcom/sigmob/sdk/videoAd/BaseVideoView;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/videoAd/BaseVideoView;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/sigmob/sdk/videoAd/k$13;

    invoke-direct {v1, p0, v0}, Lcom/sigmob/sdk/videoAd/k$13;-><init>(Lcom/sigmob/sdk/videoAd/k;Lcom/sigmob/sdk/videoAd/BaseVideoView;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    :try_start_21
    iget-boolean v1, p0, Lcom/sigmob/sdk/videoAd/k;->A:Z

    if-nez v1, :cond_40

    iget-object v1, v0, Lcom/sigmob/sdk/videoAd/BaseVideoView;->a:Landroid/media/MediaMetadataRetriever;

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/k;->G:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoAd/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/videoAd/k;->b(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->m:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->i()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/k;->m:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_40} :catch_7a

    :cond_40
    :goto_40
    new-instance v1, Lcom/sigmob/sdk/videoAd/k$14;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/videoAd/k$14;-><init>(Lcom/sigmob/sdk/videoAd/k;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    new-instance v1, Lcom/sigmob/sdk/videoAd/k$15;

    invoke-direct {v1, p0, v0}, Lcom/sigmob/sdk/videoAd/k$15;-><init>(Lcom/sigmob/sdk/videoAd/k;Lcom/sigmob/sdk/videoAd/BaseVideoView;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->J:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isVideoExist()Z

    move-result v1

    if-eqz v1, :cond_65

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->G:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->setVideoPath(Ljava/lang/String;)V

    :goto_61
    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->setVisibility(I)V

    return-object v0

    :cond_65
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sigmob/sdk/videoAd/k;->r:Z

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->e()Lcom/sigmob/sdk/base/common/e;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/k;->J:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/sdk/base/common/e;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/g;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->e()Lcom/sigmob/sdk/base/common/e;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sigmob/sdk/base/common/e;->a(Lcom/sigmob/sdk/base/common/f;)V

    goto :goto_61

    :catch_7a
    move-exception v1

    goto :goto_40
.end method

.method static synthetic a(Lcom/sigmob/sdk/videoAd/k;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/k;->x:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    const/16 v1, 0x5b

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_15
    move v1, v0

    if-eqz v1, :cond_1d

    const/16 v0, 0x2c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1d
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_15

    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method private a(I)V
    .registers 6

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get video image begin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->I:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    iget-object v0, v0, Lcom/sigmob/sdk/videoAd/BaseVideoView;->a:Landroid/media/MediaMetadataRetriever;

    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v2, v1

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get video image end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->m:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_45
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_45} :catch_46

    :goto_45
    return-void

    :catch_46
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_45
.end method

.method private a(ILandroid/widget/RelativeLayout$LayoutParams;)V
    .registers 10

    const/16 v6, 0xc

    const/16 v5, 0xb

    const/16 v4, 0xa

    const/16 v3, 0x9

    const/4 v2, 0x2

    const/high16 v0, 0x41000000    # 8.0f

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/utils/b;->b(FLandroid/content/Context;)I

    move-result v0

    packed-switch p1, :pswitch_data_72

    :goto_14
    return-void

    :pswitch_15
    invoke-virtual {p2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    mul-int/lit8 v1, v0, 0x2

    invoke-virtual {p2, v0, v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_14

    :pswitch_21
    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->ad:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->ad:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->getId()I

    move-result v1

    invoke-virtual {p2, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    mul-int/lit8 v1, v0, 0x2

    invoke-virtual {p2, v0, v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_33
    invoke-virtual {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_14

    :cond_37
    invoke-virtual {p2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    mul-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/sigmob/sdk/videoAd/k;->q:I

    add-int/2addr v2, v0

    invoke-virtual {p2, v0, v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_33

    :pswitch_43
    invoke-virtual {p2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    mul-int/lit8 v1, v0, 0x2

    invoke-virtual {p2, v0, v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_14

    :pswitch_4f
    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->ad:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    if-eqz v1, :cond_65

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->ad:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->getId()I

    move-result v1

    invoke-virtual {p2, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    mul-int/lit8 v1, v0, 0x2

    invoke-virtual {p2, v0, v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_61
    invoke-virtual {p2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_14

    :cond_65
    invoke-virtual {p2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    mul-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/sigmob/sdk/videoAd/k;->q:I

    add-int/2addr v2, v0

    invoke-virtual {p2, v0, v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_61

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_15
        :pswitch_21
        :pswitch_43
        :pswitch_4f
    .end packed-switch
.end method

.method private a(IZ)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->O:Lcom/sigmob/sdk/base/views/SkipButtonWidget;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->O:Lcom/sigmob/sdk/base/views/SkipButtonWidget;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->a()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->O:Lcom/sigmob/sdk/base/views/SkipButtonWidget;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->b()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->n()Lcom/sigmob/sdk/base/common/w;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/sigmob/sdk/base/common/w;->a(ZI)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->n()Lcom/sigmob/sdk/base/common/w;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->F:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v0, v1, p1}, Lcom/sigmob/sdk/base/common/w;->a(Lcom/sigmob/sdk/base/common/a;I)V

    :cond_21
    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/videoAd/k;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/videoAd/k;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/videoAd/k;Landroid/content/Context;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/videoAd/k;->c(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/videoAd/k;Ljava/lang/String;Ljava/util/Map;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/sdk/videoAd/k;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/videoAd/k;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/videoAd/k;->ag:Z

    return p1
.end method

.method static synthetic b(Lcom/sigmob/sdk/videoAd/k;I)I
    .registers 2

    iput p1, p0, Lcom/sigmob/sdk/videoAd/k;->ah:I

    return p1
.end method

.method private b(Landroid/content/Context;)Landroid/widget/ImageView;
    .registers 5

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method static synthetic b(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/views/AlertDialogWidget;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->C:Lcom/sigmob/sdk/base/views/AlertDialogWidget;

    return-object v0
.end method

.method static synthetic b(Lcom/sigmob/sdk/videoAd/k;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/k;->t:Ljava/lang/String;

    return-object p1
.end method

.method private b(Landroid/content/Context;I)V
    .registers 5

    new-instance v0, Lcom/sigmob/sdk/base/views/VideoProgressBarWidget;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/base/views/VideoProgressBarWidget;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->M:Lcom/sigmob/sdk/base/views/VideoProgressBarWidget;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->M:Lcom/sigmob/sdk/base/views/VideoProgressBarWidget;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->I:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/VideoProgressBarWidget;->setAnchorId(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->M:Lcom/sigmob/sdk/base/views/VideoProgressBarWidget;

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/base/views/VideoProgressBarWidget;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->i()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->M:Lcom/sigmob/sdk/base/views/VideoProgressBarWidget;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/sigmob/sdk/videoAd/k;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/videoAd/k;->U:Z

    return p1
.end method

.method static synthetic c(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/videoAd/g;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->P:Lcom/sigmob/sdk/videoAd/g;

    return-object v0
.end method

.method private c(Landroid/content/Context;I)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->C:Lcom/sigmob/sdk/base/views/AlertDialogWidget;

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance v0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->G:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/a;->t()Lcom/sigmob/sdk/videoAd/d;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/sigmob/sdk/base/views/AlertDialogWidget;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/videoAd/d;)V

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->C:Lcom/sigmob/sdk/base/views/AlertDialogWidget;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->C:Lcom/sigmob/sdk/base/views/AlertDialogWidget;

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->i()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->C:Lcom/sigmob/sdk/base/views/AlertDialogWidget;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->C:Lcom/sigmob/sdk/base/views/AlertDialogWidget;

    new-instance v1, Lcom/sigmob/sdk/videoAd/k$16;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/videoAd/k$16;-><init>(Lcom/sigmob/sdk/videoAd/k;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->setDialogListener(Lcom/sigmob/sdk/base/views/a;)V

    goto :goto_4
.end method

.method static synthetic c(Lcom/sigmob/sdk/videoAd/k;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/videoAd/k;->a(I)V

    return-void
.end method

.method static synthetic c(Lcom/sigmob/sdk/videoAd/k;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/videoAd/k;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/sigmob/sdk/videoAd/k;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/videoAd/k;->T:Z

    return p1
.end method

.method static synthetic d(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/views/CompanionAdsWidget;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->ad:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    return-object v0
.end method

.method private d(Landroid/content/Context;I)V
    .registers 20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sigmob/sdk/videoAd/k;->J:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v2

    iget-object v10, v2, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->companion:Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;

    if-eqz v10, :cond_30

    iget-object v2, v10, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->icon_url:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_30

    iget-object v2, v10, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->title:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_30

    iget-object v2, v10, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->desc:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v2, v10, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->score:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_36

    :cond_30
    const-string v2, "ompanionEnd lose informations of UI Display"

    invoke-static {v2}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    :goto_35
    return-void

    :cond_36
    sget v11, Lcom/sigmob/sdk/base/views/i;->a:I

    const/4 v12, -0x1

    const/4 v3, -0x1

    const/16 v2, 0xe5

    :try_start_3c
    iget-object v4, v10, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    if-eqz v4, :cond_7a

    iget-object v4, v10, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    iget-object v4, v4, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->alpha:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_47} :catch_1d1

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v4, v4, v6

    if-lez v4, :cond_7a

    :try_start_52
    iget-object v4, v10, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    iget-object v4, v4, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->alpha:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, v10, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    iget-object v5, v5, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->red:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v10, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    iget-object v6, v6, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->green:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v10, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    iget-object v7, v7, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->blue:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_79} :catch_1f8

    move-result v11

    :cond_7a
    :goto_7a
    :try_start_7a
    iget-object v4, v10, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    if-eqz v4, :cond_b8

    iget-object v4, v10, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    iget-object v4, v4, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->alpha:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_85} :catch_1d1

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v4, v4, v6

    if-lez v4, :cond_b8

    :try_start_90
    iget-object v4, v10, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    iget-object v4, v4, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->alpha:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, v10, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    iget-object v5, v5, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->red:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v10, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    iget-object v6, v6, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->green:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v10, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    iget-object v7, v7, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->blue:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I
    :try_end_b7
    .catch Ljava/lang/Throwable; {:try_start_90 .. :try_end_b7} :catch_1f5

    move-result v12

    :cond_b8
    :goto_b8
    :try_start_b8
    iget-object v4, v10, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->bar_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    if-eqz v4, :cond_f6

    iget-object v4, v10, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->bar_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    iget-object v4, v4, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->alpha:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F
    :try_end_c3
    .catch Ljava/lang/Throwable; {:try_start_b8 .. :try_end_c3} :catch_1d1

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v4, v4, v6

    if-lez v4, :cond_f6

    :try_start_ce
    iget-object v4, v10, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->bar_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    iget-object v4, v4, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->alpha:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget-object v4, v10, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    iget-object v4, v4, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->red:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v10, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    iget-object v5, v5, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->green:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v10, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;

    iget-object v6, v6, Lcom/sigmob/sdk/base/models/sigdsp/pb/Color;->blue:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I
    :try_end_f5
    .catch Ljava/lang/Throwable; {:try_start_ce .. :try_end_f5} :catch_1f2

    move-result v3

    :cond_f6
    :goto_f6
    move v15, v2

    move v14, v3

    :goto_f8
    const/4 v2, 0x0

    :try_start_f9
    iget-object v3, v10, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->click_type:Ljava/lang/Integer;

    if-eqz v3, :cond_103

    iget-object v3, v10, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->click_type:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_102
    .catch Ljava/lang/Throwable; {:try_start_f9 .. :try_end_102} :catch_1d6

    move-result v2

    :cond_103
    move v13, v2

    :goto_104
    const/high16 v16, 0x428c0000    # 70.0f

    iget-object v5, v10, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->button_text:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_115

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_128

    :cond_115
    invoke-virtual/range {p0 .. p0}, Lcom/sigmob/sdk/videoAd/k;->m()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v2

    iget-object v2, v2, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->interaction_type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1da

    const-string v5, "\u4e0b\u8f7d"

    :cond_128
    :goto_128
    new-instance v2, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    iget-object v4, v10, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->title:Ljava/lang/String;

    iget-object v3, v10, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->score:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v7, v10, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->desc:Ljava/lang/String;

    iget-object v3, v10, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->animate_type:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sigmob/sdk/videoAd/k;->J:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v3

    iget-object v3, v3, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->template_type:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, v10, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->icon_url:Ljava/lang/String;

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v16}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;IILjava/lang/String;IIIIIF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sigmob/sdk/videoAd/k;->ad:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sigmob/sdk/videoAd/k;->ad:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->as()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->setId(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/utils/b;->c(FLandroid/content/Context;)I

    move-result v3

    invoke-direct {v4, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x41000000    # 8.0f

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/sigmob/sdk/base/common/utils/b;->c(FLandroid/content/Context;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sigmob/sdk/videoAd/k;->l:Lcom/sigmob/sdk/base/views/AdLogoView;

    if-eqz v3, :cond_1de

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v3, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v2, 0xb

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sigmob/sdk/videoAd/k;->l:Lcom/sigmob/sdk/base/views/AdLogoView;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/views/AdLogoView;->getId()I

    move-result v3

    invoke-virtual {v4, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_1a7
    invoke-virtual/range {p0 .. p0}, Lcom/sigmob/sdk/videoAd/k;->i()Landroid/view/ViewGroup;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sigmob/sdk/videoAd/k;->ad:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sigmob/sdk/videoAd/k;->F:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sigmob/sdk/videoAd/k;->ad:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sigmob/sdk/videoAd/k;->ad:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    new-instance v3, Lcom/sigmob/sdk/videoAd/k$17;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/sigmob/sdk/videoAd/k$17;-><init>(Lcom/sigmob/sdk/videoAd/k;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_35

    :catch_1d1
    move-exception v4

    move v15, v2

    move v14, v3

    goto/16 :goto_f8

    :catch_1d6
    move-exception v3

    move v13, v2

    goto/16 :goto_104

    :cond_1da
    const-string v5, "\u8be6\u60c5"

    goto/16 :goto_128

    :cond_1de
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sigmob/sdk/videoAd/k;->q:I

    add-int/2addr v3, v2

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v2, 0xb

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xc

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1a7

    :catch_1f2
    move-exception v4

    goto/16 :goto_f6

    :catch_1f5
    move-exception v4

    goto/16 :goto_b8

    :catch_1f8
    move-exception v4

    goto/16 :goto_7a
.end method

.method static synthetic d(Lcom/sigmob/sdk/videoAd/k;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/videoAd/k;->Y:Z

    return p1
.end method

.method static synthetic e(Lcom/sigmob/sdk/videoAd/k;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->z:Landroid/os/Handler;

    return-object v0
.end method

.method private e(Landroid/content/Context;I)V
    .registers 6

    const/4 v2, -0x2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->N:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    if-eqz v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    new-instance v0, Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->G:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/a;->m()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->N:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->N:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->setVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->G:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/a;->m()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sigmob/sdk/videoAd/k;->a(ILandroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->i()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/k;->N:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/sigmob/sdk/videoAd/k$18;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/videoAd/k$18;-><init>(Lcom/sigmob/sdk/videoAd/k;)V

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->N:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->setOnTouchListenerToContent(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->N:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    sget-object v1, Lcom/sigmob/sdk/base/views/l;->d:Lcom/sigmob/sdk/base/views/l;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/views/l;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->G:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/a;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->N:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->a(Ljava/lang/String;)V

    goto :goto_5
.end method

.method static synthetic e(Lcom/sigmob/sdk/videoAd/k;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/videoAd/k;->aa:Z

    return p1
.end method

.method private f(Landroid/content/Context;I)V
    .registers 7

    const/4 v3, 0x0

    const/4 v1, -0x2

    new-instance v0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/base/views/SkipButtonWidget;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->O:Lcom/sigmob/sdk/base/views/SkipButtonWidget;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->O:Lcom/sigmob/sdk/base/views/SkipButtonWidget;

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->setVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->G:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/a;->n()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sigmob/sdk/videoAd/k;->a(ILandroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->i()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/k;->O:Lcom/sigmob/sdk/base/views/SkipButtonWidget;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->O:Lcom/sigmob/sdk/base/views/SkipButtonWidget;

    new-instance v1, Lcom/sigmob/sdk/videoAd/k$19;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/sdk/videoAd/k$19;-><init>(Lcom/sigmob/sdk/videoAd/k;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->G:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/a;->w()I

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->G:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/a;->y()I

    move-result v0

    if-ltz v0, :cond_47

    :cond_3f
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->G:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/a;->y()I

    move-result v0

    if-nez v0, :cond_4a

    :cond_47
    invoke-direct {p0, v3, v3}, Lcom/sigmob/sdk/videoAd/k;->a(IZ)V

    :cond_4a
    return-void
.end method

.method static synthetic f(Lcom/sigmob/sdk/videoAd/k;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/k;->T:Z

    return v0
.end method

.method static synthetic f(Lcom/sigmob/sdk/videoAd/k;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/videoAd/k;->af:Z

    return p1
.end method

.method private g(Landroid/content/Context;I)V
    .registers 6

    const/4 v2, -0x2

    new-instance v0, Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->G:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/a;->o()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->Z:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->Z:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->setVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->G:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/a;->o()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sigmob/sdk/videoAd/k;->a(ILandroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->i()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/k;->Z:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/sigmob/sdk/videoAd/k$2;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/videoAd/k$2;-><init>(Lcom/sigmob/sdk/videoAd/k;)V

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->Z:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->setOnTouchListenerToContent(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->G:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/a;->q()I

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->Z:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    sget-object v1, Lcom/sigmob/sdk/base/views/l;->b:Lcom/sigmob/sdk/base/views/l;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/views/l;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->I:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->setVolume(F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/videoAd/k;->aa:Z

    :goto_50
    return-void

    :cond_51
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->Z:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    sget-object v1, Lcom/sigmob/sdk/base/views/l;->c:Lcom/sigmob/sdk/base/views/l;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/views/l;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->a(Landroid/graphics/Bitmap;)V

    goto :goto_50
.end method

.method static synthetic g(Lcom/sigmob/sdk/videoAd/k;)V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/k;->z()V

    return-void
.end method

.method static synthetic g(Lcom/sigmob/sdk/videoAd/k;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/videoAd/k;->r:Z

    return p1
.end method

.method static synthetic h(Lcom/sigmob/sdk/videoAd/k;)I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/videoAd/k;->ah:I

    return v0
.end method

.method static synthetic i(Lcom/sigmob/sdk/videoAd/k;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/k;->aa:Z

    return v0
.end method

.method static synthetic j(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/views/VideoButtonWidget;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->Z:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    return-object v0
.end method

.method public static k()I
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic k(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/videoAd/BaseVideoView;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->I:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    return-object v0
.end method

.method static synthetic l(Lcom/sigmob/sdk/videoAd/k;)I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/videoAd/k;->V:I

    return v0
.end method

.method static synthetic m(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/videoAd/a;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->G:Lcom/sigmob/sdk/videoAd/a;

    return-object v0
.end method

.method static synthetic n(Lcom/sigmob/sdk/videoAd/k;)I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/videoAd/k;->S:I

    return v0
.end method

.method static synthetic o(Lcom/sigmob/sdk/videoAd/k;)V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/k;->D()V

    return-void
.end method

.method static synthetic p(Lcom/sigmob/sdk/videoAd/k;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/k;->ae:Z

    return v0
.end method

.method static synthetic q(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/views/VideoProgressBarWidget;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->M:Lcom/sigmob/sdk/base/views/VideoProgressBarWidget;

    return-object v0
.end method

.method static synthetic r(Lcom/sigmob/sdk/videoAd/k;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/k;->r:Z

    return v0
.end method

.method static synthetic s(Lcom/sigmob/sdk/videoAd/k;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/k;->ag:Z

    return v0
.end method

.method static synthetic t(Lcom/sigmob/sdk/videoAd/k;)V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/k;->y()V

    return-void
.end method

.method static synthetic u(Lcom/sigmob/sdk/videoAd/k;)V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/k;->I()V

    return-void
.end method

.method static synthetic v(Lcom/sigmob/sdk/videoAd/k;)F
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/k;->C()F

    move-result v0

    return v0
.end method

.method static synthetic w(Lcom/sigmob/sdk/videoAd/k;)V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/k;->G()V

    return-void
.end method

.method static synthetic x(Lcom/sigmob/sdk/videoAd/k;)Landroid/content/Context;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->h()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic y(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/common/o;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->g()Lcom/sigmob/sdk/base/common/o;

    move-result-object v0

    return-object v0
.end method

.method private y()V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->X:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->X:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sigmob/sdk/videoAd/k;->w:J

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->X:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const-string v0, "loading"

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->x:Ljava/lang/String;

    iget v0, p0, Lcom/sigmob/sdk/videoAd/k;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sigmob/sdk/videoAd/k;->s:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_2f

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->t()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/videoAd/k;->a(IZ)V

    goto :goto_c

    :cond_2f
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->z:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/sdk/videoAd/k$12;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/videoAd/k$12;-><init>(Lcom/sigmob/sdk/videoAd/k;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c
.end method

.method static synthetic z(Lcom/sigmob/sdk/videoAd/k;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->b:Landroid/content/Context;

    return-object v0
.end method

.method private z()V
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->X:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->X:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_53

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->u:Ljava/util/List;

    const-string v1, "%d"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sigmob/sdk/videoAd/k;->w:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->v:Ljava/util/List;

    const-string v1, "%.2f"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->t()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "play"

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->x:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->z:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->X:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_53
    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    const/4 v4, 0x4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/sigmob/sdk/videoAd/b;->a()V

    sget-object v0, Lcom/sigmob/sdk/videoAd/k$11;->a:[I

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->G:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/a;->j()Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_9a

    :goto_16
    :pswitch_16
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->J:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->i()I

    move-result v1

    iput v1, p0, Lcom/sigmob/sdk/videoAd/k;->q:I

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->j()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/k;->G:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoAd/a;->v()Lcom/sigmob/sdk/videoAd/g;

    move-result-object v2

    iput-object v2, p0, Lcom/sigmob/sdk/videoAd/k;->P:Lcom/sigmob/sdk/videoAd/g;

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/k;->P:Lcom/sigmob/sdk/videoAd/g;

    invoke-virtual {v2, p0}, Lcom/sigmob/sdk/videoAd/g;->a(Lcom/sigmob/sdk/videoAd/h;)V

    iget-boolean v2, p0, Lcom/sigmob/sdk/videoAd/k;->W:Z

    if-nez v2, :cond_96

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/k;->G:Lcom/sigmob/sdk/videoAd/a;

    if-nez v2, :cond_59

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BaseVideoConfig does not have a video disk path"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_47
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->g()Lcom/sigmob/sdk/base/common/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/base/common/o;->a(I)V

    goto :goto_16

    :pswitch_50
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->g()Lcom/sigmob/sdk/base/common/o;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/base/common/o;->a(I)V

    goto :goto_16

    :cond_59
    iget-boolean v2, p0, Lcom/sigmob/sdk/videoAd/k;->ae:Z

    if-eqz v2, :cond_60

    invoke-direct {p0, v1, v4}, Lcom/sigmob/sdk/videoAd/k;->b(Landroid/content/Context;I)V

    :cond_60
    iget-object v2, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->has_companionEndcard:Ljava/lang/Boolean;

    if-eqz v2, :cond_7d

    iget-object v2, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->has_companionEndcard:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7d

    iget-object v2, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->companion:Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;

    if-eqz v2, :cond_7d

    invoke-direct {p0, v1, v4}, Lcom/sigmob/sdk/videoAd/k;->d(Landroid/content/Context;I)V

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->companion:Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->animate_delay_secs:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/videoAd/k;->E:I

    :cond_7d
    invoke-direct {p0, v1, v3}, Lcom/sigmob/sdk/videoAd/k;->g(Landroid/content/Context;I)V

    invoke-direct {p0, v1, v3}, Lcom/sigmob/sdk/videoAd/k;->f(Landroid/content/Context;I)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sigmob/sdk/videoAd/c;

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/k;->G:Lcom/sigmob/sdk/videoAd/a;

    invoke-direct {v1, p0, v2, v0}, Lcom/sigmob/sdk/videoAd/c;-><init>(Lcom/sigmob/sdk/videoAd/k;Lcom/sigmob/sdk/videoAd/a;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->Q:Lcom/sigmob/sdk/videoAd/c;

    :goto_95
    return-void

    :cond_96
    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/k;->G()V

    goto :goto_95

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_47
        :pswitch_50
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method public a(IILandroid/content/Intent;)V
    .registers 5

    const/4 v0, -0x1

    if-ne p2, v0, :cond_a

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->g()Lcom/sigmob/sdk/base/common/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/base/common/o;->a()V

    :cond_a
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 14

    const/high16 v11, 0x42c80000    # 100.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    const/4 v10, -0x2

    const/4 v9, 0x0

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->X:Landroid/widget/RelativeLayout;

    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/sigmob/sdk/base/views/l;->a:Lcom/sigmob/sdk/base/views/l;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/l;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->as()I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setId(I)V

    const v2, 0x36ee80

    const v8, 0x7a1200

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    int-to-float v2, v2

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    int-to-long v4, v8

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->h()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sigmob/sdk/base/common/utils/b;->b(FLandroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v9, v2, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, "LOADING..."

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, -0xbbbbbc

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x41000000    # 8.0f

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->h()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sigmob/sdk/base/common/utils/b;->b(FLandroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v9, v3, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/4 v3, 0x3

    invoke-virtual {v7}, Landroid/widget/ImageView;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/k;->X:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->X:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->X:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->h()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sigmob/sdk/base/common/utils/b;->b(FLandroid/content/Context;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v1, 0xb2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_f0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->X:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_cc
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->h()Landroid/content/Context;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/sigmob/sdk/base/common/utils/b;->b(FLandroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->h()Landroid/content/Context;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/sigmob/sdk/base/common/utils/b;->b(FLandroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->i()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/k;->X:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_f0
    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->X:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_cc
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->G:Lcom/sigmob/sdk/videoAd/a;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->G:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/a;->v()Lcom/sigmob/sdk/videoAd/g;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->P:Lcom/sigmob/sdk/videoAd/g;

    :cond_c
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->n()Lcom/sigmob/sdk/base/common/w;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->n()Lcom/sigmob/sdk/base/common/w;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->x:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->t()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/w;->a(Lcom/sigmob/sdk/base/common/a;I)V

    :cond_1f
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 4

    :try_start_0
    const-string v0, "video_finished"

    iget-boolean v1, p0, Lcom/sigmob/sdk/videoAd/k;->T:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "current_position"

    iget v1, p0, Lcom/sigmob/sdk/videoAd/k;->S:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "companionAd_visable"

    iget-boolean v1, p0, Lcom/sigmob/sdk/videoAd/k;->W:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_15} :catch_16

    :goto_15
    return-void

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_15
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->J:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    :goto_10
    return-void

    :cond_11
    const-string v0, "cache_video_ready() called"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sigmob/sdk/videoAd/k$7;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/sdk/videoAd/k$7;-><init>(Lcom/sigmob/sdk/videoAd/k;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_10
.end method

.method public b()V
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/k;->Y:Z

    if-eqz v0, :cond_a

    const-string v0, "com.sigmob.action.interstitial.dismiss"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/videoAd/k;->a(Ljava/lang/String;)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/k;->W:Z

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/k;->B()V

    goto :goto_9
.end method

.method public b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->J:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    :goto_10
    return-void

    :cond_11
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sigmob/sdk/videoAd/k$8;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/sdk/videoAd/k$8;-><init>(Lcom/sigmob/sdk/videoAd/k;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_10
.end method

.method b(Ljava/lang/String;)V
    .registers 5

    const-class v0, Lcom/sigmob/sdk/base/common/a;

    invoke-static {v0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/common/a;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->a:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/common/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "com.sigmob.action.rewardedvideo.play"

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/videoAd/k;->a(Ljava/lang/String;)V

    :cond_15
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->n()Lcom/sigmob/sdk/base/common/w;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->n()Lcom/sigmob/sdk/base/common/w;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->t()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sigmob/sdk/base/common/w;->a(Lcom/sigmob/sdk/base/common/a;I)V

    :cond_26
    return-void
.end method

.method public b(Z)V
    .registers 7

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/k;->ab:Z

    if-nez v0, :cond_7

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/videoAd/k;->c(Z)V

    :cond_7
    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/k;->ab:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->G:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/a;->l()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->g()Lcom/sigmob/sdk/base/common/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/base/common/o;->a()V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/k;->A:Z

    if-nez v0, :cond_26

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->t()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/videoAd/k;->a(I)V

    :cond_26
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->I:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->stopPlayback()V

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/k;->I()V

    if-eqz p1, :cond_61

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->J:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v1, "_PLAYLASTFRAME_"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->G:Lcom/sigmob/sdk/videoAd/a;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->t()I

    move-result v2

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->s()I

    move-result v3

    iget-object v4, p0, Lcom/sigmob/sdk/videoAd/k;->J:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sigmob/sdk/videoAd/a;->a(Landroid/content/Context;IILcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/k;->U:Z

    if-nez v0, :cond_61

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->n()Lcom/sigmob/sdk/base/common/w;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->l:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->t()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/w;->a(Lcom/sigmob/sdk/base/common/a;I)V

    :cond_61
    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/k;->G()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/videoAd/k;->T:Z

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->P:Lcom/sigmob/sdk/videoAd/g;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->P:Lcom/sigmob/sdk/videoAd/g;

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->t()I

    move-result v2

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->m()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v3

    iget-object v4, p0, Lcom/sigmob/sdk/videoAd/k;->D:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sigmob/sdk/videoAd/g;->a(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public b_()V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/k;->J()V

    return-void
.end method

.method public c()V
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/k;->W:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/k;->A()V

    :cond_7
    return-void
.end method

.method public c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->J:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    :goto_10
    return-void

    :cond_11
    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->e()Lcom/sigmob/sdk/base/common/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/sdk/base/common/e;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/g;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/k;->I()V

    const-string v0, "cache_video_update() called"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    goto :goto_10
.end method

.method c(Z)V
    .registers 7

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->J:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    :goto_9
    return-void

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/videoAd/k;->ab:Z

    if-eqz p1, :cond_37

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->s()I

    move-result v0

    :goto_13
    const-string v1, "com.sigmob.action.rewardedvideo.complete"

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/videoAd/k;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->n()Lcom/sigmob/sdk/base/common/w;

    move-result-object v1

    sget-object v2, Lcom/sigmob/sdk/base/common/a;->b:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v1, v2, v0}, Lcom/sigmob/sdk/base/common/w;->a(Lcom/sigmob/sdk/base/common/a;I)V

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->G:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->h()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->s()I

    move-result v3

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->m()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/sigmob/sdk/videoAd/a;->c(Landroid/content/Context;IILcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_9

    :cond_37
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->t()I

    move-result v0

    goto :goto_13
.end method

.method public c_()V
    .registers 2

    const-string v0, "onHandleClickFailed"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .registers 4

    :try_start_0
    const-string v0, "VideoViewController onDestroy() called"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/k;->I()V

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->e()Lcom/sigmob/sdk/base/common/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/e;->a(Lcom/sigmob/sdk/base/common/f;)V

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/k;->Y:Z

    if-nez v0, :cond_19

    const-string v0, "com.sigmob.action.interstitial.dismiss"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/videoAd/k;->a(Ljava/lang/String;)V

    :cond_19
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->ac:Lcom/sigmob/volley/toolbox/s;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->ac:Lcom/sigmob/volley/toolbox/s;

    invoke-virtual {v0}, Lcom/sigmob/volley/toolbox/s;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->ac:Lcom/sigmob/volley/toolbox/s;

    :cond_25
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->L:Lcom/sigmob/sdk/base/common/w;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->L:Lcom/sigmob/sdk/base/common/w;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->r:Lcom/sigmob/sdk/base/common/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/w;->a(Lcom/sigmob/sdk/base/common/a;I)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->L:Lcom/sigmob/sdk/base/common/w;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/w;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->L:Lcom/sigmob/sdk/base/common/w;

    :cond_39
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->P:Lcom/sigmob/sdk/videoAd/g;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->P:Lcom/sigmob/sdk/videoAd/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoAd/g;->a(Lcom/sigmob/sdk/videoAd/h;)V

    :cond_43
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->I:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    iget-object v0, v0, Lcom/sigmob/sdk/videoAd/BaseVideoView;->a:Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->I:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    iget-object v0, v0, Lcom/sigmob/sdk/videoAd/BaseVideoView;->a:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_50
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->N:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->N:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->setOnTouchListenerToContent(Landroid/view/View$OnTouchListener;)V

    :cond_5a
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->O:Lcom/sigmob/sdk/base/views/SkipButtonWidget;

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->O:Lcom/sigmob/sdk/base/views/SkipButtonWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_64
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->Z:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->Z:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->setOnTouchListenerToContent(Landroid/view/View$OnTouchListener;)V

    :cond_6e
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->I:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->I:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->a()V

    :cond_77
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->K:Landroid/view/View;

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->K:Landroid/view/View;

    instance-of v0, v0, Lcom/sigmob/sdk/base/views/CreativeWebView;

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->K:Landroid/view/View;

    check-cast v0, Lcom/sigmob/sdk/base/views/CreativeWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/CreativeWebView;->setWebViewClickListener(Lcom/sigmob/sdk/base/views/g;)V

    :cond_89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->K:Landroid/view/View;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->M:Lcom/sigmob/sdk/base/views/VideoProgressBarWidget;
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8f} :catch_90

    :goto_8f
    return-void

    :catch_90
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_8f
.end method

.method public d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->J:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    const-string v0, "cache_video_update() called"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/k;->ag:Z

    if-eqz v0, :cond_10

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sigmob/sdk/videoAd/k$9;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/sdk/videoAd/k$9;-><init>(Lcom/sigmob/sdk/videoAd/k;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_10
.end method

.method public e()V
    .registers 1

    return-void
.end method

.method public e(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->J:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isEndCardIndexExist()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sigmob/sdk/videoAd/k$10;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/videoAd/k$10;-><init>(Lcom/sigmob/sdk/videoAd/k;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_10
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

.method public l()V
    .registers 6

    const/4 v4, 0x0

    new-instance v0, Lcom/sigmob/sdk/base/views/AdLogoView;

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->h()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/sigmob/sdk/base/views/AdLogoView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->l:Lcom/sigmob/sdk/base/views/AdLogoView;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->l:Lcom/sigmob/sdk/base/views/AdLogoView;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->as()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/AdLogoView;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->h()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sigmob/sdk/base/common/utils/b;->b(FLandroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x40400000    # 3.0f

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/k;->b:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/sigmob/sdk/base/common/utils/b;->b(FLandroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/k;->ad:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    if-eqz v2, :cond_62

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/k;->ad:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_3c
    :try_start_3c
    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->l:Lcom/sigmob/sdk/base/views/AdLogoView;

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/k;->J:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_source_logo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/base/views/AdLogoView;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->J:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getInvisibleAdLabel()Z

    move-result v1

    if-nez v1, :cond_58

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->l:Lcom/sigmob/sdk/base/views/AdLogoView;

    invoke-static {}, Lcom/sigmob/sdk/base/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/base/views/AdLogoView;->b(Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_58} :catch_6b

    :cond_58
    :goto_58
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->i()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/k;->l:Lcom/sigmob/sdk/base/views/AdLogoView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_62
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_3c

    :catch_6b
    move-exception v1

    goto :goto_58
.end method

.method public m()Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->J:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object v0
.end method

.method public n()Lcom/sigmob/sdk/base/common/w;
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->L:Lcom/sigmob/sdk/base/common/w;

    if-nez v0, :cond_1a

    new-instance v0, Lcom/sigmob/sdk/base/common/w;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/base/common/w;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->L:Lcom/sigmob/sdk/base/common/w;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->L:Lcom/sigmob/sdk/base/common/w;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->m()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/k;->y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sigmob/sdk/base/common/w;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :cond_1a
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->L:Lcom/sigmob/sdk/base/common/w;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->D:Ljava/lang/String;

    return-object v0
.end method

.method public p()Z
    .registers 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/high16 v6, 0x447a0000    # 1000.0f

    :try_start_4
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->t()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcom/sigmob/sdk/videoAd/k;->G:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v4}, Lcom/sigmob/sdk/videoAd/a;->y()I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_26

    long-to-float v2, v2

    div-float/2addr v2, v6

    const v3, 0x3e99999a    # 0.3f

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/k;->G:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v3}, Lcom/sigmob/sdk/videoAd/a;->y()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_24

    :cond_23
    :goto_23
    return v0

    :cond_24
    move v0, v1

    goto :goto_23

    :cond_26
    iget v4, p0, Lcom/sigmob/sdk/videoAd/k;->R:I
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_28} :catch_32

    int-to-float v4, v4

    div-float/2addr v4, v6

    long-to-float v2, v2

    div-float/2addr v2, v6

    cmpg-float v2, v4, v2

    if-ltz v2, :cond_23

    move v0, v1

    goto :goto_23

    :catch_32
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_23
.end method

.method public q()Z
    .registers 7

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->ad:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->ad:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->a()Z

    move-result v1

    if-eqz v1, :cond_e

    :goto_d
    return v0

    :cond_e
    :try_start_e
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->t()I

    move-result v1

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget v1, p0, Lcom/sigmob/sdk/videoAd/k;->E:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_27

    move v1, v0

    :goto_1e
    if-eqz v1, :cond_25

    const-string v2, "showAble CompanionAds"

    invoke-static {v2}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_25} :catch_29

    :cond_25
    move v0, v1

    goto :goto_d

    :cond_27
    const/4 v1, 0x0

    goto :goto_1e

    :catch_29
    move-exception v1

    const-string v2, "shouldBeShowCompanionAds"

    invoke-static {v2, v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public r()V
    .registers 3

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/k;->F:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->ad:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->ad:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->bringToFront()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->ad:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/videoAd/k;->F:Z

    goto :goto_4
.end method

.method s()I
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->I:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget v0, p0, Lcom/sigmob/sdk/videoAd/k;->V:I

    if-lez v0, :cond_13

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->G:Lcom/sigmob/sdk/videoAd/a;

    iget v1, p0, Lcom/sigmob/sdk/videoAd/k;->V:I

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoAd/a;->a(I)I

    move-result v0

    goto :goto_5

    :cond_13
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->G:Lcom/sigmob/sdk/videoAd/a;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->I:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoAd/a;->a(I)I

    move-result v0

    goto :goto_5
.end method

.method t()I
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->I:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->I:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->getCurrentPosition()I

    move-result v0

    goto :goto_5
.end method

.method u()V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->K:Landroid/view/View;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->J:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isEndCardIndexExist()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->G:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/a;->v()Lcom/sigmob/sdk/videoAd/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->j()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {p0, v1, v0, v2}, Lcom/sigmob/sdk/videoAd/k;->a(Landroid/content/Context;Lcom/sigmob/sdk/videoAd/g;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->K:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->h()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/videoAd/k;->e(Landroid/content/Context;I)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_26} :catch_27

    goto :goto_c

    :catch_27
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "error"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.sigmob.action.rewardedvideo.playFail"

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/sdk/videoAd/k;->a(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k;->f:Lcom/sigmob/sdk/base/common/o;

    invoke-interface {v0}, Lcom/sigmob/sdk/base/common/o;->a()V

    goto :goto_c
.end method

.method v()V
    .registers 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->t()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/videoAd/k;->a(IZ)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->s()I

    move-result v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->t()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->O:Lcom/sigmob/sdk/base/views/SkipButtonWidget;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->a(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->C:Lcom/sigmob/sdk/base/views/AlertDialogWidget;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->C:Lcom/sigmob/sdk/base/views/AlertDialogWidget;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->setduration(I)V

    :cond_27
    return-void
.end method

.method w()Z
    .registers 3

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/k;->ab:Z

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/k;->C()F

    move-result v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->G:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/a;->p()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method x()V
    .registers 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->s()I

    move-result v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->t()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->O:Lcom/sigmob/sdk/base/views/SkipButtonWidget;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->a(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->C:Lcom/sigmob/sdk/base/views/AlertDialogWidget;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->C:Lcom/sigmob/sdk/base/views/AlertDialogWidget;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->setduration(I)V

    :cond_1f
    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/k;->ae:Z

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/k;->t()I

    move-result v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k;->M:Lcom/sigmob/sdk/base/views/VideoProgressBarWidget;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/views/VideoProgressBarWidget;->a(I)V

    :cond_2c
    return-void
.end method
