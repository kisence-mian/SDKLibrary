.class public Lcom/qq/e/comm/constants/CustomPkgConstants;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/qq/e/comm/DownloadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qq/e/comm/constants/CustomPkgConstants;->a:Ljava/lang/String;

    const-class v0, Lcom/qq/e/ads/ADActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qq/e/comm/constants/CustomPkgConstants;->b:Ljava/lang/String;

    const-class v0, Lcom/qq/e/ads/PortraitADActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qq/e/comm/constants/CustomPkgConstants;->c:Ljava/lang/String;

    const-class v0, Lcom/qq/e/ads/RewardvideoPortraitADActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qq/e/comm/constants/CustomPkgConstants;->d:Ljava/lang/String;

    const-class v0, Lcom/qq/e/ads/LandscapeADActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qq/e/comm/constants/CustomPkgConstants;->e:Ljava/lang/String;

    const-class v0, Lcom/qq/e/ads/RewardvideoLandscapeADActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qq/e/comm/constants/CustomPkgConstants;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getADActivityName()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/qq/e/comm/managers/setting/GlobalSetting;->getCustomADActivityClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    return-object v0

    :cond_b
    sget-object v0, Lcom/qq/e/comm/constants/CustomPkgConstants;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getAssetPluginDir()Ljava/lang/String;
    .registers 1

    const-string v0, "gdt_plugin"

    return-object v0
.end method

.method public static getAssetPluginName()Ljava/lang/String;
    .registers 1

    const-string v0, "gdtadv2.jar"

    return-object v0
.end method

.method public static getAssetPluginXorKey()Ljava/lang/String;
    .registers 1

    const-string v0, ""

    return-object v0
.end method

.method public static getDownLoadServiceName()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/qq/e/comm/constants/CustomPkgConstants;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getLandscapeADActivityName()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/qq/e/comm/managers/setting/GlobalSetting;->getCustomLandscapeActivityClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    return-object v0

    :cond_b
    sget-object v0, Lcom/qq/e/comm/constants/CustomPkgConstants;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static getPortraitADActivityName()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/qq/e/comm/managers/setting/GlobalSetting;->getCustomPortraitActivityClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    return-object v0

    :cond_b
    sget-object v0, Lcom/qq/e/comm/constants/CustomPkgConstants;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static getRewardvideoLandscapeADActivityName()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/qq/e/comm/managers/setting/GlobalSetting;->getCustomRewardvideoLandscapeActivityClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    return-object v0

    :cond_b
    sget-object v0, Lcom/qq/e/comm/constants/CustomPkgConstants;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static getRewardvideoPortraitADActivityName()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/qq/e/comm/managers/setting/GlobalSetting;->getCustomRewardvideoPortraitActivityClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    return-object v0

    :cond_b
    sget-object v0, Lcom/qq/e/comm/constants/CustomPkgConstants;->d:Ljava/lang/String;

    return-object v0
.end method
