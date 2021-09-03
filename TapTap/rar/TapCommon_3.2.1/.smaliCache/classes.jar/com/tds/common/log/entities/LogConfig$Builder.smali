.class public Lcom/tds/common/log/entities/LogConfig$Builder;
.super Ljava/lang/Object;
.source "LogConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/log/entities/LogConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private deviceId:Ljava/lang/String;

.field private enableUpload:Z

.field private gamePackage:Ljava/lang/String;

.field private gameVersionCode:I

.field private gameVersionName:Ljava/lang/String;

.field private groupSize:I

.field private lang:Ljava/lang/String;

.field private osVersion:Ljava/lang/String;

.field private platform:Ljava/lang/String;

.field private sdkName:Ljava/lang/String;

.field private sdkVersionCode:I

.field private sdkVersionName:Ljava/lang/String;

.field private source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->sdkName:Ljava/lang/String;

    .line 76
    const-string v1, "source"

    iput-object v1, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->source:Ljava/lang/String;

    .line 78
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->enableUpload:Z

    .line 80
    iput-object v0, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->platform:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->osVersion:Ljava/lang/String;

    .line 84
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->sdkVersionCode:I

    .line 86
    iput-object v0, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->sdkVersionName:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->lang:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->deviceId:Ljava/lang/String;

    .line 92
    const/4 v2, 0x5

    iput v2, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->groupSize:I

    .line 94
    iput-object v0, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->gamePackage:Ljava/lang/String;

    .line 96
    iput v1, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->gameVersionCode:I

    .line 98
    iput-object v0, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->gameVersionName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/tds/common/log/entities/LogConfig$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/log/entities/LogConfig$Builder;

    .line 73
    iget-object v0, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->sdkName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tds/common/log/entities/LogConfig$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/log/entities/LogConfig$Builder;

    .line 73
    iget-object v0, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->source:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tds/common/log/entities/LogConfig$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/log/entities/LogConfig$Builder;

    .line 73
    iget-object v0, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->gamePackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/tds/common/log/entities/LogConfig$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/log/entities/LogConfig$Builder;

    .line 73
    iget v0, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->gameVersionCode:I

    return v0
.end method

.method static synthetic access$1200(Lcom/tds/common/log/entities/LogConfig$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/log/entities/LogConfig$Builder;

    .line 73
    iget-object v0, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->gameVersionName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tds/common/log/entities/LogConfig$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/log/entities/LogConfig$Builder;

    .line 73
    iget-boolean v0, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->enableUpload:Z

    return v0
.end method

.method static synthetic access$300(Lcom/tds/common/log/entities/LogConfig$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/log/entities/LogConfig$Builder;

    .line 73
    iget-object v0, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->platform:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tds/common/log/entities/LogConfig$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/log/entities/LogConfig$Builder;

    .line 73
    iget-object v0, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tds/common/log/entities/LogConfig$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/log/entities/LogConfig$Builder;

    .line 73
    iget v0, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->sdkVersionCode:I

    return v0
.end method

.method static synthetic access$600(Lcom/tds/common/log/entities/LogConfig$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/log/entities/LogConfig$Builder;

    .line 73
    iget-object v0, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->sdkVersionName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tds/common/log/entities/LogConfig$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/log/entities/LogConfig$Builder;

    .line 73
    iget-object v0, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->lang:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tds/common/log/entities/LogConfig$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/log/entities/LogConfig$Builder;

    .line 73
    iget-object v0, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tds/common/log/entities/LogConfig$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/log/entities/LogConfig$Builder;

    .line 73
    iget v0, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->groupSize:I

    return v0
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lcom/tds/common/log/entities/LogConfig;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 131
    iget-object v0, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->sdkName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_70

    .line 133
    if-eqz p1, :cond_6a

    .line 134
    iget v0, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->sdkVersionCode:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_62

    .line 135
    iget-object v0, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->sdkVersionName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 136
    sget-object v0, Lcom/tds/common/utils/GUIDHelper;->INSTANCE:Lcom/tds/common/utils/GUIDHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tds/common/utils/GUIDHelper;->init(Landroid/content/Context;)V

    .line 137
    sget-object v0, Lcom/tds/common/utils/GUIDHelper;->INSTANCE:Lcom/tds/common/utils/GUIDHelper;

    invoke-virtual {v0}, Lcom/tds/common/utils/GUIDHelper;->getUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->deviceId:Ljava/lang/String;

    .line 138
    invoke-static {}, Lcom/tds/common/utils/DeviceUtils;->getOSVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->osVersion:Ljava/lang/String;

    .line 139
    invoke-static {}, Lcom/tds/common/utils/DeviceUtils;->getPlatform()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->platform:Ljava/lang/String;

    .line 140
    invoke-static {}, Lcom/tds/common/localize/LocalizeManager;->getPreferredLanguageString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->lang:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->gamePackage:Ljava/lang/String;

    .line 143
    :try_start_41
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->gamePackage:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 144
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->gameVersionName:Ljava/lang/String;

    .line 145
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v1, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->gameVersionCode:I
    :try_end_54
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_41 .. :try_end_54} :catch_55

    .line 148
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_6a

    .line 146
    :catch_55
    move-exception v0

    .line 147
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_6a

    .line 135
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "sdkVersionName not init"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_62
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "sdkVersionCode not init"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_6a
    :goto_6a
    new-instance v0, Lcom/tds/common/log/entities/LogConfig;

    invoke-direct {v0, p0}, Lcom/tds/common/log/entities/LogConfig;-><init>(Lcom/tds/common/log/entities/LogConfig$Builder;)V

    return-object v0

    .line 131
    :cond_70
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "topic not init"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withEnableUpload(Z)Lcom/tds/common/log/entities/LogConfig$Builder;
    .registers 2
    .param p1, "enableUpload"    # Z

    .line 111
    iput-boolean p1, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->enableUpload:Z

    .line 112
    return-object p0
.end method

.method public withGroupSize(I)Lcom/tds/common/log/entities/LogConfig$Builder;
    .registers 2
    .param p1, "groupSize"    # I

    .line 126
    iput p1, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->groupSize:I

    .line 127
    return-object p0
.end method

.method public withSdkVersionCode(I)Lcom/tds/common/log/entities/LogConfig$Builder;
    .registers 2
    .param p1, "versionCode"    # I

    .line 116
    iput p1, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->sdkVersionCode:I

    .line 117
    return-object p0
.end method

.method public withSdkVersionName(Ljava/lang/String;)Lcom/tds/common/log/entities/LogConfig$Builder;
    .registers 2
    .param p1, "versionName"    # Ljava/lang/String;

    .line 121
    iput-object p1, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->sdkVersionName:Ljava/lang/String;

    .line 122
    return-object p0
.end method

.method public withSource(Ljava/lang/String;)Lcom/tds/common/log/entities/LogConfig$Builder;
    .registers 2
    .param p1, "source"    # Ljava/lang/String;

    .line 106
    iput-object p1, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->source:Ljava/lang/String;

    .line 107
    return-object p0
.end method

.method public withTopic(Ljava/lang/String;)Lcom/tds/common/log/entities/LogConfig$Builder;
    .registers 2
    .param p1, "topic"    # Ljava/lang/String;

    .line 101
    iput-object p1, p0, Lcom/tds/common/log/entities/LogConfig$Builder;->sdkName:Ljava/lang/String;

    .line 102
    return-object p0
.end method
