.class public Lcom/anythink/core/api/ATAdStatusInfo;
.super Ljava/lang/Object;


# instance fields
.field private mATTopAdInfo:Lcom/anythink/core/api/ATAdInfo;

.field private mIsLoading:Z

.field private mIsReady:Z


# direct methods
.method public constructor <init>(ZZLcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p1, p0, Lcom/anythink/core/api/ATAdStatusInfo;->mIsLoading:Z

    .line 17
    iput-boolean p2, p0, Lcom/anythink/core/api/ATAdStatusInfo;->mIsReady:Z

    .line 18
    iput-object p3, p0, Lcom/anythink/core/api/ATAdStatusInfo;->mATTopAdInfo:Lcom/anythink/core/api/ATAdInfo;

    .line 19
    return-void
.end method


# virtual methods
.method public getATTopAdInfo()Lcom/anythink/core/api/ATAdInfo;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/anythink/core/api/ATAdStatusInfo;->mATTopAdInfo:Lcom/anythink/core/api/ATAdInfo;

    return-object v0
.end method

.method public isLoading()Z
    .registers 2

    .line 22
    iget-boolean v0, p0, Lcom/anythink/core/api/ATAdStatusInfo;->mIsLoading:Z

    return v0
.end method

.method public isReady()Z
    .registers 2

    .line 26
    iget-boolean v0, p0, Lcom/anythink/core/api/ATAdStatusInfo;->mIsReady:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ATAdStatusInfo{isLoading="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/anythink/core/api/ATAdStatusInfo;->mIsLoading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/anythink/core/api/ATAdStatusInfo;->mIsReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", topAdInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/anythink/core/api/ATAdStatusInfo;->mATTopAdInfo:Lcom/anythink/core/api/ATAdInfo;

    if-eqz v1, :cond_24

    goto :goto_26

    :cond_24
    const-string v1, "null"

    :goto_26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    return-object v0
.end method
