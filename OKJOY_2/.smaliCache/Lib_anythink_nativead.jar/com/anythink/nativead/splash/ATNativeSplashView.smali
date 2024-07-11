.class public Lcom/anythink/nativead/splash/ATNativeSplashView;
.super Landroid/widget/RelativeLayout;


# instance fields
.field a:Lcom/anythink/nativead/splash/a/a;

.field b:Lcom/anythink/nativead/api/ATNativeAdView;

.field c:Landroid/view/View;

.field d:Landroid/widget/TextView;

.field e:J

.field f:Ljava/lang/String;

.field g:Landroid/os/CountDownTimer;

.field h:Z

.field i:Lcom/anythink/nativead/splash/api/ATNativeSplashListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 56
    const-string p1, ""

    iput-object p1, p0, Lcom/anythink/nativead/splash/ATNativeSplashView;->f:Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Lcom/anythink/nativead/splash/ATNativeSplashView;->a()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    const-string p1, ""

    iput-object p1, p0, Lcom/anythink/nativead/splash/ATNativeSplashView;->f:Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Lcom/anythink/nativead/splash/ATNativeSplashView;->a()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    const-string p1, ""

    iput-object p1, p0, Lcom/anythink/nativead/splash/ATNativeSplashView;->f:Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Lcom/anythink/nativead/splash/ATNativeSplashView;->a()V

    .line 53
    return-void
.end method

.method private a()V
    .registers 5

    .line 59
    invoke-virtual {p0}, Lcom/anythink/nativead/splash/ATNativeSplashView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anythink/nativead/splash/ATNativeSplashView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "plugin_splash_view_layout"

    const-string v3, "layout"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 61
    invoke-virtual {p0}, Lcom/anythink/nativead/splash/ATNativeSplashView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "plugin_splash_native"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/nativead/splash/ATNativeSplashView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anythink/nativead/api/ATNativeAdView;

    iput-object v0, p0, Lcom/anythink/nativead/splash/ATNativeSplashView;->b:Lcom/anythink/nativead/api/ATNativeAdView;

    .line 62
    new-instance v0, Lcom/anythink/nativead/splash/a/a;

    invoke-virtual {p0}, Lcom/anythink/nativead/splash/ATNativeSplashView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/anythink/nativead/splash/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/nativead/splash/ATNativeSplashView;->a:Lcom/anythink/nativead/splash/a/a;

    .line 64
    invoke-virtual {p0}, Lcom/anythink/nativead/splash/ATNativeSplashView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "plugin_splash_skip"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/nativead/splash/ATNativeSplashView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/nativead/splash/ATNativeSplashView;->d:Landroid/widget/TextView;

    .line 65
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    invoke-virtual {p0}, Lcom/anythink/nativead/splash/ATNativeSplashView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anythink/nativead/splash/ATNativeSplashView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "plugin_splash_skip_text"

    const-string v3, "string"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/nativead/splash/ATNativeSplashView;->f:Ljava/lang/String;

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/anythink/nativead/splash/ATNativeSplashView;Z)V
    .registers 5

    .line 30
    nop

    .line 1128
    iget-object v0, p0, Lcom/anythink/nativead/splash/ATNativeSplashView;->c:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 1129
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1130
    iget-object v0, p0, Lcom/anythink/nativead/splash/ATNativeSplashView;->c:Landroid/view/View;

    new-instance v2, Lcom/anythink/nativead/splash/ATNativeSplashView$3;

    invoke-direct {v2, p0, p1}, Lcom/anythink/nativead/splash/ATNativeSplashView$3;-><init>(Lcom/anythink/nativead/splash/ATNativeSplashView;Z)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_23

    .line 1145
    :cond_14
    iget-object v0, p0, Lcom/anythink/nativead/splash/ATNativeSplashView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1146
    iget-object v0, p0, Lcom/anythink/nativead/splash/ATNativeSplashView;->d:Landroid/widget/TextView;

    new-instance v2, Lcom/anythink/nativead/splash/ATNativeSplashView$4;

    invoke-direct {v2, p0, p1}, Lcom/anythink/nativead/splash/ATNativeSplashView$4;-><init>(Lcom/anythink/nativead/splash/ATNativeSplashView;Z)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1162
    :goto_23
    iput-boolean v1, p0, Lcom/anythink/nativead/splash/ATNativeSplashView;->h:Z

    .line 1164
    new-instance v0, Lcom/anythink/nativead/splash/ATNativeSplashView$5;

    iget-wide v1, p0, Lcom/anythink/nativead/splash/ATNativeSplashView;->e:J

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/anythink/nativead/splash/ATNativeSplashView$5;-><init>(Lcom/anythink/nativead/splash/ATNativeSplashView;JZ)V

    iput-object v0, p0, Lcom/anythink/nativead/splash/ATNativeSplashView;->g:Landroid/os/CountDownTimer;

    .line 1191
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 30
    return-void
.end method

.method private a(Z)V
    .registers 5

    .line 128
    iget-object v0, p0, Lcom/anythink/nativead/splash/ATNativeSplashView;->c:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 129
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/anythink/nativead/splash/ATNativeSplashView;->c:Landroid/view/View;

    new-instance v2, Lcom/anythink/nativead/splash/ATNativeSplashView$3;

    invoke-direct {v2, p0, p1}, Lcom/anythink/nativead/splash/ATNativeSplashView$3;-><init>(Lcom/anythink/nativead/splash/ATNativeSplashView;Z)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_22

    .line 145
    :cond_13
    iget-object v0, p0, Lcom/anythink/nativead/splash/ATNativeSplashView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/anythink/nativead/splash/ATNativeSplashView;->d:Landroid/widget/TextView;

    new-instance v2, Lcom/anythink/nativead/splash/ATNativeSplashView$4;

    invoke-direct {v2, p0, p1}, Lcom/anythink/nativead/splash/ATNativeSplashView$4;-><init>(Lcom/anythink/nativead/splash/ATNativeSplashView;Z)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    :goto_22
    iput-boolean v1, p0, Lcom/anythink/nativead/splash/ATNativeSplashView;->h:Z

    .line 164
    new-instance v0, Lcom/anythink/nativead/splash/ATNativeSplashView$5;

    iget-wide v1, p0, Lcom/anythink/nativead/splash/ATNativeSplashView;->e:J

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/anythink/nativead/splash/ATNativeSplashView$5;-><init>(Lcom/anythink/nativead/splash/ATNativeSplashView;JZ)V

    iput-object v0, p0, Lcom/anythink/nativead/splash/ATNativeSplashView;->g:Landroid/os/CountDownTimer;

    .line 191
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 192
    return-void
.end method


# virtual methods
.method public renderAd(Landroid/view/ViewGroup;Lcom/anythink/nativead/api/NativeAd;Ljava/lang/String;)V
    .registers 6

    .line 72
    invoke-virtual {p0}, Lcom/anythink/nativead/splash/ATNativeSplashView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;)Lcom/anythink/core/c/d;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/anythink/core/c/d;->a(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object p3

    .line 73
    if-eqz p3, :cond_13

    invoke-virtual {p3}, Lcom/anythink/core/c/c;->G()Lcom/anythink/core/common/d/z;

    move-result-object p3

    goto :goto_14

    :cond_13
    const/4 p3, 0x0

    .line 74
    :goto_14
    if-eqz p3, :cond_1e

    iget-boolean v0, p3, Lcom/anythink/core/common/d/z;->d:Z

    if-eqz v0, :cond_1e

    .line 75
    iget-wide v0, p3, Lcom/anythink/core/common/d/z;->e:J

    iput-wide v0, p0, Lcom/anythink/nativead/splash/ATNativeSplashView;->e:J

    .line 77
    :cond_1e
    new-instance v0, Lcom/anythink/nativead/splash/ATNativeSplashView$1;

    invoke-direct {v0, p0}, Lcom/anythink/nativead/splash/ATNativeSplashView$1;-><init>(Lcom/anythink/nativead/splash/ATNativeSplashView;)V

    invoke-virtual {p2, v0}, Lcom/anythink/nativead/api/NativeAd;->setNativeEventListener(Lcom/anythink/nativead/api/ATNativeEventListener;)V

    .line 106
    iget-object v0, p0, Lcom/anythink/nativead/splash/ATNativeSplashView;->a:Lcom/anythink/nativead/splash/a/a;

    new-instance v1, Lcom/anythink/nativead/splash/ATNativeSplashView$2;

    invoke-direct {v1, p0, p1, p3}, Lcom/anythink/nativead/splash/ATNativeSplashView$2;-><init>(Lcom/anythink/nativead/splash/ATNativeSplashView;Landroid/view/ViewGroup;Lcom/anythink/core/common/d/z;)V

    invoke-virtual {v0, v1}, Lcom/anythink/nativead/splash/a/a;->a(Lcom/anythink/nativead/splash/a/a$a;)V

    .line 115
    :try_start_30
    iget-object p1, p0, Lcom/anythink/nativead/splash/ATNativeSplashView;->b:Lcom/anythink/nativead/api/ATNativeAdView;

    iget-object p3, p0, Lcom/anythink/nativead/splash/ATNativeSplashView;->a:Lcom/anythink/nativead/splash/a/a;

    invoke-virtual {p2, p1, p3}, Lcom/anythink/nativead/api/NativeAd;->renderAdView(Lcom/anythink/nativead/api/ATNativeAdView;Lcom/anythink/nativead/api/ATNativeAdRenderer;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_37} :catch_38

    .line 118
    goto :goto_3c

    .line 117
    :catch_38
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    :goto_3c
    iget-object p1, p0, Lcom/anythink/nativead/splash/ATNativeSplashView;->b:Lcom/anythink/nativead/api/ATNativeAdView;

    invoke-virtual {p2, p1}, Lcom/anythink/nativead/api/NativeAd;->prepare(Lcom/anythink/nativead/api/ATNativeAdView;)V

    .line 121
    return-void
.end method

.method public setDevelopSkipView(Landroid/view/View;J)V
    .registers 4

    .line 201
    iput-wide p2, p0, Lcom/anythink/nativead/splash/ATNativeSplashView;->e:J

    .line 202
    iput-object p1, p0, Lcom/anythink/nativead/splash/ATNativeSplashView;->c:Landroid/view/View;

    .line 203
    return-void
.end method

.method public setNativeSplashListener(Lcom/anythink/nativead/splash/api/ATNativeSplashListener;)V
    .registers 2

    .line 197
    iput-object p1, p0, Lcom/anythink/nativead/splash/ATNativeSplashView;->i:Lcom/anythink/nativead/splash/api/ATNativeSplashListener;

    .line 198
    return-void
.end method
