.class Lmobi/oneway/export/Ad/OWInterstitialAd$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/oneway/export/Ad/OWInterstitialAd;->setListener(Lmobi/oneway/export/AdListener/OWInterstitialAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmobi/oneway/export/AdListener/OWInterstitialAdListener;

.field final synthetic b:Lmobi/oneway/export/Ad/OWInterstitialAd;


# direct methods
.method constructor <init>(Lmobi/oneway/export/Ad/OWInterstitialAd;Lmobi/oneway/export/AdListener/OWInterstitialAdListener;)V
    .registers 3
    .param p1, "this$0"    # Lmobi/oneway/export/Ad/OWInterstitialAd;

    .prologue
    iput-object p1, p0, Lmobi/oneway/export/Ad/OWInterstitialAd$3;->b:Lmobi/oneway/export/Ad/OWInterstitialAd;

    iput-object p2, p0, Lmobi/oneway/export/Ad/OWInterstitialAd$3;->a:Lmobi/oneway/export/AdListener/OWInterstitialAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lmobi/oneway/export/Ad/OWInterstitialAd$3;->b:Lmobi/oneway/export/Ad/OWInterstitialAd;

    invoke-static {v0}, Lmobi/oneway/export/Ad/OWInterstitialAd;->a(Lmobi/oneway/export/Ad/OWInterstitialAd;)Lmobi/oneway/export/a/a;

    move-result-object v0

    iget-object v1, p0, Lmobi/oneway/export/Ad/OWInterstitialAd$3;->a:Lmobi/oneway/export/AdListener/OWInterstitialAdListener;

    invoke-virtual {v0, v1}, Lmobi/oneway/export/a/a;->a(Ljava/lang/Object;)V

    return-void
.end method
