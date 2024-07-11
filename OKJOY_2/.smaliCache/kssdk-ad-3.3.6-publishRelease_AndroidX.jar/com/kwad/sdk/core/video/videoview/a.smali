.class public Lcom/kwad/sdk/core/video/videoview/a;
.super Lcom/kwad/sdk/core/video/videoview/c;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/video/videoview/a$a;
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private d:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/TextView;

.field private l:Z

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/ProgressBar;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/view/ViewGroup;

.field private r:Lcom/kwad/sdk/core/video/videoview/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/video/videoview/d;)V
    .registers 4

    invoke-direct {p0, p1, p3}, Lcom/kwad/sdk/core/video/videoview/c;-><init>(Landroid/content/Context;Lcom/kwad/sdk/core/video/videoview/d;)V

    iput-object p1, p0, Lcom/kwad/sdk/core/video/videoview/a;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/kwad/sdk/core/video/videoview/a;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p2}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/core/video/videoview/a;->d:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-direct {p0}, Lcom/kwad/sdk/core/video/videoview/a;->j()V

    return-void
.end method

.method private j()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/kwad/sdk/R$layout;->ksad_feed_video_palyer_controller:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_data_flow_container:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/video/videoview/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->i:Landroid/widget/RelativeLayout;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_data_flow_play_tip:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/video/videoview/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->k:Landroid/widget/TextView;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_data_flow_play_btn:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/video/videoview/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_network_unavailable:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/video/videoview/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->m:Landroid/widget/LinearLayout;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_error_container:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/video/videoview/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->n:Landroid/widget/LinearLayout;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_progress:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/video/videoview/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->o:Landroid/widget/ProgressBar;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_thumb_image:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/video/videoview/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->p:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->d:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->N(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/core/response/model/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_76

    iget-object v1, p0, Lcom/kwad/sdk/core/video/videoview/a;->p:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/video/videoview/a;->p:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/kwad/sdk/core/video/videoview/a;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v1, v0, v2}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->p:Landroid/widget/ImageView;

    const/4 v1, 0x0

    goto :goto_7a

    :cond_76
    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->p:Landroid/widget/ImageView;

    const/16 v1, 0x8

    :goto_7a
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->d:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->b(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/kwad/sdk/core/video/videoview/a;->k:Landroid/widget/TextView;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/kwad/sdk/utils/ad;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private k()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->q:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method private l()V
    .registers 8

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->d:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->t(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v0

    if-eqz v0, :cond_48

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_complete_app_container:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/video/videoview/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sget v1, Lcom/kwad/sdk/R$id;->ksad_app_icon:I

    invoke-virtual {p0, v1}, Lcom/kwad/sdk/core/video/videoview/a;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/kwad/sdk/R$id;->ksad_app_name:I

    invoke-virtual {p0, v2}, Lcom/kwad/sdk/core/video/videoview/a;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/kwad/sdk/R$id;->ksad_app_download:I

    invoke-virtual {p0, v3}, Lcom/kwad/sdk/core/video/videoview/a;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/kwad/sdk/core/video/videoview/a;->d:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v4}, Lcom/kwad/sdk/core/response/b/a;->m(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/kwad/sdk/core/video/videoview/a;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    const/16 v6, 0xc

    invoke-static {v1, v4, v5, v6}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadAppIcon(Landroid/widget/ImageView;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    iget-object v1, p0, Lcom/kwad/sdk/core/video/videoview/a;->d:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->n(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/video/videoview/a;->d:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->s(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_61

    :cond_48
    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_complete_h5_container:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/video/videoview/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sget v1, Lcom/kwad/sdk/R$id;->ksad_h5_open:I

    invoke-virtual {p0, v1}, Lcom/kwad/sdk/core/video/videoview/a;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kwad/sdk/core/video/videoview/a;->d:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v2}, Lcom/kwad/sdk/core/response/b/a;->s(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_61
    iput-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->q:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->q:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private m()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->i:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mVideoPlayerStatus:Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;->setVideoPlayerBehavior(I)V

    return-void
.end method

.method private n()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->i:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private o()V
    .registers 6

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/video/b;

    iget-object v1, p0, Lcom/kwad/sdk/core/video/videoview/a;->d:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->i(Lcom/kwad/sdk/core/response/model/AdInfo;)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kwad/sdk/contentalliance/detail/video/b;-><init>(JJ)V

    iget-object v1, p0, Lcom/kwad/sdk/core/video/videoview/a;->a:Lcom/kwad/sdk/core/video/videoview/d;

    invoke-interface {v1, v0}, Lcom/kwad/sdk/core/video/videoview/d;->setKsPlayLogParam(Lcom/kwad/sdk/contentalliance/detail/video/b;)V

    return-void
.end method

.method private setTopBottomVisible(Z)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->o:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    goto :goto_8

    :cond_6
    const/16 v1, 0x8

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iput-boolean p1, p0, Lcom/kwad/sdk/core/video/videoview/a;->l:Z

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->m:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method protected a(I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayStateChanged playState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdVideoPlayerController"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, 0x8

    packed-switch p1, :pswitch_data_86

    :pswitch_1e
    goto :goto_84

    :pswitch_1f
    iget-object p1, p0, Lcom/kwad/sdk/core/video/videoview/a;->r:Lcom/kwad/sdk/core/video/videoview/a$a;

    if-eqz p1, :cond_26

    invoke-interface {p1}, Lcom/kwad/sdk/core/video/videoview/a$a;->b()V

    :cond_26
    invoke-virtual {p0}, Lcom/kwad/sdk/core/video/videoview/a;->i()V

    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/video/videoview/a;->setTopBottomVisible(Z)V

    iget-object p1, p0, Lcom/kwad/sdk/core/video/videoview/a;->p:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kwad/sdk/core/video/videoview/a;->d:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->f(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/core/video/videoview/a;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1, v1, v2}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object p1, p0, Lcom/kwad/sdk/core/video/videoview/a;->p:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/kwad/sdk/core/video/videoview/a;->l()V

    goto :goto_84

    :pswitch_42
    iget-object p1, p0, Lcom/kwad/sdk/core/video/videoview/a;->p:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_84

    :pswitch_48
    iget-object p1, p0, Lcom/kwad/sdk/core/video/videoview/a;->r:Lcom/kwad/sdk/core/video/videoview/a$a;

    if-eqz p1, :cond_4f

    invoke-interface {p1}, Lcom/kwad/sdk/core/video/videoview/a$a;->a()V

    :cond_4f
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/video/videoview/a;->setTopBottomVisible(Z)V

    invoke-virtual {p0}, Lcom/kwad/sdk/core/video/videoview/a;->h()V

    goto :goto_84

    :pswitch_57
    invoke-direct {p0}, Lcom/kwad/sdk/core/video/videoview/a;->n()V

    iget-object p1, p0, Lcom/kwad/sdk/core/video/videoview/a;->m:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/kwad/sdk/core/video/videoview/a;->n:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/kwad/sdk/core/video/videoview/a;->o:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-direct {p0}, Lcom/kwad/sdk/core/video/videoview/a;->k()V

    goto :goto_84

    :pswitch_6d
    invoke-virtual {p0}, Lcom/kwad/sdk/core/video/videoview/a;->i()V

    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/video/videoview/a;->setTopBottomVisible(Z)V

    iget-object p1, p0, Lcom/kwad/sdk/core/video/videoview/a;->m:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/kwad/sdk/core/video/videoview/a;->n:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/kwad/sdk/core/video/videoview/a;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->g:I

    invoke-static {p1, v0, v0}, Lcom/kwad/sdk/core/report/e;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;II)V

    :goto_84
    :pswitch_84
    return-void

    nop

    :pswitch_data_86
    .packed-switch -0x1
        :pswitch_6d
        :pswitch_84
        :pswitch_57
        :pswitch_48
        :pswitch_1e
        :pswitch_42
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1f
    .end packed-switch
.end method

.method public a(II)V
    .registers 3

    iput p2, p0, Lcom/kwad/sdk/core/video/videoview/a;->h:I

    iput p1, p0, Lcom/kwad/sdk/core/video/videoview/a;->g:I

    return-void
.end method

.method public a(Z)V
    .registers 3

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcom/kwad/sdk/core/video/videoview/a;->l:Z

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/kwad/sdk/core/video/videoview/a;->o:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    goto :goto_e

    :cond_a
    iget-object p1, p0, Lcom/kwad/sdk/core/video/videoview/a;->o:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    :goto_e
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_11
    return-void
.end method

.method protected b()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->m:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method protected c()V
    .registers 3

    invoke-virtual {p0}, Lcom/kwad/sdk/core/video/videoview/a;->i()V

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->o:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    invoke-direct {p0}, Lcom/kwad/sdk/core/video/videoview/a;->n()V

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->m:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mVideoPlayerStatus:Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;->setVideoPlayerBehavior(I)V

    invoke-direct {p0}, Lcom/kwad/sdk/core/video/videoview/a;->k()V

    return-void
.end method

.method protected d()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->a:Lcom/kwad/sdk/core/video/videoview/d;

    invoke-interface {v0}, Lcom/kwad/sdk/core/video/videoview/d;->d()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ksad/download/d/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/kwad/sdk/core/video/videoview/a;->a()V

    goto :goto_4d

    :cond_14
    invoke-virtual {p0}, Lcom/kwad/sdk/core/video/videoview/a;->b()V

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ksad/download/d/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_1f
    :goto_1f
    invoke-direct {p0}, Lcom/kwad/sdk/core/video/videoview/a;->o()V

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->a:Lcom/kwad/sdk/core/video/videoview/d;

    invoke-interface {v0}, Lcom/kwad/sdk/core/video/videoview/d;->a()V

    goto :goto_4d

    :cond_28
    iget-boolean v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->f:Z

    if-nez v0, :cond_1f

    iget-boolean v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->e:Z

    if-eqz v0, :cond_31

    goto :goto_1f

    :cond_31
    invoke-direct {p0}, Lcom/kwad/sdk/core/video/videoview/a;->m()V

    goto :goto_4d

    :cond_35
    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->a:Lcom/kwad/sdk/core/video/videoview/d;

    invoke-interface {v0}, Lcom/kwad/sdk/core/video/videoview/d;->h()Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->a:Lcom/kwad/sdk/core/video/videoview/d;

    invoke-interface {v0}, Lcom/kwad/sdk/core/video/videoview/d;->f()Z

    move-result v0

    if-eqz v0, :cond_4d

    :cond_45
    invoke-direct {p0}, Lcom/kwad/sdk/core/video/videoview/a;->o()V

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->a:Lcom/kwad/sdk/core/video/videoview/d;

    invoke-interface {v0}, Lcom/kwad/sdk/core/video/videoview/d;->b()V

    :cond_4d
    :goto_4d
    return-void
.end method

.method protected e()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->a:Lcom/kwad/sdk/core/video/videoview/d;

    invoke-interface {v0}, Lcom/kwad/sdk/core/video/videoview/d;->c()V

    return-void
.end method

.method protected f()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->a:Lcom/kwad/sdk/core/video/videoview/d;

    invoke-interface {v0}, Lcom/kwad/sdk/core/video/videoview/d;->k()V

    return-void
.end method

.method protected g()V
    .registers 7

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->a:Lcom/kwad/sdk/core/video/videoview/d;

    invoke-interface {v0}, Lcom/kwad/sdk/core/video/videoview/d;->getCurrentPosition()J

    move-result-wide v0

    iget-object v2, p0, Lcom/kwad/sdk/core/video/videoview/a;->a:Lcom/kwad/sdk/core/video/videoview/d;

    invoke-interface {v2}, Lcom/kwad/sdk/core/video/videoview/d;->getDuration()J

    move-result-wide v2

    iget-object v4, p0, Lcom/kwad/sdk/core/video/videoview/a;->a:Lcom/kwad/sdk/core/video/videoview/d;

    invoke-interface {v4}, Lcom/kwad/sdk/core/video/videoview/d;->getBufferPercentage()I

    move-result v4

    iget-object v5, p0, Lcom/kwad/sdk/core/video/videoview/a;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v4}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    long-to-float v4, v0

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    long-to-float v2, v2

    div-float/2addr v4, v2

    float-to-int v2, v4

    iget-object v3, p0, Lcom/kwad/sdk/core/video/videoview/a;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v2, p0, Lcom/kwad/sdk/core/video/videoview/a;->r:Lcom/kwad/sdk/core/video/videoview/a$a;

    if-eqz v2, :cond_2a

    invoke-interface {v2, v0, v1}, Lcom/kwad/sdk/core/video/videoview/a$a;->a(J)V

    :cond_2a
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a;->j:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_a

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/kwad/sdk/core/video/videoview/a;->e:Z

    invoke-virtual {p0}, Lcom/kwad/sdk/core/video/videoview/a;->d()V

    :cond_a
    return-void
.end method

.method public setDataFlowAutoStart(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/core/video/videoview/a;->f:Z

    return-void
.end method

.method public setVideoPlayCallback(Lcom/kwad/sdk/core/video/videoview/a$a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/video/videoview/a;->r:Lcom/kwad/sdk/core/video/videoview/a$a;

    return-void
.end method
