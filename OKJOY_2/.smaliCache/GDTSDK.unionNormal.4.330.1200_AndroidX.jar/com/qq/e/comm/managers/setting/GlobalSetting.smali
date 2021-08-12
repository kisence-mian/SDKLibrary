.class public final Lcom/qq/e/comm/managers/setting/GlobalSetting;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/qq/e/comm/pi/CustomLandingPageListener;

.field private static volatile b:Ljava/lang/Integer;

.field private static volatile c:Z

.field private static volatile d:Z

.field private static volatile e:Ljava/lang/Boolean;

.field private static volatile f:Ljava/lang/String;

.field private static volatile g:Ljava/lang/String;

.field private static volatile h:Ljava/lang/String;

.field private static volatile i:Ljava/lang/String;

.field private static volatile j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->a:Lcom/qq/e/comm/pi/CustomLandingPageListener;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/qq/e/comm/managers/setting/GlobalSetting;->d:Z

    sput-object v0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->f:Ljava/lang/String;

    sput-object v0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->g:Ljava/lang/String;

    sput-object v0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->h:Ljava/lang/String;

    sput-object v0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->i:Ljava/lang/String;

    sput-object v0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChannel()Ljava/lang/Integer;
    .registers 1

    sget-object v0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public static getCustomADActivityClassName()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static getCustomLandingPageListener()Lcom/qq/e/comm/pi/CustomLandingPageListener;
    .registers 1

    sget-object v0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->a:Lcom/qq/e/comm/pi/CustomLandingPageListener;

    return-object v0
.end method

.method public static getCustomLandscapeActivityClassName()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static getCustomPortraitActivityClassName()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static getCustomRewardvideoLandscapeActivityClassName()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static getCustomRewardvideoPortraitActivityClassName()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static isAgreePrivacyStrategy()Ljava/lang/Boolean;
    .registers 1

    sget-object v0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static isAgreePrivacyStrategyNonNull()Z
    .registers 1

    sget-object v0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method public static isEnableMediationTool()Z
    .registers 1

    sget-boolean v0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->c:Z

    return v0
.end method

.method public static isEnableVideoDownloadingCache()Z
    .registers 1

    sget-boolean v0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->d:Z

    return v0
.end method

.method public static setAgreePrivacyStrategy(Z)V
    .registers 2

    sget-object v0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_a

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->e:Ljava/lang/Boolean;

    :cond_a
    return-void
.end method

.method public static setChannel(I)V
    .registers 2

    sget-object v0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->b:Ljava/lang/Integer;

    if-nez v0, :cond_a

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->b:Ljava/lang/Integer;

    :cond_a
    return-void
.end method

.method public static setCustomADActivityClassName(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->f:Ljava/lang/String;

    return-void
.end method

.method public static setCustomLandingPageListener(Lcom/qq/e/comm/pi/CustomLandingPageListener;)V
    .registers 1

    sput-object p0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->a:Lcom/qq/e/comm/pi/CustomLandingPageListener;

    return-void
.end method

.method public static setCustomLandscapeActivityClassName(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->i:Ljava/lang/String;

    return-void
.end method

.method public static setCustomPortraitActivityClassName(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->g:Ljava/lang/String;

    return-void
.end method

.method public static setCustomRewardvideoLandscapeActivityClassName(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->j:Ljava/lang/String;

    return-void
.end method

.method public static setCustomRewardvideoPortraitActivityClassName(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->h:Ljava/lang/String;

    return-void
.end method

.method public static setEnableMediationTool(Z)V
    .registers 1

    sput-boolean p0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->c:Z

    return-void
.end method

.method public static setEnableVideoDownloadingCache(Z)V
    .registers 1

    sput-boolean p0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->d:Z

    return-void
.end method
