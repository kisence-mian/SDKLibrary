.class public Lmobi/oneway/export/e/a;
.super Ljava/lang/Thread;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmobi/oneway/export/f/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/didi/virtualapk/PluginManager;

.field private d:Lmobi/oneway/export/f/c;

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/oneway/export/e/a;->e:Z

    iput-object p1, p0, Lmobi/oneway/export/e/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobi/oneway/export/e/a;->b:Ljava/util/List;

    :try_start_f
    invoke-static {}, Lmobi/oneway/export/d/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/virtualapk/PluginManager;->getInstance(Landroid/content/Context;)Lcom/didi/virtualapk/PluginManager;

    move-result-object v0

    iput-object v0, p0, Lmobi/oneway/export/e/a;->c:Lcom/didi/virtualapk/PluginManager;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_19} :catch_1a

    :goto_19
    return-void

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/oneway/export/d/b;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "plugin"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()Lmobi/oneway/export/f/c;
    .registers 9

    const/4 v1, 0x1

    iget-object v0, p0, Lmobi/oneway/export/e/a;->d:Lmobi/oneway/export/f/c;

    if-nez v0, :cond_2e

    iget-boolean v0, p0, Lmobi/oneway/export/e/a;->e:Z

    if-nez v0, :cond_2e

    iput-boolean v1, p0, Lmobi/oneway/export/e/a;->e:Z

    invoke-static {}, Lmobi/oneway/export/b;->a()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_2e

    :try_start_11
    const-string v1, "mobi.oneway.sdk.OnewayAd"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lmobi/oneway/export/f/c;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lmobi/oneway/export/f/c;-><init>(ILjava/lang/Class;)V

    iput-object v1, p0, Lmobi/oneway/export/e/a;->d:Lmobi/oneway/export/f/c;

    iget-object v0, p0, Lmobi/oneway/export/e/a;->d:Lmobi/oneway/export/f/c;

    invoke-static {}, Lmobi/oneway/export/d/b;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lmobi/oneway/export/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_2e} :catch_31

    :cond_2e
    :goto_2e
    iget-object v0, p0, Lmobi/oneway/export/e/a;->d:Lmobi/oneway/export/f/c;

    return-object v0

    :catch_31
    move-exception v0

    sget-object v1, Lmobi/oneway/export/enums/PluginErrorType;->shell_error_reflectClass:Lmobi/oneway/export/enums/PluginErrorType;

    invoke-static {v0}, Lmobi/oneway/export/h/g;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmobi/oneway/export/e/c;->a(Lmobi/oneway/export/enums/PluginErrorType;Ljava/lang/String;)V

    goto :goto_2e
.end method

.method private a(Lorg/json/JSONObject;)Lmobi/oneway/export/f/c;
    .registers 4

    const-string v0, "adp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    invoke-direct {p0}, Lmobi/oneway/export/e/a;->a()Lmobi/oneway/export/f/c;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_e
    invoke-direct {p0, p1}, Lmobi/oneway/export/e/a;->b(Lorg/json/JSONObject;)Lmobi/oneway/export/f/c;

    move-result-object v0

    goto :goto_d
.end method

.method private a(Lmobi/oneway/export/enums/AdType;Lorg/json/JSONArray;)V
    .registers 9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_38

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_38

    const/4 v0, 0x0

    move v1, v0

    :goto_f
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_38

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v3

    iget-object v0, p0, Lmobi/oneway/export/e/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/oneway/export/f/c;

    invoke-virtual {v0}, Lmobi/oneway/export/f/c;->a()I

    move-result v5

    if-ne v5, v3, :cond_1f

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_34
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    :cond_38
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_49

    invoke-direct {p0}, Lmobi/oneway/export/e/a;->a()Lmobi/oneway/export/f/c;

    move-result-object v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lmobi/oneway/export/e/a;->d:Lmobi/oneway/export/f/c;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_49
    invoke-static {p1, v2}, Lmobi/oneway/export/f/d;->a(Lmobi/oneway/export/enums/AdType;Ljava/util/List;)V

    return-void
.end method

.method private b(Lorg/json/JSONObject;)Lmobi/oneway/export/f/c;
    .registers 19

    const/4 v10, 0x0

    const-string v2, "adp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    const-string v2, "apkpkg"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v2, "version"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v2, "appId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "ipid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "rwPid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "spid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "ipvid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "iatid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "feedid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "adcl"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".apk"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/oneway/export/e/a;->c:Lcom/didi/virtualapk/PluginManager;

    if-eqz v15, :cond_b9

    :try_start_72
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/oneway/export/e/a;->c:Lcom/didi/virtualapk/PluginManager;

    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lmobi/oneway/export/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v15 .. v16}, Lcom/didi/virtualapk/PluginManager;->loadPlugin(Ljava/io/File;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lmobi/oneway/export/e/a;->c:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v14, v12}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v14

    invoke-virtual {v14}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v15

    invoke-virtual {v14}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getPluginContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v15, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    new-instance v2, Lmobi/oneway/export/f/c;

    invoke-direct {v2, v11, v15}, Lmobi/oneway/export/f/c;-><init>(ILjava/lang/Class;)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_9f} :catch_b0

    :try_start_9f
    invoke-virtual/range {v2 .. v9}, Lmobi/oneway/export/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v14, v12}, Lmobi/oneway/export/f/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lmobi/oneway/export/f/c;->a(J)V

    invoke-virtual {v2, v13}, Lmobi/oneway/export/f/c;->a(Ljava/lang/String;)V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_af} :catch_b7

    :goto_af
    return-object v2

    :catch_b0
    move-exception v2

    move-object v3, v2

    move-object v2, v10

    :goto_b3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_af

    :catch_b7
    move-exception v3

    goto :goto_b3

    :cond_b9
    move-object v2, v10

    goto :goto_af
.end method

.method private b()V
    .registers 3

    invoke-direct {p0}, Lmobi/oneway/export/e/a;->a()Lmobi/oneway/export/f/c;

    move-result-object v0

    if-eqz v0, :cond_2f

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lmobi/oneway/export/f/d;->a(Ljava/util/List;)V

    sget-object v0, Lmobi/oneway/export/enums/AdType;->splash:Lmobi/oneway/export/enums/AdType;

    invoke-static {v0, v1}, Lmobi/oneway/export/f/d;->a(Lmobi/oneway/export/enums/AdType;Ljava/util/List;)V

    sget-object v0, Lmobi/oneway/export/enums/AdType;->rewarded:Lmobi/oneway/export/enums/AdType;

    invoke-static {v0, v1}, Lmobi/oneway/export/f/d;->a(Lmobi/oneway/export/enums/AdType;Ljava/util/List;)V

    sget-object v0, Lmobi/oneway/export/enums/AdType;->interstitial:Lmobi/oneway/export/enums/AdType;

    invoke-static {v0, v1}, Lmobi/oneway/export/f/d;->a(Lmobi/oneway/export/enums/AdType;Ljava/util/List;)V

    sget-object v0, Lmobi/oneway/export/enums/AdType;->interstitialimage:Lmobi/oneway/export/enums/AdType;

    invoke-static {v0, v1}, Lmobi/oneway/export/f/d;->a(Lmobi/oneway/export/enums/AdType;Ljava/util/List;)V

    sget-object v0, Lmobi/oneway/export/enums/AdType;->interactive:Lmobi/oneway/export/enums/AdType;

    invoke-static {v0, v1}, Lmobi/oneway/export/f/d;->a(Lmobi/oneway/export/enums/AdType;Ljava/util/List;)V

    sget-object v0, Lmobi/oneway/export/enums/AdType;->feed:Lmobi/oneway/export/enums/AdType;

    invoke-static {v0, v1}, Lmobi/oneway/export/f/d;->a(Lmobi/oneway/export/enums/AdType;Ljava/util/List;)V

    :cond_2f
    invoke-static {}, Lmobi/oneway/export/e/b;->a()Lmobi/oneway/export/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/oneway/export/e/b;->c()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :try_start_3
    new-instance v0, Lmobi/oneway/export/g/f;

    const-string v1, "http://ads.oneway.mobi/v2/sdkConfig"

    invoke-direct {v0, v1}, Lmobi/oneway/export/g/f;-><init>(Ljava/lang/String;)V

    const-string v1, "publishId"

    iget-object v2, p0, Lmobi/oneway/export/e/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/g/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/g/f;

    move-result-object v0

    const-string v1, "shellVersion"

    const-string v2, "2.4.2"

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/g/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/g/f;

    move-result-object v0

    const-string v1, "dmd"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/g/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/g/f;

    move-result-object v0

    const-string v1, "dmk"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/g/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/g/f;

    move-result-object v0

    const-string v1, "ip"

    invoke-static {}, Lmobi/oneway/export/d/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lmobi/oneway/export/h/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/g/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/g/f;

    move-result-object v0

    const-string v1, "osv"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/g/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/g/f;

    move-result-object v0

    const-string v1, "osl"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/g/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/g/f;

    move-result-object v0

    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/g/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/g/f;

    move-result-object v0

    const-string v1, "osi"

    invoke-static {}, Lmobi/oneway/export/f/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/g/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/g/f;

    move-result-object v0

    const-string v1, "pkg"

    invoke-static {}, Lmobi/oneway/export/d/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/g/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/g/f;

    move-result-object v0

    const-string v1, "did"

    invoke-static {}, Lmobi/oneway/export/h/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/g/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/g/f;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/oneway/export/g/f;->m()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "upgrade"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "e"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "appToken"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sc"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "plugins"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const-string v6, "rewardSort"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v7, "splashSort"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const-string v8, "interstitialSort"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    const-string v9, "interstitialImageSort"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    const-string v10, "interactiveSort"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    const-string v11, "feedSort"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    invoke-static {v3}, Lmobi/oneway/export/d/b;->b(Ljava/lang/String;)V

    invoke-static {v2}, Lmobi/oneway/export/d/b;->a(Z)V

    invoke-static {v4}, Lmobi/oneway/export/d/b;->c(Ljava/lang/String;)V

    if-eqz v1, :cond_d3

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_d7

    :cond_d3
    invoke-direct {p0}, Lmobi/oneway/export/e/a;->b()V

    :goto_d6
    return-void

    :cond_d7
    const/4 v0, 0x0

    move v1, v0

    :goto_d9
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_168

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v0, "hash"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "adp"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v4, "url"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x1

    if-ne v0, v12, :cond_128

    const-string v0, "OnewaySdk2.4.2.jar"

    :goto_fa
    new-instance v12, Ljava/io/File;

    invoke-direct {p0, v0}, Lmobi/oneway/export/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lmobi/oneway/export/h/h;->e(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_13c

    invoke-static {v12}, Lmobi/oneway/export/h/n;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_111
    if-eqz v0, :cond_13e

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13e

    :cond_119
    :goto_119
    invoke-direct {p0, v2}, Lmobi/oneway/export/e/a;->a(Lorg/json/JSONObject;)Lmobi/oneway/export/f/c;

    move-result-object v0

    if-eqz v0, :cond_124

    iget-object v2, p0, Lmobi/oneway/export/e/a;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_124
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d9

    :cond_128
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ".apk"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_fa

    :cond_13c
    const/4 v0, 0x0

    goto :goto_111

    :cond_13e
    new-instance v0, Lmobi/oneway/export/g/f;

    invoke-direct {v0, v4}, Lmobi/oneway/export/g/f;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x7d0

    invoke-virtual {v0, v4}, Lmobi/oneway/export/g/f;->a(I)Lmobi/oneway/export/g/f;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/oneway/export/g/f;->l()[B

    move-result-object v0

    invoke-static {v0}, Lmobi/oneway/export/h/n;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_119

    invoke-static {v12, v0}, Lmobi/oneway/export/h/h;->a(Ljava/io/File;[B)Z
    :try_end_15e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_15e} :catch_15f
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_15e} :catch_194
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_15e} :catch_19d

    goto :goto_119

    :catch_15f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    invoke-direct {p0}, Lmobi/oneway/export/e/a;->b()V

    goto/16 :goto_d6

    :cond_168
    :try_start_168
    iget-object v0, p0, Lmobi/oneway/export/e/a;->b:Ljava/util/List;

    invoke-static {v0}, Lmobi/oneway/export/f/d;->a(Ljava/util/List;)V

    sget-object v0, Lmobi/oneway/export/enums/AdType;->splash:Lmobi/oneway/export/enums/AdType;

    invoke-direct {p0, v0, v7}, Lmobi/oneway/export/e/a;->a(Lmobi/oneway/export/enums/AdType;Lorg/json/JSONArray;)V

    sget-object v0, Lmobi/oneway/export/enums/AdType;->rewarded:Lmobi/oneway/export/enums/AdType;

    invoke-direct {p0, v0, v6}, Lmobi/oneway/export/e/a;->a(Lmobi/oneway/export/enums/AdType;Lorg/json/JSONArray;)V

    sget-object v0, Lmobi/oneway/export/enums/AdType;->interstitialimage:Lmobi/oneway/export/enums/AdType;

    invoke-direct {p0, v0, v9}, Lmobi/oneway/export/e/a;->a(Lmobi/oneway/export/enums/AdType;Lorg/json/JSONArray;)V

    sget-object v0, Lmobi/oneway/export/enums/AdType;->interstitial:Lmobi/oneway/export/enums/AdType;

    invoke-direct {p0, v0, v8}, Lmobi/oneway/export/e/a;->a(Lmobi/oneway/export/enums/AdType;Lorg/json/JSONArray;)V

    sget-object v0, Lmobi/oneway/export/enums/AdType;->interactive:Lmobi/oneway/export/enums/AdType;

    invoke-direct {p0, v0, v10}, Lmobi/oneway/export/e/a;->a(Lmobi/oneway/export/enums/AdType;Lorg/json/JSONArray;)V

    sget-object v0, Lmobi/oneway/export/enums/AdType;->feed:Lmobi/oneway/export/enums/AdType;

    invoke-direct {p0, v0, v11}, Lmobi/oneway/export/e/a;->a(Lmobi/oneway/export/enums/AdType;Lorg/json/JSONArray;)V

    invoke-static {}, Lmobi/oneway/export/e/b;->a()Lmobi/oneway/export/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/oneway/export/e/b;->c()V
    :try_end_192
    .catch Ljava/io/IOException; {:try_start_168 .. :try_end_192} :catch_15f
    .catch Lorg/json/JSONException; {:try_start_168 .. :try_end_192} :catch_194
    .catch Ljava/lang/Exception; {:try_start_168 .. :try_end_192} :catch_19d

    goto/16 :goto_d6

    :catch_194
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    invoke-direct {p0}, Lmobi/oneway/export/e/a;->b()V

    goto/16 :goto_d6

    :catch_19d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lmobi/oneway/export/e/a;->b()V

    goto/16 :goto_d6
.end method
