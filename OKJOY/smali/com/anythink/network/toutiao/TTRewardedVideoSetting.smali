.class public Lcom/anythink/network/toutiao/TTRewardedVideoSetting;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/api/ATMediationSetting;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/network/toutiao/TTRewardedVideoSetting;->a:Z

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/network/toutiao/TTRewardedVideoSetting;->e:Z

    return-void
.end method


# virtual methods
.method public getNetworkType()I
    .registers 2

    .prologue
    .line 61
    const/16 v0, 0xf

    return v0
.end method

.method public getRewardCount()I
    .registers 2

    .prologue
    .line 43
    iget v0, p0, Lcom/anythink/network/toutiao/TTRewardedVideoSetting;->c:I

    return v0
.end method

.method public getRewardName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTRewardedVideoSetting;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSoupportDeepLink()Z
    .registers 2

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/anythink/network/toutiao/TTRewardedVideoSetting;->a:Z

    return v0
.end method

.method public getVideoOrientation()I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lcom/anythink/network/toutiao/TTRewardedVideoSetting;->d:I

    return v0
.end method

.method public isRequirePermission()Z
    .registers 2

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/anythink/network/toutiao/TTRewardedVideoSetting;->e:Z

    return v0
.end method

.method public setRequirePermission(Z)V
    .registers 2

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/anythink/network/toutiao/TTRewardedVideoSetting;->e:Z

    .line 56
    return-void
.end method

.method public setRewardAmount(I)V
    .registers 2

    .prologue
    .line 27
    iput p1, p0, Lcom/anythink/network/toutiao/TTRewardedVideoSetting;->c:I

    .line 28
    return-void
.end method

.method public setRewardName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTRewardedVideoSetting;->b:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setSupportDeepLink(Z)V
    .registers 2

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/anythink/network/toutiao/TTRewardedVideoSetting;->a:Z

    .line 20
    return-void
.end method

.method public setVideoOrientation(I)V
    .registers 2

    .prologue
    .line 31
    iput p1, p0, Lcom/anythink/network/toutiao/TTRewardedVideoSetting;->d:I

    .line 32
    return-void
.end method
