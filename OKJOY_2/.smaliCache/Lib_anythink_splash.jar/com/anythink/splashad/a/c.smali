.class public final Lcom/anythink/splashad/a/c;
.super Lcom/anythink/core/common/f;


# instance fields
.field H:Lcom/anythink/splashad/api/ATSplashAdListener;

.field a:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 107
    invoke-direct {p0, p1}, Lcom/anythink/core/common/f;-><init>(Landroid/content/Context;)V

    .line 108
    return-void
.end method

.method private a(I)V
    .registers 2

    .line 111
    iput p1, p0, Lcom/anythink/splashad/a/c;->a:I

    .line 112
    return-void
.end method

.method private a(Lcom/anythink/splashad/api/ATSplashAdListener;)V
    .registers 2

    .line 167
    iput-object p1, p0, Lcom/anythink/splashad/a/c;->H:Lcom/anythink/splashad/api/ATSplashAdListener;

    .line 168
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/anythink/splashad/a/c;->H:Lcom/anythink/splashad/api/ATSplashAdListener;

    if-eqz v0, :cond_7

    .line 125
    invoke-interface {v0}, Lcom/anythink/splashad/api/ATSplashAdListener;->onAdLoaded()V

    .line 128
    :cond_7
    return-void
.end method

.method public final a(Lcom/anythink/core/api/ATBaseAdAdapter;)V
    .registers 3

    .line 159
    instance-of v0, p1, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    if-eqz v0, :cond_b

    .line 160
    check-cast p1, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    iget v0, p0, Lcom/anythink/splashad/a/c;->a:I

    invoke-virtual {p1, v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->setFetchAdTimeout(I)V

    .line 162
    :cond_b
    return-void
.end method

.method protected final a(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/api/AdError;)V
    .registers 3

    .line 116
    invoke-super {p0, p1, p2}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/api/AdError;)V

    .line 117
    instance-of p2, p1, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    if-eqz p2, :cond_c

    .line 118
    check-cast p1, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    invoke-virtual {p1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->cleanImpressionListener()V

    .line 120
    :cond_c
    return-void
.end method

.method public final a(Lcom/anythink/core/api/AdError;)V
    .registers 3

    .line 132
    iget-object v0, p0, Lcom/anythink/splashad/a/c;->H:Lcom/anythink/splashad/api/ATSplashAdListener;

    if-eqz v0, :cond_7

    .line 133
    invoke-interface {v0, p1}, Lcom/anythink/splashad/api/ATSplashAdListener;->onNoAdError(Lcom/anythink/core/api/AdError;)V

    .line 136
    :cond_7
    return-void
.end method

.method public final b()V
    .registers 2

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/splashad/a/c;->H:Lcom/anythink/splashad/api/ATSplashAdListener;

    .line 181
    return-void
.end method

.method public final e()V
    .registers 2

    .line 173
    invoke-super {p0}, Lcom/anythink/core/common/f;->e()V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/splashad/a/c;->H:Lcom/anythink/splashad/api/ATSplashAdListener;

    .line 175
    return-void
.end method

.method public final f()V
    .registers 8

    .line 187
    iget-object v0, p0, Lcom/anythink/splashad/a/c;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/splashad/a/c;->q:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/splashad/a/c;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/splashad/a/c;->o:Lcom/anythink/core/c/c;

    iget-object v4, p0, Lcom/anythink/splashad/a/c;->o:Lcom/anythink/core/c/c;

    invoke-virtual {v4}, Lcom/anythink/core/c/c;->B()I

    move-result v5

    iget-boolean v6, p0, Lcom/anythink/splashad/a/c;->r:Z

    const-string v4, ""

    invoke-static/range {v0 .. v6}, Lcom/anythink/core/common/g/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/lang/String;IZ)Lcom/anythink/core/common/d/d;

    move-result-object v0

    .line 188
    const-string v1, "2001"

    const-string v2, ""

    const-string v3, "Splash FetchAd Timeout."

    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/common/f/c;->a(Lcom/anythink/core/common/d/d;Lcom/anythink/core/api/AdError;)V

    .line 189
    return-void
.end method
