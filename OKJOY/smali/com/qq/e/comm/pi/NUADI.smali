.class public interface abstract Lcom/qq/e/comm/pi/NUADI;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/comm/pi/ADI;


# virtual methods
.method public abstract getAdNetWorkName()Ljava/lang/String;
.end method

.method public abstract loadData(I)V
.end method

.method public abstract loadData(ILcom/qq/e/comm/constants/LoadAdParams;)V
.end method

.method public abstract setCategories(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setMaxVideoDuration(I)V
.end method

.method public abstract setMinVideoDuration(I)V
.end method

.method public abstract setVastClassName(Ljava/lang/String;)V
.end method

.method public abstract setVideoADContainerRender(I)V
.end method

.method public abstract setVideoPlayPolicy(I)V
.end method
