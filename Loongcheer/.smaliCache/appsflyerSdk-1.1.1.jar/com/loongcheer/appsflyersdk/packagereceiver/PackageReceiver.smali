.class public Lcom/loongcheer/appsflyersdk/packagereceiver/PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 26
    :try_start_14
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "cardgame.klondike.solitaire.classic.free"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, "installer":Ljava/lang/String;
    const-string v2, "packname"

    invoke-static {p1, v2, v1}, Lcom/loongcheer/interactivesdk/utils/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v2, "loongcheer_google"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_28} :catch_29

    .line 35
    goto :goto_2a

    .line 32
    .end local v1    # "installer":Ljava/lang/String;
    :catch_29
    move-exception v1

    .line 39
    :cond_2a
    :goto_2a
    return-void
.end method
