.class public Lcom/kwad/sdk/collector/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:J

.field private static d:J

.field private static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "/*"

    sput-object v0, Lcom/kwad/sdk/collector/b;->a:Ljava/lang/String;

    const-string v0, "*"

    sput-object v0, Lcom/kwad/sdk/collector/b;->b:Ljava/lang/String;

    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/kwad/sdk/collector/b;->c:J

    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/kwad/sdk/collector/b;->d:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kwad/sdk/collector/b;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kwad/sdk/collector/b;->f:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()J
    .registers 2

    sget-wide v0, Lcom/kwad/sdk/collector/b;->d:J

    return-wide v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sget-object v0, Lcom/kwad/sdk/collector/b;->f:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static a(J)V
    .registers 2

    sput-wide p0, Lcom/kwad/sdk/collector/b;->c:J

    return-void
.end method

.method public static a(Lcom/kwad/sdk/collector/AppStatusRules;)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/kwad/sdk/collector/AppStatusRules;->getTargetList()Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_11

    const-string p0, "FAnalyser"

    const-string v0, "loadTargetSuffix target is null"

    invoke-static {p0, v0}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/collector/AppStatusRules$Target;

    invoke-virtual {v0}, Lcom/kwad/sdk/collector/AppStatusRules$Target;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kwad/sdk/collector/AppStatusRules$Target;->getPaths()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/kwad/sdk/collector/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    :cond_3d
    return-void
.end method

.method private a(Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;JLjava/util/List;J)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;",
            "J",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;",
            ">;J)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_17

    sget-wide v0, Lcom/kwad/sdk/collector/b;->c:J

    add-long/2addr v0, p2

    cmp-long p5, v0, p5

    if-lez p5, :cond_17

    invoke-virtual {p1}, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->cloneNewOne()Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->setLastRunningTime(J)V

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    return-void
.end method

.method public static a(Ljava/io/File;)V
    .registers 4

    if-eqz p0, :cond_53

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_53

    :cond_9
    :try_start_9
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_13
    :goto_13
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_42

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_24

    goto :goto_13

    :cond_24
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-static {v1, v0}, Lcom/kwad/sdk/collector/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_42
    const-string p0, "FAnalyser"

    const-string v0, "loadTargetSuffixFromFile load success"

    invoke-static {p0, v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_49} :catch_4f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_49} :catch_4a

    goto :goto_53

    :catch_4a
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_53

    :catch_4f
    move-exception p0

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_53
    :goto_53
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_2b

    :cond_d
    sget-object v0, Lcom/kwad/sdk/collector/b;->e:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/kwad/sdk/collector/b;->e:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    goto :goto_23

    :cond_1e
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_23
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/kwad/sdk/collector/b;->e:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    :goto_2b
    return-void
.end method

.method public static b()V
    .registers 3

    sget-object v0, Lcom/kwad/sdk/collector/b;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_9

    return-void

    :cond_9
    :try_start_9
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/kwad/sdk/d;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kwad/sdk/collector/b;->a(Ljava/io/File;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_17} :catch_18

    goto :goto_1c

    :catch_18
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :goto_1c
    return-void
.end method

.method public static b(J)V
    .registers 2

    sput-wide p0, Lcom/kwad/sdk/collector/b;->d:J

    return-void
.end method

.method public static c()V
    .registers 1

    sget-object v0, Lcom/kwad/sdk/collector/b;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static d()Z
    .registers 1

    sget-object v0, Lcom/kwad/sdk/collector/b;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/utils/AppStatusHelper$PackageNameFilter;)Ljava/util/List;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/utils/AppStatusHelper$PackageNameFilter;",
            ")",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/kwad/sdk/collector/b;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "/Android/data/"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v2, Lcom/kwad/sdk/collector/b;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Lcom/kwad/sdk/utils/AppStatusHelper$PackageNameFilter;->createByPackages(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v2

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "targetSuffixMap size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/kwad/sdk/collector/b;->e:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", packageRunningInfoSet size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FAnalyser"

    invoke-static {v4, v3}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_56
    :goto_56
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;

    if-nez v14, :cond_79

    goto :goto_56

    :cond_79
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_7d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/kwad/sdk/collector/b;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, ""

    const/4 v6, 0x0

    if-eqz v4, :cond_f0

    sget-object v4, Lcom/kwad/sdk/collector/b;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_ea

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_ea

    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_ea

    array-length v7, v9

    move v5, v6

    :goto_b3
    if-ge v5, v7, :cond_ea

    aget-object v3, v9, v5

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v8, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_cb

    move/from16 v18, v5

    move/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v19, v9

    goto :goto_e1

    :cond_cb
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v16

    move-object/from16 v3, p0

    move-object v4, v14

    move/from16 v18, v5

    move-wide/from16 v5, v16

    move/from16 v16, v7

    move-object v7, v10

    move-object/from16 v17, v8

    move-object/from16 v19, v9

    move-wide v8, v11

    invoke-direct/range {v3 .. v9}, Lcom/kwad/sdk/collector/b;->a(Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;JLjava/util/List;J)V

    :goto_e1
    add-int/lit8 v5, v18, 0x1

    move/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v19

    goto :goto_b3

    :cond_ea
    move-object/from16 p1, v0

    move-object/from16 v16, v2

    goto/16 :goto_1ac

    :cond_f0
    sget-object v4, Lcom/kwad/sdk/collector/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18b

    const-string v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v4, Lcom/kwad/sdk/collector/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_ea

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_ea

    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_ea

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    array-length v3, v5

    :goto_124
    if-ge v6, v3, :cond_ea

    move-object/from16 p1, v0

    aget-object v0, v5, v6

    move-object/from16 v16, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_154

    :goto_147
    move v0, v3

    move-object v2, v4

    move-object/from16 v19, v5

    move/from16 v20, v6

    move-object/from16 v17, v7

    move-object/from16 v21, v8

    move-object/from16 v18, v9

    goto :goto_17a

    :cond_154
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v9, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_160

    goto :goto_147

    :cond_160
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v17

    move v0, v3

    move-object/from16 v3, p0

    move-object v2, v4

    move-object v4, v14

    move-object/from16 v19, v5

    move/from16 v20, v6

    move-wide/from16 v5, v17

    move-object/from16 v17, v7

    move-object v7, v10

    move-object/from16 v21, v8

    move-object/from16 v18, v9

    move-wide v8, v11

    invoke-direct/range {v3 .. v9}, Lcom/kwad/sdk/collector/b;->a(Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;JLjava/util/List;J)V

    :goto_17a
    add-int/lit8 v6, v20, 0x1

    move v3, v0

    move-object v4, v2

    move-object/from16 v2, v16

    move-object/from16 v7, v17

    move-object/from16 v9, v18

    move-object/from16 v5, v19

    move-object/from16 v8, v21

    move-object/from16 v0, p1

    goto :goto_124

    :cond_18b
    move-object/from16 p1, v0

    move-object/from16 v16, v2

    invoke-virtual {v3, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ac

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1ac

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    move-object/from16 v3, p0

    move-object v4, v14

    move-object v7, v10

    move-wide v8, v11

    invoke-direct/range {v3 .. v9}, Lcom/kwad/sdk/collector/b;->a(Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;JLjava/util/List;J)V

    :cond_1ac
    :goto_1ac
    move-object/from16 v0, p1

    move-object/from16 v2, v16

    goto/16 :goto_7d

    :cond_1b2
    return-object v10
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_13

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_13

    :cond_9
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_13
    :goto_13
    return-object p1
.end method
