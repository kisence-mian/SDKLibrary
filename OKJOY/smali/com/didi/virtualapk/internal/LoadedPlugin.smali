.class public Lcom/didi/virtualapk/internal/LoadedPlugin;
.super Ljava/lang/Object;
.source "LoadedPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VA.LoadedPlugin"


# instance fields
.field protected mActivityInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mApplication:Landroid/app/Application;

.field protected mClassLoader:Ljava/lang/ClassLoader;

.field protected mHostContext:Landroid/content/Context;

.field protected mInstrumentationInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/InstrumentationInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final mLocation:Ljava/lang/String;

.field protected final mNativeLibDir:Ljava/io/File;

.field protected final mPackage:Landroid/content/pm/PackageParser$Package;

.field protected final mPackageInfo:Landroid/content/pm/PackageInfo;

.field protected mPackageManager:Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;

.field protected mPluginContext:Landroid/content/Context;

.field protected mPluginManager:Lcom/didi/virtualapk/PluginManager;

.field protected mProviderInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mReceiverInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mResources:Landroid/content/res/Resources;

.field protected mServiceInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/didi/virtualapk/PluginManager;Landroid/content/Context;Ljava/io/File;)V
    .registers 28
    .param p1, "pluginManager"    # Lcom/didi/virtualapk/PluginManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "apk"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 148
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 149
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    .line 150
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mHostContext:Landroid/content/Context;

    .line 151
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mLocation:Ljava/lang/String;

    .line 152
    const/16 v20, 0x4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/didi/virtualapk/internal/utils/PackageParserCompat;->parsePackage(Landroid/content/Context;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 154
    new-instance v20, Landroid/content/pm/PackageInfo;

    invoke-direct/range {v20 .. v20}, Landroid/content/pm/PackageInfo;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 158
    sget v20, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v21, 0x1c

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_9a

    sget v20, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v21, 0x1b

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_12b

    sget v20, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-eqz v20, :cond_12b

    .line 161
    :cond_9a
    :try_start_9a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_b8
    .catch Ljava/lang/Throwable; {:try_start_9a .. :try_end_b8} :catch_10b

    .line 170
    :goto_b8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v20

    if-eqz v20, :cond_145

    .line 172
    new-instance v20, Ljava/lang/RuntimeException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "plugin has already been loaded : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 162
    :catch_10b
    move-exception v9

    .line 163
    .local v9, "e":Ljava/lang/Throwable;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x40

    invoke-virtual/range {v20 .. v22}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 164
    .local v10, "info":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v20, v0

    iget-object v0, v10, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    goto :goto_b8

    .line 167
    .end local v9    # "e":Ljava/lang/Throwable;
    .end local v10    # "info":Landroid/content/pm/PackageInfo;
    :cond_12b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    goto/16 :goto_b8

    .line 174
    :cond_145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Landroid/content/pm/PermissionInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->createPluginPackageManager()Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageManager:Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;

    .line 178
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/internal/LoadedPlugin;->createPluginContext(Landroid/content/Context;)Lcom/didi/virtualapk/internal/PluginContext;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginContext:Landroid/content/Context;

    .line 179
    const-string v20, "valibs"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mNativeLibDir:Ljava/io/File;

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mNativeLibDir:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/didi/virtualapk/internal/LoadedPlugin;->createResources(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mNativeLibDir:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/didi/virtualapk/internal/LoadedPlugin;->createClassLoader(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mClassLoader:Ljava/lang/ClassLoader;

    .line 184
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/internal/LoadedPlugin;->tryToCopyNativeLib(Ljava/io/File;)V

    .line 187
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 188
    .local v12, "instrumentations":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Landroid/content/pm/InstrumentationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_221
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_23d

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageParser$Instrumentation;

    .line 189
    .local v11, "instrumentation":Landroid/content/pm/PackageParser$Instrumentation;
    invoke-virtual {v11}, Landroid/content/pm/PackageParser$Instrumentation;->getComponentName()Landroid/content/ComponentName;

    move-result-object v21

    iget-object v0, v11, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_221

    .line 191
    .end local v11    # "instrumentation":Landroid/content/pm/PackageParser$Instrumentation;
    :cond_23d
    invoke-static {v12}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mInstrumentationInfos:Ljava/util/Map;

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v21, v0

    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v20

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Landroid/content/pm/InstrumentationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/content/pm/InstrumentationInfo;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 195
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 196
    .local v6, "activityInfos":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_280
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_2aa

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Activity;

    .line 197
    .local v5, "activity":Landroid/content/pm/PackageParser$Activity;
    iget-object v0, v5, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    iget-object v0, v5, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 198
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v21

    iget-object v0, v5, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_280

    .line 200
    .end local v5    # "activity":Landroid/content/pm/PackageParser$Activity;
    :cond_2aa
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mActivityInfos:Ljava/util/Map;

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v21, v0

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v20

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 204
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 205
    .local v19, "serviceInfos":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Landroid/content/pm/ServiceInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_2ed
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_30d

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/PackageParser$Service;

    .line 206
    .local v18, "service":Landroid/content/pm/PackageParser$Service;
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/PackageParser$Service;->getComponentName()Landroid/content/ComponentName;

    move-result-object v21

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2ed

    .line 208
    .end local v18    # "service":Landroid/content/pm/PackageParser$Service;
    :cond_30d
    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mServiceInfos:Ljava/util/Map;

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v21, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v20

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Landroid/content/pm/ServiceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 212
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 213
    .local v15, "providers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/ProviderInfo;>;"
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 214
    .local v14, "providerInfos":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Landroid/content/pm/ProviderInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_355
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_386

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageParser$Provider;

    .line 215
    .local v13, "provider":Landroid/content/pm/PackageParser$Provider;
    iget-object v0, v13, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    move-object/from16 v21, v0

    iget-object v0, v13, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-virtual {v13}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v21

    iget-object v0, v13, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_355

    .line 218
    .end local v13    # "provider":Landroid/content/pm/PackageParser$Provider;
    :cond_386
    invoke-static {v15}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mProviders:Ljava/util/Map;

    .line 219
    invoke-static {v14}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mProviderInfos:Ljava/util/Map;

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v21, v0

    invoke-interface {v14}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v20

    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Landroid/content/pm/ProviderInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/content/pm/ProviderInfo;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 223
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 224
    .local v17, "receivers":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_3d3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_430

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/PackageParser$Activity;

    .line 225
    .local v16, "receiver":Landroid/content/pm/PackageParser$Activity;
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v21

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-class v21, Landroid/content/BroadcastReceiver;

    invoke-virtual/range {p0 .. p0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v22

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/BroadcastReceiver;

    .line 228
    .local v8, "br":Landroid/content/BroadcastReceiver;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_418
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3d3

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 229
    .local v7, "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mHostContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_418

    .line 232
    .end local v7    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v8    # "br":Landroid/content/BroadcastReceiver;
    .end local v16    # "receiver":Landroid/content/pm/PackageParser$Activity;
    :cond_430
    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mReceiverInfos:Ljava/util/Map;

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v21, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v20

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->invokeApplication()V

    .line 237
    return-void
.end method


# virtual methods
.method protected chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .line 125
    .local p4, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method protected createAssetManager(Landroid/content/Context;Ljava/io/File;)Landroid/content/res/AssetManager;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apk"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 97
    const-class v1, Landroid/content/res/AssetManager;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    .line 98
    .local v0, "am":Landroid/content/res/AssetManager;
    invoke-static {v0}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v1

    const-string v2, "addAssetPath"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/didi/virtualapk/utils/Reflector;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/didi/virtualapk/utils/Reflector;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-object v0
.end method

.method protected createClassLoader(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apk"    # Ljava/io/File;
    .param p3, "libsDir"    # Ljava/io/File;
    .param p4, "parent"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 85
    const-string v3, "dex"

    invoke-virtual {p0, p1, v3}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 86
    .local v0, "dexOutputDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "dexOutputPath":Ljava/lang/String;
    new-instance v2, Ldalvik/system/DexClassLoader;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v1, v4, p4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 90
    .local v2, "loader":Ldalvik/system/DexClassLoader;
    invoke-static {v2, p4, p3}, Lcom/didi/virtualapk/internal/utils/DexUtil;->insertDex(Ldalvik/system/DexClassLoader;Ljava/lang/ClassLoader;Ljava/io/File;)V

    .line 93
    return-object v2
.end method

.method public createPluginContext(Landroid/content/Context;)Lcom/didi/virtualapk/internal/PluginContext;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    if-nez p1, :cond_8

    .line 118
    new-instance v0, Lcom/didi/virtualapk/internal/PluginContext;

    invoke-direct {v0, p0}, Lcom/didi/virtualapk/internal/PluginContext;-><init>(Lcom/didi/virtualapk/internal/LoadedPlugin;)V

    .line 121
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/didi/virtualapk/internal/PluginContext;

    invoke-direct {v0, p0, p1}, Lcom/didi/virtualapk/internal/PluginContext;-><init>(Lcom/didi/virtualapk/internal/LoadedPlugin;Landroid/content/Context;)V

    goto :goto_7
.end method

.method protected createPluginPackageManager()Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;
    .registers 2

    .prologue
    .line 113
    new-instance v0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;

    invoke-direct {v0, p0}, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;-><init>(Lcom/didi/virtualapk/internal/LoadedPlugin;)V

    return-object v0
.end method

.method protected createResources(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/content/res/Resources;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "apk"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p1, p2, p3}, Lcom/didi/virtualapk/internal/ResourcesManager;->createResources(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;
    .registers 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mActivityInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method public getApplication()Landroid/app/Application;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .registers 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .registers 2

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getCodePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    return-object v0
.end method

.method protected getDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getHostContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mHostContext:Landroid/content/Context;

    return-object v0
.end method

.method public getLaunchIntent()Landroid/content/Intent;
    .registers 9

    .prologue
    .line 320
    iget-object v4, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 321
    .local v3, "resolver":Landroid/content/ContentResolver;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 323
    .local v2, "launcher":Landroid/content/Intent;
    iget-object v4, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    .line 324
    .local v0, "activity":Landroid/content/pm/PackageParser$Activity;
    iget-object v5, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 325
    .local v1, "intentInfo":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v6, 0x0

    const-string v7, "VA.LoadedPlugin"

    invoke-virtual {v1, v3, v2, v6, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v6

    if-lez v6, :cond_2d

    .line 326
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {v4}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    .line 331
    .end local v0    # "activity":Landroid/content/pm/PackageParser$Activity;
    .end local v1    # "intentInfo":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :goto_4a
    return-object v4

    :cond_4b
    const/4 v4, 0x0

    goto :goto_4a
.end method

.method public getLeanbackLaunchIntent()Landroid/content/Intent;
    .registers 10

    .prologue
    .line 335
    iget-object v5, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 336
    .local v4, "resolver":Landroid/content/ContentResolver;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "android.intent.category.LEANBACK_LAUNCHER"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 338
    .local v3, "launcher":Landroid/content/Intent;
    iget-object v5, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_56

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    .line 339
    .local v0, "activity":Landroid/content/pm/PackageParser$Activity;
    iget-object v6, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 340
    .local v2, "intentInfo":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v7, 0x0

    const-string v8, "VA.LoadedPlugin"

    invoke-virtual {v2, v4, v3, v7, v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v7

    if-lez v7, :cond_2d

    .line 341
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 343
    const-string v5, "android.intent.category.LEANBACK_LAUNCHER"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    .end local v0    # "activity":Landroid/content/pm/PackageParser$Activity;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "intentInfo":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :goto_55
    return-object v1

    :cond_56
    const/4 v1, 0x0

    goto :goto_55
.end method

.method public getLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageInfo()Landroid/content/pm/PackageInfo;
    .registers 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageManager:Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageResourcePath()Ljava/lang/String;
    .registers 4

    .prologue
    .line 310
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 311
    .local v1, "myUid":I
    iget-object v2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 312
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v1, :cond_f

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    :goto_e
    return-object v2

    :cond_f
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    goto :goto_e
.end method

.method public getPluginContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPluginManager()Lcom/didi/virtualapk/PluginManager;
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    return-object v0
.end method

.method public getProviderInfo(Landroid/content/ComponentName;)Landroid/content/pm/ProviderInfo;
    .registers 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 373
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mProviderInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ProviderInfo;

    return-object v0
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;
    .registers 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mReceiverInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mServiceInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .registers 4

    .prologue
    .line 377
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 378
    .local v0, "theme":Landroid/content/res/Resources$Theme;
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->theme:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1, v2}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->selectDefaultTheme(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 379
    return-object v0
.end method

.method public invokeApplication()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 288
    new-array v0, v3, [Ljava/lang/Exception;

    .line 290
    .local v0, "temp":[Ljava/lang/Exception;
    new-instance v1, Lcom/didi/virtualapk/internal/LoadedPlugin$1;

    invoke-direct {v1, p0, v0}, Lcom/didi/virtualapk/internal/LoadedPlugin$1;-><init>(Lcom/didi/virtualapk/internal/LoadedPlugin;[Ljava/lang/Exception;)V

    invoke-static {v1, v3}, Lcom/didi/virtualapk/utils/RunUtil;->runOnUiThread(Ljava/lang/Runnable;Z)V

    .line 304
    aget-object v1, v0, v2

    if-eqz v1, :cond_13

    .line 305
    aget-object v1, v0, v2

    throw v1

    .line 307
    :cond_13
    return-void
.end method

.method protected makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;
    .registers 6
    .param p1, "forceDefaultAppClass"    # Z
    .param p2, "instrumentation"    # Landroid/app/Instrumentation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 387
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mApplication:Landroid/app/Application;

    if-eqz v1, :cond_7

    .line 388
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mApplication:Landroid/app/Application;

    .line 400
    :goto_6
    return-object v1

    .line 391
    :cond_7
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 392
    .local v0, "appClass":Ljava/lang/String;
    if-nez p1, :cond_11

    if-nez v0, :cond_13

    .line 393
    :cond_11
    const-string v0, "android.app.Application"

    .line 396
    :cond_13
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {p0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getPluginContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2, v1, v0, v2}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mApplication:Landroid/app/Application;

    .line 398
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mApplication:Landroid/app/Application;

    new-instance v2, Lcom/didi/virtualapk/internal/ActivityLifecycleCallbacksProxy;

    invoke-direct {v2}, Lcom/didi/virtualapk/internal/ActivityLifecycleCallbacksProxy;-><init>()V

    invoke-virtual {v1, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 399
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mApplication:Landroid/app/Application;

    invoke-virtual {p2, v1}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V

    .line 400
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mApplication:Landroid/app/Application;

    goto :goto_6
.end method

.method protected match(Landroid/content/pm/PackageParser$Component;Landroid/content/ComponentName;)Z
    .registers 7
    .param p1, "component"    # Landroid/content/pm/PackageParser$Component;
    .param p2, "target"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x1

    .line 506
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Component;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 507
    .local v0, "source":Landroid/content/ComponentName;
    if-ne v0, p2, :cond_8

    .line 514
    :cond_7
    :goto_7
    return v1

    .line 508
    :cond_8
    if-eqz v0, :cond_38

    if-eqz p2, :cond_38

    .line 509
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 510
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mHostContext:Landroid/content/Context;

    .line 511
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 514
    :cond_38
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .registers 13
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
    .line 476
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 477
    .local v0, "component":Landroid/content/ComponentName;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 478
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v6, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 480
    .local v5, "resolver":Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_17
    :goto_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_64

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Activity;

    .line 481
    .local v2, "receiver":Landroid/content/pm/PackageParser$Activity;
    invoke-virtual {v2}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 482
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 483
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v2, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 484
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 485
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_3a
    if-nez v0, :cond_17

    .line 487
    iget-object v7, v2, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_42
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 488
    .local v1, "intentInfo":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v8, 0x1

    const-string v9, "VA.LoadedPlugin"

    invoke-virtual {v1, v5, p1, v8, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_42

    .line 489
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 490
    .restart local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v2, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 491
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 498
    .end local v1    # "intentInfo":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v2    # "receiver":Landroid/content/pm/PackageParser$Activity;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_64
    return-object v4
.end method

.method public queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .registers 13
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
    .line 414
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 415
    .local v1, "component":Landroid/content/ComponentName;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 416
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v6, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 418
    .local v5, "resolver":Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_17
    :goto_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_60

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    .line 419
    .local v0, "activity":Landroid/content/pm/PackageParser$Activity;
    invoke-virtual {p0, v0, v1}, Lcom/didi/virtualapk/internal/LoadedPlugin;->match(Landroid/content/pm/PackageParser$Component;Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_36

    .line 420
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 421
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 422
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 423
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_36
    if-nez v1, :cond_17

    .line 425
    iget-object v7, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 426
    .local v2, "intentInfo":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v8, 0x1

    const-string v9, "VA.LoadedPlugin"

    invoke-virtual {v2, v5, p1, v8, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_3e

    .line 427
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 428
    .restart local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 429
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 436
    .end local v0    # "activity":Landroid/content/pm/PackageParser$Activity;
    .end local v2    # "intentInfo":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_60
    return-object v4
.end method

.method public queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    .registers 13
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
    .line 450
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 451
    .local v0, "component":Landroid/content/ComponentName;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 452
    .local v3, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v6, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 454
    .local v4, "resolver":Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_17
    :goto_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_60

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Service;

    .line 455
    .local v5, "service":Landroid/content/pm/PackageParser$Service;
    invoke-virtual {p0, v5, v0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->match(Landroid/content/pm/PackageParser$Component;Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_36

    .line 456
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 457
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v5, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iput-object v7, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 458
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 459
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_36
    if-nez v0, :cond_17

    .line 461
    iget-object v7, v5, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    .line 462
    .local v1, "intentInfo":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    const/4 v8, 0x1

    const-string v9, "VA.LoadedPlugin"

    invoke-virtual {v1, v4, p1, v8, v9}, Landroid/content/pm/PackageParser$ServiceIntentInfo;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_3e

    .line 463
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 464
    .restart local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v5, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iput-object v7, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 465
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 472
    .end local v1    # "intentInfo":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "service":Landroid/content/pm/PackageParser$Service;
    :cond_60
    return-object v3
.end method

.method public resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .prologue
    .line 404
    invoke-virtual {p0, p1, p2}, Lcom/didi/virtualapk/internal/LoadedPlugin;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 405
    .local v0, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 406
    :cond_c
    const/4 v2, 0x0

    .line 410
    :goto_d
    return-object v2

    .line 409
    :cond_e
    iget-object v2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 410
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2, p2, v0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    goto :goto_d
.end method

.method public resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 502
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ProviderInfo;

    return-object v0
.end method

.method public resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .prologue
    .line 440
    invoke-virtual {p0, p1, p2}, Lcom/didi/virtualapk/internal/LoadedPlugin;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 441
    .local v0, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 442
    :cond_c
    const/4 v2, 0x0

    .line 446
    :goto_d
    return-object v2

    .line 445
    :cond_e
    iget-object v2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 446
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2, p2, v0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    goto :goto_d
.end method

.method public setTheme(I)V
    .registers 4
    .param p1, "resid"    # I

    .prologue
    .line 383
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v0

    const-string v1, "mThemeResId"

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    .line 384
    return-void
.end method

.method protected tryToCopyNativeLib(Ljava/io/File;)V
    .registers 5
    .param p1, "apk"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mHostContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mNativeLibDir:Ljava/io/File;

    invoke-static {p1, v0, v1, v2}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->copyNativeLib(Ljava/io/File;Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/io/File;)V

    .line 241
    return-void
.end method

.method public updateResources(Landroid/content/res/Resources;)V
    .registers 2
    .param p1, "newResources"    # Landroid/content/res/Resources;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    .line 265
    return-void
.end method
