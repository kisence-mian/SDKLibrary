.class Lmobi/oneway/export/Ad/OWInterstitialImageAd$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/oneway/export/Ad/OWInterstitialImageAd;->setListener(Lmobi/oneway/export/AdListener/OWInterstitialImageAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmobi/oneway/export/AdListener/OWInterstitialImageAdListener;

.field final synthetic b:Lmobi/oneway/export/Ad/OWInterstitialImageAd;


# direct methods
.method constructor <init>(Lmobi/oneway/export/Ad/OWInterstitialImageAd;Lmobi/oneway/export/AdListener/OWInterstitialImageAdListener;)V
    .registers 3
    .param p1, "this$0"    # Lmobi/oneway/export/Ad/OWInterstitialImageAd;

    .prologue
    iput-object p1, p0, Lmobi/oneway/export/Ad/OWInterstitialImageAd$3;->b:Lmobi/oneway/export/Ad/OWInterstitialImageAd;

    iput-object p2, p0, Lmobi/oneway/export/Ad/OWInterstitialImageAd$3;->a:Lmobi/oneway/export/AdListener/OWInterstitialImageAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lmobi/oneway/export/Ad/OWInterstitialImageAd$3;->b:Lmobi/oneway/export/Ad/OWInterstitialImageAd;

    invoke-static {v0}, Lmobi/oneway/export/Ad/OWInterstitialImageAd;->a(Lmobi/oneway/export/Ad/OWInterstitialImageAd;)Lmobi/oneway/export/a/a;

    move-result-object v0

    iget-object v1, p0, Lmobi/oneway/export/Ad/OWInterstitialImageAd$3;->a:Lmobi/oneway/export/AdListener/OWInterstitialImageAdListener;

    invoke-virtual {v0, v1}, Lmobi/oneway/export/a/a;->a(Ljava/lang/Object;)V

    return-void
.end method
