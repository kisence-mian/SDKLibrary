.class public Lcom/mintegral/msdk/out/OfferWallRewardInfo;
.super Ljava/lang/Object;
.source "OfferWallRewardInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/mintegral/msdk/out/OfferWallRewardInfo;->a:Ljava/lang/String;

    .line 11
    iput p2, p0, Lcom/mintegral/msdk/out/OfferWallRewardInfo;->b:I

    .line 12
    return-void
.end method


# virtual methods
.method public getRewardAmount()I
    .registers 2

    .prologue
    .line 23
    iget v0, p0, Lcom/mintegral/msdk/out/OfferWallRewardInfo;->b:I

    return v0
.end method

.method public getRewardName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/mintegral/msdk/out/OfferWallRewardInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setRewardAmount(I)V
    .registers 2

    .prologue
    .line 27
    iput p1, p0, Lcom/mintegral/msdk/out/OfferWallRewardInfo;->b:I

    .line 28
    return-void
.end method

.method public setRewardName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 19
    iput-object p1, p0, Lcom/mintegral/msdk/out/OfferWallRewardInfo;->a:Ljava/lang/String;

    .line 20
    return-void
.end method
