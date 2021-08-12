.class public Lcom/sigmob/sdk/base/common/q;
.super Lcom/sigmob/sdk/base/common/g;


# instance fields
.field g:Lcom/sigmob/sdk/base/views/BaseWebView;

.field private h:I

.field private i:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;JLcom/sigmob/sdk/base/common/h;)V
    .registers 7

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-direct {p0, p1, p3, p6}, Lcom/sigmob/sdk/base/common/g;-><init>(Landroid/app/Activity;Ljava/lang/Long;Lcom/sigmob/sdk/base/common/h;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->b()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/q;->i:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz p1, :cond_4b

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    move-result-object p1

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->display_orientation:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch p1, :pswitch_data_58

    const/4 p1, 0x3

    const-string p3, "REQUESTED_ORIENTATION"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_29

    :pswitch_24
    const/4 p1, 0x4

    goto :goto_29

    :pswitch_26
    const/4 p1, 0x6

    goto :goto_29

    :pswitch_28
    const/4 p1, 0x7

    :goto_29
    iput p1, p0, Lcom/sigmob/sdk/base/common/q;->h:I

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/q;->j()Landroid/app/Activity;

    move-result-object p1

    iget p2, p0, Lcom/sigmob/sdk/base/common/q;->h:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/q;->j()Landroid/app/Activity;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/q;->j()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x400

    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_57

    :cond_4b
    const-string p1, "com.sigmob.action.interstitial.fail"

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/q;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/q;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object p1

    invoke-interface {p1}, Lcom/sigmob/sdk/base/common/h;->a()V

    :goto_57
    return-void

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_28
        :pswitch_26
        :pswitch_24
    .end packed-switch
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/q;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/base/common/q;->i:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object p0
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/q;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sigmob/sdk/base/common/q;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Lcom/sigmob/sdk/base/common/q$4;

    invoke-direct {v0, p0, p4}, Lcom/sigmob/sdk/base/common/q$4;-><init>(Lcom/sigmob/sdk/base/common/q;Ljava/lang/String;)V

    invoke-static {p2, p1, p3, v0}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/s$a;)V

    return-void
.end method

.method private k()V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/q;->g:Lcom/sigmob/sdk/base/views/BaseWebView;

    const/4 v1, 0x0

    if-nez v0, :cond_2b

    :try_start_5
    new-instance v0, Lcom/sigmob/sdk/base/views/BaseWebView;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/q;->j()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sigmob/sdk/base/views/BaseWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/q;->g:Lcom/sigmob/sdk/base/views/BaseWebView;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/BaseWebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/q;->g:Lcom/sigmob/sdk/base/views/BaseWebView;

    new-instance v2, Lcom/sigmob/sdk/base/common/q$1;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/base/common/q$1;-><init>(Lcom/sigmob/sdk/base/common/q;)V

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/base/views/BaseWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    goto :goto_2b

    :catchall_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/q;->f:Lcom/sigmob/sdk/base/common/h;

    invoke-interface {v0}, Lcom/sigmob/sdk/base/common/h;->a()V

    :cond_2b
    :goto_2b
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/q;->j()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/q;->g:Lcom/sigmob/sdk/base/views/BaseWebView;

    invoke-virtual {v2, v3, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/q;->f:Lcom/sigmob/sdk/base/common/h;

    invoke-interface {v0, v2}, Lcom/sigmob/sdk/base/common/h;->onSetContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/q;->g:Lcom/sigmob/sdk/base/views/BaseWebView;

    new-instance v1, Lcom/sigmob/sdk/base/common/q$2;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/base/common/q$2;-><init>(Lcom/sigmob/sdk/base/common/q;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/BaseWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/q;->g:Lcom/sigmob/sdk/base/views/BaseWebView;

    new-instance v1, Lcom/sigmob/sdk/base/common/q$3;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/base/common/q$3;-><init>(Lcom/sigmob/sdk/base/common/q;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/BaseWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private l()V
    .registers 7

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/q;->j:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_76

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/q;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sigmob/sdk/base/common/q;->k:Landroid/widget/TextView;

    const/high16 v4, 0x40a00000    # 5.0f

    iget-object v5, p0, Lcom/sigmob/sdk/base/common/q;->b:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/q;->k:Landroid/widget/TextView;

    invoke-static {}, Lcom/sigmob/sdk/base/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/q;->k:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/q;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/q;->k:Landroid/widget/TextView;

    new-instance v2, Lcom/sigmob/sdk/base/common/q$5;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/base/common/q$5;-><init>(Lcom/sigmob/sdk/base/common/q;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/q;->k:Landroid/widget/TextView;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->am()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/q;->h()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sigmob/sdk/base/common/q;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/q;->j:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/q;->j:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/q;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_76
    return-void
.end method

.method private m()V
    .registers 4

    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x11

    invoke-direct {v0, v1, v1, v2}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/q;->j()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/q;->l()V

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/q;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_2a
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/q;->k()V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/q;->m()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/q;->i:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->landing_page:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/q;->i:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->macroProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/q;->g:Lcom/sigmob/sdk/base/views/BaseWebView;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/views/BaseWebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/q;->i:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2b

    const-string v0, "com.sigmob.action.interstitial.show"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/common/q;->a(Ljava/lang/String;)V

    :cond_2b
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

.method public b()V
    .registers 1

    return-void
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public d()V
    .registers 3

    const-string v0, "com.sigmob.action.interstitial.dismiss"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/common/q;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/q;->k:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/sigmob/sdk/base/common/q;->k:Landroid/widget/TextView;

    :cond_f
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/q;->g:Lcom/sigmob/sdk/base/views/BaseWebView;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/BaseWebView;->destroy()V

    iput-object v1, p0, Lcom/sigmob/sdk/base/common/q;->g:Lcom/sigmob/sdk/base/views/BaseWebView;

    :cond_18
    return-void
.end method

.method public e()V
    .registers 1

    return-void
.end method

.method public f()Z
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/q;->g:Lcom/sigmob/sdk/base/views/BaseWebView;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/BaseWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/q;->g:Lcom/sigmob/sdk/base/views/BaseWebView;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/BaseWebView;->goBack()V

    const/4 v0, 0x0

    return v0

    :cond_f
    const/4 v0, 0x1

    return v0
.end method
