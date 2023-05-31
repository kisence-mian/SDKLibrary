.class public Lcom/tds/common/tracker/TdsTrackerConfig$Builder;
.super Ljava/lang/Object;
.source "TdsTrackerConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/tracker/TdsTrackerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private accessKeyId:Ljava/lang/String;

.field private accessKeySecret:Ljava/lang/String;

.field private androidId:Ljava/lang/String;

.field private appPackageName:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private cachePath:Ljava/lang/String;

.field private endPoint:Ljava/lang/String;

.field private groupSize:I

.field private logStore:Ljava/lang/String;

.field private mobileType:Ljava/lang/String;

.field private networkType:Ljava/lang/String;

.field private project:Ljava/lang/String;

.field private ramSize:Ljava/lang/String;

.field private romSize:Ljava/lang/String;

.field private sdkVersionCode:I

.field private sdkVersionName:Ljava/lang/String;

.field private trackerType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x5

    iput v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->groupSize:I

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->sdkVersionCode:I

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->sdkVersionName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/tds/common/tracker/TdsTrackerConfig$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    .line 117
    iget-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->project:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tds/common/tracker/TdsTrackerConfig$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    .line 117
    iget-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->endPoint:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tds/common/tracker/TdsTrackerConfig$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    .line 117
    iget-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/tds/common/tracker/TdsTrackerConfig$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    .line 117
    iget-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->cachePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tds/common/tracker/TdsTrackerConfig$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    .line 117
    iget-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->appPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/tds/common/tracker/TdsTrackerConfig$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    .line 117
    iget-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->ramSize:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/tds/common/tracker/TdsTrackerConfig$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    .line 117
    iget-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->romSize:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/tds/common/tracker/TdsTrackerConfig$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    .line 117
    iget-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/tds/common/tracker/TdsTrackerConfig$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    .line 117
    iget-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->mobileType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tds/common/tracker/TdsTrackerConfig$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    .line 117
    iget-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->logStore:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tds/common/tracker/TdsTrackerConfig$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    .line 117
    iget-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->accessKeyId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tds/common/tracker/TdsTrackerConfig$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    .line 117
    iget-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->accessKeySecret:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tds/common/tracker/TdsTrackerConfig$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    .line 117
    iget v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->groupSize:I

    return v0
.end method

.method static synthetic access$600(Lcom/tds/common/tracker/TdsTrackerConfig$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    .line 117
    iget v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->trackerType:I

    return v0
.end method

.method static synthetic access$700(Lcom/tds/common/tracker/TdsTrackerConfig$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    .line 117
    iget-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->sdkVersionName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tds/common/tracker/TdsTrackerConfig$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    .line 117
    iget v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->sdkVersionCode:I

    return v0
.end method

.method static synthetic access$900(Lcom/tds/common/tracker/TdsTrackerConfig$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    .line 117
    iget-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->androidId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lcom/tds/common/tracker/TdsTrackerConfig;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 182
    const-string v0, ""

    .line 183
    .local v0, "lackRequiredParameterName":Ljava/lang/String;
    if-eqz p1, :cond_d

    sget-object v1, Lcom/tds/common/utils/GUIDHelper;->INSTANCE:Lcom/tds/common/utils/GUIDHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tds/common/utils/GUIDHelper;->init(Landroid/content/Context;)V

    .line 185
    :cond_d
    iget-object v1, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->accessKeyId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v0, "accessKeyId"

    goto :goto_43

    .line 186
    :cond_18
    iget-object v1, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->accessKeySecret:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v0, "accessKeySecret"

    goto :goto_43

    .line 187
    :cond_23
    iget-object v1, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->project:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string v0, "project"

    goto :goto_43

    .line 188
    :cond_2e
    iget-object v1, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->endPoint:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_39

    const-string v0, "endPoint"

    goto :goto_43

    .line 189
    :cond_39
    iget-object v1, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->logStore:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_43

    const-string v0, "logStore"

    .line 190
    :cond_43
    :goto_43
    if-eqz p1, :cond_6b

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4c

    goto :goto_6b

    :cond_4c
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lack of parameter ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 191
    :cond_6b
    :goto_6b
    if-eqz p1, :cond_73

    invoke-static {p1}, Lcom/tds/common/utils/DeviceUtils;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->androidId:Ljava/lang/String;

    .line 192
    :cond_73
    if-eqz p1, :cond_7b

    invoke-static {p1}, Lcom/tds/common/utils/DeviceUtils;->getPackageVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->appVersion:Ljava/lang/String;

    .line 193
    :cond_7b
    if-eqz p1, :cond_a0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->trackerType:I

    invoke-static {v2}, Lcom/tds/common/tracker/constants/TrackerType;->getTrackerName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->cachePath:Ljava/lang/String;

    .line 194
    :cond_a0
    if-eqz p1, :cond_a8

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->appPackageName:Ljava/lang/String;

    .line 195
    :cond_a8
    if-eqz p1, :cond_b0

    invoke-static {p1}, Lcom/tds/common/utils/DeviceUtils;->getRemainingRamSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->ramSize:Ljava/lang/String;

    .line 196
    :cond_b0
    if-eqz p1, :cond_b8

    invoke-static {}, Lcom/tds/common/utils/DeviceUtils;->getRemainingRomSize()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->romSize:Ljava/lang/String;

    .line 197
    :cond_b8
    if-eqz p1, :cond_c0

    invoke-static {p1}, Lcom/tds/common/utils/NetworkUtil;->getConnectedType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->networkType:Ljava/lang/String;

    .line 198
    :cond_c0
    if-eqz p1, :cond_c8

    invoke-static {p1}, Lcom/tds/common/utils/NetworkUtil;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->mobileType:Ljava/lang/String;

    .line 199
    :cond_c8
    new-instance v1, Lcom/tds/common/tracker/TdsTrackerConfig;

    invoke-direct {v1, p0}, Lcom/tds/common/tracker/TdsTrackerConfig;-><init>(Lcom/tds/common/tracker/TdsTrackerConfig$Builder;)V

    return-object v1
.end method

.method public withAccessKeyId(Ljava/lang/String;)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;
    .registers 2
    .param p1, "accessKeyId"    # Ljava/lang/String;

    .line 142
    iput-object p1, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->accessKeyId:Ljava/lang/String;

    .line 143
    return-object p0
.end method

.method public withAccessKeySecret(Ljava/lang/String;)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;
    .registers 2
    .param p1, "accessKeySecret"    # Ljava/lang/String;

    .line 147
    iput-object p1, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->accessKeySecret:Ljava/lang/String;

    .line 148
    return-object p0
.end method

.method public withEndPoint(Ljava/lang/String;)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;
    .registers 2
    .param p1, "endPoint"    # Ljava/lang/String;

    .line 157
    iput-object p1, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->endPoint:Ljava/lang/String;

    .line 158
    return-object p0
.end method

.method public withGroupSize(I)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;
    .registers 2
    .param p1, "size"    # I

    .line 167
    iput p1, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->groupSize:I

    .line 168
    return-object p0
.end method

.method public withLogStore(Ljava/lang/String;)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;
    .registers 2
    .param p1, "logStore"    # Ljava/lang/String;

    .line 162
    iput-object p1, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->logStore:Ljava/lang/String;

    .line 163
    return-object p0
.end method

.method public withProjectName(Ljava/lang/String;)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;
    .registers 2
    .param p1, "project"    # Ljava/lang/String;

    .line 152
    iput-object p1, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->project:Ljava/lang/String;

    .line 153
    return-object p0
.end method

.method public withSdkVersion(I)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;
    .registers 2
    .param p1, "sdkVersionCode"    # I

    .line 172
    iput p1, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->sdkVersionCode:I

    .line 173
    return-object p0
.end method

.method public withSdkVersionName(Ljava/lang/String;)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;
    .registers 2
    .param p1, "sdkVersionName"    # Ljava/lang/String;

    .line 177
    iput-object p1, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->sdkVersionName:Ljava/lang/String;

    .line 178
    return-object p0
.end method

.method public withTrackerType(I)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;
    .registers 2
    .param p1, "trackerType"    # I

    .line 137
    iput p1, p0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->trackerType:I

    .line 138
    return-object p0
.end method
