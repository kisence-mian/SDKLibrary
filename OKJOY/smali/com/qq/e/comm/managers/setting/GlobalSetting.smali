.class public final Lcom/qq/e/comm/managers/setting/GlobalSetting;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/qq/e/comm/pi/CustomLandingPageListener;

.field private static volatile b:Ljava/lang/Integer;

.field private static volatile c:Ljava/lang/Boolean;

.field private static volatile d:Ljava/lang/String;

.field private static volatile e:Ljava/lang/String;

.field private static volatile f:Ljava/lang/String;

.field private static volatile g:Ljava/lang/String;

.field private static volatile h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->a:Lcom/qq/e/comm/pi/CustomLandingPageListener;

    sput-object v0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->d:Ljava/lang/String;

    sput-object v0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->e:Ljava/lang/String;

    sput-object v0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->f:Ljava/lang/String;

    sput-object v0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->g:Ljava/lang/String;

    sput-object v0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->h:Ljava/lang/String;

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

    sget-object v0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static getCustomLandingPageListener()Lcom/qq/e/comm/pi/CustomLandingPageListener;
    .registers 1

    sget-object v0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->a:Lcom/qq/e/comm/pi/CustomLandingPageListener;

    return-object v0
.end method

.method public static getCustomLandscapeActivityClassName()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static getCustomPortraitActivityClassName()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static getCustomRewardvideoLandscapeActivityClassName()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static getCustomRewardvideoPortraitActivityClassName()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static isAgreePrivacyStrategy()Ljava/lang/Boolean;
    .registers 1

    sget-object v0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static setAgreePrivacyStrategy(Z)V
    .registers 2
    .param p0, "agree"    # Z

    .prologue
    sget-object v0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_a

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->c:Ljava/lang/Boolean;

    :cond_a
    return-void
.end method

.method public static setChannel(I)V
    .registers 2
    .param p0, "channel"    # I

    .prologue
    sget-object v0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->b:Ljava/lang/Integer;

    if-nez v0, :cond_a

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->b:Ljava/lang/Integer;

    :cond_a
    return-void
.end method

.method public static setCustomADActivityClassName(Ljava/lang/String;)V
    .registers 1
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    sput-object p0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->d:Ljava/lang/String;

    return-void
.end method

.method public static setCustomLandingPageListener(Lcom/qq/e/comm/pi/CustomLandingPageListener;)V
    .registers 1
    .param p0, "listener"    # Lcom/qq/e/comm/pi/CustomLandingPageListener;

    .prologue
    sput-object p0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->a:Lcom/qq/e/comm/pi/CustomLandingPageListener;

    return-void
.end method

.method public static setCustomLandscapeActivityClassName(Ljava/lang/String;)V
    .registers 1
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    sput-object p0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->g:Ljava/lang/String;

    return-void
.end method

.method public static setCustomPortraitActivityClassName(Ljava/lang/String;)V
    .registers 1
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    sput-object p0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->e:Ljava/lang/String;

    return-void
.end method

.method public static setCustomRewardvideoLandscapeActivityClassName(Ljava/lang/String;)V
    .registers 1
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    sput-object p0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->h:Ljava/lang/String;

    return-void
.end method

.method public static setCustomRewardvideoPortraitActivityClassName(Ljava/lang/String;)V
    .registers 1
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    sput-object p0, Lcom/qq/e/comm/managers/setting/GlobalSetting;->f:Ljava/lang/String;

    return-void
.end method
