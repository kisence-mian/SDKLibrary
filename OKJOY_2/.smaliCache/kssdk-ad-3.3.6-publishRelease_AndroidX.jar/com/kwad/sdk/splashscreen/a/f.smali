.class public Lcom/kwad/sdk/splashscreen/a/f;
.super Lcom/kwad/sdk/mvp/Presenter;

# interfaces
.implements Lcom/kwad/sdk/core/i/c;


# instance fields
.field protected a:Lcom/kwad/sdk/splashscreen/c;

.field private volatile b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Landroid/widget/ImageView;

.field private g:Lcom/kwad/sdk/utils/g$a;

.field private h:Lcom/kwad/sdk/contentalliance/detail/video/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/mvp/Presenter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/splashscreen/a/f;->b:Z

    iput-boolean v0, p0, Lcom/kwad/sdk/splashscreen/a/f;->c:Z

    iput-boolean v0, p0, Lcom/kwad/sdk/splashscreen/a/f;->d:Z

    iput-boolean v0, p0, Lcom/kwad/sdk/splashscreen/a/f;->e:Z

    new-instance v0, Lcom/kwad/sdk/splashscreen/a/f$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/splashscreen/a/f$1;-><init>(Lcom/kwad/sdk/splashscreen/a/f;)V

    iput-object v0, p0, Lcom/kwad/sdk/splashscreen/a/f;->g:Lcom/kwad/sdk/utils/g$a;

    new-instance v0, Lcom/kwad/sdk/splashscreen/a/f$2;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/splashscreen/a/f$2;-><init>(Lcom/kwad/sdk/splashscreen/a/f;)V

    iput-object v0, p0, Lcom/kwad/sdk/splashscreen/a/f;->h:Lcom/kwad/sdk/contentalliance/detail/video/d;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/splashscreen/a/f;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/splashscreen/a/f;->f:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic a(Lcom/kwad/sdk/splashscreen/a/f;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/splashscreen/a/f;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/kwad/sdk/splashscreen/a/f;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kwad/sdk/splashscreen/a/f;->b:Z

    return p0
.end method

.method static synthetic b(Lcom/kwad/sdk/splashscreen/a/f;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/splashscreen/a/f;->c:Z

    return p1
.end method

.method static synthetic c(Lcom/kwad/sdk/splashscreen/a/f;)Landroid/content/Context;
    .registers 1

    invoke-virtual {p0}, Lcom/kwad/sdk/splashscreen/a/f;->l()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/kwad/sdk/splashscreen/a/f;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kwad/sdk/splashscreen/a/f;->c:Z

    return p0
.end method

.method static synthetic e(Lcom/kwad/sdk/splashscreen/a/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/splashscreen/a/f;->m()V

    return-void
.end method

.method static synthetic f(Lcom/kwad/sdk/splashscreen/a/f;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kwad/sdk/splashscreen/a/f;->e:Z

    return p0
.end method

.method static synthetic g(Lcom/kwad/sdk/splashscreen/a/f;)Landroid/content/Context;
    .registers 1

    invoke-virtual {p0}, Lcom/kwad/sdk/splashscreen/a/f;->l()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private m()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/f;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/report/b;->h(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 5

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->a()V

    invoke-virtual {p0}, Lcom/kwad/sdk/splashscreen/a/f;->k()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/splashscreen/c;

    iput-object v0, p0, Lcom/kwad/sdk/splashscreen/a/f;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->d:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    sget v1, Lcom/kwad/sdk/R$id;->ksad_splash_video_player:I

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/f;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->e:Lcom/kwad/sdk/splashscreen/b/a;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/f;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->e:Lcom/kwad/sdk/splashscreen/b/a;

    iget-object v2, p0, Lcom/kwad/sdk/splashscreen/a/f;->h:Lcom/kwad/sdk/contentalliance/detail/video/d;

    invoke-virtual {v0, v2}, Lcom/kwad/sdk/splashscreen/b/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    :cond_28
    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/f;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->h:Lcom/kwad/sdk/core/i/b;

    invoke-interface {v0, p0}, Lcom/kwad/sdk/core/i/b;->a(Lcom/kwad/sdk/core/i/c;)V

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/f;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iget-object v2, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->adSplashInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdSplashInfo;

    iget v2, v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdSplashInfo;->mute:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_cc

    iput-boolean v1, p0, Lcom/kwad/sdk/splashscreen/a/f;->b:Z

    goto :goto_54

    :pswitch_42
    iget-object v2, p0, Lcom/kwad/sdk/splashscreen/a/f;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v2, v2, Lcom/kwad/sdk/splashscreen/c;->d:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    invoke-virtual {v2}, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/kwad/sdk/utils/ac;->j(Landroid/content/Context;)I

    move-result v2

    if-lez v2, :cond_51

    goto :goto_52

    :cond_51
    move v3, v1

    :goto_52
    :pswitch_52
    iput-boolean v3, p0, Lcom/kwad/sdk/splashscreen/a/f;->b:Z

    :goto_54
    invoke-static {}, Lcom/kwad/sdk/utils/b;->a()Lcom/kwad/sdk/utils/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/utils/b;->b()Z

    move-result v2

    if-eqz v2, :cond_60

    iput-boolean v1, p0, Lcom/kwad/sdk/splashscreen/a/f;->b:Z

    :cond_60
    iget-object v2, p0, Lcom/kwad/sdk/splashscreen/a/f;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v2, v2, Lcom/kwad/sdk/splashscreen/c;->e:Lcom/kwad/sdk/splashscreen/b/a;

    if-eqz v2, :cond_78

    iget-object v2, p0, Lcom/kwad/sdk/splashscreen/a/f;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v2, v2, Lcom/kwad/sdk/splashscreen/c;->e:Lcom/kwad/sdk/splashscreen/b/a;

    iget-boolean v3, p0, Lcom/kwad/sdk/splashscreen/a/f;->b:Z

    invoke-virtual {v2, v3, v1}, Lcom/kwad/sdk/splashscreen/b/a;->a(ZZ)V

    iget-object v2, p0, Lcom/kwad/sdk/splashscreen/a/f;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v2, v2, Lcom/kwad/sdk/splashscreen/c;->e:Lcom/kwad/sdk/splashscreen/b/a;

    iget-object v3, p0, Lcom/kwad/sdk/splashscreen/a/f;->g:Lcom/kwad/sdk/utils/g$a;

    invoke-virtual {v2, v3}, Lcom/kwad/sdk/splashscreen/b/a;->a(Lcom/kwad/sdk/utils/g$a;)V

    :cond_78
    iget-object v2, p0, Lcom/kwad/sdk/splashscreen/a/f;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v2, v2, Lcom/kwad/sdk/splashscreen/c;->d:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    sget v3, Lcom/kwad/sdk/R$id;->ksad_splash_sound:I

    invoke-virtual {v2, v3}, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/kwad/sdk/splashscreen/a/f;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/kwad/sdk/splashscreen/a/f;->b:Z

    if-eqz v1, :cond_92

    iget-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->adSplashInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdSplashInfo;

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdInfo$AdSplashInfo;->speakerIconUrl:Ljava/lang/String;

    goto :goto_96

    :cond_92
    iget-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->adSplashInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdSplashInfo;

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdInfo$AdSplashInfo;->speakerMuteIconUrl:Ljava/lang/String;

    :goto_96
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a6

    iget-object v2, p0, Lcom/kwad/sdk/splashscreen/a/f;->f:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/kwad/sdk/splashscreen/a/f;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v3, v3, Lcom/kwad/sdk/splashscreen/c;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v2, v1, v3}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    goto :goto_b9

    :cond_a6
    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/a/f;->f:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kwad/sdk/splashscreen/a/f;->l()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/kwad/sdk/R$drawable;->ksad_splash_sound_selector:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_b9
    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/a/f;->f:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/kwad/sdk/splashscreen/a/f;->b:Z

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/a/f;->f:Landroid/widget/ImageView;

    new-instance v2, Lcom/kwad/sdk/splashscreen/a/f$3;

    invoke-direct {v2, p0, v0}, Lcom/kwad/sdk/splashscreen/a/f$3;-><init>(Lcom/kwad/sdk/splashscreen/a/f;Lcom/kwad/sdk/core/response/model/AdInfo;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    nop

    :pswitch_data_cc
    .packed-switch 0x2
        :pswitch_52
        :pswitch_42
    .end packed-switch
.end method

.method public a_()V
    .registers 3

    iget-boolean v0, p0, Lcom/kwad/sdk/splashscreen/a/f;->d:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/splashscreen/a/f;->d:Z

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/f;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V

    :cond_f
    return-void
.end method

.method protected c()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/f;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->e:Lcom/kwad/sdk/splashscreen/b/a;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/f;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->e:Lcom/kwad/sdk/splashscreen/b/a;

    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/a/f;->h:Lcom/kwad/sdk/contentalliance/detail/video/d;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/splashscreen/b/a;->b(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/f;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->e:Lcom/kwad/sdk/splashscreen/b/a;

    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/a/f;->g:Lcom/kwad/sdk/utils/g$a;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/splashscreen/b/a;->b(Lcom/kwad/sdk/utils/g$a;)V

    :cond_1b
    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/f;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->h:Lcom/kwad/sdk/core/i/b;

    invoke-interface {v0, p0}, Lcom/kwad/sdk/core/i/b;->b(Lcom/kwad/sdk/core/i/c;)V

    return-void
.end method

.method protected d()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/splashscreen/a/f;->e:Z

    return-void
.end method

.method public e()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/f;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->e:Lcom/kwad/sdk/splashscreen/b/a;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/f;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->e:Lcom/kwad/sdk/splashscreen/b/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/splashscreen/b/a;->d()V

    :cond_d
    return-void
.end method
