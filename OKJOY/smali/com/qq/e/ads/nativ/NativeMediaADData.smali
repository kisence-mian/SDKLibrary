.class public interface abstract Lcom/qq/e/ads/nativ/NativeMediaADData;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/ads/contentad/ContentAdData;


# virtual methods
.method public abstract bindView(Lcom/qq/e/ads/nativ/MediaView;Z)V
.end method

.method public abstract destroy()V
.end method

.method public abstract equalsAdData(Lcom/qq/e/ads/nativ/NativeMediaADData;)Z
.end method

.method public abstract getAPPPrice()D
.end method

.method public abstract getAPPScore()I
.end method

.method public abstract getAPPStatus()I
.end method

.method public abstract getAdPatternType()I
.end method

.method public abstract getCurrentPosition()I
.end method

.method public abstract getDesc()Ljava/lang/String;
.end method

.method public abstract getDownloadCount()J
.end method

.method public abstract getDuration()I
.end method

.method public abstract getECPM()I
.end method

.method public abstract getECPMLevel()Ljava/lang/String;
.end method

.method public abstract getIconUrl()Ljava/lang/String;
.end method

.method public abstract getImgList()Ljava/util/List;
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

.method public abstract getImgUrl()Ljava/lang/String;
.end method

.method public abstract getProgress()I
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract isAPP()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract isVideoAD()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isVideoLoaded()Z
.end method

.method public abstract onClicked(Landroid/view/View;)V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onExposured(Landroid/view/View;)V
.end method

.method public abstract onScroll(ILandroid/view/View;)V
.end method

.method public abstract play()V
.end method

.method public abstract preLoadVideo()V
.end method

.method public abstract resume()V
.end method

.method public abstract setMediaListener(Lcom/qq/e/ads/nativ/MediaListener;)V
.end method

.method public abstract setVolumeOn(Z)V
.end method

.method public abstract stop()V
.end method
