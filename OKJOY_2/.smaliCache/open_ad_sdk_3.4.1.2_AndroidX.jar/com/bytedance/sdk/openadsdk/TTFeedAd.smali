.class public interface abstract Lcom/bytedance/sdk/openadsdk/TTFeedAd;
.super Ljava/lang/Object;
.source "TTFeedAd.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;,
        Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;
    }
.end annotation


# virtual methods
.method public abstract getAdViewHeight()I
.end method

.method public abstract getAdViewWidth()I
.end method

.method public abstract getCustomVideo()Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;
.end method

.method public abstract getVideoDuration()D
.end method

.method public abstract setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;)V
.end method
