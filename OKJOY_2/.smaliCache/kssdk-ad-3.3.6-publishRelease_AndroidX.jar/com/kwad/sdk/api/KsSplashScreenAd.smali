.class public interface abstract Lcom/kwad/sdk/api/KsSplashScreenAd;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;
    }
.end annotation


# virtual methods
.method public abstract getECPM()I
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation
.end method

.method public abstract getFragment(Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;)Landroidx/fragment/app/Fragment;
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation
.end method

.method public abstract getView(Landroid/content/Context;Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;)Landroid/view/View;
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation
.end method

.method public abstract isAdEnable()Z
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation
.end method

.method public abstract isVideo()Z
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation
.end method

.method public abstract setBidEcpm(I)V
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation
.end method
