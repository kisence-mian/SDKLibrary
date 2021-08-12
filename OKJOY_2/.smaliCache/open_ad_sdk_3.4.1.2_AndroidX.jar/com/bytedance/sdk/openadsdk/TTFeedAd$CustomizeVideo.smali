.class public interface abstract Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;
.super Ljava/lang/Object;
.source "TTFeedAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/TTFeedAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CustomizeVideo"
.end annotation


# virtual methods
.method public abstract getVideoUrl()Ljava/lang/String;
.end method

.method public abstract reportVideoAutoStart()V
.end method

.method public abstract reportVideoBreak(J)V
.end method

.method public abstract reportVideoContinue(J)V
.end method

.method public abstract reportVideoError(JII)V
.end method

.method public abstract reportVideoFinish()V
.end method

.method public abstract reportVideoPause(J)V
.end method

.method public abstract reportVideoStart()V
.end method

.method public abstract reportVideoStartError(II)V
.end method
