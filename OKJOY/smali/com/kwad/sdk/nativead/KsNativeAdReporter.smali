.class public Lcom/kwad/sdk/nativead/KsNativeAdReporter;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "KsNativeAdReporter"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reportAdVideoPlayEnd(Lcom/kwad/sdk/export/i/KsNativeAd;)V
    .registers 2

    instance-of v0, p0, Lcom/kwad/sdk/nativead/a;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    check-cast p0, Lcom/kwad/sdk/nativead/a;

    invoke-virtual {p0}, Lcom/kwad/sdk/nativead/a;->a()Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/f/b;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    goto :goto_4
.end method

.method public static reportAdVideoPlayStart(Lcom/kwad/sdk/export/i/KsNativeAd;)V
    .registers 2

    instance-of v0, p0, Lcom/kwad/sdk/nativead/a;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    check-cast p0, Lcom/kwad/sdk/nativead/a;

    invoke-virtual {p0}, Lcom/kwad/sdk/nativead/a;->a()Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/f/b;->h(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    goto :goto_4
.end method
