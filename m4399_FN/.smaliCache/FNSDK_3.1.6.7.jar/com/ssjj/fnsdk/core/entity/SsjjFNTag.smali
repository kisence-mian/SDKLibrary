.class public Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;
.super Ljava/lang/Object;


# static fields
.field public static API_cwNearbyUser:Ljava/lang/String; = null

.field public static API_gfanIsLoginGuest:Ljava/lang/String; = null

.field public static API_gfanModifyUser:Ljava/lang/String; = null

.field public static API_momoFeedback:Ljava/lang/String; = null

.field public static API_momoGetFriendList:Ljava/lang/String; = null

.field public static API_momoGetShareWithUiItent:Ljava/lang/String; = null

.field public static API_momoGetUserInfo:Ljava/lang/String; = null

.field public static API_momoHideUserCenterLogo:Ljava/lang/String; = null

.field public static API_momoShareToFeed:Ljava/lang/String; = null

.field public static API_momoShareToFriend:Ljava/lang/String; = null

.field public static API_momoShowUserCenter:Ljava/lang/String; = null

.field public static API_momoShowUserCenterLogo:Ljava/lang/String; = null

.field public static API_qihooQueryAntiAddiction:Ljava/lang/String; = null

.field public static API_qihooRegRealName:Ljava/lang/String; = null

.field public static API_qihooShare:Ljava/lang/String; = null

.field public static API_ucShowVipPage:Ljava/lang/String; = null

.field public static API_wxLogin:Ljava/lang/String; = null

.field public static API_yybShare:Ljava/lang/String; = null

.field public static API_yybShareWithPhoto:Ljava/lang/String; = null

.field public static final CODE_CANCEL:I = 0x2

.field public static final CODE_FAILED:I = 0x1

.field public static final CODE_SUCCEED:I

.field public static CONTINUE:Ljava/lang/String;

.field public static EXIT:Ljava/lang/String;

.field public static FUNC_hideFloatBar:Ljava/lang/String;

.field public static FUNC_logout:Ljava/lang/String;

.field public static FUNC_showBBS:Ljava/lang/String;

.field public static FUNC_showFloatBar:Ljava/lang/String;

.field public static FUNC_showGameCenter:Ljava/lang/String;

.field public static FUNC_showPlatformExitDialog:Ljava/lang/String;

.field public static FUNC_showUserCenter:Ljava/lang/String;

.field public static FUNC_switchUser:Ljava/lang/String;

.field public static LOGIN_FAILED:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "showUserCenter"

    sput-object v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->FUNC_showUserCenter:Ljava/lang/String;

    const-string v0, "showGameCenter"

    sput-object v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->FUNC_showGameCenter:Ljava/lang/String;

    const-string v0, "showFloatBar"

    sput-object v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->FUNC_showFloatBar:Ljava/lang/String;

    const-string v0, "hideFloatBar"

    sput-object v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->FUNC_hideFloatBar:Ljava/lang/String;

    const-string v0, "logout"

    sput-object v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->FUNC_logout:Ljava/lang/String;

    const-string v0, "switchUser"

    sput-object v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->FUNC_switchUser:Ljava/lang/String;

    const-string v0, "showBBS"

    sput-object v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->FUNC_showBBS:Ljava/lang/String;

    const-string v0, "showPlatformExitDialog"

    sput-object v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->FUNC_showPlatformExitDialog:Ljava/lang/String;

    const-string v0, "ucShowVipPage"

    sput-object v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->API_ucShowVipPage:Ljava/lang/String;

    const-string v0, "qihooRegRealName"

    sput-object v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->API_qihooRegRealName:Ljava/lang/String;

    const-string v0, "qihooQueryAntiAddiction"

    sput-object v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->API_qihooQueryAntiAddiction:Ljava/lang/String;

    const-string v0, "qihooShare"

    sput-object v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->API_qihooShare:Ljava/lang/String;

    const-string v0, "momoFeedback"

    sput-object v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->API_momoFeedback:Ljava/lang/String;

    const-string v0, "momoGetUserInfo"

    sput-object v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->API_momoGetUserInfo:Ljava/lang/String;

    const-string v0, "momoGetShareWithUiItent"

    sput-object v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->API_momoGetShareWithUiItent:Ljava/lang/String;

    const-string v0, "momoGetFriendList"

    sput-object v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->API_momoGetFriendList:Ljava/lang/String;

    const-string v0, "momoShareToFeed"

    sput-object v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->API_momoShareToFeed:Ljava/lang/String;

    const-string v0, "momoShowUserCenterLogo"

    sput-object v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->API_momoShowUserCenterLogo:Ljava/lang/String;

    const-string v0, "momoHideUserCenterLogo"

    sput-object v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->API_momoHideUserCenterLogo:Ljava/lang/String;

    const-string v0, "momoShareToFriend"

    sput-object v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->API_momoShareToFriend:Ljava/lang/String;

    const-string v0, "API_momoShowUserCenter"

    sput-object v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->API_momoShowUserCenter:Ljava/lang/String;

    const-string v0, "gfanModifyUser"

    sput-object v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->API_gfanModifyUser:Ljava/lang/String;

    const-string v0, "gfanIsLoginGuest"

    sput-object v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->API_gfanIsLoginGuest:Ljava/lang/String;

    const-string v0, "wxLogin"

    sput-object v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->API_wxLogin:Ljava/lang/String;

    const-string v0, "yybShare"

    sput-object v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->API_yybShare:Ljava/lang/String;

    const-string v0, "yybShareWithPhoto"

    sput-object v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->API_yybShareWithPhoto:Ljava/lang/String;

    const-string v0, "cwNearbyUser"

    sput-object v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->API_cwNearbyUser:Ljava/lang/String;

    const-string v0, "exit"

    sput-object v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->EXIT:Ljava/lang/String;

    const-string v0, "continue"

    sput-object v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->CONTINUE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_LOGIN_FAIL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->LOGIN_FAILED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
