.class final Lcom/anythink/interstitial/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/interstitial/a/b;->a(Landroid/content/Context;JLcom/anythink/core/b/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/anythink/interstitial/a/b;


# direct methods
.method constructor <init>(Lcom/anythink/interstitial/a/b;JLandroid/content/Context;)V
    .registers 5

    .prologue
    .line 32
    iput-object p1, p0, Lcom/anythink/interstitial/a/b$1;->c:Lcom/anythink/interstitial/a/b;

    iput-wide p2, p0, Lcom/anythink/interstitial/a/b$1;->a:J

    iput-object p4, p0, Lcom/anythink/interstitial/a/b$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInterstitialAdDataLoaded(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V
    .registers 4

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/anythink/interstitial/a/b$1;->a:J

    invoke-static {v0, v1, p1}, Lcom/anythink/interstitial/a/b;->b(JLcom/anythink/core/b/a/b;)V

    .line 36
    return-void
.end method

.method public final onInterstitialAdLoadFail(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/core/api/AdError;)V
    .registers 7

    .prologue
    .line 45
    iget-object v0, p0, Lcom/anythink/interstitial/a/b$1;->c:Lcom/anythink/interstitial/a/b;

    iget-wide v2, p0, Lcom/anythink/interstitial/a/b$1;->a:J

    invoke-static {v0, v2, v3, p1, p2}, Lcom/anythink/interstitial/a/b;->a(Lcom/anythink/interstitial/a/b;JLcom/anythink/core/b/a/b;Lcom/anythink/core/api/AdError;)V

    .line 46
    return-void
.end method

.method public final onInterstitialAdLoaded(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V
    .registers 6

    .prologue
    .line 40
    iget-object v0, p0, Lcom/anythink/interstitial/a/b$1;->c:Lcom/anythink/interstitial/a/b;

    iget-object v1, p0, Lcom/anythink/interstitial/a/b$1;->b:Landroid/content/Context;

    iget-wide v2, p0, Lcom/anythink/interstitial/a/b$1;->a:J

    invoke-static {v0, v1, v2, v3, p1}, Lcom/anythink/interstitial/a/b;->a(Lcom/anythink/interstitial/a/b;Landroid/content/Context;JLcom/anythink/core/b/a/b;)V

    .line 41
    return-void
.end method
