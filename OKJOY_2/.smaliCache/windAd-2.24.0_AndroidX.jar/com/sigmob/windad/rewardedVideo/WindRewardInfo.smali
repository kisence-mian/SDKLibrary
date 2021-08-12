.class public Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;->a:I

    iput-object p2, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;->c:Z

    return-void
.end method


# virtual methods
.method public getAdFormat()I
    .registers 2

    iget v0, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;->a:I

    return v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isComplete()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;->c:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindRewardInfo{adtype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", placementId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isComplete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
