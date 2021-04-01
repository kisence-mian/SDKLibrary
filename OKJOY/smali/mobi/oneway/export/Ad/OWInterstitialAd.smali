.class public Lmobi/oneway/export/Ad/OWInterstitialAd;
.super Ljava/lang/Object;


# instance fields
.field private a:Lmobi/oneway/export/a/a;

.field private final b:Lmobi/oneway/export/enums/AdType;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lmobi/oneway/export/AdListener/OWInterstitialAdListener;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "placementId"    # Ljava/lang/String;
    .param p3, "owInterstitialAdListener"    # Lmobi/oneway/export/AdListener/OWInterstitialAdListener;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmobi/oneway/export/enums/AdType;->interstitial:Lmobi/oneway/export/enums/AdType;

    iput-object v0, p0, Lmobi/oneway/export/Ad/OWInterstitialAd;->b:Lmobi/oneway/export/enums/AdType;

    new-instance v0, Lmobi/oneway/export/a/a;

    iget-object v1, p0, Lmobi/oneway/export/Ad/OWInterstitialAd;->b:Lmobi/oneway/export/enums/AdType;

    invoke-direct {v0, v1, p2}, Lmobi/oneway/export/a/a;-><init>(Lmobi/oneway/export/enums/AdType;Ljava/lang/String;)V

    iput-object v0, p0, Lmobi/oneway/export/Ad/OWInterstitialAd;->a:Lmobi/oneway/export/a/a;

    invoke-static {}, Lmobi/oneway/export/e/b;->a()Lmobi/oneway/export/e/b;

    move-result-object v0

    new-instance v1, Lmobi/oneway/export/Ad/OWInterstitialAd$1;

    invoke-direct {v1, p0, p1, p3}, Lmobi/oneway/export/Ad/OWInterstitialAd$1;-><init>(Lmobi/oneway/export/Ad/OWInterstitialAd;Landroid/app/Activity;Lmobi/oneway/export/AdListener/OWInterstitialAdListener;)V

    invoke-virtual {v0, v1}, Lmobi/oneway/export/e/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lmobi/oneway/export/Ad/OWInterstitialAd;)Lmobi/oneway/export/a/a;
    .registers 2

    iget-object v0, p0, Lmobi/oneway/export/Ad/OWInterstitialAd;->a:Lmobi/oneway/export/a/a;

    return-object v0
.end method


# virtual methods
.method public destory()V
    .registers 2

    iget-object v0, p0, Lmobi/oneway/export/Ad/OWInterstitialAd;->a:Lmobi/oneway/export/a/a;

    invoke-virtual {v0}, Lmobi/oneway/export/a/a;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/oneway/export/Ad/OWInterstitialAd;->a:Lmobi/oneway/export/a/a;

    return-void
.end method

.method public isReady()Z
    .registers 2

    iget-object v0, p0, Lmobi/oneway/export/Ad/OWInterstitialAd;->a:Lmobi/oneway/export/a/a;

    invoke-virtual {v0}, Lmobi/oneway/export/a/a;->b()Z

    move-result v0

    return v0
.end method

.method public loadAd()V
    .registers 3

    invoke-static {}, Lmobi/oneway/export/e/b;->a()Lmobi/oneway/export/e/b;

    move-result-object v0

    new-instance v1, Lmobi/oneway/export/Ad/OWInterstitialAd$2;

    invoke-direct {v1, p0}, Lmobi/oneway/export/Ad/OWInterstitialAd$2;-><init>(Lmobi/oneway/export/Ad/OWInterstitialAd;)V

    invoke-virtual {v0, v1}, Lmobi/oneway/export/e/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setListener(Lmobi/oneway/export/AdListener/OWInterstitialAdListener;)V
    .registers 4
    .param p1, "owInterstitialAdListener"    # Lmobi/oneway/export/AdListener/OWInterstitialAdListener;

    .prologue
    invoke-static {}, Lmobi/oneway/export/e/b;->a()Lmobi/oneway/export/e/b;

    move-result-object v0

    new-instance v1, Lmobi/oneway/export/Ad/OWInterstitialAd$3;

    invoke-direct {v1, p0, p1}, Lmobi/oneway/export/Ad/OWInterstitialAd$3;-><init>(Lmobi/oneway/export/Ad/OWInterstitialAd;Lmobi/oneway/export/AdListener/OWInterstitialAdListener;)V

    invoke-virtual {v0, v1}, Lmobi/oneway/export/e/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmobi/oneway/export/Ad/OWInterstitialAd;->show(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public show(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmobi/oneway/export/Ad/OWInterstitialAd;->a:Lmobi/oneway/export/a/a;

    invoke-virtual {v0, p1, p2}, Lmobi/oneway/export/a/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
