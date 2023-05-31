.class public Lcom/mintegral/msdk/base/entity/InteractiveAdsCamPaignTag;
.super Ljava/lang/Object;
.source "InteractiveAdsCamPaignTag.java"

# interfaces
.implements Lcom/mintegral/msdk/system/NoProGuard;
.implements Ljava/io/Serializable;


# instance fields
.field private campaignCreateTime:J

.field private id:Ljava/lang/String;

.field private isClick:I

.field private resourceType:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJI)V
    .registers 7

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/InteractiveAdsCamPaignTag;->id:Ljava/lang/String;

    .line 25
    iput p2, p0, Lcom/mintegral/msdk/base/entity/InteractiveAdsCamPaignTag;->resourceType:I

    .line 26
    iput-wide p3, p0, Lcom/mintegral/msdk/base/entity/InteractiveAdsCamPaignTag;->campaignCreateTime:J

    .line 27
    iput p5, p0, Lcom/mintegral/msdk/base/entity/InteractiveAdsCamPaignTag;->isClick:I

    .line 28
    return-void
.end method


# virtual methods
.method public getCampaignCreateTime()J
    .registers 3

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/mintegral/msdk/base/entity/InteractiveAdsCamPaignTag;->campaignCreateTime:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/InteractiveAdsCamPaignTag;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsClick()I
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Lcom/mintegral/msdk/base/entity/InteractiveAdsCamPaignTag;->isClick:I

    return v0
.end method

.method public getResourceType()I
    .registers 2

    .prologue
    .line 39
    iget v0, p0, Lcom/mintegral/msdk/base/entity/InteractiveAdsCamPaignTag;->resourceType:I

    return v0
.end method

.method public setCampaignCreateTime(J)V
    .registers 4

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/mintegral/msdk/base/entity/InteractiveAdsCamPaignTag;->campaignCreateTime:J

    .line 52
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 35
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/InteractiveAdsCamPaignTag;->id:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setIsClick(I)V
    .registers 2

    .prologue
    .line 59
    iput p1, p0, Lcom/mintegral/msdk/base/entity/InteractiveAdsCamPaignTag;->isClick:I

    .line 60
    return-void
.end method

.method public setResourceType(I)V
    .registers 2

    .prologue
    .line 43
    iput p1, p0, Lcom/mintegral/msdk/base/entity/InteractiveAdsCamPaignTag;->resourceType:I

    .line 44
    return-void
.end method
