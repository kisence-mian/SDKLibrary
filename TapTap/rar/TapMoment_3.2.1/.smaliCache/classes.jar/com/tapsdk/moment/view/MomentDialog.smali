.class public Lcom/tapsdk/moment/view/MomentDialog;
.super Landroid/app/DialogFragment;
.source "MomentDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapsdk/moment/view/MomentDialog$NetworkReceiver;,
        Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;,
        Lcom/tapsdk/moment/view/MomentDialog$DeviceInfoReceiver;
    }
.end annotation


# static fields
.field private static final CLEAR_CACHE:I = 0x20

.field public static final FILE_CHOOSER_RESULT_CODE:I = 0x2710

.field private static final HIDE_CLOSE:I = 0x10

.field private static final HIDE_LOADING:I = 0x14

.field private static final ON_LONG_CLICK_SAVE_IMAGE:I = 0x1

.field private static final OPEN_WEB_VIEW_FRAGMENT_REQUEST_CODE:I = 0x2711

.field private static final SHOW_CLOSE:I = 0x11

.field private static final SHOW_LOADING:I = 0x15


# instance fields
.field private afterResultRunnable:Ljava/lang/Runnable;

.field private baseUrl:Ljava/lang/String;

.field private callback:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

.field private clientId:Ljava/lang/String;

.field private close:Landroid/widget/ImageButton;

.field private filePicker:Lcom/tapsdk/moment/view/FilePicker;

.field private handler:Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;

.field private isNotch:Z

.field private isRequestFile:Z

.field private loading:Lcom/tapsdk/moment/view/TTMGifView;

.field private locale:Ljava/util/Locale;

.field private mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

.field private model:Lcom/tapsdk/moment/TapTapMomentModel;

.field private networkErrorDialog:Lcom/tapsdk/moment/view/NetworkErrorDialog;

.field private networkReceiver:Lcom/tapsdk/moment/view/MomentDialog$NetworkReceiver;

.field private originOrientataion:I

.field private root:Landroid/widget/FrameLayout;

.field private uploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private uploadMessageAboveL:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field urlExtra:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 82
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->clientId:Ljava/lang/String;

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->originOrientataion:I

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->isNotch:Z

    .line 123
    iput-boolean v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->isRequestFile:Z

    return-void
.end method

.method static synthetic access$000(Lcom/tapsdk/moment/view/MomentDialog;)Z
    .registers 2
    .param p0, "x0"    # Lcom/tapsdk/moment/view/MomentDialog;

    .line 82
    iget-boolean v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->isNotch:Z

    return v0
.end method

.method static synthetic access$002(Lcom/tapsdk/moment/view/MomentDialog;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/tapsdk/moment/view/MomentDialog;
    .param p1, "x1"    # Z

    .line 82
    iput-boolean p1, p0, Lcom/tapsdk/moment/view/MomentDialog;->isNotch:Z

    return p1
.end method

.method static synthetic access$100(Lcom/tapsdk/moment/view/MomentDialog;)I
    .registers 2
    .param p0, "x0"    # Lcom/tapsdk/moment/view/MomentDialog;

    .line 82
    invoke-direct {p0}, Lcom/tapsdk/moment/view/MomentDialog;->getOrientation()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/TapTapMomentModel;
    .registers 2
    .param p0, "x0"    # Lcom/tapsdk/moment/view/MomentDialog;

    .line 82
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->model:Lcom/tapsdk/moment/TapTapMomentModel;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/tapsdk/moment/view/MomentDialog;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/tapsdk/moment/view/MomentDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .line 82
    invoke-direct {p0, p1}, Lcom/tapsdk/moment/view/MomentDialog;->errResponse2Json(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/FilePicker;
    .registers 2
    .param p0, "x0"    # Lcom/tapsdk/moment/view/MomentDialog;

    .line 82
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->filePicker:Lcom/tapsdk/moment/view/FilePicker;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/tapsdk/moment/view/MomentDialog;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/tapsdk/moment/view/MomentDialog;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/tapsdk/moment/view/MomentDialog;->customErrResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/tapsdk/moment/view/MomentDialog;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)Z
    .registers 3
    .param p0, "x0"    # Lcom/tapsdk/moment/view/MomentDialog;
    .param p1, "x1"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    .line 82
    invoke-direct {p0, p1}, Lcom/tapsdk/moment/view/MomentDialog;->checkHandlerNotNull(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/tapsdk/moment/view/MomentDialog;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)Z
    .registers 3
    .param p0, "x0"    # Lcom/tapsdk/moment/view/MomentDialog;
    .param p1, "x1"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    .line 82
    invoke-direct {p0, p1}, Lcom/tapsdk/moment/view/MomentDialog;->checkHasXDSdk(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/tapsdk/moment/view/MomentDialog;)Landroid/webkit/ValueCallback;
    .registers 2
    .param p0, "x0"    # Lcom/tapsdk/moment/view/MomentDialog;

    .line 82
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->uploadMessage:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/tapsdk/moment/view/MomentDialog;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .registers 2
    .param p0, "x0"    # Lcom/tapsdk/moment/view/MomentDialog;
    .param p1, "x1"    # Landroid/webkit/ValueCallback;

    .line 82
    iput-object p1, p0, Lcom/tapsdk/moment/view/MomentDialog;->uploadMessage:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/tapsdk/moment/view/MomentDialog;[Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/tapsdk/moment/view/MomentDialog;
    .param p1, "x1"    # [Ljava/lang/String;

    .line 82
    invoke-direct {p0, p1}, Lcom/tapsdk/moment/view/MomentDialog;->openImageChooserActivity([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/tapsdk/moment/view/MomentDialog;)Landroid/webkit/ValueCallback;
    .registers 2
    .param p0, "x0"    # Lcom/tapsdk/moment/view/MomentDialog;

    .line 82
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/tapsdk/moment/view/MomentDialog;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .registers 2
    .param p0, "x0"    # Lcom/tapsdk/moment/view/MomentDialog;
    .param p1, "x1"    # Landroid/webkit/ValueCallback;

    .line 82
    iput-object p1, p0, Lcom/tapsdk/moment/view/MomentDialog;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/tapsdk/moment/view/MomentDialog;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lcom/tapsdk/moment/view/MomentDialog;

    .line 82
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->root:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tapsdk/moment/view/MomentDialog;I)V
    .registers 2
    .param p0, "x0"    # Lcom/tapsdk/moment/view/MomentDialog;
    .param p1, "x1"    # I

    .line 82
    invoke-direct {p0, p1}, Lcom/tapsdk/moment/view/MomentDialog;->handleLayout(I)V

    return-void
.end method

.method static synthetic access$2002(Lcom/tapsdk/moment/view/MomentDialog;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/tapsdk/moment/view/MomentDialog;
    .param p1, "x1"    # Z

    .line 82
    iput-boolean p1, p0, Lcom/tapsdk/moment/view/MomentDialog;->isRequestFile:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/tapsdk/moment/view/MomentDialog;)V
    .registers 1
    .param p0, "x0"    # Lcom/tapsdk/moment/view/MomentDialog;

    .line 82
    invoke-direct {p0}, Lcom/tapsdk/moment/view/MomentDialog;->setFullScreen()V

    return-void
.end method

.method static synthetic access$2200(Lcom/tapsdk/moment/view/MomentDialog;)V
    .registers 1
    .param p0, "x0"    # Lcom/tapsdk/moment/view/MomentDialog;

    .line 82
    invoke-direct {p0}, Lcom/tapsdk/moment/view/MomentDialog;->onDeviceInfoDidChange()V

    return-void
.end method

.method static synthetic access$2300(Lcom/tapsdk/moment/view/MomentDialog;)Landroid/widget/ImageButton;
    .registers 2
    .param p0, "x0"    # Lcom/tapsdk/moment/view/MomentDialog;

    .line 82
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->close:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/TTMGifView;
    .registers 2
    .param p0, "x0"    # Lcom/tapsdk/moment/view/MomentDialog;

    .line 82
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->loading:Lcom/tapsdk/moment/view/TTMGifView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tapsdk/moment/view/MomentDialog;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tapsdk/moment/view/MomentDialog;

    .line 82
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tapsdk/moment/view/MomentDialog;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tapsdk/moment/view/MomentDialog;

    .line 82
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;
    .registers 2
    .param p0, "x0"    # Lcom/tapsdk/moment/view/MomentDialog;

    .line 82
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/NetworkErrorDialog;
    .registers 2
    .param p0, "x0"    # Lcom/tapsdk/moment/view/MomentDialog;

    .line 82
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->networkErrorDialog:Lcom/tapsdk/moment/view/NetworkErrorDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/tapsdk/moment/view/MomentDialog;Lcom/tapsdk/moment/view/NetworkErrorDialog;)Lcom/tapsdk/moment/view/NetworkErrorDialog;
    .registers 2
    .param p0, "x0"    # Lcom/tapsdk/moment/view/MomentDialog;
    .param p1, "x1"    # Lcom/tapsdk/moment/view/NetworkErrorDialog;

    .line 82
    iput-object p1, p0, Lcom/tapsdk/moment/view/MomentDialog;->networkErrorDialog:Lcom/tapsdk/moment/view/NetworkErrorDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;
    .registers 2
    .param p0, "x0"    # Lcom/tapsdk/moment/view/MomentDialog;

    .line 82
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->handler:Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tapsdk/moment/view/MomentDialog;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tapsdk/moment/view/MomentDialog;

    .line 82
    invoke-direct {p0}, Lcom/tapsdk/moment/view/MomentDialog;->deviceInfo2Json()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/tapsdk/moment/view/MomentDialog;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/tapsdk/moment/view/MomentDialog;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/tapsdk/moment/view/MomentDialog;->errResponse2Json(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkHandlerNotNull(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)Z
    .registers 3
    .param p1, "callback"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    .line 888
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->handler:Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;

    if-nez v0, :cond_f

    .line 889
    const-string v0, "no handler"

    invoke-direct {p0, v0}, Lcom/tapsdk/moment/view/MomentDialog;->errResponse2Json(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    .line 890
    const/4 v0, 0x0

    return v0

    .line 892
    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method private checkHasXDSdk(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)Z
    .registers 3
    .param p1, "callback"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    .line 896
    invoke-static {}, Lcom/tapsdk/moment/XDSDKHelper;->hasXDSdk()Z

    move-result v0

    if-nez v0, :cond_11

    .line 897
    const-string v0, "no xdSDk"

    invoke-direct {p0, v0}, Lcom/tapsdk/moment/view/MomentDialog;->errResponse2Json(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    .line 898
    const/4 v0, 0x0

    return v0

    .line 900
    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method private customErrResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "errorDescription"    # Ljava/lang/String;

    .line 1199
    const-string v0, "{}"

    .line 1201
    .local v0, "json":Ljava/lang/String;
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1202
    .local v1, "object":Lorg/json/JSONObject;
    const-string v2, "error"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1203
    const-string v2, "error_description"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1204
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_17

    move-object v0, v2

    .line 1207
    .end local v1    # "object":Lorg/json/JSONObject;
    goto :goto_1b

    .line 1205
    :catch_17
    move-exception v1

    .line 1206
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1208
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1b
    return-object v0
.end method

.method private deviceInfo2Json()Ljava/lang/String;
    .registers 14

    .line 1101
    const-string v0, "TapDB"

    const-string v1, "com.tds.tapdb.IscTapDBService"

    const-class v2, Lcom/tapsdk/moment/view/MomentDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/tapsdk/moment/notch/NotchTools;->getFullScreenTools()Lcom/tapsdk/moment/notch/NotchTools;

    move-result-object v4

    invoke-virtual {p0}, Lcom/tapsdk/moment/view/MomentDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tapsdk/moment/notch/NotchTools;->isNotchScreen(Landroid/view/Window;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    const-string v2, "{}"

    .line 1104
    .local v2, "json":Ljava/lang/String;
    const-string v3, ""

    .line 1105
    .local v3, "tapDBDeviceId":Ljava/lang/String;
    const-string v4, ""

    .line 1108
    .local v4, "taptapDID":Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_38
    invoke-static {v1}, Lcom/tds/common/isc/IscServiceManager;->hasService(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_45

    .line 1109
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/tds/common/isc/IscServiceManager;->register(Ljava/lang/Class;)V

    .line 1111
    :cond_45
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/tapsdk/moment/utils/ActivityUtils;->isActivityAlive(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 1112
    invoke-static {v0}, Lcom/tds/common/isc/IscServiceManager;->service(Ljava/lang/String;)Lcom/tds/common/isc/Service;

    move-result-object v1

    const-string v7, "getTapDBDeviceIdCache"

    .line 1113
    invoke-virtual {v1, v7}, Lcom/tds/common/isc/Service;->method(Ljava/lang/String;)Lcom/tds/common/isc/Method;

    move-result-object v1

    new-array v7, v6, [Ljava/lang/Object;

    .line 1114
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {v1, v7}, Lcom/tds/common/isc/Method;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v3, v1

    .line 1115
    invoke-static {v0}, Lcom/tds/common/isc/IscServiceManager;->service(Ljava/lang/String;)Lcom/tds/common/isc/Service;

    move-result-object v0

    const-string v1, "getTapTapDID"

    .line 1116
    invoke-virtual {v0, v1}, Lcom/tds/common/isc/Service;->method(Ljava/lang/String;)Lcom/tds/common/isc/Method;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    .line 1117
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v7

    aput-object v7, v1, v5

    invoke-virtual {v0, v1}, Lcom/tds/common/isc/Method;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_80} :catch_82

    move-object v4, v0

    .line 1121
    :cond_81
    goto :goto_88

    .line 1119
    :catch_82
    move-exception v0

    .line 1120
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 1124
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_88
    :try_start_88
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1125
    .local v0, "object":Lorg/json/JSONObject;
    const-string v1, "PN"

    const-string v7, "TapTap"

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1126
    const-string v1, "VN"

    const-string v7, "1.3.0"

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1127
    const-string v1, "LANG"

    iget-object v7, p0, Lcom/tapsdk/moment/view/MomentDialog;->locale:Ljava/util/Locale;

    if-nez v7, :cond_a5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    :cond_a5
    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1128
    const-string v1, "LOC"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1129
    const-string v1, "PLT"

    const-string v7, "Android"

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1130
    const-string v1, "MANUFACTURER"

    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1131
    const-string v1, "MODEL"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1132
    const-string v1, "VERSION_RELEASE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    const-string v8, "%d"

    new-array v6, v6, [Ljava/lang/Object;

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v5

    invoke-static {v7, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1133
    const-string v1, "CPU_ARCHITECTURE"

    invoke-static {}, Lcom/tapsdk/moment/view/MomentDialog;->getCpuArchitecture()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1134
    const-string v1, "ORIENTATION"

    invoke-direct {p0}, Lcom/tapsdk/moment/view/MomentDialog;->getOrientation()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1135
    const-string v1, "NOTCH"

    iget-boolean v5, p0, Lcom/tapsdk/moment/view/MomentDialog;->isNotch:Z

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1136
    const-string v1, "VERSION_CODE"

    const v5, 0x9d2a61

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1137
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_117

    .line 1138
    const-string v1, "TAPDB_DEVICE_ID"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1140
    :cond_117
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_122

    .line 1141
    const-string v1, "TAPTAP_DID"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1144
    :cond_122
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1145
    .local v1, "activity":Landroid/app/Activity;
    invoke-static {v1}, Lcom/tapsdk/moment/utils/ActivityUtils;->isActivityAlive(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_13b

    .line 1146
    const-string v5, "HAS_TAPTAP_CLIENT"

    invoke-virtual {p0}, Lcom/tapsdk/moment/view/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "com.taptap"

    invoke-static {v6, v7}, Lcom/tapsdk/moment/utils/DeviceUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1148
    :cond_13b
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1149
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v5

    .line 1152
    .local v5, "batteryInfoIntent":Landroid/content/Intent;
    const-string v6, "level"

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1153
    .local v6, "level":I
    const-string v8, "scale"

    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 1154
    .local v8, "scale":I
    int-to-float v9, v6

    int-to-float v10, v8

    div-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    .line 1155
    .local v9, "battery":I
    const-string v10, "status"

    invoke-virtual {v5, v10, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1157
    .local v7, "status":I
    const/4 v10, 0x0

    .line 1158
    .local v10, "batteryStatus":I
    const/4 v11, 0x5

    if-ne v7, v11, :cond_16f

    .line 1159
    const/4 v10, 0x2

    goto :goto_173

    .line 1160
    :cond_16f
    const/4 v11, 0x2

    if-ne v7, v11, :cond_173

    .line 1161
    const/4 v10, 0x1

    .line 1163
    :cond_173
    :goto_173
    const-string v11, "BATTERY_STATUS"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1164
    const-string v11, "BATTERY_LEVEL"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1165
    const-string v11, "NETWORK_TYPE"

    invoke-virtual {p0}, Lcom/tapsdk/moment/view/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/tapsdk/moment/Utils;->getNetworkState(Landroid/content/Context;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1167
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_19a
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_19a} :catch_19c

    move-object v2, v11

    .line 1170
    .end local v0    # "object":Lorg/json/JSONObject;
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v5    # "batteryInfoIntent":Landroid/content/Intent;
    .end local v6    # "level":I
    .end local v7    # "status":I
    .end local v8    # "scale":I
    .end local v9    # "battery":I
    .end local v10    # "batteryStatus":I
    goto :goto_1a0

    .line 1168
    :catch_19c
    move-exception v0

    .line 1169
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1171
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1a0
    return-object v2
.end method

.method private errResponse2Json(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "err"    # Ljava/lang/String;

    .line 1225
    const-string v0, "{}"

    .line 1227
    .local v0, "json":Ljava/lang/String;
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1228
    .local v1, "object":Lorg/json/JSONObject;
    const-string v2, "err"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1229
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_12

    move-object v0, v2

    .line 1232
    .end local v1    # "object":Lorg/json/JSONObject;
    goto :goto_16

    .line 1230
    :catch_12
    move-exception v1

    .line 1231
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1233
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_16
    return-object v0
.end method

.method private errResponse2Json(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "err"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 1212
    const-string v0, "{}"

    .line 1214
    .local v0, "json":Ljava/lang/String;
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1215
    .local v1, "object":Lorg/json/JSONObject;
    const-string v2, "err"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1216
    const-string v2, "msg"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1217
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_17

    move-object v0, v2

    .line 1220
    .end local v1    # "object":Lorg/json/JSONObject;
    goto :goto_1b

    .line 1218
    :catch_17
    move-exception v1

    .line 1219
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1221
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1b
    return-object v0
.end method

.method public static getCpuArchitecture()Ljava/lang/String;
    .registers 6

    .line 1179
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "x86"

    const-string v2, "arm"

    const/16 v3, 0x15

    if-lt v0, v3, :cond_29

    .line 1180
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 1181
    .local v0, "deviceInfo":[Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_28

    aget-object v5, v0, v4

    .line 1182
    .local v5, "type":Ljava/lang/String;
    if-eqz v5, :cond_25

    .line 1183
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    move-object v1, v2

    goto :goto_24

    :cond_1c
    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_24

    :cond_23
    move-object v1, v5

    :goto_24
    return-object v1

    .line 1181
    .end local v5    # "type":Ljava/lang/String;
    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 1186
    .end local v0    # "deviceInfo":[Ljava/lang/String;
    :cond_28
    goto :goto_3e

    .line 1187
    :cond_29
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 1188
    .local v0, "type":Ljava/lang/String;
    if-eqz v0, :cond_3e

    .line 1189
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_35

    move-object v1, v2

    goto :goto_3d

    :cond_35
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3c

    goto :goto_3d

    :cond_3c
    move-object v1, v0

    :goto_3d
    return-object v1

    .line 1192
    .end local v0    # "type":Ljava/lang/String;
    :cond_3e
    :goto_3e
    const-string v0, "unKnow"

    return-object v0
.end method

.method private getOrientation()I
    .registers 2

    .line 1175
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/MomentDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method private handleLayout(I)V
    .registers 8
    .param p1, "orientation"    # I

    .line 1054
    :try_start_0
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1055
    .local v0, "dpi":F
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne p1, v1, :cond_4d

    .line 1056
    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog;->close:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1057
    .local v1, "closeLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-boolean v4, p0, Lcom/tapsdk/moment/view/MomentDialog;->isNotch:Z

    if-eqz v4, :cond_2a

    .line 1058
    const/high16 v4, 0x41f00000    # 30.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    mul-float v5, v0, v2

    float-to-int v5, v5

    invoke-virtual {v1, v3, v4, v5, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_33

    .line 1060
    :cond_2a
    mul-float v4, v0, v2

    float-to-int v4, v4

    mul-float v5, v0, v2

    float-to-int v5, v5

    invoke-virtual {v1, v3, v4, v5, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1063
    :goto_33
    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 1064
    iget-object v2, p0, Lcom/tapsdk/moment/view/MomentDialog;->close:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1066
    iget-object v2, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    invoke-virtual {v2}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1067
    .local v2, "webViewLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1068
    iget-object v3, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    invoke-virtual {v3, v2}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .end local v1    # "closeLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "webViewLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    goto :goto_7c

    .line 1070
    :cond_4d
    const/4 v1, 0x2

    if-ne p1, v1, :cond_7c

    .line 1071
    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog;->close:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1072
    .restart local v1    # "closeLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    mul-float/2addr v2, v0

    float-to-int v2, v2

    const/high16 v4, 0x41e80000    # 29.0f

    mul-float v5, v0, v4

    float-to-int v5, v5

    invoke-virtual {v1, v3, v2, v5, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1073
    mul-float/2addr v4, v0

    float-to-int v2, v4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 1074
    iget-object v2, p0, Lcom/tapsdk/moment/view/MomentDialog;->close:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1077
    iget-object v2, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    invoke-virtual {v2}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1078
    .restart local v2    # "webViewLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1079
    iget-object v3, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    invoke-virtual {v3, v2}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7d

    .line 1070
    .end local v1    # "closeLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "webViewLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_7c
    :goto_7c
    nop

    .line 1082
    :goto_7d
    const-string v1, "moment"

    const-string v2, "config changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    new-instance v2, Lcom/tapsdk/moment/view/MomentDialog$30;

    invoke-direct {v2, p0}, Lcom/tapsdk/moment/view/MomentDialog$30;-><init>(Lcom/tapsdk/moment/view/MomentDialog;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_90} :catch_92

    .line 1092
    nop

    .end local v0    # "dpi":F
    goto :goto_96

    .line 1090
    :catch_92
    move-exception v0

    .line 1091
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1093
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_96
    return-void
.end method

.method private initWebView()V
    .registers 4

    .line 279
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    invoke-virtual {v0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 280
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    new-instance v1, Lcom/tapsdk/moment/view/MomentDialog$4;

    invoke-direct {v1, p0}, Lcom/tapsdk/moment/view/MomentDialog$4;-><init>(Lcom/tapsdk/moment/view/MomentDialog;)V

    const-string v2, "supportHandlers"

    invoke-virtual {v0, v2, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 297
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    new-instance v1, Lcom/tapsdk/moment/view/MomentDialog$5;

    invoke-direct {v1, p0}, Lcom/tapsdk/moment/view/MomentDialog$5;-><init>(Lcom/tapsdk/moment/view/MomentDialog;)V

    const-string v2, "loadComplete"

    invoke-virtual {v0, v2, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 306
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    new-instance v1, Lcom/tapsdk/moment/view/MomentDialog$6;

    invoke-direct {v1, p0}, Lcom/tapsdk/moment/view/MomentDialog$6;-><init>(Lcom/tapsdk/moment/view/MomentDialog;)V

    const-string v2, "showCloseButton"

    invoke-virtual {v0, v2, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 315
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    new-instance v1, Lcom/tapsdk/moment/view/MomentDialog$7;

    invoke-direct {v1, p0}, Lcom/tapsdk/moment/view/MomentDialog$7;-><init>(Lcom/tapsdk/moment/view/MomentDialog;)V

    const-string v2, "hideCloseButton"

    invoke-virtual {v0, v2, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 338
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    new-instance v1, Lcom/tapsdk/moment/view/MomentDialog$8;

    invoke-direct {v1, p0}, Lcom/tapsdk/moment/view/MomentDialog$8;-><init>(Lcom/tapsdk/moment/view/MomentDialog;)V

    const-string v2, "openBrowser"

    invoke-virtual {v0, v2, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 359
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    new-instance v1, Lcom/tapsdk/moment/view/MomentDialog$9;

    invoke-direct {v1, p0}, Lcom/tapsdk/moment/view/MomentDialog$9;-><init>(Lcom/tapsdk/moment/view/MomentDialog;)V

    const-string v2, "getDeviceInfo"

    invoke-virtual {v0, v2, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 366
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    new-instance v1, Lcom/tapsdk/moment/view/MomentDialog$10;

    invoke-direct {v1, p0}, Lcom/tapsdk/moment/view/MomentDialog$10;-><init>(Lcom/tapsdk/moment/view/MomentDialog;)V

    const-string v2, "clearCache"

    invoke-virtual {v0, v2, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 375
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    new-instance v1, Lcom/tapsdk/moment/view/MomentDialog$11;

    invoke-direct {v1, p0}, Lcom/tapsdk/moment/view/MomentDialog$11;-><init>(Lcom/tapsdk/moment/view/MomentDialog;)V

    const-string v2, "getAccessToken"

    invoke-virtual {v0, v2, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 402
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    new-instance v1, Lcom/tapsdk/moment/view/MomentDialog$12;

    invoke-direct {v1, p0}, Lcom/tapsdk/moment/view/MomentDialog$12;-><init>(Lcom/tapsdk/moment/view/MomentDialog;)V

    const-string v2, "bindTapAccount"

    invoke-virtual {v0, v2, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 442
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    new-instance v1, Lcom/tapsdk/moment/view/MomentDialog$13;

    invoke-direct {v1, p0}, Lcom/tapsdk/moment/view/MomentDialog$13;-><init>(Lcom/tapsdk/moment/view/MomentDialog;)V

    const-string v2, "getPrivateUserInfo"

    invoke-virtual {v0, v2, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 464
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    new-instance v1, Lcom/tapsdk/moment/view/MomentDialog$14;

    invoke-direct {v1, p0}, Lcom/tapsdk/moment/view/MomentDialog$14;-><init>(Lcom/tapsdk/moment/view/MomentDialog;)V

    const-string v2, "getMomentConfig"

    invoke-virtual {v0, v2, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 473
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    new-instance v1, Lcom/tapsdk/moment/view/MomentDialog$15;

    invoke-direct {v1, p0}, Lcom/tapsdk/moment/view/MomentDialog$15;-><init>(Lcom/tapsdk/moment/view/MomentDialog;)V

    const-string v2, "getFileData"

    invoke-virtual {v0, v2, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 497
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    new-instance v1, Lcom/tapsdk/moment/view/MomentDialog$16;

    invoke-direct {v1, p0}, Lcom/tapsdk/moment/view/MomentDialog$16;-><init>(Lcom/tapsdk/moment/view/MomentDialog;)V

    const-string v2, "closeMoment"

    invoke-virtual {v0, v2, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 518
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    new-instance v1, Lcom/tapsdk/moment/view/MomentDialog$17;

    invoke-direct {v1, p0}, Lcom/tapsdk/moment/view/MomentDialog$17;-><init>(Lcom/tapsdk/moment/view/MomentDialog;)V

    const-string v2, "sendCertification"

    invoke-virtual {v0, v2, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 536
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    new-instance v1, Lcom/tapsdk/moment/view/MomentDialog$18;

    invoke-direct {v1, p0}, Lcom/tapsdk/moment/view/MomentDialog$18;-><init>(Lcom/tapsdk/moment/view/MomentDialog;)V

    const-string v2, "longClick"

    invoke-virtual {v0, v2, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 561
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    new-instance v1, Lcom/tapsdk/moment/view/MomentDialog$19;

    invoke-direct {v1, p0}, Lcom/tapsdk/moment/view/MomentDialog$19;-><init>(Lcom/tapsdk/moment/view/MomentDialog;)V

    const-string v2, "alert"

    invoke-virtual {v0, v2, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 597
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    new-instance v1, Lcom/tapsdk/moment/view/MomentDialog$20;

    invoke-direct {v1, p0}, Lcom/tapsdk/moment/view/MomentDialog$20;-><init>(Lcom/tapsdk/moment/view/MomentDialog;)V

    const-string v2, "loginByTap"

    invoke-virtual {v0, v2, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 661
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    new-instance v1, Lcom/tapsdk/moment/view/MomentDialog$21;

    invoke-direct {v1, p0}, Lcom/tapsdk/moment/view/MomentDialog$21;-><init>(Lcom/tapsdk/moment/view/MomentDialog;)V

    const-string v2, "getTapToken"

    invoke-virtual {v0, v2, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 687
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    new-instance v1, Lcom/tapsdk/moment/view/MomentDialog$22;

    invoke-direct {v1, p0}, Lcom/tapsdk/moment/view/MomentDialog$22;-><init>(Lcom/tapsdk/moment/view/MomentDialog;)V

    const-string v2, "checkBindTap"

    invoke-virtual {v0, v2, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 714
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    new-instance v1, Lcom/tapsdk/moment/view/MomentDialog$23;

    invoke-direct {v1, p0}, Lcom/tapsdk/moment/view/MomentDialog$23;-><init>(Lcom/tapsdk/moment/view/MomentDialog;)V

    const-string v2, "bindTapTap"

    invoke-virtual {v0, v2, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 740
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    new-instance v1, Lcom/tapsdk/moment/view/MomentDialog$24;

    invoke-direct {v1, p0}, Lcom/tapsdk/moment/view/MomentDialog$24;-><init>(Lcom/tapsdk/moment/view/MomentDialog;)V

    const-string v2, "reportError"

    invoke-virtual {v0, v2, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 756
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    new-instance v1, Lcom/tapsdk/moment/view/MomentDialog$25;

    invoke-direct {v1, p0}, Lcom/tapsdk/moment/view/MomentDialog$25;-><init>(Lcom/tapsdk/moment/view/MomentDialog;)V

    const-string v2, "sendSceneEventCallback"

    invoke-virtual {v0, v2, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 765
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    new-instance v1, Lcom/tapsdk/moment/view/MomentDialog$26;

    invoke-direct {v1, p0}, Lcom/tapsdk/moment/view/MomentDialog$26;-><init>(Lcom/tapsdk/moment/view/MomentDialog;)V

    invoke-virtual {v0, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 800
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    new-instance v1, Lcom/tapsdk/moment/view/MomentDialog$27;

    invoke-direct {v1, p0}, Lcom/tapsdk/moment/view/MomentDialog$27;-><init>(Lcom/tapsdk/moment/view/MomentDialog;)V

    invoke-virtual {v0, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 879
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    new-instance v1, Lcom/tapsdk/moment/view/MomentDialog$28;

    invoke-direct {v1, p0}, Lcom/tapsdk/moment/view/MomentDialog$28;-><init>(Lcom/tapsdk/moment/view/MomentDialog;)V

    invoke-virtual {v0, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 885
    return-void
.end method

.method private onActivityResultAboveL(IILandroid/content/Intent;)V
    .registers 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .line 970
    const/16 v0, 0x2710

    if-ne p1, v0, :cond_49

    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_9

    goto :goto_49

    .line 972
    :cond_9
    const/4 v0, 0x0

    .line 973
    .local v0, "results":[Landroid/net/Uri;
    const/4 v1, -0x1

    if-ne p2, v1, :cond_40

    .line 974
    if-eqz p3, :cond_40

    .line 975
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 976
    .local v1, "dataString":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    .line 977
    .local v2, "clipData":Landroid/content/ClipData;
    if-eqz v2, :cond_33

    .line 978
    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    new-array v0, v3, [Landroid/net/Uri;

    .line 979
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    if-ge v3, v4, :cond_33

    .line 980
    invoke-virtual {v2, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    .line 981
    .local v4, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v0, v3

    .line 979
    .end local v4    # "item":Landroid/content/ClipData$Item;
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 984
    .end local v3    # "i":I
    :cond_33
    if-eqz v1, :cond_40

    .line 985
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v3, v4

    move-object v0, v3

    .line 988
    .end local v1    # "dataString":Ljava/lang/String;
    .end local v2    # "clipData":Landroid/content/ClipData;
    :cond_40
    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    invoke-interface {v1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 989
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    .line 990
    return-void

    .line 971
    .end local v0    # "results":[Landroid/net/Uri;
    :cond_49
    :goto_49
    return-void
.end method

.method private onDeviceInfoDidChange()V
    .registers 4

    .line 1096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deviceStatusDidChange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/tapsdk/moment/view/MomentDialog;->deviceInfo2Json()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Moment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    invoke-direct {p0}, Lcom/tapsdk/moment/view/MomentDialog;->deviceInfo2Json()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceStatusDidChange"

    invoke-virtual {v0, v2, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->callHandler(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1098
    return-void
.end method

.method private openImageChooserActivity([Ljava/lang/String;)V
    .registers 7
    .param p1, "acceptTypes"    # [Ljava/lang/String;

    .line 904
    invoke-static {p0}, Lcom/tds/common/permission/TdsPermission;->with(Landroid/app/Fragment;)Lcom/tds/common/permission/PermissionCollection;

    move-result-object v0

    new-instance v1, Lcom/tds/common/permission/PermissionConfig;

    .line 905
    const-string v2, "access_album_permission"

    invoke-static {v2}, Lcom/tapsdk/moment/Utils;->getTranslatedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 906
    const-string v3, "upload_hit"

    invoke-static {v3}, Lcom/tapsdk/moment/Utils;->getTranslatedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 907
    const-string v4, "to_open"

    invoke-static {v4}, Lcom/tapsdk/moment/Utils;->getTranslatedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/tds/common/permission/PermissionConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    invoke-virtual {v0, v1}, Lcom/tds/common/permission/PermissionCollection;->forwardSetting(Lcom/tds/common/permission/PermissionConfig;)Lcom/tds/common/permission/PermissionCollection;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 908
    invoke-virtual {v0, v1}, Lcom/tds/common/permission/PermissionCollection;->permission([Ljava/lang/String;)Lcom/tds/common/permission/PermissionCollection;

    move-result-object v0

    new-instance v1, Lcom/tapsdk/moment/view/MomentDialog$29;

    invoke-direct {v1, p0, p1}, Lcom/tapsdk/moment/view/MomentDialog$29;-><init>(Lcom/tapsdk/moment/view/MomentDialog;[Ljava/lang/String;)V

    .line 909
    invoke-virtual {v0, v1}, Lcom/tds/common/permission/PermissionCollection;->request(Lcom/tds/common/permission/RequestPermissionCallback;)V

    .line 934
    return-void
.end method

.method private setFullScreen()V
    .registers 6

    .line 1000
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/MomentDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1001
    return-void

    .line 1003
    :cond_7
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/MomentDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1004
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_51

    .line 1005
    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 1006
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1007
    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 1008
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1009
    .local v1, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1010
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1011
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_46

    .line 1013
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1014
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 1015
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1017
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 1018
    .local v3, "decorView":Landroid/view/View;
    const/16 v4, 0x500

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1020
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "decorView":Landroid/view/View;
    :cond_46
    const/high16 v2, 0x1000000

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 1023
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1024
    invoke-static {v0}, Lcom/tapsdk/moment/ScreenHelper;->fullScreenImmersive(Landroid/view/Window;)V

    .line 1026
    .end local v1    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :cond_51
    return-void
.end method


# virtual methods
.method public back()Z
    .registers 2

    .line 268
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    if-eqz v0, :cond_11

    .line 269
    invoke-virtual {v0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 270
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    invoke-virtual {v0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->goBack()V

    .line 271
    const/4 v0, 0x1

    return v0

    .line 274
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public isShowing()Z
    .registers 3

    .line 1242
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/MomentDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/tapsdk/moment/view/MomentDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->isRequestFile:Z

    if-nez v0, :cond_21

    .line 1243
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    if-eqz v0, :cond_21

    .line 1244
    invoke-virtual {v0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_20

    const/4 v1, 0x1

    :cond_20
    return v1

    .line 1247
    :cond_21
    return v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 938
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 939
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->isRequestFile:Z

    .line 940
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->afterResultRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 941
    iget-object v2, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    invoke-virtual {v2, v0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->post(Ljava/lang/Runnable;)Z

    .line 942
    iput-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog;->afterResultRunnable:Ljava/lang/Runnable;

    .line 944
    :cond_12
    const/16 v0, 0x2710

    if-ne p1, v0, :cond_3d

    .line 945
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->uploadMessage:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_1f

    return-void

    .line 946
    :cond_1f
    if-eqz p3, :cond_2a

    const/4 v0, -0x1

    if-eq p2, v0, :cond_25

    goto :goto_2a

    :cond_25
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_2b

    :cond_2a
    :goto_2a
    move-object v0, v1

    .line 947
    .local v0, "result":Landroid/net/Uri;
    :goto_2b
    iget-object v2, p0, Lcom/tapsdk/moment/view/MomentDialog;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_33

    .line 948
    invoke-direct {p0, p1, p2, p3}, Lcom/tapsdk/moment/view/MomentDialog;->onActivityResultAboveL(IILandroid/content/Intent;)V

    goto :goto_5e

    .line 949
    :cond_33
    iget-object v2, p0, Lcom/tapsdk/moment/view/MomentDialog;->uploadMessage:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_5e

    .line 950
    invoke-interface {v2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 951
    iput-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog;->uploadMessage:Landroid/webkit/ValueCallback;

    goto :goto_5e

    .line 953
    .end local v0    # "result":Landroid/net/Uri;
    :cond_3d
    const/16 v0, 0x2711

    if-ne p1, v0, :cond_5e

    .line 954
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->callback:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    if-eqz v0, :cond_5f

    .line 956
    :try_start_45
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 957
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 958
    .local v1, "content":Ljava/lang/String;
    iget-object v2, p0, Lcom/tapsdk/moment/view/MomentDialog;->callback:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    invoke-interface {v2, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_54} :catch_55

    .line 961
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "content":Ljava/lang/String;
    goto :goto_5f

    .line 959
    :catch_55
    move-exception v0

    .line 960
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog;->callback:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    const-string v2, ""

    invoke-interface {v1, v2}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    goto :goto_5f

    .line 953
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5e
    :goto_5e
    nop

    .line 965
    :cond_5f
    :goto_5f
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 994
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 995
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/tapsdk/moment/view/MomentDialog;->handleLayout(I)V

    .line 996
    invoke-direct {p0}, Lcom/tapsdk/moment/view/MomentDialog;->onDeviceInfoDidChange()V

    .line 997
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 129
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    new-instance v0, Lcom/tapsdk/moment/TapTapMomentModel;

    invoke-direct {v0}, Lcom/tapsdk/moment/TapTapMomentModel;-><init>()V

    iput-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->model:Lcom/tapsdk/moment/TapTapMomentModel;

    .line 131
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 136
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/MomentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 137
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    if-eqz v0, :cond_5b

    .line 138
    const-string v2, "client_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tapsdk/moment/view/MomentDialog;->clientId:Ljava/lang/String;

    .line 139
    const-string v2, "locale"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 140
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    iput-object v2, p0, Lcom/tapsdk/moment/view/MomentDialog;->locale:Ljava/util/Locale;

    .line 142
    :cond_1f
    const-string v2, "orientation"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/tapsdk/moment/view/MomentDialog;->originOrientataion:I

    .line 143
    sget-boolean v2, Lcom/tapsdk/moment/TapMoment;->isCN:Z

    if-eqz v2, :cond_38

    .line 144
    invoke-static {}, Lcom/tds/common/net/util/HostReplaceUtil;->getInstance()Lcom/tds/common/net/util/HostReplaceUtil;

    move-result-object v2

    const-string v3, "https://tds-moment.taptap.com/"

    invoke-virtual {v2, v3}, Lcom/tds/common/net/util/HostReplaceUtil;->getReplacedHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tapsdk/moment/view/MomentDialog;->baseUrl:Ljava/lang/String;

    goto :goto_44

    .line 146
    :cond_38
    invoke-static {}, Lcom/tds/common/net/util/HostReplaceUtil;->getInstance()Lcom/tds/common/net/util/HostReplaceUtil;

    move-result-object v2

    const-string v3, "https://tds-moment.tap.io/"

    invoke-virtual {v2, v3}, Lcom/tds/common/net/util/HostReplaceUtil;->getReplacedHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tapsdk/moment/view/MomentDialog;->baseUrl:Ljava/lang/String;

    .line 148
    :goto_44
    const-string v2, "url_extra"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tapsdk/moment/view/MomentDialog;->urlExtra:Ljava/lang/String;

    .line 149
    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "data":Ljava/lang/String;
    if-eqz v2, :cond_5b

    .line 151
    new-instance v3, Lcom/tapsdk/moment/view/FilePicker;

    invoke-direct {v3, v2}, Lcom/tapsdk/moment/view/FilePicker;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/tapsdk/moment/view/MomentDialog;->filePicker:Lcom/tapsdk/moment/view/FilePicker;

    .line 154
    .end local v2    # "data":Ljava/lang/String;
    :cond_5b
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 155
    .local v2, "activity":Landroid/app/Activity;
    if-eqz v2, :cond_87

    .line 156
    iget-object v3, p0, Lcom/tapsdk/moment/view/MomentDialog;->networkReceiver:Lcom/tapsdk/moment/view/MomentDialog$NetworkReceiver;

    if-nez v3, :cond_6c

    .line 157
    new-instance v3, Lcom/tapsdk/moment/view/MomentDialog$NetworkReceiver;

    invoke-direct {v3, p0}, Lcom/tapsdk/moment/view/MomentDialog$NetworkReceiver;-><init>(Lcom/tapsdk/moment/view/MomentDialog;)V

    iput-object v3, p0, Lcom/tapsdk/moment/view/MomentDialog;->networkReceiver:Lcom/tapsdk/moment/view/MomentDialog$NetworkReceiver;

    .line 159
    :cond_6c
    iget-object v3, p0, Lcom/tapsdk/moment/view/MomentDialog;->networkReceiver:Lcom/tapsdk/moment/view/MomentDialog$NetworkReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "ttos_moment_fragment_moment"

    invoke-static {v3, v4}, Lcom/tapsdk/moment/Utils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 162
    :cond_87
    const/4 v1, 0x0

    return-object v1
.end method

.method public onDestroy()V
    .registers 4

    .line 1038
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 1039
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->callback:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    .line 1040
    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog;->handler:Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;

    invoke-virtual {v1, v0}, Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1041
    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    if-eqz v1, :cond_30

    .line 1042
    invoke-virtual {v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->removeAllViews()V

    .line 1043
    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    invoke-virtual {v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1044
    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    invoke-virtual {v1, v0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->setTag(Ljava/lang/Object;)V

    .line 1045
    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    invoke-virtual {v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->clearHistory()V

    .line 1046
    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    invoke-virtual {v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->destroy()V

    .line 1047
    iput-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    .line 1049
    :cond_30
    invoke-static {}, Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager;->getInstance()Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager;

    move-result-object v0

    const-string v1, "disappear.moment.taptap.action"

    invoke-virtual {v0, v1}, Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager;->sendBroadcast(Ljava/lang/String;)V

    .line 1050
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .line 1030
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 1031
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->networkReceiver:Lcom/tapsdk/moment/view/MomentDialog$NetworkReceiver;

    if-eqz v0, :cond_16

    .line 1032
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog;->networkReceiver:Lcom/tapsdk/moment/view/MomentDialog$NetworkReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1034
    :cond_16
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 1347
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 1348
    iget v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->originOrientataion:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_17

    invoke-static {}, Lcom/tds/common/utils/EngineUtil;->isUnity()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1349
    invoke-static {}, Lcom/tapsdk/moment/TapTapMomentPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/tapsdk/moment/view/MomentDialog;->originOrientataion:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1351
    :cond_17
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 227
    invoke-direct {p0}, Lcom/tapsdk/moment/view/MomentDialog;->setFullScreen()V

    .line 228
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 229
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/MomentDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/tapsdk/moment/view/MomentDialog$3;

    invoke-direct {v1, p0}, Lcom/tapsdk/moment/view/MomentDialog$3;-><init>(Lcom/tapsdk/moment/view/MomentDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 240
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    if-eqz v0, :cond_1b

    .line 241
    const-string v1, "enterForeground"

    invoke-virtual {v0, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->callHandler(Ljava/lang/String;)V

    .line 245
    :cond_1b
    return-void
.end method

.method public onStop()V
    .registers 3

    .line 260
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    .line 261
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    if-eqz v0, :cond_c

    .line 262
    const-string v1, "enterBackground"

    invoke-virtual {v0, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->callHandler(Ljava/lang/String;)V

    .line 264
    :cond_c
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 170
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 171
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 172
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_a

    .line 173
    return-void

    .line 176
    :cond_a
    new-instance v1, Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;

    invoke-direct {v1, p0}, Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;-><init>(Lcom/tapsdk/moment/view/MomentDialog;)V

    iput-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog;->handler:Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;

    .line 177
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "webview"

    invoke-static {v1, v2}, Lcom/tapsdk/moment/Utils;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iput-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    .line 178
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "root"

    invoke-static {v1, v2}, Lcom/tapsdk/moment/Utils;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog;->root:Landroid/widget/FrameLayout;

    .line 179
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "close"

    invoke-static {v1, v2}, Lcom/tapsdk/moment/Utils;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog;->close:Landroid/widget/ImageButton;

    .line 180
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "loading"

    invoke-static {v1, v2}, Lcom/tapsdk/moment/Utils;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tapsdk/moment/view/TTMGifView;

    iput-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog;->loading:Lcom/tapsdk/moment/view/TTMGifView;

    .line 181
    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog;->close:Landroid/widget/ImageButton;

    new-instance v2, Lcom/tapsdk/moment/view/MomentDialog$1;

    invoke-direct {v2, p0}, Lcom/tapsdk/moment/view/MomentDialog$1;-><init>(Lcom/tapsdk/moment/view/MomentDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog;->root:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lcom/tapsdk/moment/AndroidBug5497Workaround;->assistActivity(Landroid/widget/FrameLayout;)V

    .line 188
    invoke-direct {p0}, Lcom/tapsdk/moment/view/MomentDialog;->initWebView()V

    .line 190
    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    invoke-virtual {v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TapMomentAndroid/1.3.0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    invoke-virtual {v3}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 192
    .local v1, "contentView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 193
    .local v2, "window":Landroid/view/Window;
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 194
    new-instance v3, Lcom/tapsdk/moment/view/MomentDialog$2;

    invoke-direct {v3, p0}, Lcom/tapsdk/moment/view/MomentDialog$2;-><init>(Lcom/tapsdk/moment/view/MomentDialog;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 221
    iget-object v3, p0, Lcom/tapsdk/moment/view/MomentDialog;->loading:Lcom/tapsdk/moment/view/TTMGifView;

    const-string v4, "ttos_moment_loading"

    invoke-static {v0, v4}, Lcom/tapsdk/moment/Utils;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tapsdk/moment/view/TTMGifView;->setMovieResource(I)V

    .line 222
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 250
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onViewStateRestored data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "moment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    if-eqz p1, :cond_20

    .line 253
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/MomentDialog;->dismiss()V

    .line 255
    :cond_20
    return-void
.end method

.method public setResultCallback(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 1238
    iput-object p1, p0, Lcom/tapsdk/moment/view/MomentDialog;->afterResultRunnable:Ljava/lang/Runnable;

    .line 1239
    return-void
.end method
