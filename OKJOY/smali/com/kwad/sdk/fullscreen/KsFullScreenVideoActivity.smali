.class public Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;
.super Lcom/kwad/sdk/core/page/b;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/kwad/sdk/e/q$a;


# static fields
.field public static y:Lcom/kwad/sdk/export/i/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;


# instance fields
.field private b:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private c:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private d:Lcom/kwad/sdk/video/VideoPlayConfig;

.field private e:Lorg/json/JSONObject;

.field private final f:Lcom/kwad/sdk/e/q;

.field private g:Lcom/kwad/sdk/c/h/b;

.field private h:Lcom/kwad/sdk/core/page/widget/SafeTextureView;

.field private i:Lcom/kwad/sdk/core/view/KsAdContainer;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;

.field private q:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitVertical;

.field private r:Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeHorizontal;

.field private s:Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Lcom/kwad/sdk/core/download/g/b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/b;-><init>()V

    new-instance v0, Lcom/kwad/sdk/e/q;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/e/q;-><init>(Lcom/kwad/sdk/e/q$a;)V

    iput-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->f:Lcom/kwad/sdk/e/q;

    return-void
.end method

.method private A()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->g:Lcom/kwad/sdk/c/h/b;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/b;->stop()V

    :cond_7
    return-void
.end method

.method private B()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->f:Lcom/kwad/sdk/e/q;

    const/16 v1, 0xf1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private a(I)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->i:Lcom/kwad/sdk/core/view/KsAdContainer;

    invoke-virtual {v1}, Lcom/kwad/sdk/core/view/KsAdContainer;->getTouchCoords()Lcom/kwad/sdk/e/g$a;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->e:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1, v2}, Lcom/kwad/sdk/c/f/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/e/g$a;Lorg/json/JSONObject;)V

    sget-object v0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->y:Lcom/kwad/sdk/export/i/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Lcom/kwad/sdk/export/i/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;->onAdClicked()V

    :cond_14
    return-void
.end method

.method private a(II)V
    .registers 8

    const/4 v2, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p0}, Lcom/kwad/sdk/e/o;->k(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/kwad/sdk/e/o;->j(Landroid/content/Context;)I

    move-result v1

    if-le v1, v0, :cond_9b

    :goto_d
    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->d:Lcom/kwad/sdk/video/VideoPlayConfig;

    iget-boolean v1, v1, Lcom/kwad/sdk/video/VideoPlayConfig;->showLandscape:Z

    if-eqz v1, :cond_63

    if-le p1, p2, :cond_28

    :cond_15
    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->h:Lcom/kwad/sdk/core/page/widget/SafeTextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->h:Lcom/kwad/sdk/core/page/widget/SafeTextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->x()V

    :cond_27
    :goto_27
    return-void

    :cond_28
    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->h:Lcom/kwad/sdk/core/page/widget/SafeTextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    int-to-float v2, p1

    int-to-float v3, p2

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    int-to-float v3, v0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->h:Lcom/kwad/sdk/core/page/widget/SafeTextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->B(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->E(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-direct {p0, v2}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->c(I)V

    goto :goto_27

    :cond_52
    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->x()V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->D(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v0

    if-eqz v0, :cond_27

    :goto_5d
    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->i:Lcom/kwad/sdk/core/view/KsAdContainer;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_27

    :cond_63
    if-gt p2, p1, :cond_15

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->h:Lcom/kwad/sdk/core/page/widget/SafeTextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    int-to-float v2, p2

    int-to-float v3, p1

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    int-to-float v3, v0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->h:Lcom/kwad/sdk/core/page/widget/SafeTextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->B(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v0

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->E(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-direct {p0, v2}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->d(I)V

    goto :goto_27

    :cond_8f
    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->x()V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->D(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_5d

    :cond_9b
    move v0, v1

    goto/16 :goto_d
.end method

.method public static a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/video/VideoPlayConfig;Lcom/kwad/sdk/export/i/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;)V
    .registers 6
    .param p1    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kwad/sdk/video/VideoPlayConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "key_template"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "key_video_play_config"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    sput-object p3, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->y:Lcom/kwad/sdk/export/i/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Lcom/kwad/sdk/c/h/b;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->z()V

    invoke-interface {p1}, Lcom/kwad/sdk/c/h/b;->g()I

    move-result v0

    invoke-interface {p1}, Lcom/kwad/sdk/c/h/b;->f()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->a(II)V

    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->m()V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->l()V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->c(II)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;Lcom/kwad/sdk/c/h/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->a(Lcom/kwad/sdk/c/h/b;)V

    return-void
.end method

.method private a(Lcom/kwad/sdk/video/VideoPlayConfig;)V
    .registers 5
    .param p1    # Lcom/kwad/sdk/video/VideoPlayConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p1, Lcom/kwad/sdk/video/VideoPlayConfig;->showLandscape:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iget-object v0, p1, Lcom/kwad/sdk/video/VideoPlayConfig;->showScene:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->e:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->e:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->e:Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/kwad/sdk/video/VideoPlayConfig;->showScene:Ljava/lang/String;

    const-string v2, "ext_showscene"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->w:Z

    return p1
.end method

.method private b()V
    .registers 3

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->p:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->b()V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->p:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_e
    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->q:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitVertical;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitVertical;->b()V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->q:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitVertical;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1a
    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->s:Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->b()V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->s:Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_26
    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->r:Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeHorizontal;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeHorizontal;->b()V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->r:Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeHorizontal;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_32
    return-void
.end method

.method private b(I)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->z(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->e:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/kwad/sdk/c/f/b;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;ILorg/json/JSONObject;)V

    :cond_29
    return-void
.end method

.method private b(II)V
    .registers 5

    sget-object v0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->y:Lcom/kwad/sdk/export/i/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoPlayError code\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--extra\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FullScreenVideo"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->y:Lcom/kwad/sdk/export/i/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    invoke-interface {v0, p1, p2}, Lcom/kwad/sdk/export/i/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;->onVideoPlayError(II)V

    :cond_2b
    return-void
.end method

.method static synthetic b(Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->o()V

    return-void
.end method

.method private c()I
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->g:Lcom/kwad/sdk/c/h/b;

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/b;->getDuration()J

    move-result-wide v0

    iget-object v2, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->g:Lcom/kwad/sdk/c/h/b;

    invoke-interface {v2}, Lcom/kwad/sdk/c/h/b;->getCurrentPosition()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static synthetic c(Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->m:Landroid/widget/ImageView;

    return-object v0
.end method

.method private c(I)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->o:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "ksad_actionbar_landscape_vertical"

    invoke-static {p0, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v2, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity$g;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity$g;-><init>(Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;)V

    invoke-virtual {v0, v1, v2, p1}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/reward/widget/actionbar/ActionBarLandscapeVertical$c;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iput-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->n:Landroid/view/View;

    return-void
.end method

.method private c(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->b(II)V

    invoke-virtual {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->finish()V

    return-void
.end method

.method private d()I
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->g:Lcom/kwad/sdk/c/h/b;

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/b;->getCurrentPosition()J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method static synthetic d(Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->k:Landroid/view/View;

    return-object v0
.end method

.method private d(I)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->o:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "ksad_actionbar_portrait_horizontal"

    invoke-static {p0, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal;

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v2, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity$h;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity$h;-><init>(Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;)V

    invoke-virtual {v0, v1, v2, p1}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal$c;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iput-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->n:Landroid/view/View;

    return-void
.end method

.method private e()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->n()V

    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->A()V

    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->o()V

    return-void
.end method

.method private e(I)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->l:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->l:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private f()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->l:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private g()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->j:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private h()Z
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_video_play_config"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    instance-of v0, v1, Lcom/kwad/sdk/video/VideoPlayConfig;

    if-nez v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data is not instanceof VideoPlayConfig:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FullScreenVideo"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    :goto_28
    return v0

    :cond_29
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "key_template"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v3, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;

    if-nez v3, :cond_51

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data is not instanceof AdTemplate:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FullScreenVideo"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_28

    :cond_51
    check-cast v0, Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    move-object v0, v1

    check-cast v0, Lcom/kwad/sdk/video/VideoPlayConfig;

    iput-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->d:Lcom/kwad/sdk/video/VideoPlayConfig;

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->d:Lcom/kwad/sdk/video/VideoPlayConfig;

    invoke-direct {p0, v0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->a(Lcom/kwad/sdk/video/VideoPlayConfig;)V

    const/4 v0, 0x1

    goto :goto_28
.end method

.method private i()V
    .registers 3

    const-string v0, "ksad_root_container"

    invoke-static {p0, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/view/KsAdContainer;

    iput-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->i:Lcom/kwad/sdk/core/view/KsAdContainer;

    const-string v0, "ksad_video_texture_view"

    invoke-static {p0, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/page/widget/SafeTextureView;

    iput-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->h:Lcom/kwad/sdk/core/page/widget/SafeTextureView;

    const-string v0, "ksad_video_sound_switch"

    invoke-static {p0, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->j:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->j:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    const-string v0, "ksad_video_count_down"

    invoke-static {p0, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->l:Landroid/widget/TextView;

    const-string v0, "ksad_video_skip_icon"

    invoke-static {p0, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->m:Landroid/widget/ImageView;

    const-string v0, "ksad_video_page_close"

    invoke-static {p0, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->k:Landroid/view/View;

    const-string v0, "ksad_ad_label_play_bar"

    invoke-static {p0, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->o:Landroid/view/View;

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->h:Lcom/kwad/sdk/core/page/widget/SafeTextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->o:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private j()Z
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->y(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;

    move-result-object v0

    iget v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->height:I

    iget v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->width:I

    if-le v1, v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private k()V
    .registers 4

    sget-object v0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->y:Lcom/kwad/sdk/export/i/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->v:Z

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->v:Z

    const-string v0, "FullScreenVideo"

    const-string v1, "onPageDismiss"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->y:Lcom/kwad/sdk/export/i/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    invoke-interface {v0}, Lcom/kwad/sdk/export/i/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;->onPageDismiss()V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->e:Lorg/json/JSONObject;

    const/4 v2, 0x6

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/c/f/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILorg/json/JSONObject;)V

    :cond_1f
    return-void
.end method

.method private l()V
    .registers 3

    sget-object v0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->y:Lcom/kwad/sdk/export/i/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    if-eqz v0, :cond_17

    const-string v0, "FullScreenVideo"

    const-string v1, "onVideoPlayEnd"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->y:Lcom/kwad/sdk/export/i/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    invoke-interface {v0}, Lcom/kwad/sdk/export/i/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;->onVideoPlayEnd()V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->e:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/f/b;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V

    :cond_17
    return-void
.end method

.method private m()V
    .registers 3

    sget-object v0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->y:Lcom/kwad/sdk/export/i/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    if-eqz v0, :cond_17

    const-string v0, "FullScreenVideo"

    const-string v1, "onVideoPlayStart"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->y:Lcom/kwad/sdk/export/i/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    invoke-interface {v0}, Lcom/kwad/sdk/export/i/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;->onVideoPlayStart()V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->e:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/f/b;->h(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V

    :cond_17
    return-void
.end method

.method private n()V
    .registers 3

    sget-object v0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->y:Lcom/kwad/sdk/export/i/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    if-eqz v0, :cond_17

    const-string v0, "FullScreenVideo"

    const-string v1, "onSkippedVideo"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->y:Lcom/kwad/sdk/export/i/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    invoke-interface {v0}, Lcom/kwad/sdk/export/i/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;->onSkippedVideo()V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->e:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/f/b;->j(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V

    :cond_17
    return-void
.end method

.method private o()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->t:Z

    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->B()V

    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->w()V

    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->g()V

    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->f()V

    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->u()V

    return-void
.end method

.method private p()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->g:Lcom/kwad/sdk/c/h/b;

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->w:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->g:Lcom/kwad/sdk/c/h/b;

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/b;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->u:Z

    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->q()V

    :goto_19
    return-void

    :cond_1a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->u:Z

    goto :goto_19
.end method

.method private q()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->f:Lcom/kwad/sdk/e/q;

    const/16 v1, 0xf1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private r()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->g:Lcom/kwad/sdk/c/h/b;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/b;->c()V

    :cond_7
    return-void
.end method

.method private s()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->g:Lcom/kwad/sdk/c/h/b;

    if-eqz v0, :cond_1a

    iget-boolean v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->u:Z

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/b;->d()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->w:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->g:Lcom/kwad/sdk/c/h/b;

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/b;->e()V

    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->t()V

    :cond_1a
    return-void
.end method

.method private t()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->f:Lcom/kwad/sdk/e/q;

    const/16 v1, 0xf1

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_a
.end method

.method private u()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->k:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    aput v1, v0, v2

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity$j;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity$j;-><init>(Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity$k;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity$k;-><init>(Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_a
.end method

.method private v()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    aput v1, v0, v2

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity$i;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity$i;-><init>(Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_a
.end method

.method private w()V
    .registers 6

    const/16 v1, 0x8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->d:Lcom/kwad/sdk/video/VideoPlayConfig;

    iget-boolean v0, v0, Lcom/kwad/sdk/video/VideoPlayConfig;->showLandscape:Z

    if-nez v0, :cond_5d

    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->j()Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string v0, "ksad_video_portrait_vertical"

    invoke-static {p0, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitVertical;

    iput-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->q:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitVertical;

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->q:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitVertical;

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v2, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->e:Lorg/json/JSONObject;

    new-instance v3, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity$a;

    invoke-direct {v3, p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity$a;-><init>(Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitVertical;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitVertical$c;)V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->q:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitVertical;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_3a
    return-void

    :cond_3b
    const-string v0, "ksad_video_portrait_horizontal"

    invoke-static {p0, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;

    iput-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->p:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->p:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v2, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->e:Lorg/json/JSONObject;

    new-instance v3, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity$b;

    invoke-direct {v3, p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity$b;-><init>(Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$c;)V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->p:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3a

    :cond_5d
    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->j()Z

    move-result v0

    if-eqz v0, :cond_85

    const-string v0, "ksad_video_landscape_vertical"

    invoke-static {p0, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;

    iput-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->s:Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->s:Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v2, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->e:Lorg/json/JSONObject;

    new-instance v3, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity$c;

    invoke-direct {v3, p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity$c;-><init>(Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical$c;)V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->s:Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeVertical;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3a

    :cond_85
    const-string v0, "ksad_video_landscape_horizontal"

    invoke-static {p0, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeHorizontal;

    iput-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->r:Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeHorizontal;

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->r:Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeHorizontal;

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v2, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->e:Lorg/json/JSONObject;

    new-instance v3, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity$d;

    invoke-direct {v3, p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity$d;-><init>(Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeHorizontal;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeHorizontal$c;)V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->r:Lcom/kwad/sdk/reward/widget/tailframe/TailFrameLandscapeHorizontal;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3a
.end method

.method private x()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->o:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->B(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->d:Lcom/kwad/sdk/video/VideoPlayConfig;

    iget-boolean v0, v0, Lcom/kwad/sdk/video/VideoPlayConfig;->showLandscape:Z

    if-eqz v0, :cond_38

    const-string v0, "ksad_video_play_bar_app_landscape"

    invoke-static {p0, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppLandscape;

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v2, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->e:Lorg/json/JSONObject;

    new-instance v3, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity$l;

    invoke-direct {v3, p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity$l;-><init>(Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppLandscape;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppLandscape$c;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->n:Landroid/view/View;

    invoke-virtual {v0}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppLandscape;->getApkDownloadHelper()Lcom/kwad/sdk/core/download/g/b;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->x:Lcom/kwad/sdk/core/download/g/b;

    :goto_37
    return-void

    :cond_38
    const-string v0, "ksad_video_play_bar_app_portrait"

    invoke-static {p0, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v2, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->e:Lorg/json/JSONObject;

    new-instance v3, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity$m;

    invoke-direct {v3, p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity$m;-><init>(Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait$c;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->n:Landroid/view/View;

    invoke-virtual {v0}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;->getApkDownloadHelper()Lcom/kwad/sdk/core/download/g/b;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->x:Lcom/kwad/sdk/core/download/g/b;

    goto :goto_37

    :cond_5c
    const-string v0, "ksad_video_play_bar_h5"

    invoke-static {p0, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarH5;

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v2, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity$n;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity$n;-><init>(Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarH5;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/reward/widget/actionbar/ActionBarH5$b;)V

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iput-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->n:Landroid/view/View;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->x:Lcom/kwad/sdk/core/download/g/b;

    goto :goto_37
.end method

.method private y()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/c/g/b/a;->w(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->A(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/kwad/sdk/core/diskcache/b/a;->c()Lcom/kwad/sdk/core/diskcache/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kwad/sdk/core/diskcache/b/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_29

    :cond_25
    invoke-virtual {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->finish()V

    :goto_28
    return-void

    :cond_29
    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v2, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->e:Lorg/json/JSONObject;

    invoke-static {v1, v2}, Lcom/kwad/sdk/c/f/b;->i(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V

    new-instance v1, Lcom/kwad/sdk/c/h/a;

    iget-object v2, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->h:Lcom/kwad/sdk/core/page/widget/SafeTextureView;

    invoke-direct {v1, v2}, Lcom/kwad/sdk/c/h/a;-><init>(Landroid/view/TextureView;)V

    iput-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->g:Lcom/kwad/sdk/c/h/b;

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->g:Lcom/kwad/sdk/c/h/b;

    new-instance v2, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity$f;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity$f;-><init>(Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;)V

    invoke-interface {v1, v2}, Lcom/kwad/sdk/c/h/b;->a(Lcom/kwad/sdk/c/h/b$a;)V

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->g:Lcom/kwad/sdk/c/h/b;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/kwad/sdk/c/h/b;->a(Ljava/lang/String;)V

    goto :goto_28
.end method

.method private z()V
    .registers 5

    const/16 v1, 0xf1

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->f:Lcom/kwad/sdk/e/q;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->f:Lcom/kwad/sdk/e/q;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .registers 7

    const/16 v4, 0xf1

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_14

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->g:Lcom/kwad/sdk/c/h/b;

    if-eqz v0, :cond_14

    iget-boolean v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->w:Z

    if-nez v1, :cond_14

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/b;->d()Z

    move-result v0

    if-nez v0, :cond_15

    :cond_14
    :goto_14
    return-void

    :cond_15
    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->c()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->e(I)V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->f:Lcom/kwad/sdk/e/q;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->d()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->b(I)V

    const/4 v1, 0x5

    if-lt v0, v1, :cond_14

    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->v()V

    goto :goto_14
.end method

.method public finish()V
    .registers 3

    const-string v0, "FullScreenVideo"

    const-string v1, "page finish"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->k()V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->t:Z

    if-eqz v0, :cond_7

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_7
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "ksad_video_sound_switch"

    invoke-static {p0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->g:Lcom/kwad/sdk/c/h/b;

    if-eqz v0, :cond_26

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/kwad/sdk/c/h/b;->a(Z)V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_26
    :goto_26
    return-void

    :cond_27
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "ksad_video_skip_icon"

    invoke-static {p0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_37

    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->e()V

    goto :goto_26

    :cond_37
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "ksad_video_page_close"

    invoke-static {p0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_47

    invoke-virtual {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->finish()V

    goto :goto_26

    :cond_47
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "ksad_root_container"

    invoke-static {p0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_26

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v2, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity$e;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity$e;-><init>(Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;)V

    iget-object v3, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->x:Lcom/kwad/sdk/core/download/g/b;

    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/core/download/g/a;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/g/a$a;Lcom/kwad/sdk/core/download/g/b;)V

    goto :goto_26
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->h()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->finish()V

    :goto_c
    return-void

    :cond_d
    const-string v0, "ksad_activity_fullscreen_video"

    invoke-static {p0, v0}, Lcom/kwad/sdk/e/l;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->i()V

    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->y()V

    goto :goto_c
.end method

.method protected onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "FullScreenVideo"

    const-string v1, "page onDestroy"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_a
    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->b()V

    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->k()V

    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->B()V

    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->r()V

    const/4 v0, 0x0

    sput-object v0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->y:Lcom/kwad/sdk/export/i/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_19} :catch_1a

    :goto_19
    return-void

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19
.end method

.method protected onPause()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->p()V

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivity;->s()V

    return-void
.end method

.method protected onStop()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v0, "FullScreenVideo"

    const-string v1, "page onStop"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
