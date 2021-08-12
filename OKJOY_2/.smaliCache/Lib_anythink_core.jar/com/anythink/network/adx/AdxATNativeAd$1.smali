.class final Lcom/anythink/network/adx/AdxATNativeAd$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/adx/AdxATNativeAd;-><init>(Landroid/content/Context;Lcom/anythink/basead/e/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/adx/AdxATNativeAd;


# direct methods
.method constructor <init>(Lcom/anythink/network/adx/AdxATNativeAd;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->a:Lcom/anythink/network/adx/AdxATNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick()V
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->a:Lcom/anythink/network/adx/AdxATNativeAd;

    invoke-virtual {v0}, Lcom/anythink/network/adx/AdxATNativeAd;->notifyAdClicked()V

    .line 44
    return-void
.end method

.method public final onAdClosed()V
    .registers 1

    .line 39
    return-void
.end method

.method public final onAdShow()V
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->a:Lcom/anythink/network/adx/AdxATNativeAd;

    invoke-virtual {v0}, Lcom/anythink/network/adx/AdxATNativeAd;->notifyAdImpression()V

    .line 34
    return-void
.end method

.method public final onDeeplinkCallback(Z)V
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->a:Lcom/anythink/network/adx/AdxATNativeAd;

    invoke-virtual {v0, p1}, Lcom/anythink/network/adx/AdxATNativeAd;->notifyDeeplinkCallback(Z)V

    .line 49
    return-void
.end method
