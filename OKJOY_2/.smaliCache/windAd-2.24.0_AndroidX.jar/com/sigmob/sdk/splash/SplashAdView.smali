.class public final Lcom/sigmob/sdk/splash/SplashAdView;
.super Landroid/widget/RelativeLayout;


# static fields
.field private static q:F

.field private static r:F


# instance fields
.field private a:Lcom/sigmob/sdk/splash/e;

.field private b:Landroid/content/Context;

.field private c:Landroid/app/Activity;

.field private d:J

.field private e:Landroid/widget/RelativeLayout;

.field private f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private g:Lcom/sigmob/sdk/splash/d;

.field private h:Lcom/sigmob/volley/toolbox/k$c;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/RelativeLayout;

.field private n:Landroid/widget/RelativeLayout;

.field private o:Landroid/view/View$OnTouchListener;

.field private p:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x41c80000    # 25.0f

    sput v0, Lcom/sigmob/sdk/splash/SplashAdView;->q:F

    const/high16 v0, 0x41500000    # 13.0f

    sput v0, Lcom/sigmob/sdk/splash/SplashAdView;->r:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->p:F

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->b:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->c:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/splash/SplashAdView;)J
    .registers 3

    iget-wide v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->d:J

    return-wide v0
.end method

.method private a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .registers 14

    const-string v0, "handleUrlAction: "

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->deeplink_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v7

    iget-object v1, v7, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->interaction_type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v1, 0x1

    if-nez v0, :cond_50

    new-instance v0, Landroid/content/Intent;

    iget-object v2, v7, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->deeplink_url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/sigmob/sdk/splash/SplashAdView;->b:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/sigmob/sdk/common/f/j;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, v7, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->deeplink_url:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Z)V

    goto :goto_52

    :cond_37
    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, v7, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->deeplink_url:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :cond_48
    iget-object v0, v7, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->landing_page:Ljava/lang/String;

    sget-object v2, Lcom/sigmob/sdk/base/common/a;->D:Lcom/sigmob/sdk/base/common/a;

    invoke-static {p2, v2}, Lcom/sigmob/sdk/base/a/c;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    goto :goto_52

    :cond_50
    iget-object v0, v7, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->landing_page:Ljava/lang/String;

    :goto_52
    iget-object v2, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->macroProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/sigmob/sdk/common/f/q$a;

    invoke-direct {v2}, Lcom/sigmob/sdk/common/f/q$a;-><init>()V

    sget-object v3, Lcom/sigmob/sdk/common/f/p;->a:Lcom/sigmob/sdk/common/f/p;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/sigmob/sdk/common/f/p;

    const/4 v5, 0x0

    sget-object v8, Lcom/sigmob/sdk/common/f/p;->b:Lcom/sigmob/sdk/common/f/p;

    aput-object v8, v4, v5

    sget-object v5, Lcom/sigmob/sdk/common/f/p;->e:Lcom/sigmob/sdk/common/f/p;

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sigmob/sdk/common/f/q$a;->a(Lcom/sigmob/sdk/common/f/p;[Lcom/sigmob/sdk/common/f/p;)Lcom/sigmob/sdk/common/f/q$a;

    move-result-object v8

    new-instance v9, Lcom/sigmob/sdk/splash/SplashAdView$4;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/sigmob/sdk/splash/SplashAdView$4;-><init>(Lcom/sigmob/sdk/splash/SplashAdView;Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/Context;Ljava/lang/String;ILcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;)V

    invoke-virtual {v8, v9}, Lcom/sigmob/sdk/common/f/q$a;->a(Lcom/sigmob/sdk/common/f/q$b;)Lcom/sigmob/sdk/common/f/q$a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sigmob/sdk/common/f/q$a;->a()Lcom/sigmob/sdk/common/f/q$a;

    move-result-object p3

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    move-result-object p2

    iget-object p2, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p3, p2}, Lcom/sigmob/sdk/common/f/q$a;->a(Z)Lcom/sigmob/sdk/common/f/q$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/f/q$a;->b()Lcom/sigmob/sdk/common/f/q;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/sigmob/sdk/common/f/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/splash/SplashAdView;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 6

    const-string v0, "handleClick: "

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->g:Lcom/sigmob/sdk/splash/d;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/sigmob/sdk/splash/d;->b(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->b:Landroid/content/Context;

    iget-wide v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->d:J

    const-string v3, "com.sigmob.action.interstitial.click"

    invoke-static {v0, v1, v2, v3}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;JLjava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->interaction_type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2b

    invoke-direct {p0, p1, v0}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Ljava/lang/String;Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;)V

    goto :goto_32

    :cond_2b
    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-direct {p0, v0, v1, p1}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :goto_32
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;)V
    .registers 10

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v0

    iget-object p2, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->landing_page:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->macroProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v3, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const-string v1, "click"

    const/4 v2, 0x0

    const-string v4, "0"

    move-object v5, p2

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->i:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/common/l;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_31

    :try_start_23
    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->b:Landroid/content/Context;

    const-string p2, "\u5f53\u524d\u6b63\u5728\u52aa\u529b\u4e0b\u8f7d\uff0c\u8bf7\u7a0d\u7b49"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_2f

    goto :goto_30

    :catchall_2f
    move-exception p1

    :goto_30
    return-void

    :cond_31
    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object p1

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->sub_interaction_type:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_6a

    new-instance p1, Lcom/sigmob/sdk/common/e/d;

    new-instance v1, Lcom/sigmob/sdk/splash/SplashAdView$3;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/splash/SplashAdView$3;-><init>(Lcom/sigmob/sdk/splash/SplashAdView;)V

    invoke-direct {p1, p2, v1, v0}, Lcom/sigmob/sdk/common/e/d;-><init>(Ljava/lang/String;Lcom/sigmob/sdk/common/e/d$a;I)V

    invoke-static {}, Lcom/sigmob/sdk/common/e/f;->a()Lcom/sigmob/sdk/common/e/l;

    move-result-object p2

    if-nez p2, :cond_61

    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const-string p2, "download_start"

    const-string v1, "0"

    invoke-static {p2, v1, p1}, Lcom/sigmob/sdk/base/common/s;->b(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    const/4 p1, 0x0

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const-string v2, "request queue is null"

    invoke-static {p2, p1, v2, v1}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_77

    :cond_61
    const-string v1, "GDTRequestConvert"

    invoke-virtual {p1, v1}, Lcom/sigmob/sdk/common/e/d;->b(Ljava/lang/Object;)Lcom/sigmob/volley/m;

    invoke-virtual {p2, p1}, Lcom/sigmob/volley/n;->a(Lcom/sigmob/volley/m;)Lcom/sigmob/volley/m;

    goto :goto_77

    :cond_6a
    iput-object p2, p0, Lcom/sigmob/sdk/splash/SplashAdView;->i:Ljava/lang/String;

    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {p1, p2, v1}, Lcom/sigmob/sdk/base/common/l;->a(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :goto_77
    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->g:Lcom/sigmob/sdk/splash/d;

    invoke-virtual {p1}, Lcom/sigmob/sdk/splash/d;->e()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Z)V

    return-void
.end method

.method static synthetic b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object p0
.end method

.method static synthetic b(Lcom/sigmob/sdk/splash/SplashAdView;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->i:Ljava/lang/String;

    return-object p1
.end method

.method private b(Landroid/content/Context;)V
    .registers 8

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {p1, v0}, Lcom/sigmob/sdk/splash/e;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/splash/e;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->a:Lcom/sigmob/sdk/splash/e;

    iget-wide v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->d:J

    iput-wide v1, v0, Lcom/sigmob/sdk/splash/e;->b:J

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/sigmob/sdk/splash/SplashAdView;->a:Lcom/sigmob/sdk/splash/e;

    invoke-virtual {p0, v2, v0}, Lcom/sigmob/sdk/splash/SplashAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->n:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/sigmob/sdk/splash/SplashAdView;->q:F

    iget-object v2, p0, Lcom/sigmob/sdk/splash/SplashAdView;->b:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    move-result v1

    int-to-double v2, v1

    const-wide/high16 v4, 0x4004000000000000L    # 2.5

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->n:Landroid/widget/RelativeLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcom/sigmob/sdk/splash/SplashAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->e:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->am()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->e:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/sigmob/sdk/splash/SplashAdView$1;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/sdk/splash/SplashAdView$1;-><init>(Lcom/sigmob/sdk/splash/SplashAdView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance p1, Lcom/sigmob/sdk/splash/SplashAdView$2;

    invoke-direct {p1, p0}, Lcom/sigmob/sdk/splash/SplashAdView$2;-><init>(Lcom/sigmob/sdk/splash/SplashAdView;)V

    iput-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->o:Landroid/view/View$OnTouchListener;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic c(Lcom/sigmob/sdk/splash/SplashAdView;)Landroid/widget/RelativeLayout;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->n:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private c(Landroid/content/Context;)V
    .registers 8

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/sigmob/sdk/common/a;->am()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    invoke-static {}, Lcom/sigmob/sdk/base/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v2, "#dadada"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v3, p1}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/sigmob/sdk/splash/SplashAdView;->m:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    if-eqz v3, :cond_5b

    const/4 v3, 0x4

    iget-object v5, p0, Lcom/sigmob/sdk/splash/SplashAdView;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getId()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v3, Lcom/sigmob/sdk/splash/SplashAdView;->q:F

    iget v5, p0, Lcom/sigmob/sdk/splash/SplashAdView;->p:F

    mul-float/2addr v3, v5

    invoke-static {v3, p1}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_74

    :cond_5b
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-boolean v3, p0, Lcom/sigmob/sdk/splash/SplashAdView;->j:Z

    if-nez v3, :cond_74

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sigmob/sdk/common/a;->T()I

    move-result v3

    invoke-virtual {v2, v4, v4, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :cond_74
    :goto_74
    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3, p1}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    move-result p1

    invoke-virtual {v1, p1, v4, p1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string p1, "#B3505050"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0, v2}, Lcom/sigmob/sdk/splash/SplashAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic d(Lcom/sigmob/sdk/splash/SplashAdView;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->b:Landroid/content/Context;

    return-object p0
.end method

.method private d(Landroid/content/Context;)V
    .registers 9

    sget v0, Lcom/sigmob/sdk/splash/SplashAdView;->q:F

    iget v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->p:F

    mul-float/2addr v0, v1

    invoke-static {v0, p1}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    move-result v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    div-int/lit8 v0, v0, 0x2

    const-string v3, "#B3505050"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v5, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float v3, v0

    invoke-virtual {v5, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v3, v6, :cond_3d

    iget-object v3, p0, Lcom/sigmob/sdk/splash/SplashAdView;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_42

    :cond_3d
    iget-object v3, p0, Lcom/sigmob/sdk/splash/SplashAdView;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_42
    iget-object v3, p0, Lcom/sigmob/sdk/splash/SplashAdView;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0, v4, v0, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/sdk/splash/SplashAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->l:Landroid/widget/TextView;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->am()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setId(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->l:Landroid/widget/TextView;

    const/4 v0, 0x1

    sget v1, Lcom/sigmob/sdk/splash/SplashAdView;->r:F

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->l:Landroid/widget/TextView;

    const-string v0, "#dadada"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->l:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->e:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic e(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/splash/d;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->g:Lcom/sigmob/sdk/splash/d;

    return-object p0
.end method

.method private e(Landroid/content/Context;)V
    .registers 6

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_source_logo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->k:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v2, p1}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    move-result v2

    const/high16 v3, 0x41500000    # 13.0f

    invoke-static {v3, p1}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    move-result p1

    invoke-direct {v1, v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-boolean p1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->j:Z

    const/4 v2, 0x0

    if-nez p1, :cond_3f

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/a;->T()I

    move-result p1

    invoke-virtual {v1, v2, v2, v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :cond_3f
    const/16 p1, 0xc

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p1, 0xb

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->k:Landroid/widget/ImageView;

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->k:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->m:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_69

    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getId()I

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_69
    invoke-virtual {p0, v0, v1}, Lcom/sigmob/sdk/splash/SplashAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/sigmob/sdk/common/e/f;->b()Lcom/sigmob/volley/toolbox/k;

    move-result-object p1

    if-eqz p1, :cond_83

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_source_logo()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/splash/SplashAdView$5;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/splash/SplashAdView$5;-><init>(Lcom/sigmob/sdk/splash/SplashAdView;)V

    invoke-virtual {p1, v0, v1}, Lcom/sigmob/volley/toolbox/k;->a(Ljava/lang/String;Lcom/sigmob/volley/toolbox/k$d;)Lcom/sigmob/volley/toolbox/k$c;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->h:Lcom/sigmob/volley/toolbox/k$c;

    :cond_83
    return-void
.end method

.method static synthetic f(Lcom/sigmob/sdk/splash/SplashAdView;)Landroid/app/Activity;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->c:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic g(Lcom/sigmob/sdk/splash/SplashAdView;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->k:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method protected a()V
    .registers 3

    const/16 v0, 0x8

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->a:Lcom/sigmob/sdk/splash/e;

    if-eqz v1, :cond_c

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/splash/e;->setVisibility(I)V

    :cond_c
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 10

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->companion:Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;

    if-eqz v0, :cond_117

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->companion:Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto/16 :goto_117

    :cond_1c
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->m:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->companion:Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->click_type:Ljava/lang/Integer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->companion:Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->click_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_4c

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->n:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    :cond_4c
    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->m:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/sigmob/sdk/splash/SplashAdView;->o:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->m:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->am()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setId(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->m:Landroid/widget/RelativeLayout;

    const v3, 0x4d666666    # 2.41591904E8f

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v3, p1}, Lcom/sigmob/sdk/common/f/d;->c(FLandroid/content/Context;)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/sigmob/sdk/splash/SplashAdView;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v3, v0}, Lcom/sigmob/sdk/splash/SplashAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v3

    iget-object v3, v3, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->companion:Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;

    iget-object v3, v3, Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/widget/TextView;->setSingleLine()V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "8250"

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v6, v6

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/sigmob/sdk/common/a;->am()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x42140000    # 37.0f

    invoke-virtual {v3, v1, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v1, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xf

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v6, 0x9

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6, p1}, Lcom/sigmob/sdk/common/f/d;->c(FLandroid/content/Context;)I

    move-result v7

    invoke-virtual {v1, v7, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getId()I

    move-result v7

    invoke-virtual {v1, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v7, p0, Lcom/sigmob/sdk/splash/SplashAdView;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-static {v6, p1}, Lcom/sigmob/sdk/common/f/d;->c(FLandroid/content/Context;)I

    move-result p1

    invoke-virtual {v0, v2, v2, p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_117
    :goto_117
    return-void
.end method

.method a(Z)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->b:Landroid/content/Context;

    iget-wide v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->d:J

    const-string v3, "com.sigmob.action.interstitial.dismiss"

    invoke-static {p1, v1, v2, v3}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;JLjava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_11
    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->a:Lcom/sigmob/sdk/splash/e;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/splash/e;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->h:Lcom/sigmob/volley/toolbox/k$c;

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Lcom/sigmob/volley/toolbox/k$c;->a()V

    iput-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->h:Lcom/sigmob/volley/toolbox/k$c;

    :cond_1f
    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
    .registers 3

    :try_start_0
    invoke-static {p1}, Lcom/sigmob/sdk/splash/d;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/splash/d;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->g:Lcom/sigmob/sdk/splash/d;

    iput-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->b:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->b:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object p1

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->template_type:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_27

    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->b:Landroid/content/Context;

    :goto_23
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/splash/SplashAdView;->c(Landroid/content/Context;)V

    goto :goto_3e

    :cond_27
    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object p1

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->template_type:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_39

    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->b:Landroid/content/Context;

    goto :goto_23

    :cond_39
    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->b:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/splash/SplashAdView;->e(Landroid/content/Context;)V

    :goto_3e
    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->b:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/splash/SplashAdView;->d(Landroid/content/Context;)V
    :try_end_43
    .catchall {:try_start_0 .. :try_end_43} :catchall_45

    const/4 p1, 0x1

    return p1

    :catchall_45
    move-exception p1

    const-string v0, "setupAd error"

    invoke-static {v0, p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method protected b()V
    .registers 2

    const/4 v0, 0x4

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public c()Z
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->a:Lcom/sigmob/sdk/splash/e;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/splash/e;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    move-result v0

    return v0
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->a:Lcom/sigmob/sdk/splash/e;

    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/e;->b()V

    return-void
.end method

.method public e()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->a:Lcom/sigmob/sdk/splash/e;

    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/e;->c()V

    return-void
.end method

.method public getDuration()I
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->a:Lcom/sigmob/sdk/splash/e;

    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/e;->getDuration()I

    move-result v0

    return v0
.end method

.method public setBroadcastIdentifier(J)V
    .registers 3

    iput-wide p1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->d:J

    return-void
.end method

.method public setDuration(I)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    if-lez p1, :cond_66

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->l:Landroid/widget/TextView;

    if-eqz v1, :cond_66

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->template_type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_6a

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->l:Landroid/widget/TextView;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v0}, Lcom/sigmob/sdk/base/b;->c([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_62

    :pswitch_45
    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->l:Landroid/widget/TextView;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v0}, Lcom/sigmob/sdk/base/b;->b([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_62

    :pswitch_54
    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->l:Landroid/widget/TextView;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v0}, Lcom/sigmob/sdk/base/b;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_62
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_69

    :cond_66
    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Z)V

    :goto_69
    return-void

    :pswitch_data_6a
    .packed-switch 0x2
        :pswitch_54
        :pswitch_45
    .end packed-switch
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->a:Lcom/sigmob/sdk/splash/e;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/splash/e;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_7
    return-void
.end method

.method public setShowAppLogo(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->j:Z

    return-void
.end method

.method public setVisibility(I)V
    .registers 6

    if-nez p1, :cond_1a

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->e:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->a:Lcom/sigmob/sdk/splash/e;

    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/e;->a()V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->g:Lcom/sigmob/sdk/splash/d;

    iget-object v2, p0, Lcom/sigmob/sdk/splash/SplashAdView;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0, v2, v1, v3}, Lcom/sigmob/sdk/splash/d;->a(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_4e

    :cond_1a
    :try_start_1a
    const-string p1, "splashAdBlock"

    sget-object v0, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SPLASH_ADBLOCK:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result v0

    invoke-static {}, Lcom/sigmob/sdk/common/f/m$a;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {p1, v0, v1, v2}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "debug "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcom/sigmob/sdk/common/f/m$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_1a .. :try_end_45} :catchall_46

    goto :goto_4e

    :catchall_46
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :goto_4e
    return-void
.end method
