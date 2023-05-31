.class public final Lcom/anythink/nativead/splash/a;
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
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/nativead/splash/a;->f:Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Lcom/anythink/nativead/splash/a;->a()V

    .line 36
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/nativead/splash/a;->f:Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Lcom/anythink/nativead/splash/a;->a()V

    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/nativead/splash/a;->f:Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Lcom/anythink/nativead/splash/a;->a()V

    .line 46
    return-void
.end method

.method private a()V
    .registers 5

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/anythink/nativead/splash/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anythink/nativead/splash/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "plugin_splash_view_layout"

    const-string v3, "layout"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 54
    invoke-virtual {p0}, Lcom/anythink/nativead/splash/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "plugin_splash_native"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/nativead/splash/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anythink/nativead/api/ATNativeAdView;

    iput-object v0, p0, Lcom/anythink/nativead/splash/a;->b:Lcom/anythink/nativead/api/ATNativeAdView;

    .line 55
    new-instance v0, Lcom/anythink/nativead/splash/a/a;

    invoke-virtual {p0}, Lcom/anythink/nativead/splash/a;->getContext()Landroid/content/Context;

    invoke-direct {v0}, Lcom/anythink/nativead/splash/a/a;-><init>()V

    iput-object v0, p0, Lcom/anythink/nativead/splash/a;->a:Lcom/anythink/nativead/splash/a/a;

    .line 57
    invoke-virtual {p0}, Lcom/anythink/nativead/splash/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "plugin_splash_skip"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/nativead/splash/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/nativead/splash/a;->d:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/anythink/nativead/splash/a;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    invoke-virtual {p0}, Lcom/anythink/nativead/splash/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anythink/nativead/splash/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "plugin_splash_skip_text"

    const-string v3, "string"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/nativead/splash/a;->f:Ljava/lang/String;

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/anythink/nativead/splash/a;Z)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 23
    .line 1121
    iget-object v0, p0, Lcom/anythink/nativead/splash/a;->c:Landroid/view/View;

    if-eqz v0, :cond_25

    .line 1122
    iget-object v0, p0, Lcom/anythink/nativead/splash/a;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1123
    iget-object v0, p0, Lcom/anythink/nativead/splash/a;->c:Landroid/view/View;

    new-instance v1, Lcom/anythink/nativead/splash/a$3;

    invoke-direct {v1, p0, p1}, Lcom/anythink/nativead/splash/a$3;-><init>(Lcom/anythink/nativead/splash/a;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1155
    :goto_14
    iput-boolean v2, p0, Lcom/anythink/nativead/splash/a;->h:Z

    .line 1157
    new-instance v0, Lcom/anythink/nativead/splash/a$5;

    iget-wide v2, p0, Lcom/anythink/nativead/splash/a;->e:J

    invoke-direct {v0, p0, v2, v3, p1}, Lcom/anythink/nativead/splash/a$5;-><init>(Lcom/anythink/nativead/splash/a;JZ)V

    iput-object v0, p0, Lcom/anythink/nativead/splash/a;->g:Landroid/os/CountDownTimer;

    .line 1184
    iget-object v0, p0, Lcom/anythink/nativead/splash/a;->g:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 23
    return-void

    .line 1138
    :cond_25
    iget-object v0, p0, Lcom/anythink/nativead/splash/a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1139
    iget-object v0, p0, Lcom/anythink/nativead/splash/a;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/anythink/nativead/splash/a$4;

    invoke-direct {v1, p0, p1}, Lcom/anythink/nativead/splash/a$4;-><init>(Lcom/anythink/nativead/splash/a;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_14
.end method

.method private a(Z)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 121
    iget-object v0, p0, Lcom/anythink/nativead/splash/a;->c:Landroid/view/View;

    if-eqz v0, :cond_25

    .line 122
    iget-object v0, p0, Lcom/anythink/nativead/splash/a;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/anythink/nativead/splash/a;->c:Landroid/view/View;

    new-instance v1, Lcom/anythink/nativead/splash/a$3;

    invoke-direct {v1, p0, p1}, Lcom/anythink/nativead/splash/a$3;-><init>(Lcom/anythink/nativead/splash/a;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    :goto_14
    iput-boolean v2, p0, Lcom/anythink/nativead/splash/a;->h:Z

    .line 157
    new-instance v0, Lcom/anythink/nativead/splash/a$5;

    iget-wide v2, p0, Lcom/anythink/nativead/splash/a;->e:J

    invoke-direct {v0, p0, v2, v3, p1}, Lcom/anythink/nativead/splash/a$5;-><init>(Lcom/anythink/nativead/splash/a;JZ)V

    iput-object v0, p0, Lcom/anythink/nativead/splash/a;->g:Landroid/os/CountDownTimer;

    .line 184
    iget-object v0, p0, Lcom/anythink/nativead/splash/a;->g:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 185
    return-void

    .line 138
    :cond_25
    iget-object v0, p0, Lcom/anythink/nativead/splash/a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/anythink/nativead/splash/a;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/anythink/nativead/splash/a$4;

    invoke-direct {v1, p0, p1}, Lcom/anythink/nativead/splash/a$4;-><init>(Lcom/anythink/nativead/splash/a;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_14
.end method


# virtual methods
.method public final a(Landroid/view/View;J)V
    .registers 4

    .prologue
    .line 194
    iput-wide p2, p0, Lcom/anythink/nativead/splash/a;->e:J

    .line 195
    iput-object p1, p0, Lcom/anythink/nativead/splash/a;->c:Landroid/view/View;

    .line 196
    return-void
.end method

.method public final a(Landroid/view/ViewGroup;Lcom/anythink/nativead/api/NativeAd;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/anythink/nativead/splash/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;)Lcom/anythink/core/c/d;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/anythink/core/c/d;->a(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Lcom/anythink/core/c/c;->B()Lcom/anythink/core/b/c/m;

    move-result-object v0

    .line 67
    :goto_12
    if-eqz v0, :cond_1c

    iget-boolean v1, v0, Lcom/anythink/core/b/c/m;->d:Z

    if-eqz v1, :cond_1c

    .line 68
    iget-wide v2, v0, Lcom/anythink/core/b/c/m;->e:J

    iput-wide v2, p0, Lcom/anythink/nativead/splash/a;->e:J

    .line 70
    :cond_1c
    new-instance v1, Lcom/anythink/nativead/splash/a$1;

    invoke-direct {v1, p0}, Lcom/anythink/nativead/splash/a$1;-><init>(Lcom/anythink/nativead/splash/a;)V

    invoke-virtual {p2, v1}, Lcom/anythink/nativead/api/NativeAd;->setNativeEventListener(Lcom/anythink/nativead/api/ATNativeEventListener;)V

    .line 99
    iget-object v1, p0, Lcom/anythink/nativead/splash/a;->a:Lcom/anythink/nativead/splash/a/a;

    new-instance v2, Lcom/anythink/nativead/splash/a$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/anythink/nativead/splash/a$2;-><init>(Lcom/anythink/nativead/splash/a;Landroid/view/ViewGroup;Lcom/anythink/core/b/c/m;)V

    invoke-virtual {v1, v2}, Lcom/anythink/nativead/splash/a/a;->a(Lcom/anythink/nativead/splash/a/a$a;)V

    .line 108
    :try_start_2e
    iget-object v0, p0, Lcom/anythink/nativead/splash/a;->b:Lcom/anythink/nativead/api/ATNativeAdView;

    iget-object v1, p0, Lcom/anythink/nativead/splash/a;->a:Lcom/anythink/nativead/splash/a/a;

    invoke-virtual {p2, v0, v1}, Lcom/anythink/nativead/api/NativeAd;->renderAdView(Lcom/anythink/nativead/api/ATNativeAdView;Lcom/anythink/nativead/api/ATNativeAdRenderer;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_35} :catch_3d

    .line 113
    :goto_35
    iget-object v0, p0, Lcom/anythink/nativead/splash/a;->b:Lcom/anythink/nativead/api/ATNativeAdView;

    invoke-virtual {p2, v0}, Lcom/anythink/nativead/api/NativeAd;->prepare(Lcom/anythink/nativead/api/ATNativeAdView;)V

    .line 114
    return-void

    .line 66
    :cond_3b
    const/4 v0, 0x0

    goto :goto_12

    .line 110
    :catch_3d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_35
.end method

.method public final a(Lcom/anythink/nativead/splash/api/ATNativeSplashListener;)V
    .registers 2

    .prologue
    .line 190
    iput-object p1, p0, Lcom/anythink/nativead/splash/a;->i:Lcom/anythink/nativead/splash/api/ATNativeSplashListener;

    .line 191
    return-void
.end method
