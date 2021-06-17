.class public Landroidx/browser/customtabs/CustomTabsClient;
.super Ljava/lang/Object;
.source "CustomTabsClient.java"


# instance fields
.field private final mService:Landroid/support/customtabs/ICustomTabsService;

.field private final mServiceComponentName:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Landroid/support/customtabs/ICustomTabsService;Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "service"    # Landroid/support/customtabs/ICustomTabsService;
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient;->mService:Landroid/support/customtabs/ICustomTabsService;

    .line 54
    iput-object p2, p0, Landroidx/browser/customtabs/CustomTabsClient;->mServiceComponentName:Landroid/content/ComponentName;

    .line 55
    return-void
.end method

.method public static bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "connection"    # Landroidx/browser/customtabs/CustomTabsServiceConnection;

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    :cond_10
    const/16 v1, 0x21

    invoke-virtual {p0, v0, p2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method public static connectAndInitialize(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 139
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 140
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 141
    .local v1, "applicationContext":Landroid/content/Context;
    new-instance v2, Landroidx/browser/customtabs/CustomTabsClient$1;

    invoke-direct {v2, v1}, Landroidx/browser/customtabs/CustomTabsClient$1;-><init>(Landroid/content/Context;)V

    .line 156
    .local v2, "connection":Landroidx/browser/customtabs/CustomTabsServiceConnection;
    :try_start_d
    invoke-static {v1, p1, v2}, Landroidx/browser/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z

    move-result v0
    :try_end_11
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_11} :catch_12

    return v0

    .line 157
    :catch_12
    move-exception v3

    .line 158
    .local v3, "e":Ljava/lang/SecurityException;
    return v0
.end method

.method public static getPackageName(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 83
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroidx/browser/customtabs/CustomTabsClient;->getPackageName(Landroid/content/Context;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageName(Landroid/content/Context;Ljava/util/List;Z)Ljava/lang/String;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "ignoreDefault"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 101
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 103
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-nez p1, :cond_c

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_d

    :cond_c
    move-object v1, p1

    .line 104
    .local v1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_d
    new-instance v2, Landroid/content/Intent;

    const-string v3, "http://"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 106
    .local v2, "activityIntent":Landroid/content/Intent;
    const/4 v3, 0x0

    if-nez p2, :cond_3b

    .line 107
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 108
    .local v4, "defaultViewHandlerInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_3b

    .line 109
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 110
    .local v5, "packageName":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v6

    .line 111
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    if-eqz p1, :cond_3b

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    .end local v4    # "defaultViewHandlerInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_3b
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v4, "serviceIntent":Landroid/content/Intent;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_46
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 118
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    if-eqz v7, :cond_5c

    return-object v6

    .line 120
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_5c
    goto :goto_46

    .line 121
    :cond_5d
    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method public extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5
    .param p1, "commandName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 266
    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient;->mService:Landroid/support/customtabs/ICustomTabsService;

    invoke-interface {v0, p1, p2}, Landroid/support/customtabs/ICustomTabsService;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 267
    :catch_7
    move-exception v0

    .line 268
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;
    .registers 6
    .param p1, "callback"    # Landroidx/browser/customtabs/CustomTabsCallback;

    .line 191
    new-instance v0, Landroidx/browser/customtabs/CustomTabsClient$2;

    invoke-direct {v0, p0, p1}, Landroidx/browser/customtabs/CustomTabsClient$2;-><init>(Landroidx/browser/customtabs/CustomTabsClient;Landroidx/browser/customtabs/CustomTabsCallback;)V

    .line 257
    .local v0, "wrapper":Landroid/support/customtabs/ICustomTabsCallback$Stub;
    const/4 v1, 0x0

    :try_start_6
    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsClient;->mService:Landroid/support/customtabs/ICustomTabsService;

    invoke-interface {v2, v0}, Landroid/support/customtabs/ICustomTabsService;->newSession(Landroid/support/customtabs/ICustomTabsCallback;)Z

    move-result v2
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_1a

    if-nez v2, :cond_f

    return-object v1

    .line 260
    :cond_f
    nop

    .line 261
    new-instance v1, Landroidx/browser/customtabs/CustomTabsSession;

    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsClient;->mService:Landroid/support/customtabs/ICustomTabsService;

    iget-object v3, p0, Landroidx/browser/customtabs/CustomTabsClient;->mServiceComponentName:Landroid/content/ComponentName;

    invoke-direct {v1, v2, v0, v3}, Landroidx/browser/customtabs/CustomTabsSession;-><init>(Landroid/support/customtabs/ICustomTabsService;Landroid/support/customtabs/ICustomTabsCallback;Landroid/content/ComponentName;)V

    return-object v1

    .line 258
    :catch_1a
    move-exception v2

    .line 259
    .local v2, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public warmup(J)Z
    .registers 5
    .param p1, "flags"    # J

    .line 173
    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient;->mService:Landroid/support/customtabs/ICustomTabsService;

    invoke-interface {v0, p1, p2}, Landroid/support/customtabs/ICustomTabsService;->warmup(J)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 174
    :catch_7
    move-exception v0

    .line 175
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method
