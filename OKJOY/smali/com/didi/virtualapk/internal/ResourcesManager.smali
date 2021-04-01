.class Lcom/didi/virtualapk/internal/ResourcesManager;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/virtualapk/internal/ResourcesManager$ResourcesManagerCompatForP;,
        Lcom/didi/virtualapk/internal/ResourcesManager$ResourcesManagerCompatForN;,
        Lcom/didi/virtualapk/internal/ResourcesManager$AdaptationResourcesCompat;,
        Lcom/didi/virtualapk/internal/ResourcesManager$NubiaResourcesCompat;,
        Lcom/didi/virtualapk/internal/ResourcesManager$VivoResourcesCompat;,
        Lcom/didi/virtualapk/internal/ResourcesManager$MiUiResourcesCompat;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VA.LoadedPlugin"

.field private static mDefaultConfiguration:Landroid/content/res/Configuration;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # [Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static {p0, p1}, Lcom/didi/virtualapk/internal/ResourcesManager;->append([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Landroid/content/res/Configuration;
    .registers 1

    .prologue
    .line 48
    sget-object v0, Lcom/didi/virtualapk/internal/ResourcesManager;->mDefaultConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method static synthetic access$502(Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .registers 1
    .param p0, "x0"    # Landroid/content/res/Configuration;

    .prologue
    .line 48
    sput-object p0, Lcom/didi/virtualapk/internal/ResourcesManager;->mDefaultConfiguration:Landroid/content/res/Configuration;

    return-object p0
.end method

.method private static append([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p0, "paths"    # [Ljava/lang/String;
    .param p1, "newPath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 194
    invoke-static {p0, p1}, Lcom/didi/virtualapk/internal/ResourcesManager;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 204
    .end local p0    # "paths":[Ljava/lang/String;
    :goto_7
    return-object p0

    .line 198
    .restart local p0    # "paths":[Ljava/lang/String;
    :cond_8
    if-eqz p0, :cond_1b

    array-length v2, p0

    :goto_b
    add-int/lit8 v1, v2, 0x1

    .line 199
    .local v1, "newPathsCount":I
    new-array v0, v1, [Ljava/lang/String;

    .line 200
    .local v0, "newPaths":[Ljava/lang/String;
    if-eqz p0, :cond_15

    .line 201
    array-length v2, p0

    invoke-static {p0, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    :cond_15
    add-int/lit8 v2, v1, -0x1

    aput-object p1, v0, v2

    move-object p0, v0

    .line 204
    goto :goto_7

    .end local v0    # "newPaths":[Ljava/lang/String;
    .end local v1    # "newPathsCount":I
    :cond_1b
    move v2, v3

    .line 198
    goto :goto_b
.end method

.method private static contains([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 209
    if-nez p0, :cond_4

    .line 217
    :cond_3
    :goto_3
    return v1

    .line 212
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 213
    aget-object v2, p0, v0

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 214
    const/4 v1, 0x1

    goto :goto_3

    .line 212
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public static declared-synchronized createResources(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/content/res/Resources;
    .registers 7
    .param p0, "hostContext"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "apk"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 55
    const-class v2, Lcom/didi/virtualapk/internal/ResourcesManager;

    monitor-enter v2

    :try_start_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_f

    .line 56
    invoke-static {p0, p1, p2}, Lcom/didi/virtualapk/internal/ResourcesManager;->createResourcesForN(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/content/res/Resources;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1b

    move-result-object v0

    .line 61
    :goto_d
    monitor-exit v2

    return-object v0

    .line 59
    :cond_f
    :try_start_f
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/didi/virtualapk/internal/ResourcesManager;->createResourcesSimple(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 60
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-static {p0, v0}, Lcom/didi/virtualapk/internal/ResourcesManager;->hookResources(Landroid/content/Context;Landroid/content/res/Resources;)V
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_1b

    goto :goto_d

    .line 55
    .end local v0    # "resources":Landroid/content/res/Resources;
    :catchall_1b
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static createResourcesForN(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/content/res/Resources;
    .registers 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "apk"    # Ljava/io/File;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 151
    .local v16, "startTime":J
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 152
    .local v7, "newAssetPath":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 153
    .local v5, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 155
    .local v4, "baseResDir":Ljava/lang/String;
    iget-object v15, v5, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v15, v7}, Lcom/didi/virtualapk/internal/ResourcesManager;->append([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    iput-object v15, v5, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 156
    invoke-static/range {p0 .. p0}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v15

    const-string v18, "mPackageInfo"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v15

    invoke-virtual {v15}, Lcom/didi/virtualapk/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/LoadedApk;

    .line 158
    .local v6, "loadedApk":Landroid/app/LoadedApk;
    invoke-static {v6}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v15

    const-string v18, "mSplitResDirs"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v11

    .line 159
    .local v11, "rLoadedApk":Lcom/didi/virtualapk/utils/Reflector;
    invoke-virtual {v11}, Lcom/didi/virtualapk/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    .line 160
    .local v14, "splitResDirs":[Ljava/lang/String;
    invoke-static {v14, v7}, Lcom/didi/virtualapk/internal/ResourcesManager;->append([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    .line 162
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v13

    .line 163
    .local v13, "resourcesManager":Landroid/app/ResourcesManager;
    invoke-static {v13}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v15

    const-string v18, "mResourceImpls"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v15

    invoke-virtual {v15}, Lcom/didi/virtualapk/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArrayMap;

    .line 165
    .local v9, "originalMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesKey;Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;>;"
    monitor-enter v13

    .line 166
    :try_start_58
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 168
    .local v12, "resolvedMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/res/ResourcesKey;Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;>;"
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0x1c

    move/from16 v0, v18

    if-ge v15, v0, :cond_71

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0x1b

    move/from16 v0, v18

    if-ne v15, v0, :cond_bd

    sget v15, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-eqz v15, :cond_bd

    .line 170
    :cond_71
    move-object/from16 v0, p0

    invoke-static {v9, v12, v0, v6}, Lcom/didi/virtualapk/internal/ResourcesManager$ResourcesManagerCompatForP;->resolveResourcesImplMap(Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;Landroid/app/LoadedApk;)V

    .line 176
    :goto_76
    invoke-virtual {v9}, Landroid/util/ArrayMap;->clear()V

    .line 177
    invoke-virtual {v9, v12}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 178
    monitor-exit v13
    :try_end_7d
    .catchall {:try_start_58 .. :try_end_7d} :catchall_c1

    .line 180
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v15

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".vastub"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v4, v0}, Landroid/app/ResourcesManager;->appendLibAssetForMainAssetPath(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 185
    .local v8, "newResources":Landroid/content/res/Resources;
    invoke-static/range {p0 .. p0}, Lcom/didi/virtualapk/PluginManager;->getInstance(Landroid/content/Context;)Lcom/didi/virtualapk/PluginManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/didi/virtualapk/PluginManager;->getAllLoadedPlugins()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_ad
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_c4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/didi/virtualapk/internal/LoadedPlugin;

    .line 186
    .local v10, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    invoke-virtual {v10, v8}, Lcom/didi/virtualapk/internal/LoadedPlugin;->updateResources(Landroid/content/res/Resources;)V

    goto :goto_ad

    .line 173
    .end local v8    # "newResources":Landroid/content/res/Resources;
    .end local v10    # "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    :cond_bd
    :try_start_bd
    invoke-static {v9, v12, v4, v7}, Lcom/didi/virtualapk/internal/ResourcesManager$ResourcesManagerCompatForN;->resolveResourcesImplMap(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_76

    .line 178
    .end local v12    # "resolvedMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/res/ResourcesKey;Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;>;"
    :catchall_c1
    move-exception v15

    monitor-exit v13
    :try_end_c3
    .catchall {:try_start_bd .. :try_end_c3} :catchall_c1

    throw v15

    .line 189
    .restart local v8    # "newResources":Landroid/content/res/Resources;
    .restart local v12    # "resolvedMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/res/ResourcesKey;Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;>;"
    :cond_c4
    const-string v15, "VA.LoadedPlugin"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "createResourcesForN cost time: +"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v16

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "ms"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-object v8
.end method

.method private static createResourcesSimple(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    .registers 16
    .param p0, "hostContext"    # Landroid/content/Context;
    .param p1, "apk"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 66
    .local v4, "hostResources":Landroid/content/res/Resources;
    const/4 v5, 0x0

    .line 68
    .local v5, "newResources":Landroid/content/res/Resources;
    const-class v9, Landroid/content/res/AssetManager;

    invoke-static {v9}, Lcom/didi/virtualapk/utils/Reflector;->on(Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v9

    const-string v10, "addAssetPath"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Lcom/didi/virtualapk/utils/Reflector;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v8

    .line 69
    .local v8, "reflector":Lcom/didi/virtualapk/utils/Reflector;
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-ge v9, v10, :cond_61

    .line 70
    const-class v9, Landroid/content/res/AssetManager;

    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    .line 71
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {v8, v0}, Lcom/didi/virtualapk/utils/Reflector;->bind(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    .line 72
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v8, v9}, Lcom/didi/virtualapk/utils/Reflector;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 73
    .local v1, "cookie1":I
    if-nez v1, :cond_68

    .line 74
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createResources failed, can\'t addAssetPath for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 77
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v1    # "cookie1":I
    :cond_61
    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 78
    .restart local v0    # "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {v8, v0}, Lcom/didi/virtualapk/utils/Reflector;->bind(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    .line 80
    :cond_68
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-virtual {v8, v9}, Lcom/didi/virtualapk/utils/Reflector;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 81
    .local v2, "cookie2":I
    if-nez v2, :cond_93

    .line 82
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createResources failed, can\'t addAssetPath for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 84
    :cond_93
    invoke-static {p0}, Lcom/didi/virtualapk/PluginManager;->getInstance(Landroid/content/Context;)Lcom/didi/virtualapk/PluginManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/didi/virtualapk/PluginManager;->getAllLoadedPlugins()Ljava/util/List;

    move-result-object v7

    .line 85
    .local v7, "pluginList":Ljava/util/List;, "Ljava/util/List<Lcom/didi/virtualapk/internal/LoadedPlugin;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_9f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_de

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/didi/virtualapk/internal/LoadedPlugin;

    .line 86
    .local v6, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v6}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getLocation()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v11

    invoke-virtual {v8, v9}, Lcom/didi/virtualapk/utils/Reflector;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 87
    .local v3, "cookie3":I
    if-nez v3, :cond_9f

    .line 88
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createResources failed, can\'t addAssetPath for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getLocation()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 91
    .end local v3    # "cookie3":I
    .end local v6    # "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    :cond_de
    invoke-static {v4}, Lcom/didi/virtualapk/internal/ResourcesManager;->isMiUi(Landroid/content/res/Resources;)Z

    move-result v9

    if-eqz v9, :cond_fc

    .line 92
    # invokes: Lcom/didi/virtualapk/internal/ResourcesManager$MiUiResourcesCompat;->createResources(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;
    invoke-static {v4, v0}, Lcom/didi/virtualapk/internal/ResourcesManager$MiUiResourcesCompat;->access$000(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;

    move-result-object v5

    .line 104
    :goto_e8
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_ec
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/didi/virtualapk/internal/LoadedPlugin;

    .line 105
    .restart local v6    # "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    invoke-virtual {v6, v5}, Lcom/didi/virtualapk/internal/LoadedPlugin;->updateResources(Landroid/content/res/Resources;)V

    goto :goto_ec

    .line 93
    .end local v6    # "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    :cond_fc
    invoke-static {v4}, Lcom/didi/virtualapk/internal/ResourcesManager;->isVivo(Landroid/content/res/Resources;)Z

    move-result v9

    if-eqz v9, :cond_107

    .line 94
    # invokes: Lcom/didi/virtualapk/internal/ResourcesManager$VivoResourcesCompat;->createResources(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;
    invoke-static {p0, v4, v0}, Lcom/didi/virtualapk/internal/ResourcesManager$VivoResourcesCompat;->access$100(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;

    move-result-object v5

    goto :goto_e8

    .line 95
    :cond_107
    invoke-static {v4}, Lcom/didi/virtualapk/internal/ResourcesManager;->isNubia(Landroid/content/res/Resources;)Z

    move-result v9

    if-eqz v9, :cond_112

    .line 96
    # invokes: Lcom/didi/virtualapk/internal/ResourcesManager$NubiaResourcesCompat;->createResources(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;
    invoke-static {v4, v0}, Lcom/didi/virtualapk/internal/ResourcesManager$NubiaResourcesCompat;->access$200(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;

    move-result-object v5

    goto :goto_e8

    .line 97
    :cond_112
    invoke-static {v4}, Lcom/didi/virtualapk/internal/ResourcesManager;->isNotRawResources(Landroid/content/res/Resources;)Z

    move-result v9

    if-eqz v9, :cond_11d

    .line 98
    # invokes: Lcom/didi/virtualapk/internal/ResourcesManager$AdaptationResourcesCompat;->createResources(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;
    invoke-static {v4, v0}, Lcom/didi/virtualapk/internal/ResourcesManager$AdaptationResourcesCompat;->access$300(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;

    move-result-object v5

    goto :goto_e8

    .line 101
    :cond_11d
    new-instance v5, Landroid/content/res/Resources;

    .end local v5    # "newResources":Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-direct {v5, v0, v9, v10}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .restart local v5    # "newResources":Landroid/content/res/Resources;
    goto :goto_e8

    .line 108
    :cond_12b
    return-object v5
.end method

.method public static hookResources(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 11
    .param p0, "base"    # Landroid/content/Context;
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 112
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    if-lt v7, v8, :cond_7

    .line 134
    :goto_6
    return-void

    .line 116
    :cond_7
    :try_start_7
    invoke-static {p0}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v5

    .line 117
    .local v5, "reflector":Lcom/didi/virtualapk/utils/Reflector;
    const-string v7, "mResources"

    invoke-virtual {v5, v7}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    .line 118
    const-string v7, "mPackageInfo"

    invoke-virtual {v5, v7}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/virtualapk/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object v3

    .line 119
    .local v3, "loadedApk":Ljava/lang/Object;
    invoke-static {v3}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v7

    const-string v8, "mResources"

    invoke-virtual {v7, v8}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    .line 121
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 123
    .local v0, "activityThread":Landroid/app/ActivityThread;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-lt v7, v8, :cond_65

    .line 124
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v6

    .line 128
    :goto_39
    invoke-static {v6}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v7

    const-string v8, "mActiveResources"

    invoke-virtual {v7, v8}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/virtualapk/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 129
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;>;"
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 130
    .local v2, "key":Ljava/lang/Object;
    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_5d} :catch_5e

    goto :goto_6

    .line 131
    .end local v0    # "activityThread":Landroid/app/ActivityThread;
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "loadedApk":Ljava/lang/Object;
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;>;"
    .end local v5    # "reflector":Lcom/didi/virtualapk/utils/Reflector;
    :catch_5e
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "VA.LoadedPlugin"

    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 126
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "activityThread":Landroid/app/ActivityThread;
    .restart local v3    # "loadedApk":Ljava/lang/Object;
    .restart local v5    # "reflector":Lcom/didi/virtualapk/utils/Reflector;
    :cond_65
    :try_start_65
    invoke-static {v0}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v7

    const-string v8, "mResourcesManager"

    invoke-virtual {v7, v8}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/virtualapk/utils/Reflector;->get()Ljava/lang/Object;
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_72} :catch_5e

    move-result-object v6

    .local v6, "resManager":Ljava/lang/Object;
    goto :goto_39
.end method

.method private static isMiUi(Landroid/content/res/Resources;)Z
    .registers 3
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 221
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.content.res.MiuiResources"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isNotRawResources(Landroid/content/res/Resources;)Z
    .registers 3
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 233
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.content.res.Resources"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static isNubia(Landroid/content/res/Resources;)Z
    .registers 3
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 229
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.content.res.NubiaResources"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isVivo(Landroid/content/res/Resources;)Z
    .registers 3
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 225
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.content.res.VivoResources"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
