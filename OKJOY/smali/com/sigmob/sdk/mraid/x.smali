.class public Lcom/sigmob/sdk/mraid/x;
.super Lcom/sigmob/sdk/videoAd/b;


# static fields
.field private static final h:F = 50.0f

.field private static final i:F = 8.0f


# instance fields
.field protected g:Lcom/sigmob/sdk/base/common/w;

.field private j:I

.field private k:Lcom/sigmob/sdk/videoAd/a;

.field private l:I

.field private m:Z

.field private n:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private o:Lcom/sigmob/sdk/mraid/h;

.field private p:Lcom/sigmob/sdk/mraid/aa;

.field private q:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

.field private r:Ljava/lang/Integer;

.field private s:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;JLcom/sigmob/sdk/base/common/o;)V
    .registers 9

    const/4 v1, 0x0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0, p6}, Lcom/sigmob/sdk/videoAd/b;-><init>(Landroid/app/Activity;Ljava/lang/Long;Lcom/sigmob/sdk/base/common/o;)V

    iput v1, p0, Lcom/sigmob/sdk/mraid/x;->j:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/x;->k:Lcom/sigmob/sdk/videoAd/a;

    iput v1, p0, Lcom/sigmob/sdk/mraid/x;->l:I

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->b()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/x;->n:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->n:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/a;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/x;->k:Lcom/sigmob/sdk/videoAd/a;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->i()I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/mraid/x;->l:I

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->n:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->display_orientation:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_6e

    const-string v0, "REQUESTED_ORIENTATION"

    const/4 v1, 0x3

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/mraid/x;->j:I

    :goto_3f
    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/x;->j()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/sigmob/sdk/mraid/x;->j:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/x;->j()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/x;->j()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1000400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0, p2}, Lcom/sigmob/sdk/mraid/x;->b(Landroid/os/Bundle;)V

    return-void

    :pswitch_62
    const/4 v0, 0x7

    iput v0, p0, Lcom/sigmob/sdk/mraid/x;->j:I

    goto :goto_3f

    :pswitch_66
    const/4 v0, 0x6

    iput v0, p0, Lcom/sigmob/sdk/mraid/x;->j:I

    goto :goto_3f

    :pswitch_6a
    const/4 v0, 0x4

    iput v0, p0, Lcom/sigmob/sdk/mraid/x;->j:I

    goto :goto_3f

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_62
        :pswitch_66
        :pswitch_6a
    .end packed-switch
.end method

.method static synthetic a(Lcom/sigmob/sdk/mraid/x;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->n:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object v0
.end method

.method static synthetic a(Lcom/sigmob/sdk/mraid/x;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/x;->r:Ljava/lang/Integer;

    return-object p1
.end method

.method private a(ILandroid/widget/RelativeLayout$LayoutParams;)V
    .registers 9

    const/16 v5, 0xc

    const/16 v4, 0xb

    const/16 v2, 0xa

    const/16 v3, 0x9

    const/high16 v0, 0x41000000    # 8.0f

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/x;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/utils/b;->b(FLandroid/content/Context;)I

    move-result v0

    packed-switch p1, :pswitch_data_4a

    :goto_13
    return-void

    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    mul-int/lit8 v1, v0, 0x2

    invoke-virtual {p2, v0, v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_13

    :pswitch_20
    invoke-virtual {p2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    mul-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/sigmob/sdk/mraid/x;->l:I

    add-int/2addr v2, v0

    invoke-virtual {p2, v0, v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_13

    :pswitch_2f
    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    mul-int/lit8 v1, v0, 0x2

    invoke-virtual {p2, v0, v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_13

    :pswitch_3b
    invoke-virtual {p2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    mul-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/sigmob/sdk/mraid/x;->l:I

    add-int/2addr v2, v0

    invoke-virtual {p2, v0, v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_13

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_14
        :pswitch_20
        :pswitch_2f
        :pswitch_3b
    .end packed-switch
.end method

.method private a(Landroid/content/Context;I)V
    .registers 6

    const/4 v2, -0x2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->q:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    if-eqz v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    new-instance v0, Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/x;->k:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/a;->m()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/x;->q:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->q:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->setVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/x;->k:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/a;->m()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sigmob/sdk/mraid/x;->a(ILandroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/x;->i()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/x;->q:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/sigmob/sdk/mraid/x$8;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/mraid/x$8;-><init>(Lcom/sigmob/sdk/mraid/x;)V

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/x;->q:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->setOnTouchListenerToContent(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->q:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    sget-object v1, Lcom/sigmob/sdk/base/views/l;->d:Lcom/sigmob/sdk/base/views/l;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/views/l;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->k:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/a;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/x;->q:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->a(Ljava/lang/String;)V

    goto :goto_5
.end method

.method private static a(Lcom/sigmob/sdk/mraid/p;Lcom/sigmob/sdk/base/common/s;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/views/BaseWebView;Ljava/lang/Long;Lcom/sigmob/sdk/mraid/h;)V
    .registers 13

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/sigmob/sdk/base/views/BaseWebView;->a(Z)V

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/views/BaseWebView;->c()V

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/views/BaseWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/mraid/x$1;

    invoke-direct {v1, p1, p2, p5, p3}, Lcom/sigmob/sdk/mraid/x$1;-><init>(Lcom/sigmob/sdk/base/common/s;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/mraid/h;Lcom/sigmob/sdk/base/views/BaseWebView;)V

    invoke-virtual {p3, v1}, Lcom/sigmob/sdk/base/views/BaseWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v6, Lcom/sigmob/sdk/base/common/w;

    invoke-direct {v6, v0}, Lcom/sigmob/sdk/base/common/w;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v0, p2}, Lcom/sigmob/sdk/base/common/w;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    if-nez p2, :cond_1e

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getHtmlData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getHtmlUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/mraid/e;

    invoke-direct {v1, p2}, Lcom/sigmob/sdk/mraid/e;-><init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    const-string v3, "sigandroid"

    invoke-virtual {p3, v1, v3}, Lcom/sigmob/sdk/base/views/BaseWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/base/c/i;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://localhost/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/sdk/base/views/BaseWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_56
    invoke-static {p4, p0, p3, v6, p5}, Lcom/sigmob/sdk/mraid/ac;->a(Ljava/lang/Long;Lcom/sigmob/sdk/mraid/p;Lcom/sigmob/sdk/base/views/BaseWebView;Lcom/sigmob/sdk/base/common/w;Lcom/sigmob/sdk/mraid/h;)V

    goto :goto_1d

    :cond_5a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual {p3, v0}, Lcom/sigmob/sdk/base/views/BaseWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_56
.end method

.method public static a(Lcom/sigmob/sdk/mraid/p;Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/Context;Lcom/sigmob/sdk/base/common/s;Ljava/lang/Long;)V
    .registers 11

    new-instance v3, Lcom/sigmob/sdk/mraid/MraidWebView;

    invoke-direct {v3, p2}, Lcom/sigmob/sdk/mraid/MraidWebView;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/sigmob/sdk/mraid/h;

    sget-object v0, Lcom/sigmob/sdk/base/models/PlacementType;->INTERSTITIAL:Lcom/sigmob/sdk/base/models/PlacementType;

    invoke-direct {v5, p2, p1, v0}, Lcom/sigmob/sdk/mraid/h;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/PlacementType;)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/sigmob/sdk/mraid/x;->a(Lcom/sigmob/sdk/mraid/p;Lcom/sigmob/sdk/base/common/s;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/views/BaseWebView;Ljava/lang/Long;Lcom/sigmob/sdk/mraid/h;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/mraid/x;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/x;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/mraid/x;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid/x;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/sigmob/sdk/mraid/x;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/sigmob/sdk/mraid/x;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/x;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/sigmob/sdk/mraid/x;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid/x;->s:Z

    return p1
.end method

.method static synthetic c(Lcom/sigmob/sdk/mraid/x;)Lcom/sigmob/sdk/mraid/h;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->o:Lcom/sigmob/sdk/mraid/h;

    return-object v0
.end method

.method static synthetic c(Lcom/sigmob/sdk/mraid/x;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/x;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/sigmob/sdk/mraid/x;)Lcom/sigmob/sdk/videoAd/a;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->k:Lcom/sigmob/sdk/videoAd/a;

    return-object v0
.end method

.method static synthetic d(Lcom/sigmob/sdk/mraid/x;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/x;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/sigmob/sdk/mraid/x;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/x;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/sigmob/sdk/mraid/x;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid/x;->m:Z

    return v0
.end method

.method static synthetic f(Lcom/sigmob/sdk/mraid/x;)Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->r:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic f(Lcom/sigmob/sdk/mraid/x;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/x;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lcom/sigmob/sdk/mraid/x;)Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->a:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic g(Lcom/sigmob/sdk/mraid/x;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/x;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h(Lcom/sigmob/sdk/mraid/x;)Lcom/sigmob/sdk/base/common/o;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->f:Lcom/sigmob/sdk/base/common/o;

    return-object v0
.end method

.method static synthetic h(Lcom/sigmob/sdk/mraid/x;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/x;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic i(Lcom/sigmob/sdk/mraid/x;)Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->a:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic i(Lcom/sigmob/sdk/mraid/x;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/x;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j(Lcom/sigmob/sdk/mraid/x;)Lcom/sigmob/sdk/base/common/o;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->f:Lcom/sigmob/sdk/base/common/o;

    return-object v0
.end method

.method static synthetic j(Lcom/sigmob/sdk/mraid/x;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/x;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic k(Lcom/sigmob/sdk/mraid/x;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/x;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic k(Lcom/sigmob/sdk/mraid/x;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid/x;->s:Z

    return v0
.end method

.method static synthetic l(Lcom/sigmob/sdk/mraid/x;)Lcom/sigmob/sdk/base/common/o;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->f:Lcom/sigmob/sdk/base/common/o;

    return-object v0
.end method

.method private l()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->q:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->q:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method static synthetic m(Lcom/sigmob/sdk/mraid/x;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->b:Landroid/content/Context;

    return-object v0
.end method

.method private m()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->q:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->b:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/mraid/x;->a(Landroid/content/Context;I)V

    :cond_a
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->q:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->setVisibility(I)V

    return-void
.end method

.method static synthetic n(Lcom/sigmob/sdk/mraid/x;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic o(Lcom/sigmob/sdk/mraid/x;)V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/x;->l()V

    return-void
.end method

.method static synthetic p(Lcom/sigmob/sdk/mraid/x;)V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/x;->m()V

    return-void
.end method

.method static synthetic q(Lcom/sigmob/sdk/mraid/x;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic r(Lcom/sigmob/sdk/mraid/x;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic s(Lcom/sigmob/sdk/mraid/x;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic t(Lcom/sigmob/sdk/mraid/x;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic u(Lcom/sigmob/sdk/mraid/x;)Landroid/content/Context;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/x;->h()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic v(Lcom/sigmob/sdk/mraid/x;)Lcom/sigmob/sdk/base/common/o;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/x;->g()Lcom/sigmob/sdk/base/common/o;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 5

    const/4 v3, -0x1

    invoke-super {p0}, Lcom/sigmob/sdk/videoAd/b;->a()V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->g:Lcom/sigmob/sdk/base/common/w;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->g:Lcom/sigmob/sdk/base/common/w;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->d:Lcom/sigmob/sdk/base/common/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/w;->a(Lcom/sigmob/sdk/base/common/a;I)V

    :cond_10
    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/x;->k()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/x;->i()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->o:Lcom/sigmob/sdk/mraid/h;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->o:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/x;->j()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/h;->a(Landroid/app/Activity;)V

    :cond_2d
    const-string v0, "com.sigmob.action.rewardedvideo.play"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid/x;->a(Ljava/lang/String;)V

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

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->o:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/h;->e()Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/x;->o:Lcom/sigmob/sdk/mraid/h;

    new-instance v2, Lcom/sigmob/sdk/mraid/x$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/sigmob/sdk/mraid/x$2;-><init>(Lcom/sigmob/sdk/mraid/x;Lcom/sigmob/sdk/base/common/a;Ljava/lang/Integer;)V

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/mraid/h;->a(Landroid/webkit/ValueCallback;)V

    const-string v0, "adPaused() called"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/mraid/aa;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/x;->p:Lcom/sigmob/sdk/mraid/aa;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->o:Lcom/sigmob/sdk/mraid/h;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->o:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid/h;->a(Lcom/sigmob/sdk/mraid/aa;)V

    :cond_b
    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->o:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/h;->b()V

    return-void
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->o:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/h;->c()V

    return-void
.end method

.method public d()V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->g:Lcom/sigmob/sdk/base/common/w;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->g:Lcom/sigmob/sdk/base/common/w;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->r:Lcom/sigmob/sdk/base/common/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/w;->a(Lcom/sigmob/sdk/base/common/a;I)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->g:Lcom/sigmob/sdk/base/common/w;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/w;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/x;->g:Lcom/sigmob/sdk/base/common/w;

    :cond_14
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->o:Lcom/sigmob/sdk/mraid/h;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->o:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/h;->l()V

    :cond_1d
    const-string v0, "com.sigmob.action.interstitial.dismiss"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid/x;->a(Ljava/lang/String;)V

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

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/x;->a:Ljava/lang/Long;

    const/4 v0, 0x0

    if-eqz v1, :cond_9

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/ac;->a(Ljava/lang/Long;)Lcom/sigmob/sdk/mraid/ad;

    move-result-object v0

    :cond_9
    if-eqz v0, :cond_44

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/ad;->d()Lcom/sigmob/sdk/mraid/h;

    move-result-object v1

    if-eqz v1, :cond_44

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/ad;->d()Lcom/sigmob/sdk/mraid/h;

    move-result-object v1

    iput-object v1, p0, Lcom/sigmob/sdk/mraid/x;->o:Lcom/sigmob/sdk/mraid/h;

    :goto_17
    iget-object v1, p0, Lcom/sigmob/sdk/mraid/x;->o:Lcom/sigmob/sdk/mraid/h;

    new-instance v2, Lcom/sigmob/sdk/mraid/x$3;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/mraid/x$3;-><init>(Lcom/sigmob/sdk/mraid/x;)V

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/mraid/h;->a(Lcom/sigmob/sdk/mraid/o;)V

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/x;->o:Lcom/sigmob/sdk/mraid/h;

    new-instance v2, Lcom/sigmob/sdk/mraid/x$4;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/mraid/x$4;-><init>(Lcom/sigmob/sdk/mraid/x;)V

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/mraid/h;->a(Lcom/sigmob/sdk/mraid/i;)V

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/x;->o:Lcom/sigmob/sdk/mraid/h;

    new-instance v2, Lcom/sigmob/sdk/mraid/x$5;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/mraid/x$5;-><init>(Lcom/sigmob/sdk/mraid/x;)V

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/mraid/h;->a(Lcom/sigmob/sdk/mraid/n;)V

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/ad;->c()Lcom/sigmob/sdk/base/common/w;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/x;->g:Lcom/sigmob/sdk/base/common/w;

    :cond_3d
    :goto_3d
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->o:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/h;->p()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0

    :cond_44
    new-instance v1, Lcom/sigmob/sdk/mraid/h;

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/x;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/sigmob/sdk/mraid/x;->n:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v4, Lcom/sigmob/sdk/base/models/PlacementType;->INTERSTITIAL:Lcom/sigmob/sdk/base/models/PlacementType;

    invoke-direct {v1, v2, v3, v4}, Lcom/sigmob/sdk/mraid/h;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/PlacementType;)V

    iput-object v1, p0, Lcom/sigmob/sdk/mraid/x;->o:Lcom/sigmob/sdk/mraid/h;

    goto :goto_17

    :cond_52
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->n:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getHtmlData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6f

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->o:Lcom/sigmob/sdk/mraid/h;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/x;->n:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getHtmlData()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sigmob/sdk/mraid/x$6;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/mraid/x$6;-><init>(Lcom/sigmob/sdk/mraid/x;)V

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/mraid/h;->a(Ljava/lang/String;Lcom/sigmob/sdk/mraid/j;)V

    goto :goto_3d

    :cond_6f
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->n:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getHtmlUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x;->o:Lcom/sigmob/sdk/mraid/h;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/x;->n:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getHtmlUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sigmob/sdk/mraid/x$7;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/mraid/x$7;-><init>(Lcom/sigmob/sdk/mraid/x;)V

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/mraid/h;->b(Ljava/lang/String;Lcom/sigmob/sdk/mraid/j;)V

    goto :goto_3d
.end method
