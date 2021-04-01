.class public interface abstract Lmobi/oneway/export/feed/IFeedAd;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getIconImage()Ljava/lang/String;
.end method

.method public abstract getImages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getType()I
.end method

.method public abstract getVideoView()Landroid/view/View;
.end method

.method public abstract handleAdEvent(Landroid/view/ViewGroup;Lmobi/oneway/export/AdListener/feed/OWFeedAdEventListener;)V
.end method

.method public abstract setVideoAdListener(Lmobi/oneway/export/AdListener/feed/OWFeedVideoAdListener;)V
.end method
