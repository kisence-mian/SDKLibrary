.class public Lcom/sigmob/sdk/mraid/i;
.super Lcom/sigmob/sdk/videoAd/b;


# instance fields
.field protected g:Lcom/sigmob/sdk/base/common/p;

.field private final h:Ljava/lang/String;

.field private i:I

.field private j:Lcom/sigmob/sdk/videoAd/a;

.field private k:I

.field private l:Z

.field private m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private n:Lcom/sigmob/sdk/mraid/c;

.field private o:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

.field private p:Ljava/lang/Integer;

.field private q:Z

.field private r:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;JLcom/sigmob/sdk/base/common/h;)V
    .registers 7

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-direct {p0, p1, p3, p6}, Lcom/sigmob/sdk/videoAd/b;-><init>(Landroid/app/Activity;Ljava/lang/Long;Lcom/sigmob/sdk/base/common/h;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sigmob/sdk/mraid/i;->i:I

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/sigmob/sdk/mraid/i;->j:Lcom/sigmob/sdk/videoAd/a;

    iput p1, p0, Lcom/sigmob/sdk/mraid/i;->k:I

    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid/i;->r:Z

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->b()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/i;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const-string p1, "ad_scene"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/i;->h:Ljava/lang/String;

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/a;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/i;->j:Lcom/sigmob/sdk/videoAd/a;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/a;->T()I

    move-result p1

    iput p1, p0, Lcom/sigmob/sdk/mraid/i;->k:I

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    move-result-object p1

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->display_orientation:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch p1, :pswitch_data_72

    const/4 p1, 0x3

    const-string p3, "REQUESTED_ORIENTATION"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_4d

    :pswitch_48
    const/4 p1, 0x4

    goto :goto_4d

    :pswitch_4a
    const/4 p1, 0x6

    goto :goto_4d

    :pswitch_4c
    const/4 p1, 0x7

    :goto_4d
    iput p1, p0, Lcom/sigmob/sdk/mraid/i;->i:I

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/i;->j()Landroid/app/Activity;

    move-result-object p1

    iget p3, p0, Lcom/sigmob/sdk/mraid/i;->i:I

    invoke-virtual {p1, p3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/i;->j()Landroid/app/Activity;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/i;->j()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const p3, 0x1000400

    invoke-virtual {p1, p3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0, p2}, Lcom/sigmob/sdk/mraid/i;->b(Landroid/os/Bundle;)V

    return-void

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_4a
        :pswitch_48
    .end packed-switch
.end method

.method static synthetic a(Lcom/sigmob/sdk/mraid/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/mraid/i;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object p0
.end method

.method static synthetic a(Lcom/sigmob/sdk/mraid/i;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/i;->p:Ljava/lang/Integer;

    return-object p1
.end method

.method private a(ILandroid/widget/RelativeLayout$LayoutParams;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i;->b:Landroid/content/Context;

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

.method private a(Landroid/content/Context;I)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i;->o:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/i;->j:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/a;->f()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/i;->o:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->setVisibility(I)V

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0, p1}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    move-result v1

    invoke-static {v0, p1}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    move-result p1

    invoke-direct {p2, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i;->j:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoAd/a;->f()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/mraid/i;->a(ILandroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/i;->i()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i;->o:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/sigmob/sdk/mraid/i$7;

    invoke-direct {p1, p0}, Lcom/sigmob/sdk/mraid/i$7;-><init>(Lcom/sigmob/sdk/mraid/i;)V

    iget-object p2, p0, Lcom/sigmob/sdk/mraid/i;->o:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->setOnTouchListenerToContent(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i;->o:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    sget-object p2, Lcom/sigmob/sdk/base/views/d;->d:Lcom/sigmob/sdk/base/views/d;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/views/d;->a()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->a(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i;->j:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoAd/a;->b()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_58

    iget-object p2, p0, Lcom/sigmob/sdk/mraid/i;->o:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->a(Ljava/lang/String;)V

    :cond_58
    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/mraid/i;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/mraid/i;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid/i;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/sigmob/sdk/mraid/i;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/mraid/i;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/sigmob/sdk/mraid/i;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/sigmob/sdk/mraid/i;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid/i;->q:Z

    return p1
.end method

.method static synthetic c(Lcom/sigmob/sdk/mraid/i;)Lcom/sigmob/sdk/mraid/c;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/mraid/i;->n:Lcom/sigmob/sdk/mraid/c;

    return-object p0
.end method

.method static synthetic c(Lcom/sigmob/sdk/mraid/i;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/sigmob/sdk/mraid/i;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid/i;->r:Z

    return p1
.end method

.method static synthetic d(Lcom/sigmob/sdk/mraid/i;)Lcom/sigmob/sdk/videoAd/a;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/mraid/i;->j:Lcom/sigmob/sdk/videoAd/a;

    return-object p0
.end method

.method static synthetic d(Lcom/sigmob/sdk/mraid/i;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/sigmob/sdk/mraid/i;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/sigmob/sdk/mraid/i;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/sigmob/sdk/mraid/i;->l:Z

    return p0
.end method

.method static synthetic f(Lcom/sigmob/sdk/mraid/i;)Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/mraid/i;->p:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic f(Lcom/sigmob/sdk/mraid/i;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lcom/sigmob/sdk/mraid/i;)Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/mraid/i;->a:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic g(Lcom/sigmob/sdk/mraid/i;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h(Lcom/sigmob/sdk/mraid/i;)Lcom/sigmob/sdk/base/common/h;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/mraid/i;->f:Lcom/sigmob/sdk/base/common/h;

    return-object p0
.end method

.method static synthetic h(Lcom/sigmob/sdk/mraid/i;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic i(Lcom/sigmob/sdk/mraid/i;)Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/mraid/i;->a:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic i(Lcom/sigmob/sdk/mraid/i;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j(Lcom/sigmob/sdk/mraid/i;)Lcom/sigmob/sdk/base/common/h;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/mraid/i;->f:Lcom/sigmob/sdk/base/common/h;

    return-object p0
.end method

.method static synthetic j(Lcom/sigmob/sdk/mraid/i;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic k(Lcom/sigmob/sdk/mraid/i;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic k(Lcom/sigmob/sdk/mraid/i;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/sigmob/sdk/mraid/i;->q:Z

    return p0
.end method

.method static synthetic l(Lcom/sigmob/sdk/mraid/i;)Lcom/sigmob/sdk/base/common/h;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/mraid/i;->f:Lcom/sigmob/sdk/base/common/h;

    return-object p0
.end method

.method private l()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i;->o:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    if-eqz v0, :cond_8

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method static synthetic m(Lcom/sigmob/sdk/mraid/i;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/mraid/i;->b:Landroid/content/Context;

    return-object p0
.end method

.method private m()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i;->o:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i;->b:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/mraid/i;->a(Landroid/content/Context;I)V

    :cond_a
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i;->o:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->setVisibility(I)V

    return-void
.end method

.method static synthetic n(Lcom/sigmob/sdk/mraid/i;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/mraid/i;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic o(Lcom/sigmob/sdk/mraid/i;)V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/i;->l()V

    return-void
.end method

.method static synthetic p(Lcom/sigmob/sdk/mraid/i;)V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/i;->m()V

    return-void
.end method

.method static synthetic q(Lcom/sigmob/sdk/mraid/i;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/mraid/i;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic r(Lcom/sigmob/sdk/mraid/i;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/mraid/i;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic s(Lcom/sigmob/sdk/mraid/i;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/mraid/i;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic t(Lcom/sigmob/sdk/mraid/i;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/mraid/i;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic u(Lcom/sigmob/sdk/mraid/i;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/mraid/i;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic v(Lcom/sigmob/sdk/mraid/i;)Landroid/content/Context;
    .registers 1

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/i;->h()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic w(Lcom/sigmob/sdk/mraid/i;)Lcom/sigmob/sdk/base/common/h;
    .registers 1

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/i;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()V
    .registers 5

    invoke-super {p0}, Lcom/sigmob/sdk/videoAd/b;->a()V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i;->g:Lcom/sigmob/sdk/base/common/p;

    if-eqz v0, :cond_d

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->d:Lcom/sigmob/sdk/base/common/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/p;->a(Lcom/sigmob/sdk/base/common/a;I)V

    :cond_d
    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/i;->k()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/i;->i()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i;->n:Lcom/sigmob/sdk/mraid/c;

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/i;->j()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/c;->a(Landroid/app/Activity;)V

    :cond_29
    const-string v0, "com.sigmob.action.rewardedvideo.play"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/common/a;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i;->n:Lcom/sigmob/sdk/mraid/c;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/c;->e()Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/i;->n:Lcom/sigmob/sdk/mraid/c;

    new-instance v2, Lcom/sigmob/sdk/mraid/i$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/sigmob/sdk/mraid/i$1;-><init>(Lcom/sigmob/sdk/mraid/i;Lcom/sigmob/sdk/base/common/a;Ljava/lang/Integer;)V

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/mraid/c;->a(Landroid/webkit/ValueCallback;)V

    const-string p1, "adPaused() called"

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid/i;->r:Z

    if-eqz v0, :cond_a

    const-string v0, "com.sigmob.action.interstitial.dismiss"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid/i;->a(Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i;->n:Lcom/sigmob/sdk/mraid/c;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/c;->b()V

    return-void
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i;->n:Lcom/sigmob/sdk/mraid/c;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/c;->c()V

    return-void
.end method

.method public d()V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i;->g:Lcom/sigmob/sdk/base/common/p;

    if-eqz v0, :cond_12

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->r:Lcom/sigmob/sdk/base/common/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/p;->a(Lcom/sigmob/sdk/base/common/a;I)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i;->g:Lcom/sigmob/sdk/base/common/p;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/p;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/i;->g:Lcom/sigmob/sdk/base/common/p;

    :cond_12
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i;->n:Lcom/sigmob/sdk/mraid/c;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/c;->k()V

    :cond_19
    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid/i;->r:Z

    if-nez v0, :cond_22

    const-string v0, "com.sigmob.action.interstitial.dismiss"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid/i;->a(Ljava/lang/String;)V

    :cond_22
    return-void
.end method

.method public e()V
    .registers 1

    return-void
.end method

.method public f()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public k()Landroid/view/View;
    .registers 6

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i;->a:Ljava/lang/Long;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/l;->a(Ljava/lang/Long;)Lcom/sigmob/sdk/mraid/l$a;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/l$a;->c()Lcom/sigmob/sdk/mraid/c;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/l$a;->c()Lcom/sigmob/sdk/mraid/c;

    move-result-object v1

    goto :goto_22

    :cond_17
    new-instance v1, Lcom/sigmob/sdk/mraid/c;

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/i;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/sigmob/sdk/mraid/i;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v4, Lcom/sigmob/sdk/base/models/PlacementType;->INTERSTITIAL:Lcom/sigmob/sdk/base/models/PlacementType;

    invoke-direct {v1, v2, v3, v4}, Lcom/sigmob/sdk/mraid/c;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/PlacementType;)V

    :goto_22
    iput-object v1, p0, Lcom/sigmob/sdk/mraid/i;->n:Lcom/sigmob/sdk/mraid/c;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/i;->n:Lcom/sigmob/sdk/mraid/c;

    new-instance v2, Lcom/sigmob/sdk/mraid/i$2;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/mraid/i$2;-><init>(Lcom/sigmob/sdk/mraid/i;)V

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/mraid/c;->a(Lcom/sigmob/sdk/mraid/c$f;)V

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/i;->n:Lcom/sigmob/sdk/mraid/c;

    new-instance v2, Lcom/sigmob/sdk/mraid/i$3;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/mraid/i$3;-><init>(Lcom/sigmob/sdk/mraid/i;)V

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/mraid/c;->a(Lcom/sigmob/sdk/mraid/c$a;)V

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/i;->n:Lcom/sigmob/sdk/mraid/c;

    new-instance v2, Lcom/sigmob/sdk/mraid/i$4;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/mraid/i$4;-><init>(Lcom/sigmob/sdk/mraid/i;)V

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/mraid/c;->a(Lcom/sigmob/sdk/mraid/c$e;)V

    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/l$a;->b()Lcom/sigmob/sdk/base/common/p;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/i;->g:Lcom/sigmob/sdk/base/common/p;

    goto :goto_84

    :cond_4b
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getHtmlData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_68

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i;->n:Lcom/sigmob/sdk/mraid/c;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/i;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getHtmlData()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sigmob/sdk/mraid/i$5;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/mraid/i$5;-><init>(Lcom/sigmob/sdk/mraid/i;)V

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/mraid/c;->a(Ljava/lang/String;Lcom/sigmob/sdk/mraid/c$b;)V

    goto :goto_84

    :cond_68
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getHtmlUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_84

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i;->n:Lcom/sigmob/sdk/mraid/c;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/i;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getHtmlUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sigmob/sdk/mraid/i$6;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/mraid/i$6;-><init>(Lcom/sigmob/sdk/mraid/i;)V

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/mraid/c;->b(Ljava/lang/String;Lcom/sigmob/sdk/mraid/c$b;)V

    :cond_84
    :goto_84
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i;->n:Lcom/sigmob/sdk/mraid/c;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/c;->o()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method
