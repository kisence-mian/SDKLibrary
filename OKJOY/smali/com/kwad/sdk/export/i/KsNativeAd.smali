.class public interface abstract Lcom/kwad/sdk/export/i/KsNativeAd;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/export/i/KsNativeAd$InteractionType;,
        Lcom/kwad/sdk/export/i/KsNativeAd$MaterialType;,
        Lcom/kwad/sdk/export/i/KsNativeAd$AdInteractionListener;
    }
.end annotation


# virtual methods
.method public abstract getActionDescription()Ljava/lang/String;
.end method

.method public abstract getAdDescription()Ljava/lang/String;
.end method

.method public abstract getAdSource()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getAppDownloadCountDes()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getAppIconUrl()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getAppName()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getAppScore()F
.end method

.method public abstract getECPM()I
.end method

.method public abstract getImageList()Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kwad/sdk/nativead/KsImage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInteractionType()I
.end method

.method public abstract getMaterialType()I
.end method

.method public abstract getSdkLogo()Landroid/graphics/Bitmap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getVideoCoverImage()Lcom/kwad/sdk/nativead/KsImage;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getVideoDuration()I
.end method

.method public abstract getVideoUrl()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getVideoView(Landroid/content/Context;Z)Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Lcom/kwad/sdk/export/i/KsNativeAd$AdInteractionListener;)V
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/kwad/sdk/export/i/KsNativeAd$AdInteractionListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setDownloadListener(Lcom/kwad/sdk/nativead/KsAppDownloadListener;)V
.end method
