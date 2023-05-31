.class public Lcom/taptap/sdk/TapTapSdk;
.super Ljava/lang/Object;
.source "TapTapSdk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/TapTapSdk$Config;,
        Lcom/taptap/sdk/TapTapSdk$TapTapSdkListener;
    }
.end annotation


# static fields
.field public static ORIENTATION_LANDSCAPE:I = 0x0

.field public static ORIENTATION_PORTRAIT:I = 0x0

.field static final TAP_FORUM_APPEAR_ACTION:Ljava/lang/String; = "appear.forum.taptap.action"

.field static final TAP_FORUM_DISAPPEAR_ACTION:Ljava/lang/String; = "disappear.forum.taptap.action"

.field private static broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private static tapTapSdkListener:Lcom/taptap/sdk/TapTapSdk$TapTapSdkListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput v0, Lcom/taptap/sdk/TapTapSdk;->ORIENTATION_LANDSCAPE:I

    .line 20
    const/4 v0, 0x1

    sput v0, Lcom/taptap/sdk/TapTapSdk;->ORIENTATION_PORTRAIT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/taptap/sdk/TapTapSdk$TapTapSdkListener;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/taptap/sdk/TapTapSdk;->tapTapSdkListener:Lcom/taptap/sdk/TapTapSdk$TapTapSdkListener;

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/BroadcastReceiver;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/taptap/sdk/TapTapSdk;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$102(Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .registers 1
    .param p0, "x0"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 17
    sput-object p0, Lcom/taptap/sdk/TapTapSdk;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public static openTapTapForum(Landroid/app/Activity;Lcom/taptap/sdk/TapTapSdk$Config;)V
    .registers 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "config"    # Lcom/taptap/sdk/TapTapSdk$Config;

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 55
    .local v0, "intent":Landroid/content/Intent;
    const-class v3, Lcom/taptap/sdk/TapTapActivity;

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 56
    const-string v3, "type"

    const-string v4, "forum"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v3, "app_id"

    iget-object v4, p1, Lcom/taptap/sdk/TapTapSdk$Config;->appid:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v3, "orientation"

    iget v4, p1, Lcom/taptap/sdk/TapTapSdk$Config;->orientation:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    iget-object v3, p1, Lcom/taptap/sdk/TapTapSdk$Config;->uri:Ljava/lang/String;

    if-eqz v3, :cond_2a

    const-string v3, "uri"

    iget-object v4, p1, Lcom/taptap/sdk/TapTapSdk$Config;->uri:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    :cond_2a
    iget-object v3, p1, Lcom/taptap/sdk/TapTapSdk$Config;->locale:Ljava/util/Locale;

    if-eqz v3, :cond_35

    const-string v3, "locale"

    iget-object v4, p1, Lcom/taptap/sdk/TapTapSdk$Config;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 61
    :cond_35
    iget-object v3, p1, Lcom/taptap/sdk/TapTapSdk$Config;->site:Ljava/lang/String;

    if-eqz v3, :cond_40

    const-string v3, "site"

    iget-object v4, p1, Lcom/taptap/sdk/TapTapSdk$Config;->site:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    :cond_40
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 64
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "appear.forum.taptap.action"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string v3, "disappear.forum.taptap.action"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    .line 67
    .local v2, "localBroadcastManager":Landroid/support/v4/content/LocalBroadcastManager;
    sget-object v3, Lcom/taptap/sdk/TapTapSdk;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v3, :cond_5c

    .line 68
    sget-object v3, Lcom/taptap/sdk/TapTapSdk;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 70
    :cond_5c
    new-instance v3, Lcom/taptap/sdk/TapTapSdk$1;

    invoke-direct {v3, v2}, Lcom/taptap/sdk/TapTapSdk$1;-><init>(Landroid/support/v4/content/LocalBroadcastManager;)V

    sput-object v3, Lcom/taptap/sdk/TapTapSdk;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    sget-object v3, Lcom/taptap/sdk/TapTapSdk;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 86
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 88
    return-void
.end method

.method public static openTapTapForum(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "app_id"    # Ljava/lang/String;

    .prologue
    .line 33
    sget v0, Lcom/taptap/sdk/TapTapSdk;->ORIENTATION_LANDSCAPE:I

    invoke-static {p0, p1, v0}, Lcom/taptap/sdk/TapTapSdk;->openTapTapForum(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 34
    return-void
.end method

.method public static openTapTapForum(Landroid/app/Activity;Ljava/lang/String;I)V
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "orientation"    # I

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/taptap/sdk/TapTapSdk;->openTapTapForum(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;)V

    .line 38
    return-void
.end method

.method public static openTapTapForum(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "orientation"    # I
    .param p3, "uri"    # Ljava/lang/String;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/taptap/sdk/TapTapSdk;->openTapTapForum(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/util/Locale;)V

    .line 42
    return-void
.end method

.method public static openTapTapForum(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/util/Locale;)V
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "orientation"    # I
    .param p3, "uri"    # Ljava/lang/String;
    .param p4, "locale"    # Ljava/util/Locale;

    .prologue
    .line 45
    new-instance v0, Lcom/taptap/sdk/TapTapSdk$Config;

    invoke-direct {v0}, Lcom/taptap/sdk/TapTapSdk$Config;-><init>()V

    .line 46
    .local v0, "config":Lcom/taptap/sdk/TapTapSdk$Config;
    iput-object p1, v0, Lcom/taptap/sdk/TapTapSdk$Config;->appid:Ljava/lang/String;

    .line 47
    iput p2, v0, Lcom/taptap/sdk/TapTapSdk$Config;->orientation:I

    .line 48
    iput-object p3, v0, Lcom/taptap/sdk/TapTapSdk$Config;->uri:Ljava/lang/String;

    .line 49
    iput-object p4, v0, Lcom/taptap/sdk/TapTapSdk$Config;->locale:Ljava/util/Locale;

    .line 50
    invoke-static {p0, v0}, Lcom/taptap/sdk/TapTapSdk;->openTapTapForum(Landroid/app/Activity;Lcom/taptap/sdk/TapTapSdk$Config;)V

    .line 51
    return-void
.end method

.method public static setListener(Lcom/taptap/sdk/TapTapSdk$TapTapSdkListener;)V
    .registers 1
    .param p0, "tapTapSdkListener"    # Lcom/taptap/sdk/TapTapSdk$TapTapSdkListener;

    .prologue
    .line 29
    sput-object p0, Lcom/taptap/sdk/TapTapSdk;->tapTapSdkListener:Lcom/taptap/sdk/TapTapSdk$TapTapSdkListener;

    .line 30
    return-void
.end method
