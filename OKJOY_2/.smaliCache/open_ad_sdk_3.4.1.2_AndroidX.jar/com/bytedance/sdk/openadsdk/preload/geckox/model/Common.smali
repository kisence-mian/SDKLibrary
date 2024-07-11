.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;
.super Ljava/lang/Object;
.source "Common.java"


# instance fields
.field public ac:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "ac"
    .end annotation
.end field

.field public aid:J
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "aid"
    .end annotation
.end field

.field public appName:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "app_name"
    .end annotation
.end field

.field public appVersion:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "app_version"
    .end annotation
.end field

.field public deviceId:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "device_id"
    .end annotation
.end field

.field public deviceModel:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "device_model"
    .end annotation
.end field

.field public devicePlatform:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "device_platform"
    .end annotation
.end field

.field public os:I
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "os"
    .end annotation
.end field

.field public osVersion:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "os_version"
    .end annotation
.end field

.field public region:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "region"
    .end annotation
.end field

.field public sdkVersion:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "sdk_version"
    .end annotation
.end field

.field public uid:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "uid"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;->os:I

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;->osVersion:Ljava/lang/String;

    .line 28
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;->deviceModel:Ljava/lang/String;

    .line 30
    const-string v0, "android"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;->devicePlatform:Ljava/lang/String;

    .line 32
    const-string v0, "2.0.3-rc.9-pangle"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;->sdkVersion:Ljava/lang/String;

    .line 54
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;->aid:J

    .line 55
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;->appVersion:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;->deviceId:Ljava/lang/String;

    .line 57
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;->appName:Ljava/lang/String;

    .line 58
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;->ac:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;->os:I

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;->osVersion:Ljava/lang/String;

    .line 28
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;->deviceModel:Ljava/lang/String;

    .line 30
    const-string v0, "android"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;->devicePlatform:Ljava/lang/String;

    .line 32
    const-string v0, "2.0.3-rc.9-pangle"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;->sdkVersion:Ljava/lang/String;

    .line 72
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;->aid:J

    .line 73
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;->appVersion:Ljava/lang/String;

    .line 74
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;->deviceId:Ljava/lang/String;

    .line 75
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;->appName:Ljava/lang/String;

    .line 76
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;->ac:Ljava/lang/String;

    .line 77
    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;->uid:Ljava/lang/String;

    .line 78
    iput-object p8, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;->region:Ljava/lang/String;

    .line 79
    return-void
.end method
