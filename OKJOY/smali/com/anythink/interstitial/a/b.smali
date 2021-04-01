.class public final Lcom/anythink/interstitial/a/b;
.super Lcom/anythink/core/b/e;


# direct methods
.method public constructor <init>(JJLcom/anythink/core/c/c$b;Lcom/anythink/core/b/c/b;)V
    .registers 8

    .prologue
    .line 17
    invoke-direct/range {p0 .. p6}, Lcom/anythink/core/b/e;-><init>(JJLcom/anythink/core/c/c$b;Lcom/anythink/core/b/c/b;)V

    .line 18
    return-void
.end method

.method static synthetic a(Lcom/anythink/interstitial/a/b;JLcom/anythink/core/b/a/b;Lcom/anythink/core/api/AdError;)V
    .registers 6

    .prologue
    .line 14
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/anythink/interstitial/a/b;->a(JLcom/anythink/core/b/a/b;Lcom/anythink/core/api/AdError;)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/interstitial/a/b;Landroid/content/Context;JLcom/anythink/core/b/a/b;)V
    .registers 11

    .prologue
    .line 14
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/interstitial/a/b;->a(Landroid/content/Context;JLcom/anythink/core/b/a/b;Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(JLcom/anythink/core/b/a/b;)V
    .registers 3

    .prologue
    .line 14
    invoke-static {p0, p1, p2}, Lcom/anythink/interstitial/a/b;->a(JLcom/anythink/core/b/a/b;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;JLcom/anythink/core/b/a/b;)V
    .registers 11

    .prologue
    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 31
    iget-object v0, p0, Lcom/anythink/interstitial/a/b;->b:Lcom/anythink/core/b/c/b;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/anythink/interstitial/a/b;->b:Lcom/anythink/core/b/c/b;

    invoke-virtual {v0}, Lcom/anythink/core/b/c/b;->D()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_f
    move-object v0, p4

    .line 32
    check-cast v0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    invoke-virtual {p4}, Lcom/anythink/core/b/a/b;->getmUnitgroupInfo()Lcom/anythink/core/c/c$b;

    invoke-virtual {p4}, Lcom/anythink/core/b/a/b;->getmUnitgroupInfo()Lcom/anythink/core/c/c$b;

    move-result-object v3

    const-string v4, ""

    invoke-static {v1, v3, v4}, Lcom/anythink/core/c/c;->a(Ljava/lang/String;Lcom/anythink/core/c/c$b;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const/4 v3, 0x0

    new-instance v4, Lcom/anythink/interstitial/a/b$1;

    invoke-direct {v4, p0, p2, p3, v2}, Lcom/anythink/interstitial/a/b$1;-><init>(Lcom/anythink/interstitial/a/b;JLandroid/content/Context;)V

    invoke-static {p1, v0, v1, v3, v4}, Lcom/anythink/interstitial/a/a/a;->a(Landroid/content/Context;Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;)V

    .line 184
    return-void

    .line 31
    :cond_29
    const-string v0, ""

    move-object v1, v0

    goto :goto_f
.end method

.method public final onTick(J)V
    .registers 3

    .prologue
    .line 24
    return-void
.end method
