.class public Lcom/mintegral/msdk/playercommon/a;
.super Ljava/lang/Object;
.source "DefaultVideoFeedsPlayerListener.java"

# interfaces
.implements Lcom/mintegral/msdk/playercommon/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnBufferingEnd()V
    .registers 3

    .prologue
    .line 40
    const-string v0, "DefaultVideoFeedsPlayerListener"

    const-string v1, "OnBufferingEnd"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public OnBufferingStart(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 35
    const-string v0, "DefaultVideoFeedsPlayerListener"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnBufferingStart:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public onPlayCompleted()V
    .registers 3

    .prologue
    .line 20
    const-string v0, "DefaultVideoFeedsPlayerListener"

    const-string v1, "onPlayCompleted"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public onPlayError(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 25
    const-string v0, "DefaultVideoFeedsPlayerListener"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPlayError:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public onPlayProgress(II)V
    .registers 6

    .prologue
    .line 30
    const-string v0, "DefaultVideoFeedsPlayerListener"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPlayProgress:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",allDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public onPlayProgressMS(II)V
    .registers 5

    .prologue
    .line 50
    const-string v0, "DefaultVideoFeedsPlayerListener"

    const-string v1, "onPlayProgressMS:"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public onPlaySetDataSourceError(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 45
    const-string v0, "DefaultVideoFeedsPlayerListener"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPlaySetDataSourceError:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public onPlayStarted(I)V
    .registers 5

    .prologue
    .line 15
    const-string v0, "DefaultVideoFeedsPlayerListener"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPlayStarted:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void
.end method
