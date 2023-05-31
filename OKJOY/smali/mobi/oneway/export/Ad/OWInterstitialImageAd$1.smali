.class Lmobi/oneway/export/Ad/OWInterstitialImageAd$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/oneway/export/Ad/OWInterstitialImageAd;-><init>(Landroid/app/Activity;Ljava/lang/String;Lmobi/oneway/export/AdListener/OWInterstitialImageAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lmobi/oneway/export/AdListener/OWInterstitialImageAdListener;

.field final synthetic c:Lmobi/oneway/export/Ad/OWInterstitialImageAd;


# direct methods
.method constructor <init>(Lmobi/oneway/export/Ad/OWInterstitialImageAd;Landroid/app/Activity;Lmobi/oneway/export/AdListener/OWInterstitialImageAdListener;)V
    .registers 4
    .param p1, "this$0"    # Lmobi/oneway/export/Ad/OWInterstitialImageAd;

    .prologue
    iput-object p1, p0, Lmobi/oneway/export/Ad/OWInterstitialImageAd$1;->c:Lmobi/oneway/export/Ad/OWInterstitialImageAd;

    iput-object p2, p0, Lmobi/oneway/export/Ad/OWInterstitialImageAd$1;->a:Landroid/app/Activity;

    iput-object p3, p0, Lmobi/oneway/export/Ad/OWInterstitialImageAd$1;->b:Lmobi/oneway/export/AdListener/OWInterstitialImageAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lmobi/oneway/export/Ad/OWInterstitialImageAd$1;->c:Lmobi/oneway/export/Ad/OWInterstitialImageAd;

    invoke-static {v0}, Lmobi/oneway/export/Ad/OWInterstitialImageAd;->a(Lmobi/oneway/export/Ad/OWInterstitialImageAd;)Lmobi/oneway/export/a/a;

    move-result-object v0

    iget-object v1, p0, Lmobi/oneway/export/Ad/OWInterstitialImageAd$1;->a:Landroid/app/Activity;

    iget-object v2, p0, Lmobi/oneway/export/Ad/OWInterstitialImageAd$1;->b:Lmobi/oneway/export/AdListener/OWInterstitialImageAdListener;

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/a/a;->a(Landroid/app/Activity;Ljava/lang/Object;)V

    return-void
.end method
