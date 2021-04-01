.class public Lcom/didi/virtualapk/delegate/RemoteService;
.super Lcom/didi/virtualapk/delegate/LocalService;
.source "RemoteService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VA.RemoteService"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/didi/virtualapk/delegate/LocalService;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 44
    if-nez p1, :cond_7

    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/didi/virtualapk/delegate/LocalService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v5

    .line 62
    :goto_6
    return v5

    .line 48
    :cond_7
    const-string v5, "target"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 49
    .local v4, "target":Landroid/content/Intent;
    if-eqz v4, :cond_33

    .line 50
    const-string v5, "plugin_location"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "pluginLocation":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 52
    .local v0, "component":Landroid/content/ComponentName;
    invoke-static {p0}, Lcom/didi/virtualapk/PluginManager;->getInstance(Landroid/content/Context;)Lcom/didi/virtualapk/PluginManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v2

    .line 53
    .local v2, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    if-nez v2, :cond_33

    if-eqz v3, :cond_33

    .line 55
    :try_start_27
    invoke-static {p0}, Lcom/didi/virtualapk/PluginManager;->getInstance(Landroid/content/Context;)Lcom/didi/virtualapk/PluginManager;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/didi/virtualapk/PluginManager;->loadPlugin(Ljava/io/File;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_33} :catch_38

    .line 62
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v2    # "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    .end local v3    # "pluginLocation":Ljava/lang/String;
    :cond_33
    :goto_33
    invoke-super {p0, p1, p2, p3}, Lcom/didi/virtualapk/delegate/LocalService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v5

    goto :goto_6

    .line 56
    .restart local v0    # "component":Landroid/content/ComponentName;
    .restart local v2    # "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    .restart local v3    # "pluginLocation":Ljava/lang/String;
    :catch_38
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "VA.RemoteService"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33
.end method
