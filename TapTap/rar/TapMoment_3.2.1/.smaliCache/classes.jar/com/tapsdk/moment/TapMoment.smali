.class public Lcom/tapsdk/moment/TapMoment;
.super Ljava/lang/Object;
.source "TapMoment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapsdk/moment/TapMoment$Config;,
        Lcom/tapsdk/moment/TapMoment$TapMomentCallback;,
        Lcom/tapsdk/moment/TapMoment$Page;
    }
.end annotation


# static fields
.field public static final CALLBACK_CODE_ClOSE_CANCEL:I = 0xc350

.field public static final CALLBACK_CODE_ClOSE_CONFIRM:I = 0xc3b4

.field public static final CALLBACK_CODE_GET_NOTICE_FAIL:I = 0x4e84

.field public static final CALLBACK_CODE_GET_NOTICE_SUCCESS:I = 0x4e20

.field public static final CALLBACK_CODE_INIT_FAIL:I = 0x9ca4

.field public static final CALLBACK_CODE_INIT_SUCCESS:I = 0x9c40

.field public static final CALLBACK_CODE_LOGIN_SUCCESS:I = 0xea60

.field public static final CALLBACK_CODE_MOMENT_APPEAR:I = 0x7530

.field public static final CALLBACK_CODE_MOMENT_DISAPPEAR:I = 0x7594

.field public static final CALLBACK_CODE_ON_RESUME:I = 0x258

.field public static final CALLBACK_CODE_ON_STOP:I = 0x1f4

.field public static final CALLBACK_CODE_PUBLISH_CANCEL:I = 0x27d8

.field public static final CALLBACK_CODE_PUBLISH_FAIL:I = 0x2774

.field public static final CALLBACK_CODE_PUBLISH_SUCCESS:I = 0x2710

.field public static final CALLBACK_CODE_SCENE_EVENT:I = 0x11170

.field static MOMENT_TYPE_COMMON:I = 0x0

.field static MOMENT_TYPE_PUBLISH_CONTENT:I = 0x0

.field static MOMENT_TYPE_PUBLISH_VIDEO:I = 0x0

.field static MOMENT_TYPE_SCENE_ENTRY:I = 0x0

.field static MOMENT_TYPE_USER_DOMAIN:I = 0x0

.field public static ORIENTATION_DEFAULT:I = 0x0

.field public static ORIENTATION_LANDSCAPE:I = 0x0

.field public static ORIENTATION_PORTRAIT:I = 0x0

.field public static ORIENTATION_SENSOR:I = 0x0

.field public static final SDK_NAME:Ljava/lang/String; = "TdsMoment"

.field public static final SDK_VERSION:I = 0x9d2a61

.field public static final SDK_VERSION_NAME:Ljava/lang/String; = "1.3.0"

.field public static final TAG:Ljava/lang/String; = "TapTapMomentSdk"

.field public static final TAP_MOMENT_APPEAR_ACTION:Ljava/lang/String; = "appear.moment.taptap.action"

.field public static final TAP_MOMENT_CLOSE_CANCEL_ACTION:Ljava/lang/String; = "close_cancel.moment.taptap.action"

.field public static final TAP_MOMENT_CLOSE_CONFIRM_ACTION:Ljava/lang/String; = "close_confirm.moment.taptap.action"

.field public static final TAP_MOMENT_DISAPPEAR_ACTION:Ljava/lang/String; = "disappear.moment.taptap.action"

.field public static final TAP_MOMENT_LOGIN_SUCCESS_ACTION:Ljava/lang/String; = "login_success.moment.taptap.action"

.field public static final TAP_MOMENT_PUBLISH_CANCEL_ACTION:Ljava/lang/String; = "publish_cancel.moment.taptap.action"

.field public static final TAP_MOMENT_PUBLISH_FAIL_ACTION:Ljava/lang/String; = "publish_fail.moment.taptap.action"

.field public static final TAP_MOMENT_PUBLISH_SUCCESS_ACTION:Ljava/lang/String; = "publish_success.moment.taptap.action"

.field public static final TAP_MOMENT_SCENE_EVENT_ACTION:Ljava/lang/String; = "scene_event.moment.taptap.action"

.field private static activityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static clientId:Ljava/lang/String;

.field public static isCN:Z

.field private static model:Lcom/tapsdk/moment/TapTapMomentModel;

.field private static tapMomentListener:Lcom/tapsdk/moment/TapMoment$TapMomentCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    const/4 v0, -0x1

    sput v0, Lcom/tapsdk/moment/TapMoment;->ORIENTATION_DEFAULT:I

    .line 39
    const/4 v0, 0x0

    sput v0, Lcom/tapsdk/moment/TapMoment;->ORIENTATION_LANDSCAPE:I

    .line 40
    const/4 v0, 0x1

    sput v0, Lcom/tapsdk/moment/TapMoment;->ORIENTATION_PORTRAIT:I

    .line 41
    const/4 v0, 0x2

    sput v0, Lcom/tapsdk/moment/TapMoment;->ORIENTATION_SENSOR:I

    .line 43
    sget-object v0, Lcom/tapsdk/moment/MomentComponent;->COMMON:Lcom/tapsdk/moment/MomentComponent;

    iget v0, v0, Lcom/tapsdk/moment/MomentComponent;->type:I

    sput v0, Lcom/tapsdk/moment/TapMoment;->MOMENT_TYPE_COMMON:I

    .line 44
    sget-object v0, Lcom/tapsdk/moment/MomentComponent;->MOMENT:Lcom/tapsdk/moment/MomentComponent;

    iget v0, v0, Lcom/tapsdk/moment/MomentComponent;->type:I

    sput v0, Lcom/tapsdk/moment/TapMoment;->MOMENT_TYPE_PUBLISH_CONTENT:I

    .line 45
    sget-object v0, Lcom/tapsdk/moment/MomentComponent;->VIDEO:Lcom/tapsdk/moment/MomentComponent;

    iget v0, v0, Lcom/tapsdk/moment/MomentComponent;->type:I

    sput v0, Lcom/tapsdk/moment/TapMoment;->MOMENT_TYPE_PUBLISH_VIDEO:I

    .line 46
    sget-object v0, Lcom/tapsdk/moment/MomentComponent;->USER:Lcom/tapsdk/moment/MomentComponent;

    iget v0, v0, Lcom/tapsdk/moment/MomentComponent;->type:I

    sput v0, Lcom/tapsdk/moment/TapMoment;->MOMENT_TYPE_USER_DOMAIN:I

    .line 47
    sget-object v0, Lcom/tapsdk/moment/MomentComponent;->SCENE:Lcom/tapsdk/moment/MomentComponent;

    iget v0, v0, Lcom/tapsdk/moment/MomentComponent;->type:I

    sput v0, Lcom/tapsdk/moment/TapMoment;->MOMENT_TYPE_SCENE_ENTRY:I

    .line 82
    new-instance v0, Lcom/tapsdk/moment/TapTapMomentModel;

    invoke-direct {v0}, Lcom/tapsdk/moment/TapTapMomentModel;-><init>()V

    sput-object v0, Lcom/tapsdk/moment/TapMoment;->model:Lcom/tapsdk/moment/TapTapMomentModel;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/tapsdk/moment/TapMoment$TapMomentCallback;
    .registers 1

    .line 30
    sget-object v0, Lcom/tapsdk/moment/TapMoment;->tapMomentListener:Lcom/tapsdk/moment/TapMoment$TapMomentCallback;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 30
    sget-object v0, Lcom/tapsdk/moment/TapMoment;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tapsdk/moment/AccessToken;)V
    .registers 1
    .param p0, "x0"    # Lcom/tapsdk/moment/AccessToken;

    .line 30
    invoke-static {p0}, Lcom/tapsdk/moment/TapMoment;->sendNoticeRequest(Lcom/tapsdk/moment/AccessToken;)V

    return-void
.end method

.method static synthetic access$300()V
    .registers 0

    .line 30
    invoke-static {}, Lcom/tapsdk/moment/TapMoment;->closeMoment()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/ref/WeakReference;
    .registers 1

    .line 30
    sget-object v0, Lcom/tapsdk/moment/TapMoment;->activityWeakReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private static checkInit()V
    .registers 2

    .line 477
    sget-object v0, Lcom/tapsdk/moment/TapMoment;->activityWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_17

    sget-object v1, Lcom/tapsdk/moment/TapMoment;->clientId:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 480
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 483
    return-void

    .line 481
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid activity setting"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_17
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "please init first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static close()V
    .registers 0

    .line 205
    invoke-static {}, Lcom/tapsdk/moment/TapMoment;->closeMoment()V

    .line 206
    return-void
.end method

.method private static closeMoment()V
    .registers 1

    .line 432
    invoke-static {}, Lcom/tapsdk/moment/TapTapMomentPlatform;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 433
    invoke-static {}, Lcom/tapsdk/moment/view/BottomSheet;->dismissWhenShow()V

    .line 434
    invoke-static {}, Lcom/tapsdk/moment/TapTapMomentPlatform;->closeMomentDialog()V

    goto :goto_15

    .line 436
    :cond_d
    new-instance v0, Lcom/tapsdk/moment/TapMoment$5;

    invoke-direct {v0}, Lcom/tapsdk/moment/TapMoment$5;-><init>()V

    invoke-static {v0}, Lcom/tapsdk/moment/TapTapMomentPlatform;->setMomentShowCallback(Ljava/lang/Runnable;)V

    .line 444
    :goto_15
    return-void
.end method

.method private static closeMoment(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .line 447
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "dialog_title"

    invoke-static {v0}, Lcom/tapsdk/moment/Utils;->getTranslatedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_f

    :cond_e
    move-object v1, p0

    .line 448
    .end local p0    # "title":Ljava/lang/String;
    .local v1, "title":Ljava/lang/String;
    :goto_f
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1d

    const-string p0, "dialog_content"

    invoke-static {p0}, Lcom/tapsdk/moment/Utils;->getTranslatedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v2, p0

    goto :goto_1e

    :cond_1d
    move-object v2, p1

    .line 449
    .end local p1    # "content":Ljava/lang/String;
    .local v2, "content":Ljava/lang/String;
    :goto_1e
    const-string p0, "dialog_confirm"

    invoke-static {p0}, Lcom/tapsdk/moment/Utils;->getTranslatedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p0, "dialog_cancel"

    invoke-static {p0}, Lcom/tapsdk/moment/Utils;->getTranslatedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/tapsdk/moment/TapMoment$6;

    invoke-direct {v6}, Lcom/tapsdk/moment/TapMoment$6;-><init>()V

    invoke-static/range {v1 .. v6}, Lcom/tapsdk/moment/view/Alert;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/tapsdk/moment/view/Alert$ClickStub;)Lcom/tapsdk/moment/view/Alert;

    move-result-object p0

    .line 463
    .local p0, "alert":Lcom/tapsdk/moment/view/Alert;
    invoke-static {}, Lcom/tapsdk/moment/TapTapMomentPlatform;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 464
    sget-object p1, Lcom/tapsdk/moment/TapMoment;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    sget-object v0, Lcom/tapsdk/moment/view/Alert;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/tapsdk/moment/view/Alert;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_54

    .line 466
    :cond_4c
    new-instance p1, Lcom/tapsdk/moment/TapMoment$7;

    invoke-direct {p1, p0}, Lcom/tapsdk/moment/TapMoment$7;-><init>(Lcom/tapsdk/moment/view/Alert;)V

    invoke-static {p1}, Lcom/tapsdk/moment/TapTapMomentPlatform;->setMomentShowCallback(Ljava/lang/Runnable;)V

    .line 474
    :goto_54
    return-void
.end method

.method public static closeWithConfirmWindow(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .line 209
    invoke-static {p0, p1}, Lcom/tapsdk/moment/TapMoment;->closeMoment(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public static directlyOpen(ILjava/lang/String;Ljava/util/Map;)V
    .registers 5
    .param p0, "orientation"    # I
    .param p1, "page"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 111
    .local p2, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "tap://moment/scene/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 112
    const-string v0, "scene_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/tapsdk/moment/TapMoment;->openSceneEntry(ILjava/lang/String;)V

    goto :goto_27

    .line 113
    :cond_14
    const-string v0, "tap://moment/user/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 114
    const-string v0, "user_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/tapsdk/moment/TapMoment;->openUserCenter(ILjava/lang/String;)V

    .line 118
    :goto_27
    return-void

    .line 116
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unsupported page type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fetchNotification()V
    .registers 0

    .line 213
    invoke-static {}, Lcom/tapsdk/moment/TapMoment;->getNoticeData()V

    .line 214
    return-void
.end method

.method private static getNoticeData()V
    .registers 3

    .line 333
    sget-object v0, Lcom/tapsdk/moment/TapMoment;->model:Lcom/tapsdk/moment/TapTapMomentModel;

    new-instance v1, Lcom/tapsdk/moment/TapMoment$3;

    invoke-direct {v1}, Lcom/tapsdk/moment/TapMoment$3;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/tapsdk/moment/TapTapMomentModel;->getAccessToken(ZLcom/tapsdk/moment/TapTapMomentModel$GetTapTokenListener;)V

    .line 355
    return-void
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .registers 1

    .line 498
    const-string v0, "1.3.0"

    return-object v0
.end method

.method public static init(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "clientId"    # Ljava/lang/String;

    .line 93
    invoke-static {p0, p1}, Lcom/tapsdk/moment/TapMoment;->initSdk(Landroid/app/Activity;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public static init(Landroid/app/Activity;Ljava/lang/String;Z)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "isCN"    # Z

    .line 97
    invoke-static {p0, p1, p2}, Lcom/tapsdk/moment/TapMoment;->initSdk(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 98
    return-void
.end method

.method private static initSdk(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "clientId"    # Ljava/lang/String;

    .line 217
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/tapsdk/moment/TapMoment;->initSdk(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 218
    return-void
.end method

.method private static initSdk(Landroid/app/Activity;Ljava/lang/String;Z)V
    .registers 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "isCN"    # Z

    .line 221
    sput-boolean p2, Lcom/tapsdk/moment/TapMoment;->isCN:Z

    .line 222
    if-nez p0, :cond_11

    .line 223
    sget-object v0, Lcom/tapsdk/moment/TapMoment;->tapMomentListener:Lcom/tapsdk/moment/TapMoment$TapMomentCallback;

    if-eqz v0, :cond_10

    .line 224
    const v1, 0x9ca4

    const-string v2, "invalid activity"

    invoke-interface {v0, v1, v2}, Lcom/tapsdk/moment/TapMoment$TapMomentCallback;->onCallback(ILjava/lang/String;)V

    .line 226
    :cond_10
    return-void

    .line 228
    :cond_11
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/tapsdk/moment/TapMoment;->activityWeakReference:Ljava/lang/ref/WeakReference;

    .line 229
    invoke-static {}, Lcom/tapsdk/moment/TapMoment;->initSkynet()V

    .line 230
    invoke-static {p0}, Lcom/tapsdk/moment/TapTapMomentPlatform;->init(Landroid/app/Activity;)V

    .line 231
    sput-object p1, Lcom/tapsdk/moment/TapMoment;->clientId:Ljava/lang/String;

    .line 232
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/tapsdk/moment/TapMoment$1;

    invoke-direct {v1}, Lcom/tapsdk/moment/TapMoment$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 272
    invoke-static {}, Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager;->getInstance()Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager;

    move-result-object v0

    .line 273
    .local v0, "simpleLocalBroadcastManager":Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager;
    invoke-virtual {v0}, Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager;->unRegisterReceiver()V

    .line 274
    new-instance v1, Lcom/tapsdk/moment/TapMoment$2;

    invoke-direct {v1}, Lcom/tapsdk/moment/TapMoment$2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager;->registerReceiver(Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager$BroadcastReceiver;)V

    .line 309
    sget-object v1, Lcom/tapsdk/moment/TapMoment;->tapMomentListener:Lcom/tapsdk/moment/TapMoment$TapMomentCallback;

    if-eqz v1, :cond_47

    .line 310
    const v2, 0x9c40

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Lcom/tapsdk/moment/TapMoment$TapMomentCallback;->onCallback(ILjava/lang/String;)V

    .line 312
    :cond_47
    const-string v1, "TdsMoment"

    const-string v2, "TDSMomentLanguage.json"

    invoke-static {v1, p0, v2, p2}, Lcom/tds/common/localize/LocalizeManager;->configSDKLocalize(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)V

    .line 313
    return-void
.end method

.method private static initSkynet()V
    .registers 4

    .line 317
    invoke-static {}, Lcom/tds/common/net/TdsHttp;->newClientBuilder()Lcom/tds/common/net/TdsHttp$Client$Builder;

    move-result-object v0

    new-instance v1, Lcom/tds/common/net/intercerptor/AddXUAInterceptor;

    .line 318
    invoke-static {}, Lcom/tapsdk/moment/TapMoment;->makeCommonHeaders()Lcom/tds/common/net/XUAParams;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tds/common/net/intercerptor/AddXUAInterceptor;-><init>(Lcom/tds/common/net/XUAParams;)V

    invoke-virtual {v0, v1}, Lcom/tds/common/net/TdsHttp$Client$Builder;->addInterceptor(Lcom/tds/common/net/TdsHttp$Interceptor;)Lcom/tds/common/net/TdsHttp$Client$Builder;

    move-result-object v0

    .line 319
    invoke-virtual {v0}, Lcom/tds/common/net/TdsHttp$Client$Builder;->build()Lcom/tds/common/net/TdsHttp$Client;

    move-result-object v0

    .line 320
    .local v0, "client":Lcom/tds/common/net/TdsHttp$Client;
    new-instance v1, Lcom/tds/common/net/TdsApiClient$Builder;

    invoke-direct {v1}, Lcom/tds/common/net/TdsApiClient$Builder;-><init>()V

    .line 321
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/tds/common/net/TdsApiClient$Builder;->baseUrl(Ljava/lang/String;)Lcom/tds/common/net/TdsApiClient$Builder;

    move-result-object v1

    .line 322
    invoke-virtual {v1, v0}, Lcom/tds/common/net/TdsApiClient$Builder;->tdsClient(Lcom/tds/common/net/TdsHttp$Client;)Lcom/tds/common/net/TdsApiClient$Builder;

    move-result-object v1

    .line 323
    invoke-virtual {v1}, Lcom/tds/common/net/TdsApiClient$Builder;->build()Lcom/tds/common/net/TdsApiClient;

    move-result-object v1

    .line 324
    .local v1, "tdsApiClient":Lcom/tds/common/net/TdsApiClient;
    invoke-static {}, Lcom/tds/common/net/Skynet;->getInstance()Lcom/tds/common/net/Skynet;

    move-result-object v2

    const-string v3, "TdsMoment"

    invoke-virtual {v2, v3, v1}, Lcom/tds/common/net/Skynet;->registerTdsClient(Ljava/lang/String;Lcom/tds/common/net/TdsApiClient;)V

    .line 325
    return-void
.end method

.method private static makeCommonHeaders()Lcom/tds/common/net/XUAParams;
    .registers 3

    .line 328
    sget-object v0, Lcom/tds/common/utils/GUIDHelper;->INSTANCE:Lcom/tds/common/utils/GUIDHelper;

    sget-object v1, Lcom/tapsdk/moment/TapMoment;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tds/common/utils/GUIDHelper;->init(Landroid/content/Context;)V

    .line 329
    const-string v0, "TdsMoment"

    const v1, 0x9d2a61

    const-string v2, "1.3.0"

    invoke-static {v0, v1, v2}, Lcom/tds/common/net/XUAParams;->getCommonXUAParams(Ljava/lang/String;ILjava/lang/String;)Lcom/tds/common/net/XUAParams;

    move-result-object v0

    return-object v0
.end method

.method public static open(I)V
    .registers 2
    .param p0, "orientation"    # I

    .line 105
    new-instance v0, Lcom/tapsdk/moment/TapMoment$Config;

    invoke-direct {v0}, Lcom/tapsdk/moment/TapMoment$Config;-><init>()V

    .line 106
    .local v0, "config":Lcom/tapsdk/moment/TapMoment$Config;
    iput p0, v0, Lcom/tapsdk/moment/TapMoment$Config;->orientation:I

    .line 107
    invoke-static {v0}, Lcom/tapsdk/moment/TapMoment;->openTapMoment(Lcom/tapsdk/moment/TapMoment$Config;)V

    .line 108
    return-void
.end method

.method public static openSceneEntry(ILjava/lang/String;)V
    .registers 6
    .param p0, "orientation"    # I
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 121
    new-instance v0, Lcom/tapsdk/moment/TapMoment$Config;

    invoke-direct {v0}, Lcom/tapsdk/moment/TapMoment$Config;-><init>()V

    .line 122
    .local v0, "config":Lcom/tapsdk/moment/TapMoment$Config;
    iput p0, v0, Lcom/tapsdk/moment/TapMoment$Config;->orientation:I

    .line 123
    invoke-static {}, Lcom/tapsdk/moment/TapMoment;->checkInit()V

    .line 124
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 126
    .local v1, "data":Lorg/json/JSONObject;
    :try_start_f
    const-string v2, "id"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_14} :catch_15

    .line 129
    goto :goto_19

    .line 127
    :catch_15
    move-exception v2

    .line 128
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 130
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_19
    sget v2, Lcom/tapsdk/moment/TapMoment;->MOMENT_TYPE_SCENE_ENTRY:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/tapsdk/moment/TapMoment;->openTapMoment(Lcom/tapsdk/moment/TapMoment$Config;ILorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 131
    return-void
.end method

.method private static openTapMoment(Lcom/tapsdk/moment/TapMoment$Config;)V
    .registers 3
    .param p0, "config"    # Lcom/tapsdk/moment/TapMoment$Config;

    .line 376
    invoke-static {}, Lcom/tapsdk/moment/TapMoment;->checkInit()V

    .line 377
    sget v0, Lcom/tapsdk/moment/TapMoment;->MOMENT_TYPE_COMMON:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tapsdk/moment/TapMoment;->openTapMoment(Lcom/tapsdk/moment/TapMoment$Config;ILorg/json/JSONObject;)V

    .line 378
    return-void
.end method

.method private static openTapMoment(Lcom/tapsdk/moment/TapMoment$Config;ILorg/json/JSONObject;)V
    .registers 4
    .param p0, "config"    # Lcom/tapsdk/moment/TapMoment$Config;
    .param p1, "type"    # I
    .param p2, "mediaData"    # Lorg/json/JSONObject;

    .line 414
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/tapsdk/moment/TapMoment;->openTapMoment(Lcom/tapsdk/moment/TapMoment$Config;ILorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 415
    return-void
.end method

.method private static openTapMoment(Lcom/tapsdk/moment/TapMoment$Config;ILorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 7
    .param p0, "config"    # Lcom/tapsdk/moment/TapMoment$Config;
    .param p1, "type"    # I
    .param p2, "mediaData"    # Lorg/json/JSONObject;
    .param p3, "params"    # Lorg/json/JSONObject;

    .line 418
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 420
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "type"

    const-string v2, "moment"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    sget-object v1, Lcom/tapsdk/moment/TapMoment;->clientId:Ljava/lang/String;

    const-string v2, "client_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget v1, p0, Lcom/tapsdk/moment/TapMoment$Config;->orientation:I

    const-string v2, "orientation"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 423
    const-string v1, "show_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 424
    if-nez p2, :cond_24

    const-string v1, ""

    goto :goto_28

    :cond_24
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_28
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    if-eqz p3, :cond_38

    .line 426
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "params"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_38
    invoke-static {v0}, Lcom/tapsdk/moment/TapTapMomentPlatform;->showMomentDialog(Landroid/os/Bundle;)V

    .line 429
    return-void
.end method

.method public static openUserCenter(ILjava/lang/String;)V
    .registers 6
    .param p0, "orientation"    # I
    .param p1, "userId"    # Ljava/lang/String;

    .line 134
    invoke-static {}, Lcom/tapsdk/moment/TapMoment;->checkInit()V

    .line 135
    new-instance v0, Lcom/tapsdk/moment/TapMoment$Config;

    invoke-direct {v0}, Lcom/tapsdk/moment/TapMoment$Config;-><init>()V

    .line 136
    .local v0, "config":Lcom/tapsdk/moment/TapMoment$Config;
    iput p0, v0, Lcom/tapsdk/moment/TapMoment$Config;->orientation:I

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openUserMoment id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "moment"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 140
    .local v1, "data":Lorg/json/JSONObject;
    :try_start_27
    const-string v2, "id"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_2c} :catch_2d

    .line 143
    goto :goto_31

    .line 141
    :catch_2d
    move-exception v2

    .line 142
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 144
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_31
    sget v2, Lcom/tapsdk/moment/TapMoment;->MOMENT_TYPE_USER_DOMAIN:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/tapsdk/moment/TapMoment;->openTapMoment(Lcom/tapsdk/moment/TapMoment$Config;ILorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 145
    return-void
.end method

.method static openUserMomentById(Lcom/tapsdk/moment/TapMoment$Config;Ljava/lang/String;)V
    .registers 5
    .param p0, "config"    # Lcom/tapsdk/moment/TapMoment$Config;
    .param p1, "id"    # Ljava/lang/String;

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openUserMomentById id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "moment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-static {}, Lcom/tapsdk/moment/TapMoment;->checkInit()V

    .line 403
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 405
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_20
    const-string v1, "tap_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_25} :catch_26

    .line 408
    goto :goto_2a

    .line 406
    :catch_26
    move-exception v1

    .line 407
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 409
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_2a
    sget v1, Lcom/tapsdk/moment/TapMoment;->MOMENT_TYPE_USER_DOMAIN:I

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lcom/tapsdk/moment/TapMoment;->openTapMoment(Lcom/tapsdk/moment/TapMoment$Config;ILorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 410
    return-void
.end method

.method public static publish(I[Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "orientation"    # I
    .param p1, "imagePath"    # [Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .line 199
    new-instance v0, Lcom/tapsdk/moment/TapMoment$Config;

    invoke-direct {v0}, Lcom/tapsdk/moment/TapMoment$Config;-><init>()V

    .line 200
    .local v0, "config":Lcom/tapsdk/moment/TapMoment$Config;
    iput p0, v0, Lcom/tapsdk/moment/TapMoment$Config;->orientation:I

    .line 201
    invoke-static {v0, p1, p2}, Lcom/tapsdk/moment/TapMoment;->publishMoment(Lcom/tapsdk/moment/TapMoment$Config;[Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public static publishMoment(Lcom/tapsdk/moment/TapMoment$Config;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "config"    # Lcom/tapsdk/moment/TapMoment$Config;
    .param p1, "imagePath"    # [Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .line 381
    invoke-static {}, Lcom/tapsdk/moment/TapMoment;->checkInit()V

    .line 382
    sget-object v0, Lcom/tapsdk/moment/TapMoment;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/tapsdk/moment/view/FilePicker;->getFileValidPathArray([Ljava/lang/String;Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    .line 386
    .local v0, "validImagePath":Lorg/json/JSONArray;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 388
    .local v1, "data":Lorg/json/JSONObject;
    if-eqz v0, :cond_24

    :try_start_16
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_24

    .line 389
    const-string v2, "image_paths"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_24

    .line 394
    :catch_22
    move-exception v2

    goto :goto_32

    .line 391
    :cond_24
    :goto_24
    if-eqz p2, :cond_36

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_36

    .line 392
    const-string v2, "content"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_31} :catch_22

    goto :goto_36

    .line 395
    .local v2, "e":Lorg/json/JSONException;
    :goto_32
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_37

    .line 396
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_36
    :goto_36
    nop

    .line 397
    :goto_37
    sget v2, Lcom/tapsdk/moment/TapMoment;->MOMENT_TYPE_PUBLISH_CONTENT:I

    invoke-static {p0, v2, v1}, Lcom/tapsdk/moment/TapMoment;->openTapMoment(Lcom/tapsdk/moment/TapMoment$Config;ILorg/json/JSONObject;)V

    .line 398
    return-void
.end method

.method public static publishVideo(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "orientation"    # I
    .param p1, "videoPaths"    # [Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 148
    invoke-static {}, Lcom/tapsdk/moment/TapMoment;->checkInit()V

    .line 149
    new-instance v0, Lcom/tapsdk/moment/TapMoment$Config;

    invoke-direct {v0}, Lcom/tapsdk/moment/TapMoment$Config;-><init>()V

    .line 150
    .local v0, "config":Lcom/tapsdk/moment/TapMoment$Config;
    iput p0, v0, Lcom/tapsdk/moment/TapMoment$Config;->orientation:I

    .line 151
    sget-object v1, Lcom/tapsdk/moment/TapMoment;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/tapsdk/moment/view/FilePicker;->getFileValidPathArray([Ljava/lang/String;Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    .line 153
    .local v1, "validVideoPath":Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 155
    .local v2, "data":Lorg/json/JSONObject;
    if-eqz v1, :cond_2b

    :try_start_1d
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_2b

    .line 156
    const-string v3, "video_paths"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2b

    .line 165
    :catch_29
    move-exception v3

    goto :goto_46

    .line 158
    :cond_2b
    :goto_2b
    if-eqz p2, :cond_38

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_38

    .line 159
    const-string v3, "title"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    :cond_38
    if-eqz p3, :cond_4a

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4a

    .line 162
    const-string v3, "desc"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_45} :catch_29

    goto :goto_4a

    .line 166
    .local v3, "e":Lorg/json/JSONException;
    :goto_46
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4b

    .line 167
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_4a
    :goto_4a
    nop

    .line 168
    :goto_4b
    sget v3, Lcom/tapsdk/moment/TapMoment;->MOMENT_TYPE_PUBLISH_VIDEO:I

    invoke-static {v0, v3, v2}, Lcom/tapsdk/moment/TapMoment;->openTapMoment(Lcom/tapsdk/moment/TapMoment$Config;ILorg/json/JSONObject;)V

    .line 169
    return-void
.end method

.method public static publishVideo(I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p0, "orientation"    # I
    .param p1, "videoPaths"    # [Ljava/lang/String;
    .param p2, "imagePaths"    # [Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 172
    invoke-static {}, Lcom/tapsdk/moment/TapMoment;->checkInit()V

    .line 173
    new-instance v0, Lcom/tapsdk/moment/TapMoment$Config;

    invoke-direct {v0}, Lcom/tapsdk/moment/TapMoment$Config;-><init>()V

    .line 174
    .local v0, "config":Lcom/tapsdk/moment/TapMoment$Config;
    iput p0, v0, Lcom/tapsdk/moment/TapMoment$Config;->orientation:I

    .line 175
    sget-object v1, Lcom/tapsdk/moment/TapMoment;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/tapsdk/moment/view/FilePicker;->getFileValidPathArray([Ljava/lang/String;Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    .line 176
    .local v1, "validVideoPath":Lorg/json/JSONArray;
    sget-object v2, Lcom/tapsdk/moment/TapMoment;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {p2, v2}, Lcom/tapsdk/moment/view/FilePicker;->getFileValidPathArray([Ljava/lang/String;Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    .line 177
    .local v2, "validImagePath":Lorg/json/JSONArray;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 179
    .local v3, "data":Lorg/json/JSONObject;
    if-eqz v1, :cond_37

    :try_start_29
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_37

    .line 180
    const-string v4, "video_paths"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_37

    .line 192
    :catch_35
    move-exception v4

    goto :goto_5f

    .line 182
    :cond_37
    :goto_37
    if-eqz v2, :cond_44

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_44

    .line 183
    const-string v4, "image_paths"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    :cond_44
    if-eqz p3, :cond_51

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_51

    .line 186
    const-string v4, "title"

    invoke-virtual {v3, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    :cond_51
    if-eqz p4, :cond_63

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_63

    .line 189
    const-string v4, "desc"

    invoke-virtual {v3, v4, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5e
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_5e} :catch_35

    goto :goto_63

    .line 193
    .local v4, "e":Lorg/json/JSONException;
    :goto_5f
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_64

    .line 194
    .end local v4    # "e":Lorg/json/JSONException;
    :cond_63
    :goto_63
    nop

    .line 195
    :goto_64
    sget v4, Lcom/tapsdk/moment/TapMoment;->MOMENT_TYPE_PUBLISH_VIDEO:I

    invoke-static {v0, v4, v3}, Lcom/tapsdk/moment/TapMoment;->openTapMoment(Lcom/tapsdk/moment/TapMoment$Config;ILorg/json/JSONObject;)V

    .line 196
    return-void
.end method

.method private static sendNoticeRequest(Lcom/tapsdk/moment/AccessToken;)V
    .registers 3
    .param p0, "currentAccessToken"    # Lcom/tapsdk/moment/AccessToken;

    .line 358
    new-instance v0, Lcom/tapsdk/moment/TapMoment$4;

    invoke-direct {v0}, Lcom/tapsdk/moment/TapMoment$4;-><init>()V

    invoke-static {v0}, Lcom/tapsdk/moment/NoticeHandler;->getInstance(Lcom/tapsdk/moment/NoticeHandler$NoticeListener;)Lcom/tapsdk/moment/NoticeHandler;

    move-result-object v0

    sget-object v1, Lcom/tapsdk/moment/TapMoment;->clientId:Ljava/lang/String;

    .line 372
    invoke-virtual {v0, v1, p0}, Lcom/tapsdk/moment/NoticeHandler;->startObserverNotice(Ljava/lang/String;Lcom/tapsdk/moment/AccessToken;)V

    .line 373
    return-void
.end method

.method public static setCallback(Lcom/tapsdk/moment/TapMoment$TapMomentCallback;)V
    .registers 1
    .param p0, "callback"    # Lcom/tapsdk/moment/TapMoment$TapMomentCallback;

    .line 101
    sput-object p0, Lcom/tapsdk/moment/TapMoment;->tapMomentListener:Lcom/tapsdk/moment/TapMoment$TapMomentCallback;

    .line 102
    return-void
.end method
