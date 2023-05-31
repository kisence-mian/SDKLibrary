.class public Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;
.super Ljava/lang/Object;
.source "TTAppDownloadInfo.java"


# instance fields
.field private a:J

.field private b:I

.field private c:J

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrBytes()J
    .registers 3

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;->d:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;->a:J

    return-wide v0
.end method

.method public getInternalStatusKey()I
    .registers 2

    .prologue
    .line 24
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;->b:I

    return v0
.end method

.method public getTotalBytes()J
    .registers 3

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;->c:J

    return-wide v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 60
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;->f:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setCurrBytes(J)V
    .registers 4

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;->d:J

    .line 45
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;->e:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setId(J)V
    .registers 4

    .prologue
    .line 20
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;->a:J

    .line 21
    return-void
.end method

.method public setInternalStatusKey(I)V
    .registers 2

    .prologue
    .line 28
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;->b:I

    .line 29
    return-void
.end method

.method public setTotalBytes(J)V
    .registers 4

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;->c:J

    .line 37
    return-void
.end method
