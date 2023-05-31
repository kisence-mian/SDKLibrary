.class public Lcom/mintegral/msdk/mtgbid/out/BannerBidRequestParams;
.super Lcom/mintegral/msdk/mtgbid/out/CommonBidRequestParams;
.source "BannerBidRequestParams.java"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/mtgbid/out/CommonBidRequestParams;-><init>(Ljava/lang/String;)V

    .line 9
    iput p3, p0, Lcom/mintegral/msdk/mtgbid/out/BannerBidRequestParams;->a:I

    .line 10
    iput p2, p0, Lcom/mintegral/msdk/mtgbid/out/BannerBidRequestParams;->b:I

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/mintegral/msdk/mtgbid/out/CommonBidRequestParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iput p4, p0, Lcom/mintegral/msdk/mtgbid/out/BannerBidRequestParams;->a:I

    .line 16
    iput p3, p0, Lcom/mintegral/msdk/mtgbid/out/BannerBidRequestParams;->b:I

    .line 17
    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    .prologue
    .line 23
    iget v0, p0, Lcom/mintegral/msdk/mtgbid/out/BannerBidRequestParams;->a:I

    return v0
.end method

.method public getWeigh()I
    .registers 2

    .prologue
    .line 31
    iget v0, p0, Lcom/mintegral/msdk/mtgbid/out/BannerBidRequestParams;->b:I

    return v0
.end method

.method public setHeight(I)V
    .registers 2

    .prologue
    .line 27
    iput p1, p0, Lcom/mintegral/msdk/mtgbid/out/BannerBidRequestParams;->a:I

    .line 28
    return-void
.end method

.method public setWeigh(I)V
    .registers 2

    .prologue
    .line 35
    iput p1, p0, Lcom/mintegral/msdk/mtgbid/out/BannerBidRequestParams;->b:I

    .line 36
    return-void
.end method
