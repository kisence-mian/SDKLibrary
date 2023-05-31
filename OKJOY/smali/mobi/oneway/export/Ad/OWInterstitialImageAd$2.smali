.class Lmobi/oneway/export/Ad/OWInterstitialImageAd$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/oneway/export/Ad/OWInterstitialImageAd;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmobi/oneway/export/Ad/OWInterstitialImageAd;


# direct methods
.method constructor <init>(Lmobi/oneway/export/Ad/OWInterstitialImageAd;)V
    .registers 2
    .param p1, "this$0"    # Lmobi/oneway/export/Ad/OWInterstitialImageAd;

    .prologue
    iput-object p1, p0, Lmobi/oneway/export/Ad/OWInterstitialImageAd$2;->a:Lmobi/oneway/export/Ad/OWInterstitialImageAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lmobi/oneway/export/Ad/OWInterstitialImageAd$2;->a:Lmobi/oneway/export/Ad/OWInterstitialImageAd;

    invoke-static {v0}, Lmobi/oneway/export/Ad/OWInterstitialImageAd;->a(Lmobi/oneway/export/Ad/OWInterstitialImageAd;)Lmobi/oneway/export/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/oneway/export/a/a;->a()V

    return-void
.end method
