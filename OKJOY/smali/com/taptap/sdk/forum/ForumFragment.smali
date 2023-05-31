.class public Lcom/taptap/sdk/forum/ForumFragment;
.super Landroid/support/v4/app/Fragment;
.source "ForumFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;,
        Lcom/taptap/sdk/forum/ForumFragment$DeviceStatusReceiver;
    }
.end annotation


# static fields
.field private static final CLEAR_CACHE:I = 0x20

.field private static final FILE_CHOOSER_RESULT_CODE:I = 0x2710

.field private static final HIDE_ACTION_SHEET_BUTTON:I = 0x12

.field private static final HIDE_CLOSE:I = 0x10

.field private static final HIDE_LOADING:I = 0x14

.field private static final KEYBOARD_CLOSE:I = 0x31

.field private static final KEYBOARD_OPEN:I = 0x30

.field private static final OPEN_WEB_VIEW_FRAGMENT_REQUEST_CODE:I = 0x2711

.field private static final SHOW_ACTION_SHEET_BUTTON:I = 0x13

.field private static final SHOW_CLOSE:I = 0x11

.field private static final SHOW_LOADING:I = 0x15


# instance fields
.field private app_id:Ljava/lang/String;

.field private back:Landroid/widget/ImageButton;

.field private baseUrl:Ljava/lang/String;

.field private callback:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

.field private close:Landroid/widget/ImageButton;

.field private forum:Landroid/widget/RelativeLayout;

.field private handler:Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;

.field private isCommonWebview:Z

.field private isLoggingIn:Z

.field private keyboardStatusDetector:Lcom/taptap/sdk/KeyboardStatusDetector;

.field private lastInnerAppUrl:Ljava/lang/String;

.field private loading:Landroid/widget/ProgressBar;

.field private locale:Ljava/util/Locale;

.field private mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

.field private orientation:I

.field private other:Landroid/widget/ImageButton;

.field private root:Landroid/widget/FrameLayout;

.field private site:Ljava/lang/String;

.field private uploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private uploadMessageAboveL:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->isLoggingIn:Z

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->lastInnerAppUrl:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->app_id:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->uri:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/taptap/sdk/forum/ForumFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/taptap/sdk/forum/ForumFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->lastInnerAppUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/taptap/sdk/forum/ForumFragment;)Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;
    .registers 2
    .param p0, "x0"    # Lcom/taptap/sdk/forum/ForumFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/taptap/sdk/forum/ForumFragment;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .registers 2
    .param p0, "x0"    # Lcom/taptap/sdk/forum/ForumFragment;
    .param p1, "x1"    # Landroid/webkit/ValueCallback;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/taptap/sdk/forum/ForumFragment;->uploadMessage:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/taptap/sdk/forum/ForumFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/taptap/sdk/forum/ForumFragment;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/taptap/sdk/forum/ForumFragment;->openImageChooserActivity()V

    return-void
.end method

.method static synthetic access$1202(Lcom/taptap/sdk/forum/ForumFragment;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .registers 2
    .param p0, "x0"    # Lcom/taptap/sdk/forum/ForumFragment;
    .param p1, "x1"    # Landroid/webkit/ValueCallback;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/taptap/sdk/forum/ForumFragment;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/taptap/sdk/forum/ForumFragment;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lcom/taptap/sdk/forum/ForumFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->root:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/taptap/sdk/forum/ForumFragment;)Landroid/widget/RelativeLayout;
    .registers 2
    .param p0, "x0"    # Lcom/taptap/sdk/forum/ForumFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->forum:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/taptap/sdk/forum/ForumFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/taptap/sdk/forum/ForumFragment;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/taptap/sdk/forum/ForumFragment;->onDeviceStatusDidChange()V

    return-void
.end method

.method static synthetic access$1600(Lcom/taptap/sdk/forum/ForumFragment;)Landroid/widget/ImageButton;
    .registers 2
    .param p0, "x0"    # Lcom/taptap/sdk/forum/ForumFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->close:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/taptap/sdk/forum/ForumFragment;)Landroid/widget/ImageButton;
    .registers 2
    .param p0, "x0"    # Lcom/taptap/sdk/forum/ForumFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->other:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/taptap/sdk/forum/ForumFragment;)Landroid/widget/ProgressBar;
    .registers 2
    .param p0, "x0"    # Lcom/taptap/sdk/forum/ForumFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->loading:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/taptap/sdk/forum/ForumFragment;)Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;
    .registers 2
    .param p0, "x0"    # Lcom/taptap/sdk/forum/ForumFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->handler:Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/taptap/sdk/forum/ForumFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/taptap/sdk/forum/ForumFragment;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/taptap/sdk/forum/ForumFragment;->deviceStatus2Json()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/taptap/sdk/forum/ForumFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/taptap/sdk/forum/ForumFragment;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/taptap/sdk/forum/ForumFragment;->deviceInfo2Json()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/taptap/sdk/forum/ForumFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/taptap/sdk/forum/ForumFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->app_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/taptap/sdk/forum/ForumFragment;)I
    .registers 2
    .param p0, "x0"    # Lcom/taptap/sdk/forum/ForumFragment;

    .prologue
    .line 53
    iget v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->orientation:I

    return v0
.end method

.method static synthetic access$700(Lcom/taptap/sdk/forum/ForumFragment;)Ljava/util/Locale;
    .registers 2
    .param p0, "x0"    # Lcom/taptap/sdk/forum/ForumFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$800(Lcom/taptap/sdk/forum/ForumFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/taptap/sdk/forum/ForumFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->site:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/taptap/sdk/forum/ForumFragment;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;
    .registers 2
    .param p0, "x0"    # Lcom/taptap/sdk/forum/ForumFragment;
    .param p1, "x1"    # Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/taptap/sdk/forum/ForumFragment;->callback:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    return-object p1
.end method

.method private deviceInfo2Json()Ljava/lang/String;
    .registers 10

    .prologue
    .line 632
    const-string v1, "{}"

    .line 634
    .local v1, "json":Ljava/lang/String;
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 635
    .local v2, "object":Lorg/json/JSONObject;
    const-string v3, "PN"

    const-string v4, "TapTap"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 636
    const-string v3, "VN"

    const-string v4, "1.1.1.a"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 637
    const-string v4, "LANG"

    iget-object v3, p0, Lcom/taptap/sdk/forum/ForumFragment;->locale:Ljava/util/Locale;

    if-nez v3, :cond_7e

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_23
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 638
    const-string v3, "LOC"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 639
    const-string v3, "PLT"

    const-string v4, "Android"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 640
    const-string v3, "MANUFACTURER"

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 641
    const-string v3, "MODEL"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 642
    const-string v3, "VERSION_RELEASE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 643
    const-string v3, "CPU_ARCHITECTURE"

    invoke-static {}, Lcom/taptap/sdk/forum/ForumFragment;->getCpuArchitecture()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 644
    const-string v3, "ORIENTATION"

    invoke-direct {p0}, Lcom/taptap/sdk/forum/ForumFragment;->getOrientation()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 645
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 649
    .end local v2    # "object":Lorg/json/JSONObject;
    :goto_7d
    return-object v1

    .line 637
    .restart local v2    # "object":Lorg/json/JSONObject;
    :cond_7e
    iget-object v3, p0, Lcom/taptap/sdk/forum/ForumFragment;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_83} :catch_85

    move-result-object v3

    goto :goto_23

    .line 646
    .end local v2    # "object":Lorg/json/JSONObject;
    :catch_85
    move-exception v0

    .line 647
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7d
.end method

.method private deviceStatus2Json()Ljava/lang/String;
    .registers 14

    .prologue
    .line 603
    const-string v4, "{}"

    .line 605
    .local v4, "json":Ljava/lang/String;
    :try_start_2
    invoke-virtual {p0}, Lcom/taptap/sdk/forum/ForumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    new-instance v11, Landroid/content/IntentFilter;

    const-string v12, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v11, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 606
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 609
    .local v1, "batteryInfoIntent":Landroid/content/Intent;
    const-string v9, "level"

    const/4 v10, -0x1

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 610
    .local v5, "level":I
    const-string v9, "scale"

    const/4 v10, -0x1

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 611
    .local v7, "scale":I
    int-to-float v9, v5

    int-to-float v10, v7

    div-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v0, v9

    .line 612
    .local v0, "battery":I
    const-string v9, "status"

    const/4 v10, -0x1

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 614
    .local v8, "status":I
    const/4 v2, 0x0

    .line 615
    .local v2, "batteryStatus":I
    const/4 v9, 0x5

    if-ne v8, v9, :cond_64

    .line 616
    const/4 v2, 0x2

    .line 620
    :cond_37
    :goto_37
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 621
    .local v6, "object":Lorg/json/JSONObject;
    const-string v9, "batteryStatus"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 622
    const-string v9, "batteryLevel"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 623
    const-string v9, "networkType"

    invoke-virtual {p0}, Lcom/taptap/sdk/forum/ForumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-static {v10}, Lcom/taptap/sdk/forum/ForumFragment;->getNetworkState(Landroid/content/Context;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 624
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_62} :catch_69

    move-result-object v4

    .line 628
    .end local v0    # "battery":I
    .end local v1    # "batteryInfoIntent":Landroid/content/Intent;
    .end local v2    # "batteryStatus":I
    .end local v5    # "level":I
    .end local v6    # "object":Lorg/json/JSONObject;
    .end local v7    # "scale":I
    .end local v8    # "status":I
    :goto_63
    return-object v4

    .line 617
    .restart local v0    # "battery":I
    .restart local v1    # "batteryInfoIntent":Landroid/content/Intent;
    .restart local v2    # "batteryStatus":I
    .restart local v5    # "level":I
    .restart local v7    # "scale":I
    .restart local v8    # "status":I
    :cond_64
    const/4 v9, 0x2

    if-ne v8, v9, :cond_37

    .line 618
    const/4 v2, 0x1

    goto :goto_37

    .line 625
    .end local v0    # "battery":I
    .end local v1    # "batteryInfoIntent":Landroid/content/Intent;
    .end local v2    # "batteryStatus":I
    .end local v5    # "level":I
    .end local v7    # "scale":I
    .end local v8    # "status":I
    :catch_69
    move-exception v3

    .line 626
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_63
.end method

.method private errResponse2Json(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "err"    # Ljava/lang/String;

    .prologue
    .line 724
    const-string v1, "{}"

    .line 726
    .local v1, "json":Ljava/lang/String;
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 727
    .local v2, "object":Lorg/json/JSONObject;
    const-string v3, "err"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 728
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_11

    move-result-object v1

    .line 732
    .end local v2    # "object":Lorg/json/JSONObject;
    :goto_10
    return-object v1

    .line 729
    :catch_11
    move-exception v0

    .line 730
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method

.method public static getCpuArchitecture()Ljava/lang/String;
    .registers 4

    .prologue
    .line 706
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_29

    .line 707
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 708
    .local v0, "deviceInfo":[Ljava/lang/String;
    array-length v3, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v3, :cond_43

    aget-object v1, v0, v2

    .line 709
    .local v1, "type":Ljava/lang/String;
    if-eqz v1, :cond_26

    .line 710
    const-string v2, "arm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string v1, "arm"

    .line 719
    .end local v0    # "deviceInfo":[Ljava/lang/String;
    .end local v1    # "type":Ljava/lang/String;
    :cond_1a
    :goto_1a
    return-object v1

    .line 710
    .restart local v0    # "deviceInfo":[Ljava/lang/String;
    .restart local v1    # "type":Ljava/lang/String;
    :cond_1b
    const-string v2, "x86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v1, "x86"

    goto :goto_1a

    .line 708
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 714
    .end local v0    # "deviceInfo":[Ljava/lang/String;
    .end local v1    # "type":Ljava/lang/String;
    :cond_29
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 715
    .restart local v1    # "type":Ljava/lang/String;
    if-eqz v1, :cond_43

    .line 716
    const-string v2, "arm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_38

    const-string v1, "arm"

    goto :goto_1a

    :cond_38
    const-string v2, "x86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v1, "x86"

    goto :goto_1a

    .line 719
    .end local v1    # "type":Ljava/lang/String;
    :cond_43
    const-string v1, "unKnow"

    goto :goto_1a
.end method

.method public static getNetworkState(Landroid/content/Context;)I
    .registers 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x4

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 657
    const-string v9, "connectivity"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 658
    .local v1, "connManager":Landroid/net/ConnectivityManager;
    if-nez v1, :cond_e

    .line 701
    :cond_d
    :goto_d
    return v6

    .line 661
    :cond_e
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 662
    .local v0, "activeNetInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 665
    invoke-virtual {v1, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 666
    .local v5, "wifiInfo":Landroid/net/NetworkInfo;
    if-eqz v5, :cond_30

    .line 667
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 668
    .local v3, "state":Landroid/net/NetworkInfo$State;
    if-eqz v3, :cond_30

    .line 669
    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v6, :cond_2e

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v3, v6, :cond_30

    .line 670
    :cond_2e
    const/4 v6, 0x2

    goto :goto_d

    .line 674
    .end local v3    # "state":Landroid/net/NetworkInfo$State;
    :cond_30
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 675
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    .line 676
    .local v2, "networkType":I
    packed-switch v2, :pswitch_data_54

    move v6, v8

    .line 701
    goto :goto_d

    .line 678
    :pswitch_41
    const/4 v6, 0x3

    goto :goto_d

    :pswitch_43
    move v6, v7

    .line 680
    goto :goto_d

    .line 682
    :pswitch_45
    const/4 v6, 0x5

    goto :goto_d

    :pswitch_47
    move v6, v7

    .line 685
    goto :goto_d

    .line 689
    :pswitch_49
    const/4 v6, 0x7

    goto :goto_d

    .line 694
    :pswitch_4b
    const/16 v6, 0x9

    goto :goto_d

    .line 697
    :pswitch_4e
    const/4 v6, 0x6

    goto :goto_d

    .line 699
    :pswitch_50
    const/16 v6, 0xa

    goto :goto_d

    .line 676
    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_41
        :pswitch_45
        :pswitch_49
        :pswitch_43
        :pswitch_49
        :pswitch_49
        :pswitch_47
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
        :pswitch_47
        :pswitch_4e
        :pswitch_50
        :pswitch_4e
        :pswitch_4b
    .end packed-switch
.end method

.method private getOrientation()I
    .registers 2

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/taptap/sdk/forum/ForumFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method private initWebView()V
    .registers 4

    .prologue
    .line 212
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    const-string v1, "supportHandlers"

    new-instance v2, Lcom/taptap/sdk/forum/ForumFragment$5;

    invoke-direct {v2, p0}, Lcom/taptap/sdk/forum/ForumFragment$5;-><init>(Lcom/taptap/sdk/forum/ForumFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 229
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    const-string v1, "loadComplete"

    new-instance v2, Lcom/taptap/sdk/forum/ForumFragment$6;

    invoke-direct {v2, p0}, Lcom/taptap/sdk/forum/ForumFragment$6;-><init>(Lcom/taptap/sdk/forum/ForumFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 238
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    const-string v1, "showCloseButton"

    new-instance v2, Lcom/taptap/sdk/forum/ForumFragment$7;

    invoke-direct {v2, p0}, Lcom/taptap/sdk/forum/ForumFragment$7;-><init>(Lcom/taptap/sdk/forum/ForumFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 247
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    const-string v1, "hideCloseButton"

    new-instance v2, Lcom/taptap/sdk/forum/ForumFragment$8;

    invoke-direct {v2, p0}, Lcom/taptap/sdk/forum/ForumFragment$8;-><init>(Lcom/taptap/sdk/forum/ForumFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 262
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    const-string v1, "showActionSheetButton"

    new-instance v2, Lcom/taptap/sdk/forum/ForumFragment$9;

    invoke-direct {v2, p0}, Lcom/taptap/sdk/forum/ForumFragment$9;-><init>(Lcom/taptap/sdk/forum/ForumFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 271
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    const-string v1, "hideActionSheetButton"

    new-instance v2, Lcom/taptap/sdk/forum/ForumFragment$10;

    invoke-direct {v2, p0}, Lcom/taptap/sdk/forum/ForumFragment$10;-><init>(Lcom/taptap/sdk/forum/ForumFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 280
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    const-string v1, "hideLoading"

    new-instance v2, Lcom/taptap/sdk/forum/ForumFragment$11;

    invoke-direct {v2, p0}, Lcom/taptap/sdk/forum/ForumFragment$11;-><init>(Lcom/taptap/sdk/forum/ForumFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 289
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    const-string v1, "showLoading"

    new-instance v2, Lcom/taptap/sdk/forum/ForumFragment$12;

    invoke-direct {v2, p0}, Lcom/taptap/sdk/forum/ForumFragment$12;-><init>(Lcom/taptap/sdk/forum/ForumFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 298
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    const-string v1, "getDeviceStatus"

    new-instance v2, Lcom/taptap/sdk/forum/ForumFragment$13;

    invoke-direct {v2, p0}, Lcom/taptap/sdk/forum/ForumFragment$13;-><init>(Lcom/taptap/sdk/forum/ForumFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 305
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    const-string v1, "getDeviceInfo"

    new-instance v2, Lcom/taptap/sdk/forum/ForumFragment$14;

    invoke-direct {v2, p0}, Lcom/taptap/sdk/forum/ForumFragment$14;-><init>(Lcom/taptap/sdk/forum/ForumFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 312
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    const-string v1, "clearCache"

    new-instance v2, Lcom/taptap/sdk/forum/ForumFragment$15;

    invoke-direct {v2, p0}, Lcom/taptap/sdk/forum/ForumFragment$15;-><init>(Lcom/taptap/sdk/forum/ForumFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 320
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    const-string v1, "openWebView"

    new-instance v2, Lcom/taptap/sdk/forum/ForumFragment$16;

    invoke-direct {v2, p0}, Lcom/taptap/sdk/forum/ForumFragment$16;-><init>(Lcom/taptap/sdk/forum/ForumFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 347
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    const-string v1, "closeWebView"

    new-instance v2, Lcom/taptap/sdk/forum/ForumFragment$17;

    invoke-direct {v2, p0}, Lcom/taptap/sdk/forum/ForumFragment$17;-><init>(Lcom/taptap/sdk/forum/ForumFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 363
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    new-instance v1, Lcom/taptap/sdk/forum/ForumFragment$18;

    invoke-direct {v1, p0}, Lcom/taptap/sdk/forum/ForumFragment$18;-><init>(Lcom/taptap/sdk/forum/ForumFragment;)V

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 371
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    new-instance v1, Lcom/taptap/sdk/forum/ForumFragment$19;

    invoke-direct {v1, p0}, Lcom/taptap/sdk/forum/ForumFragment$19;-><init>(Lcom/taptap/sdk/forum/ForumFragment;)V

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 450
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    new-instance v1, Lcom/taptap/sdk/forum/ForumFragment$20;

    invoke-direct {v1, p0}, Lcom/taptap/sdk/forum/ForumFragment$20;-><init>(Lcom/taptap/sdk/forum/ForumFragment;)V

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 458
    return-void
.end method

.method private onActivityResultAboveL(IILandroid/content/Intent;)V
    .registers 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 495
    const/16 v5, 0x2710

    if-ne p1, v5, :cond_8

    iget-object v5, p0, Lcom/taptap/sdk/forum/ForumFragment;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    if-nez v5, :cond_9

    .line 515
    :cond_8
    :goto_8
    return-void

    .line 497
    :cond_9
    const/4 v4, 0x0

    .line 498
    .local v4, "results":[Landroid/net/Uri;
    const/4 v5, -0x1

    if-ne p2, v5, :cond_3f

    .line 499
    if-eqz p3, :cond_3f

    .line 500
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, "dataString":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    .line 502
    .local v0, "clipData":Landroid/content/ClipData;
    if-eqz v0, :cond_33

    .line 503
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    new-array v4, v5, [Landroid/net/Uri;

    .line 504
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_20
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    if-ge v2, v5, :cond_33

    .line 505
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    .line 506
    .local v3, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v4, v2

    .line 504
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 509
    .end local v2    # "i":I
    .end local v3    # "item":Landroid/content/ClipData$Item;
    :cond_33
    if-eqz v1, :cond_3f

    .line 510
    const/4 v5, 0x1

    new-array v4, v5, [Landroid/net/Uri;

    .end local v4    # "results":[Landroid/net/Uri;
    const/4 v5, 0x0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    aput-object v6, v4, v5

    .line 513
    .end local v0    # "clipData":Landroid/content/ClipData;
    .end local v1    # "dataString":Ljava/lang/String;
    .restart local v4    # "results":[Landroid/net/Uri;
    :cond_3f
    iget-object v5, p0, Lcom/taptap/sdk/forum/ForumFragment;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    invoke-interface {v5, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 514
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/taptap/sdk/forum/ForumFragment;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    goto :goto_8
.end method

.method private onDeviceStatusDidChange()V
    .registers 4

    .prologue
    .line 599
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    const-string v1, "deviceStatusDidChange"

    invoke-direct {p0}, Lcom/taptap/sdk/forum/ForumFragment;->deviceStatus2Json()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->callHandler(Ljava/lang/String;Ljava/lang/Object;)V

    .line 600
    return-void
.end method

.method private openImageChooserActivity()V
    .registers 4

    .prologue
    .line 461
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 462
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    const-string v1, "Image Chooser"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-virtual {p0, v1, v2}, Lcom/taptap/sdk/forum/ForumFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 465
    return-void
.end method


# virtual methods
.method public back()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 195
    iget-object v1, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    if-eqz v1, :cond_2d

    .line 196
    iget-boolean v1, p0, Lcom/taptap/sdk/forum/ForumFragment;->isLoggingIn:Z

    if-eqz v1, :cond_1f

    .line 197
    iget-object v1, p0, Lcom/taptap/sdk/forum/ForumFragment;->lastInnerAppUrl:Ljava/lang/String;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/taptap/sdk/forum/ForumFragment;->lastInnerAppUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 198
    iget-object v1, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v2, p0, Lcom/taptap/sdk/forum/ForumFragment;->lastInnerAppUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->loadUrl(Ljava/lang/String;)V

    .line 207
    :goto_1e
    return v0

    .line 202
    :cond_1f
    iget-object v1, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    invoke-virtual {v1}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 203
    iget-object v1, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    invoke-virtual {v1}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->goBack()V

    goto :goto_1e

    .line 207
    :cond_2d
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 469
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 470
    const/16 v5, 0x2710

    if-ne p1, v5, :cond_30

    .line 471
    iget-object v5, p0, Lcom/taptap/sdk/forum/ForumFragment;->uploadMessage:Landroid/webkit/ValueCallback;

    if-nez v5, :cond_11

    iget-object v5, p0, Lcom/taptap/sdk/forum/ForumFragment;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    if-nez v5, :cond_11

    .line 491
    :cond_10
    :goto_10
    return-void

    .line 472
    :cond_11
    if-eqz p3, :cond_16

    const/4 v5, -0x1

    if-eq p2, v5, :cond_1f

    :cond_16
    move-object v3, v4

    .line 473
    .local v3, "result":Landroid/net/Uri;
    :goto_17
    iget-object v5, p0, Lcom/taptap/sdk/forum/ForumFragment;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    if-eqz v5, :cond_24

    .line 474
    invoke-direct {p0, p1, p2, p3}, Lcom/taptap/sdk/forum/ForumFragment;->onActivityResultAboveL(IILandroid/content/Intent;)V

    goto :goto_10

    .line 472
    .end local v3    # "result":Landroid/net/Uri;
    :cond_1f
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    goto :goto_17

    .line 475
    .restart local v3    # "result":Landroid/net/Uri;
    :cond_24
    iget-object v5, p0, Lcom/taptap/sdk/forum/ForumFragment;->uploadMessage:Landroid/webkit/ValueCallback;

    if-eqz v5, :cond_10

    .line 476
    iget-object v5, p0, Lcom/taptap/sdk/forum/ForumFragment;->uploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {v5, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 477
    iput-object v4, p0, Lcom/taptap/sdk/forum/ForumFragment;->uploadMessage:Landroid/webkit/ValueCallback;

    goto :goto_10

    .line 479
    .end local v3    # "result":Landroid/net/Uri;
    :cond_30
    const/16 v4, 0x2711

    if-ne p1, v4, :cond_10

    .line 480
    iget-object v4, p0, Lcom/taptap/sdk/forum/ForumFragment;->callback:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    if-eqz v4, :cond_10

    .line 482
    :try_start_38
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 483
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "content"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 484
    .local v1, "content":Ljava/lang/String;
    iget-object v4, p0, Lcom/taptap/sdk/forum/ForumFragment;->callback:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    invoke-interface {v4, v1}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_47} :catch_48

    goto :goto_10

    .line 485
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "content":Ljava/lang/String;
    :catch_48
    move-exception v2

    .line 486
    .local v2, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/taptap/sdk/forum/ForumFragment;->callback:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    const-string v5, ""

    invoke-interface {v4, v5}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    goto :goto_10
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 15
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/high16 v12, 0x41a00000    # 20.0f

    const/high16 v11, 0x41200000    # 10.0f

    const/high16 v8, 0x41100000    # 9.0f

    const/high16 v10, 0x41600000    # 14.0f

    .line 519
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 521
    :try_start_b
    invoke-virtual {p0}, Lcom/taptap/sdk/forum/ForumFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v2, v6, Landroid/util/DisplayMetrics;->density:F

    .line 522
    .local v2, "dpi":F
    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_b4

    .line 523
    iget-object v6, p0, Lcom/taptap/sdk/forum/ForumFragment;->close:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 524
    .local v1, "closeLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v6, 0x0

    mul-float v7, v8, v2

    float-to-int v7, v7

    mul-float v8, v11, v2

    float-to-int v8, v8

    const/4 v9, 0x0

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 525
    mul-float v6, v11, v2

    float-to-int v6, v6

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 526
    iget-object v6, p0, Lcom/taptap/sdk/forum/ForumFragment;->close:Landroid/widget/ImageButton;

    invoke-virtual {v6, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 529
    iget-object v6, p0, Lcom/taptap/sdk/forum/ForumFragment;->other:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 530
    .local v4, "otherLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v6, 0x0

    mul-float v7, v11, v2

    float-to-int v7, v7

    mul-float v8, v10, v2

    float-to-int v8, v8

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 531
    mul-float v6, v10, v2

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 532
    iget-object v6, p0, Lcom/taptap/sdk/forum/ForumFragment;->other:Landroid/widget/ImageButton;

    invoke-virtual {v6, v4}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 534
    iget-boolean v6, p0, Lcom/taptap/sdk/forum/ForumFragment;->isLoggingIn:Z

    if-eqz v6, :cond_9e

    .line 535
    iget-object v6, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    invoke-virtual {v6}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 536
    .local v5, "webViewLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/taptap/sdk/forum/ForumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const/high16 v7, 0x42300000    # 44.0f

    invoke-static {v6, v7}, Lcom/taptap/sdk/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 537
    iget-object v6, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    invoke-virtual {v6, v5}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 539
    iget-object v6, p0, Lcom/taptap/sdk/forum/ForumFragment;->back:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 540
    .local v0, "backLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/taptap/sdk/forum/ForumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const/high16 v7, 0x41100000    # 9.0f

    invoke-static {v6, v7}, Lcom/taptap/sdk/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 541
    invoke-virtual {p0}, Lcom/taptap/sdk/forum/ForumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const/high16 v7, 0x41100000    # 9.0f

    invoke-static {v6, v7}, Lcom/taptap/sdk/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 542
    iget-object v6, p0, Lcom/taptap/sdk/forum/ForumFragment;->back:Landroid/widget/ImageButton;

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 580
    .end local v0    # "backLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1    # "closeLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "dpi":F
    .end local v4    # "otherLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v5    # "webViewLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_9d
    :goto_9d
    return-void

    .line 544
    .restart local v1    # "closeLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v2    # "dpi":F
    .restart local v4    # "otherLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_9e
    iget-object v6, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    invoke-virtual {v6}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 545
    .restart local v5    # "webViewLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v6, 0x0

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 546
    iget-object v6, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    invoke-virtual {v6, v5}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_ae} :catch_af

    goto :goto_9d

    .line 577
    .end local v1    # "closeLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "dpi":F
    .end local v4    # "otherLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v5    # "webViewLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :catch_af
    move-exception v3

    .line 578
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9d

    .line 549
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "dpi":F
    :cond_b4
    :try_start_b4
    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_9d

    .line 550
    iget-object v6, p0, Lcom/taptap/sdk/forum/ForumFragment;->close:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 551
    .restart local v1    # "closeLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v6, 0x0

    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v7, v2

    float-to-int v7, v7

    mul-float v8, v12, v2

    float-to-int v8, v8

    const/4 v9, 0x0

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 552
    mul-float v6, v12, v2

    float-to-int v6, v6

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 553
    iget-object v6, p0, Lcom/taptap/sdk/forum/ForumFragment;->close:Landroid/widget/ImageButton;

    invoke-virtual {v6, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 556
    iget-object v6, p0, Lcom/taptap/sdk/forum/ForumFragment;->other:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 557
    .restart local v4    # "otherLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v6, 0x0

    const/high16 v7, 0x40800000    # 4.0f

    mul-float/2addr v7, v2

    float-to-int v7, v7

    mul-float v8, v10, v2

    float-to-int v8, v8

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 558
    mul-float v6, v10, v2

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 559
    iget-object v6, p0, Lcom/taptap/sdk/forum/ForumFragment;->other:Landroid/widget/ImageButton;

    invoke-virtual {v6, v4}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 561
    iget-boolean v6, p0, Lcom/taptap/sdk/forum/ForumFragment;->isLoggingIn:Z

    if-eqz v6, :cond_13c

    .line 562
    iget-object v6, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    invoke-virtual {v6}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 563
    .restart local v5    # "webViewLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/taptap/sdk/forum/ForumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const/high16 v7, 0x42000000    # 32.0f

    invoke-static {v6, v7}, Lcom/taptap/sdk/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 564
    iget-object v6, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    invoke-virtual {v6, v5}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 566
    iget-object v6, p0, Lcom/taptap/sdk/forum/ForumFragment;->back:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 567
    .restart local v0    # "backLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/taptap/sdk/forum/ForumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const/high16 v7, 0x40400000    # 3.0f

    invoke-static {v6, v7}, Lcom/taptap/sdk/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 568
    invoke-virtual {p0}, Lcom/taptap/sdk/forum/ForumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v6, v7}, Lcom/taptap/sdk/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 569
    iget-object v6, p0, Lcom/taptap/sdk/forum/ForumFragment;->back:Landroid/widget/ImageButton;

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_9d

    .line 571
    .end local v0    # "backLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v5    # "webViewLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_13c
    iget-object v6, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    invoke-virtual {v6}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 572
    .restart local v5    # "webViewLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v6, 0x0

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 573
    iget-object v6, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    invoke-virtual {v6, v5}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_14c
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_14c} :catch_af

    goto/16 :goto_9d
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/taptap/sdk/forum/ForumFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 104
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "app_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taptap/sdk/forum/ForumFragment;->app_id:Ljava/lang/String;

    .line 105
    const-string v1, "uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taptap/sdk/forum/ForumFragment;->uri:Ljava/lang/String;

    .line 106
    const-string v1, "locale"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 107
    const-string v1, "locale"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    iput-object v1, p0, Lcom/taptap/sdk/forum/ForumFragment;->locale:Ljava/util/Locale;

    .line 109
    :cond_27
    const-string v1, "orientation"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/taptap/sdk/forum/ForumFragment;->orientation:I

    .line 110
    const-string v1, "type"

    const-string v2, "default"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "common_webview"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/taptap/sdk/forum/ForumFragment;->isCommonWebview:Z

    .line 111
    const-string v1, "site"

    const-string v2, "cn"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taptap/sdk/forum/ForumFragment;->site:Ljava/lang/String;

    .line 112
    iget-object v1, p0, Lcom/taptap/sdk/forum/ForumFragment;->site:Ljava/lang/String;

    const-string v2, "io"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 113
    const-string v1, "https://innerapp.tap.io/bbs/sdk/"

    iput-object v1, p0, Lcom/taptap/sdk/forum/ForumFragment;->baseUrl:Ljava/lang/String;

    .line 117
    :goto_57
    iget-boolean v1, p0, Lcom/taptap/sdk/forum/ForumFragment;->isCommonWebview:Z

    if-eqz v1, :cond_6f

    .line 118
    invoke-virtual {p0}, Lcom/taptap/sdk/forum/ForumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "fragment_webview"

    invoke-static {v1, v2}, Lcom/taptap/sdk/Utils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 120
    :goto_69
    return-object v1

    .line 115
    :cond_6a
    const-string v1, "https://innerapp.taptap.com/bbs/sdk/"

    iput-object v1, p0, Lcom/taptap/sdk/forum/ForumFragment;->baseUrl:Ljava/lang/String;

    goto :goto_57

    .line 120
    :cond_6f
    invoke-virtual {p0}, Lcom/taptap/sdk/forum/ForumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "fragment_forum"

    invoke-static {v1, v2}, Lcom/taptap/sdk/Utils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_69
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 584
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 585
    iput-object v2, p0, Lcom/taptap/sdk/forum/ForumFragment;->callback:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    .line 586
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->handler:Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;

    invoke-virtual {v0, v2}, Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 587
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->keyboardStatusDetector:Lcom/taptap/sdk/KeyboardStatusDetector;

    invoke-virtual {v0, v2}, Lcom/taptap/sdk/KeyboardStatusDetector;->setVisibilityListener(Lcom/taptap/sdk/KeyboardStatusDetector$KeyboardVisibilityListener;)Lcom/taptap/sdk/KeyboardStatusDetector;

    .line 588
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    if-eqz v0, :cond_37

    .line 589
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    invoke-virtual {v0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->removeAllViews()V

    .line 590
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    invoke-virtual {v0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 591
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    invoke-virtual {v0, v2}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->setTag(Ljava/lang/Object;)V

    .line 592
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    invoke-virtual {v0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->clearHistory()V

    .line 593
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    invoke-virtual {v0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->destroy()V

    .line 594
    iput-object v2, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    .line 596
    :cond_37
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 126
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 127
    new-instance v2, Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;

    invoke-direct {v2, p0}, Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;-><init>(Lcom/taptap/sdk/forum/ForumFragment;)V

    iput-object v2, p0, Lcom/taptap/sdk/forum/ForumFragment;->handler:Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;

    .line 128
    invoke-virtual {p0}, Lcom/taptap/sdk/forum/ForumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "webview"

    invoke-static {v2, v3}, Lcom/taptap/sdk/Utils;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iput-object v2, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    .line 129
    invoke-virtual {p0}, Lcom/taptap/sdk/forum/ForumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "root"

    invoke-static {v2, v3}, Lcom/taptap/sdk/Utils;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/taptap/sdk/forum/ForumFragment;->root:Landroid/widget/FrameLayout;

    .line 130
    invoke-virtual {p0}, Lcom/taptap/sdk/forum/ForumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "sdk_fg_forum_container"

    invoke-static {v2, v3}, Lcom/taptap/sdk/Utils;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/taptap/sdk/forum/ForumFragment;->forum:Landroid/widget/RelativeLayout;

    .line 131
    invoke-virtual {p0}, Lcom/taptap/sdk/forum/ForumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "close"

    invoke-static {v2, v3}, Lcom/taptap/sdk/Utils;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/taptap/sdk/forum/ForumFragment;->close:Landroid/widget/ImageButton;

    .line 132
    invoke-virtual {p0}, Lcom/taptap/sdk/forum/ForumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "back"

    invoke-static {v2, v3}, Lcom/taptap/sdk/Utils;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/taptap/sdk/forum/ForumFragment;->back:Landroid/widget/ImageButton;

    .line 133
    invoke-virtual {p0}, Lcom/taptap/sdk/forum/ForumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "other"

    invoke-static {v2, v3}, Lcom/taptap/sdk/Utils;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/taptap/sdk/forum/ForumFragment;->other:Landroid/widget/ImageButton;

    .line 134
    invoke-virtual {p0}, Lcom/taptap/sdk/forum/ForumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "loading"

    invoke-static {v2, v3}, Lcom/taptap/sdk/Utils;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/taptap/sdk/forum/ForumFragment;->loading:Landroid/widget/ProgressBar;

    .line 135
    iget-object v2, p0, Lcom/taptap/sdk/forum/ForumFragment;->close:Landroid/widget/ImageButton;

    new-instance v3, Lcom/taptap/sdk/forum/ForumFragment$1;

    invoke-direct {v3, p0}, Lcom/taptap/sdk/forum/ForumFragment$1;-><init>(Lcom/taptap/sdk/forum/ForumFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v2, p0, Lcom/taptap/sdk/forum/ForumFragment;->back:Landroid/widget/ImageButton;

    new-instance v3, Lcom/taptap/sdk/forum/ForumFragment$2;

    invoke-direct {v3, p0}, Lcom/taptap/sdk/forum/ForumFragment$2;-><init>(Lcom/taptap/sdk/forum/ForumFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v2, p0, Lcom/taptap/sdk/forum/ForumFragment;->other:Landroid/widget/ImageButton;

    new-instance v3, Lcom/taptap/sdk/forum/ForumFragment$3;

    invoke-direct {v3, p0}, Lcom/taptap/sdk/forum/ForumFragment$3;-><init>(Lcom/taptap/sdk/forum/ForumFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    invoke-direct {p0}, Lcom/taptap/sdk/forum/ForumFragment;->initWebView()V

    .line 162
    iget-object v2, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    invoke-virtual {v2}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TapitkAndroid/1.1.1.a without-native-login "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    invoke-virtual {v4}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 163
    iget-object v2, p0, Lcom/taptap/sdk/forum/ForumFragment;->uri:Ljava/lang/String;

    if-eqz v2, :cond_13c

    iget-object v2, p0, Lcom/taptap/sdk/forum/ForumFragment;->uri:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13c

    .line 165
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 167
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_e4
    const-string v2, "uri"

    iget-object v3, p0, Lcom/taptap/sdk/forum/ForumFragment;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_eb
    .catch Lorg/json/JSONException; {:try_start_e4 .. :try_end_eb} :catch_161
    .catch Ljava/lang/NullPointerException; {:try_start_e4 .. :try_end_eb} :catch_137

    .line 171
    :goto_eb
    iget-object v2, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/taptap/sdk/forum/ForumFragment;->baseUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%s%s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "entry-redirect?to="

    aput-object v5, v4, v6

    .line 172
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/taptap/sdk/Utils;->encodeToBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 171
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->loadUrl(Ljava/lang/String;)V

    .line 178
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_122
    new-instance v2, Lcom/taptap/sdk/KeyboardStatusDetector;

    invoke-direct {v2}, Lcom/taptap/sdk/KeyboardStatusDetector;-><init>()V

    .line 179
    invoke-virtual {v2, p0}, Lcom/taptap/sdk/KeyboardStatusDetector;->registerFragment(Landroid/support/v4/app/Fragment;)Lcom/taptap/sdk/KeyboardStatusDetector;

    move-result-object v2

    new-instance v3, Lcom/taptap/sdk/forum/ForumFragment$4;

    invoke-direct {v3, p0}, Lcom/taptap/sdk/forum/ForumFragment$4;-><init>(Lcom/taptap/sdk/forum/ForumFragment;)V

    .line 180
    invoke-virtual {v2, v3}, Lcom/taptap/sdk/KeyboardStatusDetector;->setVisibilityListener(Lcom/taptap/sdk/KeyboardStatusDetector$KeyboardVisibilityListener;)Lcom/taptap/sdk/KeyboardStatusDetector;

    move-result-object v2

    iput-object v2, p0, Lcom/taptap/sdk/forum/ForumFragment;->keyboardStatusDetector:Lcom/taptap/sdk/KeyboardStatusDetector;

    .line 191
    return-void

    .line 168
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_137
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    :goto_138
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_eb

    .line 174
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_13c
    iget-object v2, p0, Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/taptap/sdk/forum/ForumFragment;->baseUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%s/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/taptap/sdk/forum/ForumFragment;->app_id:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_122

    .line 168
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_161
    move-exception v0

    goto :goto_138
.end method
