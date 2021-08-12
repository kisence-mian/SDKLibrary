.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;
.super Ljava/lang/Object;
.source "UpdatePackage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Strategy;,
        Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$FileType;,
        Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;,
        Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;
    }
.end annotation


# instance fields
.field private accessKey:Ljava/lang/String;

.field private channel:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "channel"
    .end annotation
.end field

.field private channelIndex:I
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "channel_index"
    .end annotation
.end field

.field private content:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "content"
    .end annotation
.end field

.field private groupName:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "group_name"
    .end annotation
.end field

.field private localVersion:J

.field private packageType:I
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "package_type"
    .end annotation
.end field

.field private version:J
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "package_version"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;)V
    .registers 6

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->version:J

    .line 67
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->channel:Ljava/lang/String;

    .line 68
    new-instance p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->content:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;

    .line 69
    # setter for: Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;->fullPackage:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;
    invoke-static {p1, p4}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;->access$002(Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;)Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;

    .line 70
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->content:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;

    # setter for: Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;->patch:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;
    invoke-static {p1, p5}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;->access$102(Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;)Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;

    .line 71
    return-void
.end method


# virtual methods
.method public getAccessKey()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->accessKey:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelIndex()I
    .registers 2

    .line 82
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->channelIndex:I

    return v0
.end method

.method public getFullPackage()Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->content:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;

    # getter for: Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;->fullPackage:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;->access$000(Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;)Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;

    move-result-object v0

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalVersion()J
    .registers 3

    .line 90
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->localVersion:J

    return-wide v0
.end method

.method public getPackageType()I
    .registers 2

    .line 174
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->packageType:I

    return v0
.end method

.method public getPatch()Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->content:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;

    # getter for: Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;->patch:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;->access$100(Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;)Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;

    move-result-object v0

    return-object v0
.end method

.method public getStrategy()Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Strategy;
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->content:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;

    # getter for: Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;->strategy:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Strategy;
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;->access$200(Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;)Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Strategy;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()J
    .registers 3

    .line 98
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->version:J

    return-wide v0
.end method

.method public isFullUpdate()Z
    .registers 2

    .line 155
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getFullPackage()Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getFullPackage()Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;->getUrlList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public isPatchUpdate()Z
    .registers 2

    .line 164
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getPatch()Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getPatch()Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;->getUrlList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public setAccessKey(Ljava/lang/String;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->accessKey:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->channel:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setChannelIndex(I)V
    .registers 2

    .line 86
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->channelIndex:I

    .line 87
    return-void
.end method

.method public setFullPackage(Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;)V
    .registers 3

    .line 118
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->content:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;

    # setter for: Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;->fullPackage:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;->access$002(Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;)Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;

    .line 119
    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->groupName:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setLocalVersion(J)V
    .registers 3

    .line 94
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->localVersion:J

    .line 95
    return-void
.end method

.method public setPatch(Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;)V
    .registers 3

    .line 126
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->content:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;

    # setter for: Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;->patch:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;->access$102(Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;)Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;

    .line 127
    return-void
.end method

.method public setStrategy(Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Strategy;)V
    .registers 3

    .line 134
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->content:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;

    # setter for: Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;->strategy:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Strategy;
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;->access$202(Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Strategy;)Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Strategy;

    .line 135
    return-void
.end method

.method public setVersion(J)V
    .registers 3

    .line 102
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->version:J

    .line 103
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdatePackage{version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->version:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channel=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->content:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->packageType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
