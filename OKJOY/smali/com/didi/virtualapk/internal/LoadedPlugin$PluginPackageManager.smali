.class public Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;
.super Landroid/content/pm/PackageManager;
.source "LoadedPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/virtualapk/internal/LoadedPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PluginPackageManager"
.end annotation


# instance fields
.field protected mHostPackageManager:Landroid/content/pm/PackageManager;

.field final synthetic this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;


# direct methods
.method protected constructor <init>(Lcom/didi/virtualapk/internal/LoadedPlugin;)V
    .registers 3
    .param p1, "this$0"    # Lcom/didi/virtualapk/internal/LoadedPlugin;

    .prologue
    .line 520
    iput-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    invoke-direct {p0}, Landroid/content/pm/PackageManager;-><init>()V

    .line 522
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mHostContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public addPackageToPreferred(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->addPackageToPreferred(Ljava/lang/String;)V

    .line 1240
    return-void
.end method

.method public addPermission(Landroid/content/pm/PermissionInfo;)Z
    .registers 3
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;

    .prologue
    .line 689
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->addPermission(Landroid/content/pm/PermissionInfo;)Z

    move-result v0

    return v0
.end method

.method public addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
    .registers 3
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;

    .prologue
    .line 694
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z

    move-result v0

    return v0
.end method

.method public addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "activity"    # Landroid/content/ComponentName;

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1255
    return-void
.end method

.method public canRequestPackageInstalls()Z
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v0

    return v0
.end method

.method public canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "names"    # [Ljava/lang/String;

    .prologue
    .line 554
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 678
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkSignatures(II)I
    .registers 4
    .param p1, "uid1"    # I
    .param p2, "uid2"    # I

    .prologue
    .line 709
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v0

    return v0
.end method

.method public checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "pkg1"    # Ljava/lang/String;
    .param p2, "pkg2"    # Ljava/lang/String;

    .prologue
    .line 704
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public clearInstantAppCookie()V
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 755
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->clearInstantAppCookie()V

    .line 756
    return-void
.end method

.method public clearPackagePreferredActivities(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 1260
    return-void
.end method

.method public currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "names"    # [Ljava/lang/String;

    .prologue
    .line 549
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public extendVerificationTimeout(IIJ)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "verificationCodeAtTimeout"    # I
    .param p3, "millisecondsToDelay"    # J
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->extendVerificationTimeout(IIJ)V

    .line 1215
    return-void
.end method

.method public getActivityBanner(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "component"    # Landroid/content/ComponentName;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1005
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v1, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 1006
    .local v0, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_1b

    .line 1007
    iget-object v2, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    iget-object v1, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mActivityInfos:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->banner:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1010
    :goto_1a
    return-object v1

    :cond_1b
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getActivityBanner(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1a
.end method

.method public getActivityBanner(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1016
    iget-object v2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v2, v2, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v2, p1}, Lcom/didi/virtualapk/PluginManager;->resolveActivity(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1017
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_1f

    .line 1018
    iget-object v2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v2, v2, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 1019
    .local v0, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    iget-object v2, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->banner:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1022
    .end local v0    # "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    :goto_1e
    return-object v2

    :cond_1f
    iget-object v2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getActivityBanner(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1e
.end method

.method public getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 983
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v1, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 984
    .local v0, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_1b

    .line 985
    iget-object v2, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    iget-object v1, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mActivityInfos:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->icon:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 988
    :goto_1a
    return-object v1

    :cond_1b
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1a
.end method

.method public getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 993
    iget-object v2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v2, v2, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v2, p1}, Lcom/didi/virtualapk/PluginManager;->resolveActivity(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 994
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_1f

    .line 995
    iget-object v2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v2, v2, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 996
    .local v0, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    iget-object v2, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->icon:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 999
    .end local v0    # "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    :goto_1e
    return-object v2

    :cond_1f
    iget-object v2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1e
.end method

.method public getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .registers 5
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 627
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v1, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 628
    .local v0, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_13

    .line 629
    iget-object v1, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mActivityInfos:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    .line 632
    :goto_12
    return-object v1

    :cond_13
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    goto :goto_12
.end method

.method public getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1074
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v1, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 1075
    .local v0, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_1b

    .line 1076
    iget-object v2, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    iget-object v1, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mActivityInfos:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->logo:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1079
    :goto_1a
    return-object v1

    :cond_1b
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1a
.end method

.method public getActivityLogo(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1084
    iget-object v2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v2, v2, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v2, p1}, Lcom/didi/virtualapk/PluginManager;->resolveActivity(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1085
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_1f

    .line 1086
    iget-object v2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v2, v2, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 1087
    .local v0, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    iget-object v2, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->logo:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1090
    .end local v0    # "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    :goto_1e
    return-object v2

    :cond_1f
    iget-object v2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1e
.end method

.method public getAllPermissionGroups(I)Ljava/util/List;
    .registers 3
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 612
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationBanner(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .prologue
    .line 1053
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 1054
    .local v0, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_15

    .line 1055
    iget-object v1, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->banner:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1058
    :goto_14
    return-object v1

    :cond_15
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationBanner(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_14
.end method

.method public getApplicationBanner(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1064
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v1, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 1065
    .local v0, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_17

    .line 1066
    iget-object v1, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    iget-object v2, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->banner:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1069
    :goto_16
    return-object v1

    :cond_17
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationBanner(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_16
.end method

.method public getApplicationEnabledSetting(Ljava/lang/String;)I
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 1032
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 1033
    .local v0, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_15

    .line 1034
    iget-object v1, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1037
    :goto_14
    return-object v1

    :cond_15
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_14
.end method

.method public getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1042
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v1, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 1043
    .local v0, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_17

    .line 1044
    iget-object v1, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    iget-object v2, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1047
    :goto_16
    return-object v1

    :cond_17
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_16
.end method

.method public getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 617
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v1, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 618
    .local v0, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_f

    .line 619
    invoke-virtual {v0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 622
    :goto_e
    return-object v1

    :cond_f
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    goto :goto_e
.end method

.method public getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 1164
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 1165
    .local v0, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_16

    .line 1167
    :try_start_c
    iget-object v1, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_13} :catch_15

    move-result-object v1

    .line 1173
    :goto_14
    return-object v1

    .line 1168
    :catch_15
    move-exception v1

    .line 1173
    :cond_16
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_14
.end method

.method public getApplicationLogo(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 1095
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 1096
    .local v0, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_1d

    .line 1097
    iget-object v2, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->logo:I

    if-eqz v1, :cond_19

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->logo:I

    :goto_14
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1100
    :goto_18
    return-object v1

    .line 1097
    :cond_19
    const v1, 0x1080093

    goto :goto_14

    .line 1100
    :cond_1d
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationLogo(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_18
.end method

.method public getApplicationLogo(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1105
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v1, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 1106
    .local v0, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_23

    .line 1107
    iget-object v2, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    iget-object v1, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->logo:I

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->logo:I

    :goto_1a
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1110
    :goto_1e
    return-object v1

    .line 1107
    :cond_1f
    const v1, 0x1080093

    goto :goto_1a

    .line 1110
    :cond_23
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationLogo(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1e
.end method

.method public getChangedPackages(I)Landroid/content/pm/ChangedPackages;
    .registers 3
    .param p1, "sequenceNumber"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 780
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getChangedPackages(I)Landroid/content/pm/ChangedPackages;

    move-result-object v0

    return-object v0
.end method

.method public getComponentEnabledSetting(Landroid/content/ComponentName;)I
    .registers 3
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resid"    # I
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 973
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v1, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 974
    .local v0, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_11

    .line 975
    iget-object v1, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 978
    :goto_10
    return-object v1

    :cond_11
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2, p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_10
.end method

.method public getInstalledApplications(I)Ljava/util/List;
    .registers 3
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 724
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledPackages(I)Ljava/util/List;
    .registers 3
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 667
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1229
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v1, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 1230
    .local v0, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_13

    .line 1231
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mHostContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1234
    :goto_12
    return-object v1

    :cond_13
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_12
.end method

.method public getInstantAppCookie()[B
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 749
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getInstantAppCookie()[B

    move-result-object v0

    return-object v0
.end method

.method public getInstantAppCookieMaxBytes()I
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 742
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getInstantAppCookieMaxBytes()I

    move-result v0

    return v0
.end method

.method public getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    .registers 5
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 958
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v1, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 959
    .local v0, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_13

    .line 960
    iget-object v1, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mInstrumentationInfos:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/InstrumentationInfo;

    .line 963
    :goto_12
    return-object v1

    :cond_13
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v1

    goto :goto_12
.end method

.method public getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 559
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v1, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 560
    .local v0, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_f

    .line 561
    invoke-virtual {v0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v1

    .line 564
    :goto_e
    return-object v1

    :cond_f
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_e
.end method

.method public getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 570
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v1, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 571
    .local v0, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_f

    .line 572
    invoke-virtual {v0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getLeanbackLaunchIntent()Landroid/content/Intent;

    move-result-object v1

    .line 575
    :goto_e
    return-object v1

    :cond_f
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_e
.end method

.method public getNameForUid(I)Ljava/lang/String;
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 719
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageGids(Ljava/lang/String;)[I
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 580
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackageGids(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getPackageGids(Ljava/lang/String;I)[I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 586
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageGids(Ljava/lang/String;I)[I

    move-result-object v0

    return-object v0
.end method

.method public getPackageInfo(Landroid/content/pm/VersionedPackage;I)Landroid/content/pm/PackageInfo;
    .registers 6
    .param p1, "versionedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "i"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 539
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 540
    .local v0, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_11

    .line 541
    iget-object v1, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 544
    :goto_10
    return-object v1

    :cond_11
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Landroid/content/pm/VersionedPackage;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    goto :goto_10
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 527
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v1, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 528
    .local v0, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_d

    .line 529
    iget-object v1, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 532
    :goto_c
    return-object v1

    :cond_d
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    goto :goto_c
.end method

.method public getPackageInstaller()Landroid/content/pm/PackageInstaller;
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    return-object v0
.end method

.method public getPackageUid(Ljava/lang/String;I)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 592
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 714
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 673
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 607
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 597
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .registers 5
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1264
    .local p1, "outFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .local p2, "outActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPreferredPackages(I)Ljava/util/List;
    .registers 3
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPreferredPackages(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    .registers 5
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 657
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v1, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 658
    .local v0, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_13

    .line 659
    iget-object v1, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mProviderInfos:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ProviderInfo;

    .line 662
    :goto_12
    return-object v1

    :cond_13
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    goto :goto_12
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .registers 5
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 637
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v1, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 638
    .local v0, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_13

    .line 639
    iget-object v1, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mReceiverInfos:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    .line 642
    :goto_12
    return-object v1

    :cond_13
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    goto :goto_12
.end method

.method public getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;
    .registers 4
    .param p1, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1178
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v1, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 1179
    .local v0, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_d

    .line 1180
    iget-object v1, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    .line 1183
    :goto_c
    return-object v1

    :cond_d
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v1

    goto :goto_c
.end method

.method public getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    .registers 5
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1188
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 1189
    .local v0, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_f

    .line 1190
    iget-object v1, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    .line 1193
    :goto_e
    return-object v1

    :cond_f
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    goto :goto_e
.end method

.method public getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    .registers 4
    .param p1, "appPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1198
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v1, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 1199
    .local v0, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_d

    .line 1200
    iget-object v1, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    .line 1203
    :goto_c
    return-object v1

    :cond_d
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    goto :goto_c
.end method

.method public getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .registers 5
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 647
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v1, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 648
    .local v0, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_13

    .line 649
    iget-object v1, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mServiceInfos:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ServiceInfo;

    .line 652
    :goto_12
    return-object v1

    :cond_13
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    goto :goto_12
.end method

.method public getSharedLibraries(I)Ljava/util/List;
    .registers 3
    .param p1, "flags"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 773
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getSharedLibraries(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;
    .registers 2

    .prologue
    .line 785
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSystemSharedLibraryNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 766
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resid"    # I
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 1144
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v1, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 1145
    .local v0, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_11

    .line 1146
    iget-object v1, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1149
    :goto_10
    return-object v1

    :cond_11
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2, p3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_10
.end method

.method public getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;
    .registers 9
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "density"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 1122
    :try_start_0
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v1}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v1

    const-string v2, "getUserBadgeForDensity"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/os/UserHandle;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 1123
    invoke-virtual {v1, v2, v3}, Lcom/didi/virtualapk/utils/Reflector;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    .line 1124
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/didi/virtualapk/utils/Reflector;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    .line 1122
    return-object v1

    .line 1125
    :catch_2d
    move-exception v0

    .line 1126
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "badgeLocation"    # Landroid/graphics/Rect;
    .param p4, "badgeDensity"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getXml(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/content/res/XmlResourceParser;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resid"    # I
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 1154
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v1, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 1155
    .local v0, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_11

    .line 1156
    iget-object v1, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 1159
    :goto_10
    return-object v1

    :cond_11
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2, p3}, Landroid/content/pm/PackageManager;->getXml(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    goto :goto_10
.end method

.method public hasSystemFeature(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 790
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasSystemFeature(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 796
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isInstantApp()Z
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 730
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isInstantApp()Z

    move-result v0

    return v0
.end method

.method public isInstantApp(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 736
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->isInstantApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "permName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "pkgName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 684
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSafeMode()Z
    .registers 2

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    return v0
.end method

.method public loadItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "itemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 1311
    if-nez p1, :cond_4

    .line 1312
    const/4 v0, 0x0

    .line 1314
    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_3
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 853
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 854
    .local v2, "component":Landroid/content/ComponentName;
    if-nez v2, :cond_14

    .line 855
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_14

    .line 856
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 857
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 861
    :cond_14
    if-eqz v2, :cond_38

    .line 862
    iget-object v7, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v7, v7, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v7, v2}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v4

    .line 863
    .local v4, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    if-eqz v4, :cond_38

    .line 864
    invoke-virtual {v4, v2}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getReceiverInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 865
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_38

    .line 866
    new-instance v6, Landroid/content/pm/ResolveInfo;

    invoke-direct {v6}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 867
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iput-object v0, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 868
    const/4 v7, 0x1

    new-array v7, v7, [Landroid/content/pm/ResolveInfo;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 885
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_37
    :goto_37
    return-object v1

    .line 873
    :cond_38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 875
    .local v1, "all":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v7, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v7, v7, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v7, p1, p2}, Lcom/didi/virtualapk/PluginManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 876
    .local v5, "pluginResolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_50

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_50

    .line 877
    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 880
    :cond_50
    iget-object v7, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, p1, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 881
    .local v3, "hostResolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_37

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_37

    .line 882
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_37
.end method

.method public queryContentProviders(Ljava/lang/String;II)Ljava/util/List;
    .registers 5
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 953
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/InstrumentationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 968
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 811
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 812
    .local v2, "component":Landroid/content/ComponentName;
    if-nez v2, :cond_14

    .line 813
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_14

    .line 814
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 815
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 819
    :cond_14
    if-eqz v2, :cond_38

    .line 820
    iget-object v7, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v7, v7, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v7, v2}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v4

    .line 821
    .local v4, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    if-eqz v4, :cond_38

    .line 822
    invoke-virtual {v4, v2}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 823
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_38

    .line 824
    new-instance v6, Landroid/content/pm/ResolveInfo;

    invoke-direct {v6}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 825
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iput-object v0, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 826
    const/4 v7, 0x1

    new-array v7, v7, [Landroid/content/pm/ResolveInfo;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 843
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_37
    :goto_37
    return-object v1

    .line 831
    :cond_38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 833
    .local v1, "all":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v7, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v7, v7, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v7, p1, p2}, Lcom/didi/virtualapk/PluginManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 834
    .local v5, "pluginResolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_50

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_50

    .line 835
    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 838
    :cond_50
    iget-object v7, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, p1, p2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 839
    .local v3, "hostResolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_37

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_37

    .line 840
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_37
.end method

.method public queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;
    .registers 6
    .param p1, "caller"    # Landroid/content/ComponentName;
    .param p2, "specifics"    # [Landroid/content/Intent;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "[",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 848
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 938
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 900
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 901
    .local v1, "component":Landroid/content/ComponentName;
    if-nez v1, :cond_14

    .line 902
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_14

    .line 903
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 904
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 908
    :cond_14
    if-eqz v1, :cond_38

    .line 909
    iget-object v7, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v7, v7, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v7, v1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v3

    .line 910
    .local v3, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    if-eqz v3, :cond_38

    .line 911
    invoke-virtual {v3, v1}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v6

    .line 912
    .local v6, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v6, :cond_38

    .line 913
    new-instance v5, Landroid/content/pm/ResolveInfo;

    invoke-direct {v5}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 914
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iput-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 915
    const/4 v7, 0x1

    new-array v7, v7, [Landroid/content/pm/ResolveInfo;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 932
    .end local v3    # "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_37
    :goto_37
    return-object v0

    .line 920
    :cond_38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 922
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v7, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v7, v7, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v7, p1, p2}, Lcom/didi/virtualapk/PluginManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 923
    .local v4, "pluginResolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_50

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_50

    .line 924
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 927
    :cond_50
    iget-object v7, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, p1, p2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 928
    .local v2, "hostResolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_37

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_37

    .line 929
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_37
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 602
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removePackageFromPreferred(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->removePackageFromPreferred(Ljava/lang/String;)V

    .line 1245
    return-void
.end method

.method public removePermission(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 699
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->removePermission(Ljava/lang/String;)V

    .line 700
    return-void
.end method

.method public resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .prologue
    .line 801
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v1, p1, p2}, Lcom/didi/virtualapk/PluginManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 802
    .local v0, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_b

    .line 806
    .end local v0    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_a
    return-object v0

    .restart local v0    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_b
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    goto :goto_a
.end method

.method public resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 943
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v1, p1, p2}, Lcom/didi/virtualapk/PluginManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 944
    .local v0, "providerInfo":Landroid/content/pm/ProviderInfo;
    if-eqz v0, :cond_b

    .line 948
    .end local v0    # "providerInfo":Landroid/content/pm/ProviderInfo;
    :goto_a
    return-object v0

    .restart local v0    # "providerInfo":Landroid/content/pm/ProviderInfo;
    :cond_b
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    goto :goto_a
.end method

.method public resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .prologue
    .line 890
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v1, p1, p2}, Lcom/didi/virtualapk/PluginManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 891
    .local v0, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_b

    .line 895
    .end local v0    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_a
    return-object v0

    .restart local v0    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_b
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    goto :goto_a
.end method

.method public setApplicationCategoryHint(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "categoryHint"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->setApplicationCategoryHint(Ljava/lang/String;I)V

    .line 1296
    return-void
.end method

.method public setApplicationEnabledSetting(Ljava/lang/String;II)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newState"    # I
    .param p3, "flags"    # I

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 1280
    return-void
.end method

.method public setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    .registers 5
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "newState"    # I
    .param p3, "flags"    # I

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1270
    return-void
.end method

.method public setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "installerPackageName"    # Ljava/lang/String;

    .prologue
    .line 1219
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v1, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 1220
    .local v0, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_b

    .line 1225
    :goto_a
    return-void

    .line 1224
    :cond_b
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public updateInstantAppCookie([B)V
    .registers 3
    .param p1, "cookie"    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 761
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->updateInstantAppCookie([B)V

    .line 762
    return-void
.end method

.method public verifyPendingInstall(II)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "verificationCode"    # I

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->verifyPendingInstall(II)V

    .line 1209
    return-void
.end method
