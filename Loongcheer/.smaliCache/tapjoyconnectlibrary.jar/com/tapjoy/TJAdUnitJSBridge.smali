.class public Lcom/tapjoy/TJAdUnitJSBridge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJWebViewJSInterfaceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TJAdUnitJSBridge$a;,
        Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;
    }
.end annotation


# instance fields
.field public a:Lcom/tapjoy/TJAdUnit;

.field public allowRedirect:Z

.field public b:Landroid/webkit/WebView;

.field final c:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;>;"
        }
    .end annotation
.end field

.field public closeRequested:Z

.field public customClose:Z

.field private d:Lcom/tapjoy/TJWebViewJSInterface;

.field public didLaunchOtherActivity:Z

.field private e:Lcom/tapjoy/TJAdUnitJSBridge;

.field private f:Landroid/content/Context;

.field private g:Lcom/tapjoy/TJAdUnitActivity;

.field private h:Lcom/tapjoy/TJSplitWebView;

.field private i:Landroid/app/ProgressDialog;

.field private j:Landroid/view/View;

.field private k:Z

.field private l:Lcom/tapjoy/internal/er;

.field public otherActivityCallbackID:Ljava/lang/String;

.field public splitWebViewCallbackID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .registers 7
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "w"    # Landroid/webkit/WebView;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->j:Landroid/view/View;

    .line 64
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->didLaunchOtherActivity:Z

    .line 65
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tapjoy/TJAdUnitJSBridge;->allowRedirect:Z

    .line 66
    iput-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->otherActivityCallbackID:Ljava/lang/String;

    .line 67
    iput-boolean v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->customClose:Z

    .line 68
    iput-boolean v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->closeRequested:Z

    .line 69
    iput-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->splitWebViewCallbackID:Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/tapjoy/internal/er;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/er;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->l:Lcom/tapjoy/internal/er;

    .line 75
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 88
    const-string v0, "TJAdUnitJSBridge"

    const-string v1, "creating AdUnit/JS Bridge"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->f:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/tapjoy/TJAdUnitJSBridge;->b:Landroid/webkit/WebView;

    .line 91
    iput-object p0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->e:Lcom/tapjoy/TJAdUnitJSBridge;

    .line 93
    if-nez p2, :cond_3e

    .line 94
    new-instance v1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v3, "Cannot create AdUnitJSBridge -- webview is NULL"

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 95
    return-void

    .line 99
    :cond_3e
    new-instance v0, Lcom/tapjoy/TJWebViewJSInterface;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->b:Landroid/webkit/WebView;

    invoke-direct {v0, v1, p0}, Lcom/tapjoy/TJWebViewJSInterface;-><init>(Landroid/webkit/WebView;Lcom/tapjoy/TJWebViewJSInterfaceListener;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->d:Lcom/tapjoy/TJWebViewJSInterface;

    .line 101
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->b:Landroid/webkit/WebView;

    const-string v3, "AndroidJavascriptInterface"

    invoke-virtual {v1, v0, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->setEnabled(Z)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tapjoy/TJAdUnit;)V
    .registers 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "tjAdUnit"    # Lcom/tapjoy/TJAdUnit;

    .line 78
    invoke-virtual {p2}, Lcom/tapjoy/TJAdUnit;->getWebView()Lcom/tapjoy/TJWebView;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tapjoy/TJAdUnitJSBridge;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 79
    iput-object p2, p0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/TJAdUnitJSBridge;)Lcom/tapjoy/TJSplitWebView;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->h:Lcom/tapjoy/TJSplitWebView;

    return-object p0
.end method

.method static synthetic a(Lcom/tapjoy/TJAdUnitJSBridge;Lcom/tapjoy/TJSplitWebView;)Lcom/tapjoy/TJSplitWebView;
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->h:Lcom/tapjoy/TJSplitWebView;

    return-object p1
.end method

.method static synthetic b(Lcom/tapjoy/TJAdUnitJSBridge;)Lcom/tapjoy/TJAdUnitActivity;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->g:Lcom/tapjoy/TJAdUnitActivity;

    return-object p0
.end method

.method static synthetic c(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/content/Context;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->f:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public alert(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 12
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 162
    const-string v0, ""

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "alert_method: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TJAdUnitJSBridge"

    invoke-static {v2, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    nop

    .line 164
    nop

    .line 165
    nop

    .line 169
    const/4 v1, 0x1

    const/4 v3, 0x0

    :try_start_16
    const-string v4, "title"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1c} :catch_2e

    .line 170
    :try_start_1c
    const-string v5, "message"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    const-string v5, "buttons"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_28} :catch_29

    .line 177
    goto :goto_40

    .line 173
    :catch_29
    move-exception v5

    move-object v8, v4

    move-object v4, v0

    move-object v0, v8

    goto :goto_30

    :catch_2e
    move-exception v5

    move-object v4, v0

    .line 175
    :goto_30
    new-array v6, v1, [Ljava/lang/Object;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v7, v6, v3

    invoke-virtual {p0, p2, v6}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v5, 0x0

    move-object v8, v4

    move-object v4, v0

    move-object v0, v8

    .line 179
    :goto_40
    iget-object v6, p0, Lcom/tapjoy/TJAdUnitJSBridge;->g:Lcom/tapjoy/TJAdUnitActivity;

    .line 180
    if-eqz v6, :cond_bf

    .line 183
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v2, v7, :cond_5f

    .line 184
    new-instance v2, Landroid/app/AlertDialog$Builder;

    const v7, 0x103023a

    invoke-direct {v2, v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 185
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 186
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_70

    .line 190
    :cond_5f
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 193
    :goto_70
    if-eqz v5, :cond_b5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_79

    goto :goto_b5

    .line 197
    :cond_79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 199
    const/4 v2, 0x0

    :goto_7f
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_ab

    .line 202
    packed-switch v2, :pswitch_data_c6

    .line 211
    const/4 v4, -0x1

    goto :goto_8e

    .line 207
    :pswitch_8a
    const/4 v4, -0x3

    .line 208
    goto :goto_8e

    .line 204
    :pswitch_8c
    const/4 v4, -0x2

    .line 205
    nop

    .line 216
    :goto_8e
    :try_start_8e
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_95} :catch_96

    .line 219
    goto :goto_9a

    .line 218
    :catch_96
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 222
    :goto_9a
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    new-instance v7, Lcom/tapjoy/TJAdUnitJSBridge$1;

    invoke-direct {v7, p0, p2}, Lcom/tapjoy/TJAdUnitJSBridge$1;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v6, v7}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_7f

    .line 247
    :cond_ab
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 248
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 249
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 251
    return-void

    .line 194
    :cond_b5
    :goto_b5
    new-array v0, v1, [Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v3

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 252
    :cond_bf
    const-string v0, "Cannot alert -- TJAdUnitActivity is null"

    invoke-static {v2, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void

    nop

    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_8c
        :pswitch_8a
    .end packed-switch
.end method

.method public attachVolumeListener(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 9
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 1241
    const-string v0, "TJAdUnitJSBridge"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_4
    const-string v3, "attach"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1242
    const-string v4, "interval"

    const/16 v5, 0x1f4

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 1243
    if-lez v4, :cond_23

    .line 1244
    iget-object v5, p0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v5, v3, v4}, Lcom/tapjoy/TJAdUnit;->attachVolumeListener(ZI)V

    .line 1245
    new-array v3, v2, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v1

    invoke-virtual {p0, p2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1247
    :cond_23
    const-string v3, "Invalid `interval` value passed to attachVolumeListener(): interval="

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    new-array v3, v2, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v3, v1

    invoke-virtual {p0, p2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_39} :catch_3a

    .line 1254
    return-void

    .line 1250
    :catch_3a
    move-exception v3

    .line 1251
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "attachVolumeListener exception "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    new-array v0, v2, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1253
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1255
    return-void
.end method

.method public cacheAsset(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 11
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    const/4 v0, 0x0

    .line 531
    .local v0, "assetURL":Ljava/lang/String;
    nop

    .line 532
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 536
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_a
    const-string v4, "url"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_4c

    move-object v0, v4

    .line 541
    nop

    .line 545
    :try_start_12
    const-string v4, "offerId"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_18} :catch_19

    .line 547
    goto :goto_1c

    .line 546
    :catch_19
    move-exception v4

    const-string v4, ""

    .line 550
    :goto_1c
    :try_start_1c
    const-string v5, "timeToLive"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_26} :catch_27

    .line 552
    goto :goto_28

    .line 551
    :catch_27
    move-exception v5

    .line 554
    :goto_28
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v5

    if-eqz v5, :cond_42

    .line 555
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v0, v4, v6, v7}, Lcom/tapjoy/TapjoyCache;->cacheAssetFromURL(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {p0, p2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 557
    :cond_42
    new-array v1, v3, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 559
    return-void

    .line 537
    :catch_4c
    move-exception v1

    .line 538
    const-string v1, "TJAdUnitJSBridge"

    const-string v4, "Unable to cache video. Invalid parameters."

    invoke-static {v1, v4}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    new-array v1, v3, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 540
    return-void
.end method

.method public cachePathForURL(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 8
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    const-string v0, ""

    const/4 v1, 0x0

    .line 571
    .local v1, "url":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_5
    const-string v4, "url"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_2b

    move-object v1, v4

    .line 575
    nop

    .line 577
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v4

    if-eqz v4, :cond_23

    .line 578
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/tapjoy/TapjoyCache;->getPathOfCachedURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 580
    :cond_23
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-virtual {p0, p2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 582
    return-void

    .line 572
    :catch_2b
    move-exception v4

    .line 573
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-virtual {p0, p2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 574
    return-void
.end method

.method public cleanUpJSBridge()V
    .registers 3

    .line 1530
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->d:Lcom/tapjoy/TJWebViewJSInterface;

    if-eqz v0, :cond_1d

    .line 1531
    iget-object v0, v0, Lcom/tapjoy/TJWebViewJSInterface;->a:Landroid/webkit/WebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 1532
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->d:Lcom/tapjoy/TJWebViewJSInterface;

    iget-object v0, v0, Lcom/tapjoy/TJWebViewJSInterface;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 1533
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->d:Lcom/tapjoy/TJWebViewJSInterface;

    iget-object v0, v0, Lcom/tapjoy/TJWebViewJSInterface;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 1534
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->d:Lcom/tapjoy/TJWebViewJSInterface;

    iput-object v1, v0, Lcom/tapjoy/TJWebViewJSInterface;->a:Landroid/webkit/WebView;

    .line 1536
    :cond_1b
    iput-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->d:Lcom/tapjoy/TJWebViewJSInterface;

    .line 1538
    :cond_1d
    return-void
.end method

.method public clearCache(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 6
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 447
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_19

    .line 448
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyCache;->clearTapjoyCache()V

    .line 449
    new-array v0, v2, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 451
    :cond_19
    new-array v0, v2, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    return-void
.end method

.method public clearLoggingLevel(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 4
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 1229
    invoke-static {}, Lcom/tapjoy/TapjoyAppSettings;->getInstance()Lcom/tapjoy/TapjoyAppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyAppSettings;->clearLoggingLevel()V

    .line 1230
    return-void
.end method

.method public clearVideo(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 6
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 791
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    if-eqz v0, :cond_15

    .line 793
    const/4 v0, 0x0

    const-string v1, "visible"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 795
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    new-instance v2, Lcom/tapjoy/TJAdUnitJSBridge$10;

    invoke-direct {v2, p0, p2}, Lcom/tapjoy/TJAdUnitJSBridge$10;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lcom/tapjoy/TJAdUnit;->clearVideo(Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;Z)V

    .line 802
    :cond_15
    return-void
.end method

.method public closeRequested(Ljava/lang/Boolean;)V
    .registers 4
    .param p1, "shouldForceClose"    # Ljava/lang/Boolean;

    .line 261
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->h:Lcom/tapjoy/TJSplitWebView;

    if-eqz v0, :cond_10

    .line 262
    invoke-virtual {v0}, Lcom/tapjoy/TJSplitWebView;->goBack()Z

    move-result v0

    if-nez v0, :cond_22

    .line 263
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->h:Lcom/tapjoy/TJSplitWebView;

    invoke-virtual {v0}, Lcom/tapjoy/TJSplitWebView;->a()V

    return-void

    .line 266
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->closeRequested:Z

    .line 268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 269
    const-string v1, "forceClose"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string v1, "closeRequested"

    invoke-virtual {p0, v1, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSAdunitMethod(Ljava/lang/String;Ljava/util/Map;)V

    .line 273
    :cond_22
    return-void
.end method

.method public contentReady(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 6
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 602
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    .line 603
    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->fireContentReady()V

    .line 604
    new-array v0, v2, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 606
    :cond_13
    new-array v0, v2, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 608
    return-void
.end method

.method public destroy()V
    .registers 1

    .line 318
    return-void
.end method

.method public dismiss(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 7
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 326
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->g:Lcom/tapjoy/TJAdUnitActivity;

    .line 327
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    .line 328
    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v2, v1

    invoke-virtual {p0, p2, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitActivity;->finish()V

    return-void

    .line 331
    :cond_13
    const-string v0, "TJAdUnitJSBridge"

    const-string v3, "Cannot dismiss -- TJAdUnitActivity is null"

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    new-array v0, v2, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    return-void
.end method

.method public dismissSplitView(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 4
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 1453
    new-instance v0, Lcom/tapjoy/TJAdUnitJSBridge$4;

    invoke-direct {v0, p0, p2}, Lcom/tapjoy/TJAdUnitJSBridge$4;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 1476
    return-void
.end method

.method public dismissStoreView(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 3
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 356
    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/TJAdUnitJSBridge;->dismissSplitView(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public display()V
    .registers 3

    .line 340
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "display"

    invoke-virtual {p0, v1, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSAdunitMethod(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    return-void
.end method

.method public displayStoreURL(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 3
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 352
    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/TJAdUnitJSBridge;->displayURL(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public displayURL(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 16
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 363
    nop

    .line 364
    const/4 v0, 0x1

    :try_start_2
    const-string v1, "style"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 365
    const-string v2, "url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 366
    const-string v2, "splitViewLayout"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 367
    const-string v2, "splitViewExitHosts"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 368
    const-string v2, "userAgent"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 369
    const-string v2, "splitViewTrigger"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 372
    if-eqz v2, :cond_38

    .line 373
    const-string v4, "on"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 374
    const-string v5, "to"

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    move-object v9, v4

    goto :goto_3b

    .line 376
    :cond_38
    nop

    .line 377
    move-object v9, v3

    move-object v10, v9

    .line 380
    :goto_3b
    const-string v2, "split"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 381
    new-instance v1, Lcom/tapjoy/TJAdUnitJSBridge$6;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    move-object v11, p2

    invoke-direct/range {v3 .. v12}, Lcom/tapjoy/TJAdUnitJSBridge$6;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void

    .line 429
    :cond_50
    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->didLaunchOtherActivity:Z

    .line 430
    iput-object p2, p0, Lcom/tapjoy/TJAdUnitJSBridge;->otherActivityCallbackID:Ljava/lang/String;

    .line 431
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 432
    iget-object v2, p0, Lcom/tapjoy/TJAdUnitJSBridge;->f:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_64} :catch_65

    .line 439
    return-void

    .line 435
    :catch_65
    move-exception v1

    .line 437
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v0, v2

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 440
    return-void
.end method

.method public displayVideo(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 8
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    const/4 v0, 0x0

    .line 745
    .local v0, "url":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_3
    const-string v3, "url"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 747
    move-object v0, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1f

    const-string v3, ""

    if-eq v0, v3, :cond_1f

    .line 750
    iget-object v3, p0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    new-instance v4, Lcom/tapjoy/TJAdUnitJSBridge$9;

    invoke-direct {v4, p0, p2}, Lcom/tapjoy/TJAdUnitJSBridge$9;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;Ljava/lang/String;)V

    invoke-virtual {v3, v0, v4}, Lcom/tapjoy/TJAdUnit;->loadVideoUrl(Ljava/lang/String;Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;)V

    return-void

    .line 757
    :cond_1f
    new-array v3, v2, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v3, v1

    invoke-virtual {p0, p2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_28} :catch_29

    .line 763
    return-void

    .line 760
    :catch_29
    move-exception v3

    .line 761
    new-array v2, v2, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v2, v1

    invoke-virtual {p0, p2, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 762
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 764
    return-void
.end method

.method public endUsageTrackingEvent(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 8
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 1380
    const-string v0, "TJAdUnitJSBridge"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_4
    const-string v3, "name"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1381
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1382
    const-string v3, "Empty name for endUsageTrackingEvent"

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    new-array v3, v2, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v3, v1

    invoke-virtual {p0, p2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1384
    return-void

    .line 1387
    :cond_1f
    iget-object v4, p0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    if-eqz v4, :cond_30

    .line 1388
    invoke-virtual {v4, v3, p1}, Lcom/tapjoy/TJAdUnit;->endAdContentTracking(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1389
    new-array v3, v2, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v1

    invoke-virtual {p0, p2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_2f} :catch_31

    .line 1390
    return-void

    .line 1394
    :cond_30
    goto :goto_3f

    .line 1392
    :catch_31
    move-exception v3

    .line 1393
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Unable to endUsageTrackingEvent. Invalid parameters: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    :goto_3f
    new-array v0, v2, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1397
    return-void
.end method

.method public flushBacklogMessageQueue()V
    .registers 3

    .line 1051
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_16

    .line 1052
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {p0, v1, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->onDispatchMethod(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 1054
    :cond_16
    return-void
.end method

.method public flushMessageQueue()V
    .registers 2

    .line 1061
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->d:Lcom/tapjoy/TJWebViewJSInterface;

    if-nez v0, :cond_5

    .line 1062
    return-void

    .line 1064
    :cond_5
    invoke-virtual {v0}, Lcom/tapjoy/TJWebViewJSInterface;->flushMessageQueue()V

    .line 1065
    return-void
.end method

.method public getCachedAssets(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 6
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 590
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    .line 591
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/TapjoyCache;->cachedAssetsToJSON()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 593
    :cond_18
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, ""

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 595
    return-void
.end method

.method public getOrientation(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 6
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 614
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    if-nez v0, :cond_17

    .line 615
    const-string v0, "TJAdUnitJSBridge"

    const-string v1, "No ad unit provided"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 617
    return-void

    .line 620
    :cond_17
    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->getScreenOrientationString()Ljava/lang/String;

    move-result-object v0

    .line 621
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 622
    const-string v2, "orientation"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->getScreenWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "width"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->getScreenHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "height"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 626
    return-void
.end method

.method public getSplitViewURL(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 4
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 1480
    new-instance v0, Lcom/tapjoy/TJAdUnitJSBridge$5;

    invoke-direct {v0, p0, p2}, Lcom/tapjoy/TJAdUnitJSBridge$5;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 1491
    return-void
.end method

.method public getVolume(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 6
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 279
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitJSBridge;->getVolumeArgs()Ljava/util/HashMap;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_a

    .line 281
    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 283
    :cond_a
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    return-void
.end method

.method public getVolumeArgs()Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    const-string v1, "TJAdUnitJSBridge"

    if-nez v0, :cond_d

    .line 297
    const-string v0, "No ad unit provided"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const/4 v0, 0x0

    return-object v0

    .line 302
    :cond_d
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->getVolume()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "%.2f"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 303
    iget-object v2, p0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v2}, Lcom/tapjoy/TJAdUnit;->isMuted()Z

    move-result v2

    .line 304
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getVolumeArgs: volume="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; isMuted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 307
    const-string v3, "currentVolume"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "isMuted"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    return-object v1
.end method

.method public hasSplitView(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 4
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 1438
    new-instance v0, Lcom/tapjoy/TJAdUnitJSBridge$3;

    invoke-direct {v0, p0, p2}, Lcom/tapjoy/TJAdUnitJSBridge$3;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 1449
    return-void
.end method

.method public initMoatVideoTracker(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 6
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 1262
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1263
    return-void
.end method

.method public initViewabilityTracker(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 7
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 1294
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->l:Lcom/tapjoy/internal/er;

    .line 2047
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/er;->a(Lorg/json/JSONObject;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_16

    .line 2048
    iget-object v0, v0, Lcom/tapjoy/internal/er;->a:Lcom/tapjoy/TJAdUnitJSBridge;

    new-array v1, v3, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2049
    return-void

    .line 2053
    :cond_16
    invoke-static {p1}, Lcom/tapjoy/internal/er;->b(Lorg/json/JSONObject;)V

    .line 2055
    sget-object v1, Lcom/tapjoy/internal/er;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/tapjoy/internal/ag;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 2056
    iget-object v0, v0, Lcom/tapjoy/internal/er;->a:Lcom/tapjoy/TJAdUnitJSBridge;

    new-array v1, v3, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2057
    return-void

    .line 2060
    :cond_2d
    new-instance v1, Lcom/tapjoy/internal/er$1;

    invoke-direct {v1, v0, p1, p2}, Lcom/tapjoy/internal/er$1;-><init>(Lcom/tapjoy/internal/er;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 1295
    return-void
.end method

.method public invokeJSAdunitMethod(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1009
    .local p2, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->d:Lcom/tapjoy/TJWebViewJSInterface;

    if-eqz v0, :cond_8

    .line 1010
    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/tapjoy/TJWebViewJSInterface;->callback(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    :cond_8
    return-void
.end method

.method public varargs invokeJSAdunitMethod(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 994
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 995
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->d:Lcom/tapjoy/TJWebViewJSInterface;

    if-eqz v1, :cond_11

    .line 996
    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lcom/tapjoy/TJWebViewJSInterface;->callback(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    :cond_11
    return-void
.end method

.method public invokeJSCallback(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .param p1, "callbackID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1046
    .local p2, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->d:Lcom/tapjoy/TJWebViewJSInterface;

    const-string v1, ""

    invoke-virtual {v0, p2, v1, p1}, Lcom/tapjoy/TJWebViewJSInterface;->callback(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    return-void
.end method

.method public varargs invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .param p1, "callbackID"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;

    .line 1025
    invoke-static {p1}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1026
    const-string v0, "TJAdUnitJSBridge"

    const-string v1, "invokeJSCallback -- no callbackID provided"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    return-void

    .line 1029
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1030
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->d:Lcom/tapjoy/TJWebViewJSInterface;

    if-eqz v1, :cond_20

    .line 1031
    const-string v2, ""

    invoke-virtual {v1, v0, v2, p1}, Lcom/tapjoy/TJWebViewJSInterface;->callback(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    :cond_20
    return-void
.end method

.method public isNetworkAvailable(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 7
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 1501
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    iget-object v2, p0, Lcom/tapjoy/TJAdUnitJSBridge;->f:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1502
    if-eqz v2, :cond_20

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v2, 0x1

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    .line 1503
    :goto_21
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v0

    invoke-virtual {p0, p2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2c} :catch_2d

    .line 1506
    return-void

    .line 1504
    :catch_2d
    move-exception v2

    .line 1505
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v1, v0

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1507
    return-void
.end method

.method public log(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 8
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 857
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    const-string v2, "TJAdUnitJSBridge"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Logging message="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "message"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v2, v0

    invoke-virtual {p0, p2, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_25} :catch_26

    .line 864
    return-void

    .line 860
    :catch_26
    move-exception v2

    .line 862
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v0

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 863
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 865
    return-void
.end method

.method public nativeEval(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 4
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 897
    new-instance v0, Lcom/tapjoy/TJAdUnitJSBridge$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/tapjoy/TJAdUnitJSBridge$12;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 920
    return-void
.end method

.method public notifyOrientationChanged(Ljava/lang/String;II)V
    .registers 7
    .param p1, "orientation"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 1678
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1679
    const-string v1, "orientation"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1680
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1681
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1682
    const-string v1, "orientationChanged"

    invoke-virtual {p0, v1, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSAdunitMethod(Ljava/lang/String;Ljava/util/Map;)V

    .line 1683
    return-void
.end method

.method public onDispatchMethod(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 12
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "json"    # Lorg/json/JSONObject;

    .line 107
    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->k:Z

    const-string v1, "TJAdUnitJSBridge"

    if-eqz v0, :cond_6c

    .line 110
    nop

    .line 113
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_a
    const-string v4, "callbackId"

    invoke-virtual {p2, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    const-string v4, "data"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 116
    const-class v5, Lcom/tapjoy/TJAdUnitJSBridge;

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Lorg/json/JSONObject;

    aput-object v8, v7, v2

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-virtual {v5, p1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 117
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Dispatching method: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with data="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; callbackID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->d:Lcom/tapjoy/TJWebViewJSInterface;

    if-nez v1, :cond_52

    .line 119
    return-void

    .line 121
    :cond_52
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->e:Lcom/tapjoy/TJAdUnitJSBridge;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v2

    aput-object v0, v6, v3

    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_5d} :catch_5e

    .line 125
    return-void

    .line 123
    :catch_5e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    new-array v1, v3, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    return-void

    .line 127
    :cond_6c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Bridge currently disabled. Adding "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to message queue"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method

.method public onVideoCompletion()V
    .registers 4

    .line 1655
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1656
    const-string v1, "videoEventName"

    const-string v2, "videoComplete"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1658
    const-string v1, "videoEvent"

    invoke-virtual {p0, v1, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSAdunitMethod(Ljava/lang/String;Ljava/util/Map;)V

    .line 1659
    return-void
.end method

.method public onVideoError(Ljava/lang/String;)V
    .registers 5
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 1670
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1671
    const-string v1, "videoEventName"

    const-string v2, "videoError"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1673
    const-string v1, "error"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1674
    const-string v1, "videoEvent"

    invoke-virtual {p0, v1, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSAdunitMethod(Ljava/lang/String;Ljava/util/Map;)V

    .line 1675
    return-void
.end method

.method public onVideoInfo(Ljava/lang/String;)V
    .registers 5
    .param p1, "infoMessage"    # Ljava/lang/String;

    .line 1662
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1663
    const-string v1, "videoEventName"

    const-string v2, "videoInfo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1664
    const-string v1, "info"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1666
    const-string v1, "videoEvent"

    invoke-virtual {p0, v1, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSAdunitMethod(Ljava/lang/String;Ljava/util/Map;)V

    .line 1667
    return-void
.end method

.method public onVideoPaused(I)V
    .registers 5
    .param p1, "currentTime"    # I

    .line 1647
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1648
    const-string v1, "videoEventName"

    const-string v2, "videoPause"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1649
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "currentTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1651
    const-string v1, "videoEvent"

    invoke-virtual {p0, v1, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSAdunitMethod(Ljava/lang/String;Ljava/util/Map;)V

    .line 1652
    return-void
.end method

.method public onVideoProgress(I)V
    .registers 5
    .param p1, "currentTime"    # I

    .line 1639
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1640
    const-string v1, "videoEventName"

    const-string v2, "videoProgress"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1641
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "currentTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1643
    const-string v1, "videoEvent"

    invoke-virtual {p0, v1, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSAdunitMethod(Ljava/lang/String;Ljava/util/Map;)V

    .line 1644
    return-void
.end method

.method public onVideoReady(III)V
    .registers 7
    .param p1, "videoDuration"    # I
    .param p2, "videoWidth"    # I
    .param p3, "videoHeight"    # I

    .line 1621
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1622
    const-string v1, "videoEventName"

    const-string v2, "videoReady"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1623
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "videoDuration"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1624
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "videoWidth"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1625
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "videoHeight"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1627
    const-string v1, "videoEvent"

    invoke-virtual {p0, v1, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSAdunitMethod(Ljava/lang/String;Ljava/util/Map;)V

    .line 1628
    return-void
.end method

.method public onVideoStarted(I)V
    .registers 5
    .param p1, "currentTime"    # I

    .line 1631
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1632
    const-string v1, "videoEventName"

    const-string v2, "videoStart"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1633
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "currentTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1635
    const-string v1, "videoEvent"

    invoke-virtual {p0, v1, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSAdunitMethod(Ljava/lang/String;Ljava/util/Map;)V

    .line 1636
    return-void
.end method

.method public onVolumeChanged()V
    .registers 3

    .line 291
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitJSBridge;->getVolumeArgs()Ljava/util/HashMap;

    move-result-object v0

    .line 292
    const-string v1, "volumeChanged"

    invoke-virtual {p0, v1, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSAdunitMethod(Ljava/lang/String;Ljava/util/Map;)V

    .line 293
    return-void
.end method

.method public openApp(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 7
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 876
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    const-string v2, "bundle"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 877
    iget-object v3, p0, Lcom/tapjoy/TJAdUnitJSBridge;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 878
    iget-object v3, p0, Lcom/tapjoy/TJAdUnitJSBridge;->f:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 879
    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v2, v0

    invoke-virtual {p0, p2, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_21

    .line 885
    return-void

    .line 881
    :catch_21
    move-exception v2

    .line 883
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v0

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 884
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 886
    return-void
.end method

.method public pauseVideo(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 6
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 781
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    if-eqz v0, :cond_15

    .line 782
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->pauseVideo()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 784
    :cond_15
    return-void
.end method

.method public playVideo(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 6
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 771
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    if-eqz v0, :cond_15

    .line 772
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->playVideo()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 774
    :cond_15
    return-void
.end method

.method public present(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 9
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 932
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 933
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 935
    const-string v3, "visible"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_4b

    .line 939
    :try_start_10
    const-string v4, "transparent"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1a} :catch_1b

    goto :goto_1c

    .line 941
    :catch_1b
    move-exception v4

    :goto_1c
    nop

    .line 945
    :try_start_1d
    const-string v4, "customClose"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/tapjoy/TJAdUnitJSBridge;->customClose:Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2d} :catch_2e

    goto :goto_2f

    .line 947
    :catch_2e
    move-exception v4

    :goto_2f
    nop

    .line 950
    :try_start_30
    new-instance v4, Lcom/tapjoy/TJAdUnitJSBridge$a;

    iget-object v5, p0, Lcom/tapjoy/TJAdUnitJSBridge;->b:Landroid/webkit/WebView;

    invoke-direct {v4, p0, v5}, Lcom/tapjoy/TJAdUnitJSBridge$a;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;Landroid/webkit/WebView;)V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Boolean;

    aput-object v3, v5, v0

    aput-object v2, v5, v1

    invoke-virtual {v4, v5}, Lcom/tapjoy/TJAdUnitJSBridge$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 952
    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v2, v0

    invoke-virtual {p0, p2, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_4a} :catch_4b

    .line 958
    return-void

    .line 954
    :catch_4b
    move-exception v2

    .line 956
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v0

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 957
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 959
    return-void
.end method

.method public removeAssetFromCache(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 8
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    const/4 v0, 0x0

    .line 510
    .local v0, "assetURL":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_3
    const-string v3, "url"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_2f

    move-object v0, v3

    .line 515
    nop

    .line 516
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 517
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/tapjoy/TapjoyCache;->removeAssetFromCache(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, p2, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 519
    :cond_25
    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v2, v1

    invoke-virtual {p0, p2, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    return-void

    .line 511
    :catch_2f
    move-exception v3

    .line 512
    const-string v3, "TJAdUnitJSBridge"

    const-string v4, "Unable to cache video. Invalid parameters."

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v2, v1

    invoke-virtual {p0, p2, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    return-void
.end method

.method public sendUsageTrackingEvent(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 8
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 1417
    const-string v0, "TJAdUnitJSBridge"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_4
    const-string v3, "name"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1418
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1419
    const-string v3, "Empty name for sendUsageTrackingEvent"

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    new-array v3, v2, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v3, v1

    invoke-virtual {p0, p2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1421
    return-void

    .line 1424
    :cond_1f
    iget-object v4, p0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    if-eqz v4, :cond_30

    .line 1425
    invoke-virtual {v4, v3, p1}, Lcom/tapjoy/TJAdUnit;->sendAdContentTracking(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1426
    new-array v3, v2, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v1

    invoke-virtual {p0, p2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_2f} :catch_31

    .line 1427
    return-void

    .line 1431
    :cond_30
    goto :goto_3f

    .line 1429
    :catch_31
    move-exception v3

    .line 1430
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Unable to sendUsageTrackingEvent. Invalid parameters: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    :goto_3f
    new-array v0, v2, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1434
    return-void
.end method

.method public setAdUnitActivity(Lcom/tapjoy/TJAdUnitActivity;)V
    .registers 2
    .param p1, "activity"    # Lcom/tapjoy/TJAdUnitActivity;

    .line 1092
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->g:Lcom/tapjoy/TJAdUnitActivity;

    .line 1093
    return-void
.end method

.method public setAllowRedirect(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 6
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 1074
    nop

    .line 1078
    const/4 v0, 0x1

    :try_start_2
    const-string v1, "enabled"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_9

    .line 1080
    goto :goto_b

    :catch_9
    move-exception v1

    const/4 v1, 0x1

    .line 1082
    :goto_b
    iput-boolean v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->allowRedirect:Z

    .line 1084
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1085
    return-void
.end method

.method public setBackgroundColor(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 8
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    const/4 v0, 0x0

    .line 687
    .local v0, "backgroundHexColor":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_3
    const-string v3, "backgroundColor"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_22

    move-object v0, v3

    .line 692
    nop

    .line 694
    iget-object v3, p0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    if-eqz v3, :cond_18

    .line 695
    new-instance v1, Lcom/tapjoy/TJAdUnitJSBridge$7;

    invoke-direct {v1, p0, p2}, Lcom/tapjoy/TJAdUnitJSBridge$7;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Lcom/tapjoy/TJAdUnit;->setBackgroundColor(Ljava/lang/String;Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;)V

    return-void

    .line 702
    :cond_18
    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v2, v1

    invoke-virtual {p0, p2, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 704
    return-void

    .line 688
    :catch_22
    move-exception v3

    .line 689
    const-string v3, "TJAdUnitJSBridge"

    const-string v4, "Unable to set background color. Invalid parameters."

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v2, v1

    invoke-virtual {p0, p2, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 691
    return-void
.end method

.method public setBackgroundWebViewContent(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 7
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 710
    const-string v0, "TJAdUnitJSBridge"

    const-string v1, "setBackgroundWebViewContent"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_9
    const-string v3, "backgroundContent"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_27

    .line 720
    nop

    .line 722
    iget-object v3, p0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    if-eqz v3, :cond_1d

    .line 723
    new-instance v1, Lcom/tapjoy/TJAdUnitJSBridge$8;

    invoke-direct {v1, p0, p2}, Lcom/tapjoy/TJAdUnitJSBridge$8;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Lcom/tapjoy/TJAdUnit;->setBackgroundContent(Ljava/lang/String;Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;)V

    return-void

    .line 730
    :cond_1d
    new-array v0, v2, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 732
    return-void

    .line 716
    :catch_27
    move-exception v3

    .line 717
    const-string v3, "Unable to set background content. Invalid parameters."

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    new-array v0, v2, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 719
    return-void
.end method

.method public setCloseButtonClickable(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 7
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 1166
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    const-string v2, "clickable"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1167
    new-instance v3, Lcom/tapjoy/TJAdUnitJSBridge$2;

    invoke-direct {v3, p0, v2}, Lcom/tapjoy/TJAdUnitJSBridge$2;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;Z)V

    invoke-static {v3}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 1178
    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v2, v0

    invoke-virtual {p0, p2, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_19} :catch_1a

    .line 1182
    return-void

    .line 1179
    :catch_1a
    move-exception v2

    .line 1180
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v0

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1181
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1183
    return-void
.end method

.method public setCloseButtonVisible(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 7
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 1139
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    const-string v2, "visible"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1141
    new-instance v3, Lcom/tapjoy/TJAdUnitJSBridge$13;

    invoke-direct {v3, p0, v2}, Lcom/tapjoy/TJAdUnitJSBridge$13;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;Z)V

    invoke-static {v3}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 1152
    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v2, v0

    invoke-virtual {p0, p2, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_19} :catch_1a

    .line 1158
    return-void

    .line 1154
    :catch_1a
    move-exception v2

    .line 1156
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v0

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1157
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1159
    return-void
.end method

.method public setEnabled(Z)V
    .registers 2
    .param p1, "toggle"    # Z

    .line 1513
    iput-boolean p1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->k:Z

    .line 1514
    if-eqz p1, :cond_7

    .line 1515
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitJSBridge;->flushBacklogMessageQueue()V

    .line 1517
    :cond_7
    return-void
.end method

.method public setEventPreloadLimit(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 7
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 479
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2e

    .line 484
    :try_start_8
    const-string v0, "eventPreloadLimit"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_1c

    .line 491
    nop

    .line 493
    invoke-static {v0}, Lcom/tapjoy/TJPlacementManager;->setCachedPlacementLimit(I)V

    .line 494
    new-array v0, v2, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    return-void

    .line 486
    :catch_1c
    move-exception v0

    .line 488
    const-string v0, "TJAdUnitJSBridge"

    const-string v3, "Unable to set Tapjoy cache\'s event preload limit. Invalid parameters."

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    new-array v0, v2, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 490
    return-void

    .line 496
    :cond_2e
    new-array v0, v2, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 498
    return-void
.end method

.method public setLoggingLevel(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 7
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 1219
    :try_start_0
    const-string v0, "loggingLevel"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1220
    invoke-static {}, Lcom/tapjoy/TapjoyAppSettings;->getInstance()Lcom/tapjoy/TapjoyAppSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tapjoy/TapjoyAppSettings;->saveLoggingLevel(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 1225
    return-void

    .line 1221
    :catch_12
    move-exception v0

    .line 1222
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setLoggingLevel exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TJAdUnitJSBridge"

    invoke-static {v2, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1224
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1226
    return-void
.end method

.method public setOrientation(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 7
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 632
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_17

    .line 633
    const-string v0, "TJAdUnitJSBridge"

    const-string v3, "No ad unit provided"

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    new-array v0, v2, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 635
    return-void

    .line 642
    :cond_17
    :try_start_17
    const-string v0, "orientation"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 644
    const-string v3, "landscape"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    const-string v3, "landscapeLeft"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_3b

    .line 646
    :cond_2e
    const-string v3, "landscapeRight"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 647
    const/16 v0, 0x8

    goto :goto_3c

    .line 649
    :cond_39
    const/4 v0, 0x1

    goto :goto_3c

    .line 645
    :cond_3b
    :goto_3b
    const/4 v0, 0x0

    .line 652
    :goto_3c
    iget-object v3, p0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v3, v0}, Lcom/tapjoy/TJAdUnit;->setOrientation(I)V

    .line 654
    new-array v0, v2, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_4a} :catch_4b

    .line 658
    return-void

    .line 655
    :catch_4b
    move-exception v0

    .line 656
    new-array v0, v2, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 657
    return-void
.end method

.method public setPrerenderLimit(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 7
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 463
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    const-string v2, "prerenderLimit"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_16

    .line 468
    nop

    .line 470
    invoke-static {v2}, Lcom/tapjoy/TJPlacementManager;->setPreRenderedPlacementLimit(I)V

    .line 471
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, v0

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    return-void

    .line 464
    :catch_16
    move-exception v2

    .line 465
    const-string v2, "TJAdUnitJSBridge"

    const-string v3, "Unable to set Tapjoy placement pre-render limit. Invalid parameters."

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v1, v0

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 467
    return-void
.end method

.method public setSpinnerVisible(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 10
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    const/4 v0, 0x0

    .local v0, "title":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "visible":Z
    const/4 v2, 0x0

    .line 1106
    .local v2, "message":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_5
    const-string v5, "visible"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    move v1, v5

    .line 1107
    const-string v5, "title"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 1108
    const-string v5, "message"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 1110
    iget-object v5, p0, Lcom/tapjoy/TJAdUnitJSBridge;->g:Lcom/tapjoy/TJAdUnitActivity;

    .line 1111
    if-eqz v5, :cond_38

    .line 1112
    if-eqz v1, :cond_27

    .line 1113
    invoke-static {v5, v0, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/tapjoy/TJAdUnitJSBridge;->i:Landroid/app/ProgressDialog;

    goto :goto_2e

    .line 1115
    :cond_27
    iget-object v5, p0, Lcom/tapjoy/TJAdUnitJSBridge;->i:Landroid/app/ProgressDialog;

    if-eqz v5, :cond_2e

    .line 1116
    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1119
    :cond_2e
    :goto_2e
    new-array v5, v4, [Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v5, v3

    invoke-virtual {p0, p2, v5}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1121
    :cond_38
    const-string v5, "TJAdUnitJSBridge"

    const-string v6, "Cannot setSpinnerVisible -- TJAdUnitActivity is null"

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    new-array v5, v4, [Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v6, v5, v3

    invoke-virtual {p0, p2, v5}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_48} :catch_49

    .line 1127
    return-void

    .line 1124
    :catch_49
    move-exception v5

    .line 1125
    new-array v4, v4, [Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v6, v4, v3

    invoke-virtual {p0, p2, v4}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1126
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1128
    return-void
.end method

.method public setVideoMargins(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 13
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 824
    const/4 v8, 0x0

    const/4 v9, 0x1

    :try_start_2
    const-string v0, "top"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v5, v3

    .line 825
    const-string v0, "right"

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v6, v3

    .line 826
    const-string v0, "bottom"

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v7, v3

    .line 827
    const-string v0, "left"

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v4, v0

    .line 829
    iget-object v3, p0, Lcom/tapjoy/TJAdUnitJSBridge;->g:Lcom/tapjoy/TJAdUnitActivity;

    .line 830
    if-eqz v3, :cond_38

    .line 831
    new-instance v0, Lcom/tapjoy/TJAdUnitJSBridge$11;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/tapjoy/TJAdUnitJSBridge$11;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;Lcom/tapjoy/TJAdUnitActivity;FFFF)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 837
    new-array v0, v9, [Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, v0, v8

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 839
    :cond_38
    const-string v0, "TJAdUnitJSBridge"

    const-string v1, "Cannot setVideoMargins -- TJAdUnitActivity is null"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    new-array v0, v9, [Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v8

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_48} :catch_49

    .line 845
    return-void

    .line 842
    :catch_49
    move-exception v0

    .line 843
    new-array v1, v9, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v1, v8

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 844
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 846
    return-void
.end method

.method public setVideoMute(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 7
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 810
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    const-string v2, "enabled"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 811
    iget-object v3, p0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v3, v2}, Lcom/tapjoy/TJAdUnit;->a(Z)V

    .line 812
    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v2, v0

    invoke-virtual {p0, p2, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_16} :catch_17

    .line 816
    return-void

    .line 813
    :catch_17
    move-exception v2

    .line 814
    const-string v2, "TJAdUnitJSBridge"

    const-string v3, "Failed to parse \'enabled\' from json params."

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v1, v0

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 817
    return-void
.end method

.method public setupSdkBeacons(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 10
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 133
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setupSdkBeacons_method: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TJAdUnitJSBridge"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_11
    const-string v2, "url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    const-string v3, "path_map"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 143
    const-string v4, "params"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 145
    iget-object v5, p0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    new-instance v6, Lcom/tapjoy/internal/fz;

    invoke-direct {v6, v2, v4, v3}, Lcom/tapjoy/internal/fz;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-virtual {v5, v6}, Lcom/tapjoy/TJAdUnit;->setSdkBeacon(Lcom/tapjoy/internal/fz;)V

    .line 146
    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v2, v0

    invoke-virtual {p0, p2, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_36} :catch_37

    .line 152
    return-void

    .line 148
    :catch_37
    move-exception v2

    .line 150
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v0

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    return-void
.end method

.method public shouldClose(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 8
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 1190
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->g:Lcom/tapjoy/TJAdUnitActivity;

    .line 1193
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_4
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1194
    const-string v3, "close"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    .line 1197
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1b

    if-eqz v0, :cond_1b

    .line 1198
    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitActivity;->finish()V

    .line 1201
    :cond_1b
    new-array v3, v1, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v2

    invoke-virtual {p0, p2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_24} :catch_25

    .line 1211
    goto :goto_37

    .line 1202
    :catch_25
    move-exception v3

    .line 1203
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v1, v2

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1206
    if-eqz v0, :cond_34

    .line 1207
    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitActivity;->finish()V

    .line 1210
    :cond_34
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1213
    :goto_37
    iput-boolean v2, p0, Lcom/tapjoy/TJAdUnitJSBridge;->closeRequested:Z

    .line 1214
    return-void
.end method

.method public startMoatVideoTracker(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 6
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 1275
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1276
    return-void
.end method

.method public startUsageTrackingEvent(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 8
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 1340
    const-string v0, "TJAdUnitJSBridge"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_4
    const-string v3, "name"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1341
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1342
    const-string v3, "Empty name for startUsageTrackingEvent"

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    new-array v3, v2, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v3, v1

    invoke-virtual {p0, p2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1344
    return-void

    .line 1347
    :cond_1f
    iget-object v4, p0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    if-eqz v4, :cond_30

    .line 1348
    invoke-virtual {v4, v3, p1}, Lcom/tapjoy/TJAdUnit;->startAdContentTracking(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1349
    new-array v3, v2, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v1

    invoke-virtual {p0, p2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_2f} :catch_31

    .line 1350
    return-void

    .line 1354
    :cond_30
    goto :goto_3f

    .line 1352
    :catch_31
    move-exception v3

    .line 1353
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Unable to startUsageTrackingEvent. Invalid parameters: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    :goto_3f
    new-array v0, v2, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1357
    return-void
.end method

.method public startViewabilityTracker(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 8
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 1305
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->l:Lcom/tapjoy/internal/er;

    .line 2100
    invoke-static {}, Lcom/tapjoy/internal/cf;->b()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1d

    .line 2101
    const-string v1, "TJOMViewabilityAgent"

    const-string v4, "Can not start -- TJOMViewabilityAgent is not initialized"

    invoke-static {v1, v4}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2102
    iget-object v0, v0, Lcom/tapjoy/internal/er;->a:Lcom/tapjoy/TJAdUnitJSBridge;

    new-array v1, v3, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2103
    return-void

    .line 2106
    :cond_1d
    iget-object v1, v0, Lcom/tapjoy/internal/er;->a:Lcom/tapjoy/TJAdUnitJSBridge;

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v2

    invoke-virtual {v1, p2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2108
    new-instance v1, Lcom/tapjoy/internal/er$2;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/er$2;-><init>(Lcom/tapjoy/internal/er;)V

    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 1306
    return-void
.end method

.method public triggerEvent(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 5
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 967
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    if-eqz v0, :cond_4e

    .line 970
    :try_start_4
    const-string v0, "eventName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_45

    .line 974
    nop

    .line 976
    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 977
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->fireOnVideoStart()V

    return-void

    .line 978
    :cond_19
    const-string v1, "complete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 979
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->fireOnVideoComplete()V

    return-void

    .line 980
    :cond_27
    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 981
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    const-string v1, "Error while trying to play video."

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnit;->fireOnVideoError(Ljava/lang/String;)V

    return-void

    .line 982
    :cond_37
    const-string v1, "click"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 983
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->fireOnClick()V

    goto :goto_4e

    .line 971
    :catch_45
    move-exception v0

    .line 972
    const-string v0, "TJAdUnitJSBridge"

    const-string v1, "Unable to triggerEvent. No event name."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    return-void

    .line 986
    :cond_4e
    :goto_4e
    return-void
.end method

.method public triggerMoatVideoEvent(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 6
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 1283
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1284
    return-void
.end method

.method public triggerViewabilityEvent(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 9
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 1317
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->l:Lcom/tapjoy/internal/er;

    .line 2121
    invoke-static {}, Lcom/tapjoy/internal/cf;->b()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "TJOMViewabilityAgent"

    if-nez v1, :cond_1d

    .line 2122
    const-string v1, "Can not triggerEvent -- TJOMViewabilityAgent is not initialized"

    invoke-static {v4, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2123
    iget-object v0, v0, Lcom/tapjoy/internal/er;->a:Lcom/tapjoy/TJAdUnitJSBridge;

    new-array v1, v3, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2124
    return-void

    .line 2127
    :cond_1d
    if-nez p1, :cond_30

    .line 2128
    const-string v1, "Can not triggerEvent -- json parameter is null"

    invoke-static {v4, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2129
    iget-object v0, v0, Lcom/tapjoy/internal/er;->a:Lcom/tapjoy/TJAdUnitJSBridge;

    new-array v1, v3, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2130
    return-void

    .line 2133
    :cond_30
    const/4 v1, 0x0

    const-string v5, "eventName"

    invoke-virtual {p1, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2134
    if-nez v1, :cond_4a

    .line 2135
    const-string v1, "triggerEvent: params json did not contain \'eventName\'"

    invoke-static {v4, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    iget-object v0, v0, Lcom/tapjoy/internal/er;->a:Lcom/tapjoy/TJAdUnitJSBridge;

    new-array v1, v3, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2137
    return-void

    .line 2140
    :cond_4a
    new-instance v2, Lcom/tapjoy/internal/er$3;

    invoke-direct {v2, v0, v1, p2}, Lcom/tapjoy/internal/er$3;-><init>(Lcom/tapjoy/internal/er;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 1318
    return-void
.end method

.method public unsetOrientation(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 7
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .line 665
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_17

    .line 666
    const-string v0, "TJAdUnitJSBridge"

    const-string v3, "No ad unit provided"

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    new-array v0, v2, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 668
    return-void

    .line 672
    :cond_17
    :try_start_17
    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->unsetOrientation()V

    .line 673
    new-array v0, v2, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_23} :catch_24

    .line 677
    return-void

    .line 674
    :catch_24
    move-exception v0

    .line 675
    new-array v0, v2, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 676
    return-void
.end method
