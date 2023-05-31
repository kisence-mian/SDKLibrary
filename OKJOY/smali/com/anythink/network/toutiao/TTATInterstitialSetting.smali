.class public Lcom/anythink/network/toutiao/TTATInterstitialSetting;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/api/ATMediationSetting;


# instance fields
.field a:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterstitialWidth()I
    .registers 2

    .prologue
    .line 17
    iget v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialSetting;->a:I

    return v0
.end method

.method public getNetworkType()I
    .registers 2

    .prologue
    .line 22
    const/16 v0, 0xf

    return v0
.end method

.method public setInterstitialWidth(I)V
    .registers 2

    .prologue
    .line 13
    iput p1, p0, Lcom/anythink/network/toutiao/TTATInterstitialSetting;->a:I

    .line 14
    return-void
.end method
