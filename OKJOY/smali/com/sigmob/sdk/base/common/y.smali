.class public Lcom/sigmob/sdk/base/common/y;
.super Lcom/sigmob/sdk/base/common/n;


# instance fields
.field g:Lcom/sigmob/sdk/base/views/BaseWebView;

.field private h:I

.field private i:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

.field private m:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;JLcom/sigmob/sdk/base/common/o;)V
    .registers 9

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0, p6}, Lcom/sigmob/sdk/base/common/n;-><init>(Landroid/app/Activity;Ljava/lang/Long;Lcom/sigmob/sdk/base/common/o;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->b()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/y;->i:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/y;->i:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/y;->i:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->display_orientation:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_62

    const-string v0, "REQUESTED_ORIENTATION"

    const/4 v1, 0x3

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/base/common/y;->h:I

    :goto_29
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/y;->j()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/sigmob/sdk/base/common/y;->h:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/y;->j()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/y;->j()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :goto_48
    return-void

    :pswitch_49
    const/4 v0, 0x7

    iput v0, p0, Lcom/sigmob/sdk/base/common/y;->h:I

    goto :goto_29

    :pswitch_4d
    const/4 v0, 0x6

    iput v0, p0, Lcom/sigmob/sdk/base/common/y;->h:I

    goto :goto_29

    :pswitch_51
    const/4 v0, 0x4

    iput v0, p0, Lcom/sigmob/sdk/base/common/y;->h:I

    goto :goto_29

    :cond_55
    const-string v0, "com.sigmob.action.interstitial.fail"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/common/y;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/y;->g()Lcom/sigmob/sdk/base/common/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/base/common/o;->a()V

    goto :goto_48

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_49
        :pswitch_4d
        :pswitch_51
    .end packed-switch
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/y;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/y;->i:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object v0
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/y;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sigmob/sdk/base/common/y;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .registers 11

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_10

    const-string v1, "sub_category"

    invoke-interface {v5, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    const-string v1, "platform"

    const-string v2, "sigmob"

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "coordinate"

    invoke-interface {v5, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "5"

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getadslot_id()Ljava/lang/String;

    move-result-object v3

    move-object v1, p3

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private k()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/y;->g:Lcom/sigmob/sdk/base/views/BaseWebView;

    if-nez v0, :cond_21

    :try_start_6
    new-instance v0, Lcom/sigmob/sdk/base/views/BaseWebView;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/y;->j()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/base/views/BaseWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/y;->g:Lcom/sigmob/sdk/base/views/BaseWebView;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/y;->g:Lcom/sigmob/sdk/base/views/BaseWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/BaseWebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/y;->g:Lcom/sigmob/sdk/base/views/BaseWebView;

    new-instance v1, Lcom/sigmob/sdk/base/common/y$1;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/base/common/y$1;-><init>(Lcom/sigmob/sdk/base/common/y;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/BaseWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_21} :catch_4e

    :cond_21
    :goto_21
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/y;->j()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/y;->g:Lcom/sigmob/sdk/base/views/BaseWebView;

    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/y;->f:Lcom/sigmob/sdk/base/common/o;

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/base/common/o;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/y;->g:Lcom/sigmob/sdk/base/views/BaseWebView;

    new-instance v1, Lcom/sigmob/sdk/base/common/y$2;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/base/common/y$2;-><init>(Lcom/sigmob/sdk/base/common/y;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/BaseWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/y;->g:Lcom/sigmob/sdk/base/views/BaseWebView;

    new-instance v1, Lcom/sigmob/sdk/base/common/y$3;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/base/common/y$3;-><init>(Lcom/sigmob/sdk/base/common/y;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/BaseWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :catch_4e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/y;->f:Lcom/sigmob/sdk/base/common/o;

    invoke-interface {v0}, Lcom/sigmob/sdk/base/common/o;->a()V

    goto :goto_21
.end method

.method private l()V
    .registers 8

    const/4 v2, -0x2

    const/4 v6, 0x0

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/y;->j:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_7a

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/y;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sigmob/sdk/base/common/y;->m:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/y;->m:Landroid/widget/TextView;

    const/high16 v3, 0x40a00000    # 5.0f

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/y;->b:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/sigmob/sdk/base/common/utils/b;->b(FLandroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/y;->m:Landroid/widget/TextView;

    invoke-static {}, Lcom/sigmob/sdk/base/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/y;->m:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/y;->m:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/y;->m:Landroid/widget/TextView;

    new-instance v2, Lcom/sigmob/sdk/base/common/y$4;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/base/common/y$4;-><init>(Lcom/sigmob/sdk/base/common/y;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/y;->m:Landroid/widget/TextView;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->as()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/y;->h()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sigmob/sdk/base/common/y;->j:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/y;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/y;->j:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/y;->j:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/y;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_7a
    return-void
.end method

.method private m()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, -0x1

    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/y;->j()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/y;->l()V

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/y;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_2a
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/y;->k()V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/y;->m()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/y;->i:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->landing_page:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/y;->i:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->macroProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/y;->g:Lcom/sigmob/sdk/base/views/BaseWebView;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/views/BaseWebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/y;->i:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2b

    const-string v0, "com.sigmob.action.interstitial.show"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/common/y;->a(Ljava/lang/String;)V

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

    const/4 v1, 0x0

    const-string v0, "com.sigmob.action.interstitial.dismiss"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/common/y;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/y;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/y;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/sigmob/sdk/base/common/y;->m:Landroid/widget/TextView;

    :cond_11
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/y;->g:Lcom/sigmob/sdk/base/views/BaseWebView;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/y;->g:Lcom/sigmob/sdk/base/views/BaseWebView;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/BaseWebView;->destroy()V

    iput-object v1, p0, Lcom/sigmob/sdk/base/common/y;->g:Lcom/sigmob/sdk/base/views/BaseWebView;

    :cond_1c
    return-void
.end method

.method public e()V
    .registers 1

    return-void
.end method

.method public f()Z
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/y;->g:Lcom/sigmob/sdk/base/views/BaseWebView;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/BaseWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/y;->g:Lcom/sigmob/sdk/base/views/BaseWebView;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/BaseWebView;->goBack()V

    const/4 v0, 0x0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method
