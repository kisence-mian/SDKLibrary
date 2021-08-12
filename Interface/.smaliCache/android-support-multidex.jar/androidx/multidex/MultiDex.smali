.class public final Landroidx/multidex/MultiDex;
.super Ljava/lang/Object;
.source "MultiDex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/multidex/MultiDex$V4;,
        Landroidx/multidex/MultiDex$V14;,
        Landroidx/multidex/MultiDex$V19;
    }
.end annotation


# static fields
.field private static final CODE_CACHE_NAME:Ljava/lang/String; = "code_cache"

.field private static final CODE_CACHE_SECONDARY_FOLDER_NAME:Ljava/lang/String; = "secondary-dexes"

.field private static final IS_VM_MULTIDEX_CAPABLE:Z

.field private static final MAX_SUPPORTED_SDK_VERSION:I = 0x14

.field private static final MIN_SDK_VERSION:I = 0x4

.field private static final NO_KEY_PREFIX:Ljava/lang/String; = ""

.field private static final OLD_SECONDARY_FOLDER_NAME:Ljava/lang/String; = "secondary-dexes"

.field static final TAG:Ljava/lang/String; = "MultiDex"

.field private static final VM_WITH_MULTIDEX_VERSION_MAJOR:I = 0x2

.field private static final VM_WITH_MULTIDEX_VERSION_MINOR:I = 0x1

.field private static final installedApk:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroidx/multidex/MultiDex;->installedApk:Ljava/util/Set;

    .line 77
    nop

    .line 78
    const-string v0, "java.vm.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/multidex/MultiDex;->isVMMultidexCapable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroidx/multidex/MultiDex;->IS_VM_MULTIDEX_CAPABLE:Z

    .line 77
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 3
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 55
    invoke-static {p0, p1}, Landroidx/multidex/MultiDex;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 55
    invoke-static {p0, p1, p2}, Landroidx/multidex/MultiDex;->expandFieldArray(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 4
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 55
    invoke-static {p0, p1, p2}, Landroidx/multidex/MultiDex;->findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static clearOldDexDir(Landroid/content/Context;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 433
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "secondary-dexes"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 434
    .local v0, "dexDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_ff

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing old secondary dex dir ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MultiDex"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 437
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_58

    .line 438
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to list secondary dex dir content ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-void

    .line 441
    :cond_58
    array-length v2, v1

    const/4 v4, 0x0

    :goto_5a
    if-ge v4, v2, :cond_c4

    aget-object v5, v1, v4

    .line 442
    .local v5, "oldFile":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Trying to delete old file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " of size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 443
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 442
    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_a7

    .line 445
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete old file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c1

    .line 447
    :cond_a7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleted old file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    .end local v5    # "oldFile":Ljava/io/File;
    :goto_c1
    add-int/lit8 v4, v4, 0x1

    goto :goto_5a

    .line 450
    :cond_c4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_e5

    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to delete secondary dex dir "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ff

    .line 453
    :cond_e5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleted old secondary dex dir "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    .end local v1    # "files":[Ljava/io/File;
    :cond_ff
    :goto_ff
    return-void
.end method

.method private static doInstallation(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 15
    .param p0, "mainContext"    # Landroid/content/Context;
    .param p1, "sourceApk"    # Ljava/io/File;
    .param p2, "dataDir"    # Ljava/io/File;
    .param p3, "secondaryFolderName"    # Ljava/lang/String;
    .param p4, "prefsKeyPrefix"    # Ljava/lang/String;
    .param p5, "reinstallOnPatchRecoverableException"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 206
    sget-object v0, Landroidx/multidex/MultiDex;->installedApk:Ljava/util/Set;

    monitor-enter v0

    .line 207
    :try_start_3
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 208
    monitor-exit v0

    return-void

    .line 210
    :cond_b
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-le v1, v2, :cond_5a

    .line 213
    const-string v1, "MultiDex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MultiDex is not guaranteed to work in SDK version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": SDK version higher than "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be backed by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "runtime with built-in multidex capabilty but it\'s not the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "case here: java.vm.version=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "java.vm.version"

    .line 218
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 213
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_3 .. :try_end_5a} :catchall_be

    .line 228
    :cond_5a
    :try_start_5a
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1
    :try_end_5e
    .catch Ljava/lang/RuntimeException; {:try_start_5a .. :try_end_5e} :catch_b4
    .catchall {:try_start_5a .. :try_end_5e} :catchall_be

    .line 237
    .local v1, "loader":Ljava/lang/ClassLoader;
    nop

    .line 238
    if-nez v1, :cond_6a

    .line 240
    :try_start_61
    const-string v2, "MultiDex"

    const-string v3, "Context class loader is null. Must be running in test mode. Skip patching."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_61 .. :try_end_69} :catchall_be

    return-void

    .line 247
    :cond_6a
    :try_start_6a
    invoke-static {p0}, Landroidx/multidex/MultiDex;->clearOldDexDir(Landroid/content/Context;)V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_6e

    .line 251
    goto :goto_76

    .line 248
    :catchall_6e
    move-exception v2

    .line 249
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_6f
    const-string v3, "MultiDex"

    const-string v4, "Something went wrong when trying to clear old MultiDex extraction, continuing without cleaning."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_76
    invoke-static {p0, p2, p3}, Landroidx/multidex/MultiDex;->getDexDir(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 257
    .local v2, "dexDir":Ljava/io/File;
    new-instance v3, Landroidx/multidex/MultiDexExtractor;

    invoke-direct {v3, p1, v2}, Landroidx/multidex/MultiDexExtractor;-><init>(Ljava/io/File;Ljava/io/File;)V
    :try_end_7f
    .catchall {:try_start_6f .. :try_end_7f} :catchall_be

    .line 258
    .local v3, "extractor":Landroidx/multidex/MultiDexExtractor;
    const/4 v4, 0x0

    .line 260
    .local v4, "closeException":Ljava/io/IOException;
    const/4 v5, 0x0

    .line 261
    :try_start_81
    invoke-virtual {v3, p0, p4, v5}, Landroidx/multidex/MultiDexExtractor;->load(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v5
    :try_end_85
    .catchall {:try_start_81 .. :try_end_85} :catchall_ab

    .line 263
    .local v5, "files":Ljava/util/List;, "Ljava/util/List<+Ljava/io/File;>;"
    :try_start_85
    invoke-static {v1, v2, v5}, Landroidx/multidex/MultiDex;->installSecondaryDexes(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/util/List;)V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_89
    .catchall {:try_start_85 .. :try_end_88} :catchall_ab

    .line 273
    goto :goto_9c

    .line 265
    :catch_89
    move-exception v6

    .line 266
    .local v6, "e":Ljava/io/IOException;
    if-eqz p5, :cond_a9

    .line 269
    :try_start_8c
    const-string v7, "MultiDex"

    const-string v8, "Failed to install extracted secondary dex files, retrying with forced extraction"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    const/4 v7, 0x1

    invoke-virtual {v3, p0, p4, v7}, Landroidx/multidex/MultiDexExtractor;->load(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v7

    move-object v5, v7

    .line 272
    invoke-static {v1, v2, v5}, Landroidx/multidex/MultiDex;->installSecondaryDexes(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/util/List;)V
    :try_end_9c
    .catchall {:try_start_8c .. :try_end_9c} :catchall_ab

    .line 276
    .end local v5    # "files":Ljava/util/List;, "Ljava/util/List<+Ljava/io/File;>;"
    .end local v6    # "e":Ljava/io/IOException;
    :goto_9c
    :try_start_9c
    invoke-virtual {v3}, Landroidx/multidex/MultiDexExtractor;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_a0
    .catchall {:try_start_9c .. :try_end_9f} :catchall_be

    .line 281
    goto :goto_a3

    .line 277
    :catch_a0
    move-exception v5

    .line 280
    .local v5, "e":Ljava/io/IOException;
    move-object v4, v5

    .line 282
    .end local v5    # "e":Ljava/io/IOException;
    nop

    .line 283
    :goto_a3
    if-nez v4, :cond_a7

    .line 286
    .end local v1    # "loader":Ljava/lang/ClassLoader;
    .end local v2    # "dexDir":Ljava/io/File;
    .end local v3    # "extractor":Landroidx/multidex/MultiDexExtractor;
    .end local v4    # "closeException":Ljava/io/IOException;
    :try_start_a5
    monitor-exit v0

    .line 287
    return-void

    .line 284
    .restart local v1    # "loader":Ljava/lang/ClassLoader;
    .restart local v2    # "dexDir":Ljava/io/File;
    .restart local v3    # "extractor":Landroidx/multidex/MultiDexExtractor;
    .restart local v4    # "closeException":Ljava/io/IOException;
    :cond_a7
    nop

    .end local p0    # "mainContext":Landroid/content/Context;
    .end local p1    # "sourceApk":Ljava/io/File;
    .end local p2    # "dataDir":Ljava/io/File;
    .end local p3    # "secondaryFolderName":Ljava/lang/String;
    .end local p4    # "prefsKeyPrefix":Ljava/lang/String;
    .end local p5    # "reinstallOnPatchRecoverableException":Z
    throw v4
    :try_end_a9
    .catchall {:try_start_a5 .. :try_end_a9} :catchall_be

    .line 267
    .local v5, "files":Ljava/util/List;, "Ljava/util/List<+Ljava/io/File;>;"
    .restart local v6    # "e":Ljava/io/IOException;
    .restart local p0    # "mainContext":Landroid/content/Context;
    .restart local p1    # "sourceApk":Ljava/io/File;
    .restart local p2    # "dataDir":Ljava/io/File;
    .restart local p3    # "secondaryFolderName":Ljava/lang/String;
    .restart local p4    # "prefsKeyPrefix":Ljava/lang/String;
    .restart local p5    # "reinstallOnPatchRecoverableException":Z
    :cond_a9
    nop

    .end local v1    # "loader":Ljava/lang/ClassLoader;
    .end local v2    # "dexDir":Ljava/io/File;
    .end local v3    # "extractor":Landroidx/multidex/MultiDexExtractor;
    .end local v4    # "closeException":Ljava/io/IOException;
    .end local p0    # "mainContext":Landroid/content/Context;
    .end local p1    # "sourceApk":Ljava/io/File;
    .end local p2    # "dataDir":Ljava/io/File;
    .end local p3    # "secondaryFolderName":Ljava/lang/String;
    .end local p4    # "prefsKeyPrefix":Ljava/lang/String;
    .end local p5    # "reinstallOnPatchRecoverableException":Z
    :try_start_aa
    throw v6
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_ab

    .line 275
    .end local v5    # "files":Ljava/util/List;, "Ljava/util/List<+Ljava/io/File;>;"
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v1    # "loader":Ljava/lang/ClassLoader;
    .restart local v2    # "dexDir":Ljava/io/File;
    .restart local v3    # "extractor":Landroidx/multidex/MultiDexExtractor;
    .restart local v4    # "closeException":Ljava/io/IOException;
    .restart local p0    # "mainContext":Landroid/content/Context;
    .restart local p1    # "sourceApk":Ljava/io/File;
    .restart local p2    # "dataDir":Ljava/io/File;
    .restart local p3    # "secondaryFolderName":Ljava/lang/String;
    .restart local p4    # "prefsKeyPrefix":Ljava/lang/String;
    .restart local p5    # "reinstallOnPatchRecoverableException":Z
    :catchall_ab
    move-exception v5

    .line 276
    :try_start_ac
    invoke-virtual {v3}, Landroidx/multidex/MultiDexExtractor;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_b0
    .catchall {:try_start_ac .. :try_end_af} :catchall_be

    .line 281
    goto :goto_b2

    .line 277
    :catch_b0
    move-exception v6

    .line 280
    .restart local v6    # "e":Ljava/io/IOException;
    move-object v4, v6

    .line 281
    .end local v6    # "e":Ljava/io/IOException;
    :goto_b2
    nop

    .end local p0    # "mainContext":Landroid/content/Context;
    .end local p1    # "sourceApk":Ljava/io/File;
    .end local p2    # "dataDir":Ljava/io/File;
    .end local p3    # "secondaryFolderName":Ljava/lang/String;
    .end local p4    # "prefsKeyPrefix":Ljava/lang/String;
    .end local p5    # "reinstallOnPatchRecoverableException":Z
    :try_start_b3
    throw v5

    .line 229
    .end local v1    # "loader":Ljava/lang/ClassLoader;
    .end local v2    # "dexDir":Ljava/io/File;
    .end local v3    # "extractor":Landroidx/multidex/MultiDexExtractor;
    .end local v4    # "closeException":Ljava/io/IOException;
    .restart local p0    # "mainContext":Landroid/content/Context;
    .restart local p1    # "sourceApk":Ljava/io/File;
    .restart local p2    # "dataDir":Ljava/io/File;
    .restart local p3    # "secondaryFolderName":Ljava/lang/String;
    .restart local p4    # "prefsKeyPrefix":Ljava/lang/String;
    .restart local p5    # "reinstallOnPatchRecoverableException":Z
    :catch_b4
    move-exception v1

    .line 234
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "MultiDex"

    const-string v3, "Failure while trying to obtain Context class loader. Must be running in test mode. Skip patching."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    monitor-exit v0

    return-void

    .line 286
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_be
    move-exception v1

    monitor-exit v0
    :try_end_c0
    .catchall {:try_start_b3 .. :try_end_c0} :catchall_be

    throw v1
.end method

.method private static expandFieldArray(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 9
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "extraElements"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 423
    invoke-static {p0, p1}, Landroidx/multidex/MultiDex;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 424
    .local v0, "jlrField":Ljava/lang/reflect/Field;
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 425
    .local v1, "original":[Ljava/lang/Object;
    nop

    .line 426
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    array-length v3, v1

    array-length v4, p2

    add-int/2addr v3, v4

    .line 425
    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 427
    .local v2, "combined":[Ljava/lang/Object;
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 428
    array-length v3, v1

    array-length v5, p2

    invoke-static {p2, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 429
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 430
    return-void
.end method

.method private static findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 365
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_4
    if-eqz v0, :cond_1b

    .line 367
    :try_start_6
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 370
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_14

    .line 371
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_14
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_14} :catch_15

    .line 374
    :cond_14
    return-object v1

    .line 375
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_15
    move-exception v1

    .line 365
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    .line 380
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1b
    new-instance v0, Ljava/lang/NoSuchFieldException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    goto :goto_43

    :goto_42
    throw v0

    :goto_43
    goto :goto_42
.end method

.method private static varargs findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 394
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_4
    if-eqz v0, :cond_1b

    .line 396
    :try_start_6
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 399
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_14

    .line 400
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_14
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_14} :catch_15

    .line 403
    :cond_14
    return-object v1

    .line 404
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_15
    move-exception v1

    .line 394
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    .line 409
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1b
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with parameters "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 410
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    goto :goto_51

    :goto_50
    throw v0

    :goto_51
    goto :goto_50
.end method

.method private static getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 299
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 300
    :catch_5
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MultiDex"

    const-string v2, "Failure while trying to obtain ApplicationInfo from Context. Must be running in test mode. Skip patching."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 307
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getDexDir(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dataDir"    # Ljava/io/File;
    .param p2, "secondaryFolderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 460
    new-instance v0, Ljava/io/File;

    const-string v1, "code_cache"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 462
    .local v0, "cache":Ljava/io/File;
    :try_start_7
    invoke-static {v0}, Landroidx/multidex/MultiDex;->mkdirChecked(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_b

    .line 470
    goto :goto_19

    .line 463
    :catch_b
    move-exception v2

    .line 468
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v3

    .line 469
    invoke-static {v0}, Landroidx/multidex/MultiDex;->mkdirChecked(Ljava/io/File;)V

    .line 471
    .end local v2    # "e":Ljava/io/IOException;
    :goto_19
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 472
    .local v1, "dexDir":Ljava/io/File;
    invoke-static {v1}, Landroidx/multidex/MultiDex;->mkdirChecked(Ljava/io/File;)V

    .line 473
    return-object v1
.end method

.method public static install(Landroid/content/Context;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .line 93
    const-string v0, "MultiDex"

    const-string v1, "Installing application"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-boolean v1, Landroidx/multidex/MultiDex;->IS_VM_MULTIDEX_CAPABLE:Z

    if-eqz v1, :cond_11

    .line 95
    const-string v1, "VM has multidex support, MultiDex support library is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void

    .line 99
    :cond_11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_69

    .line 105
    :try_start_16
    invoke-static {p0}, Landroidx/multidex/MultiDex;->getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 106
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_22

    .line 107
    const-string v2, "No ApplicationInfo available, i.e. running on a test Context: MultiDex support library is disabled."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void

    .line 112
    :cond_22
    new-instance v3, Ljava/io/File;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v5, "secondary-dexes"

    const-string v6, ""

    const/4 v7, 0x1

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Landroidx/multidex/MultiDex;->doInstallation(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_39} :catch_40

    .line 122
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 123
    const-string v1, "install done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void

    .line 119
    :catch_40
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MultiDex installation failure"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MultiDex installation failed ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_69
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MultiDex installation failed. SDK "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is unsupported. Min SDK version is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static installInstrumentation(Landroid/content/Context;Landroid/content/Context;)V
    .registers 18
    .param p0, "instrumentationContext"    # Landroid/content/Context;
    .param p1, "targetContext"    # Landroid/content/Context;

    .line 139
    const-string v1, "MultiDex"

    const-string v0, "Installing instrumentation"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    sget-boolean v0, Landroidx/multidex/MultiDex;->IS_VM_MULTIDEX_CAPABLE:Z

    if-eqz v0, :cond_11

    .line 142
    const-string v0, "VM has multidex support, MultiDex support library is disabled."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void

    .line 146
    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "."

    const/4 v3, 0x4

    if-lt v0, v3, :cond_af

    .line 152
    :try_start_18
    invoke-static/range {p0 .. p0}, Landroidx/multidex/MultiDex;->getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 153
    .local v0, "instrumentationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_24

    .line 154
    const-string v2, "No ApplicationInfo available for instrumentation, i.e. running on a test Context: MultiDex support library is disabled."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void

    .line 159
    :cond_24
    invoke-static/range {p1 .. p1}, Landroidx/multidex/MultiDex;->getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 160
    .local v3, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v3, :cond_30

    .line 161
    const-string v2, "No ApplicationInfo available, i.e. running on a test Context: MultiDex support library is disabled."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void

    .line 166
    :cond_30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "instrumentationPrefix":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .local v6, "dataDir":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "secondary-dexes"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    move-object/from16 v4, p1

    move-object v8, v2

    invoke-static/range {v4 .. v9}, Landroidx/multidex/MultiDex;->doInstallation(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 177
    new-instance v11, Ljava/io/File;

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v11, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v13, "secondary-dexes"

    const-string v14, ""

    const/4 v15, 0x0

    move-object/from16 v10, p1

    move-object v12, v6

    invoke-static/range {v10 .. v15}, Landroidx/multidex/MultiDex;->doInstallation(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_7f} :catch_86

    .line 186
    .end local v0    # "instrumentationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "instrumentationPrefix":Ljava/lang/String;
    .end local v3    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "dataDir":Ljava/io/File;
    nop

    .line 187
    const-string v0, "Installation done"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void

    .line 183
    :catch_86
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MultiDex installation failure"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MultiDex installation failed ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_af
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MultiDex installation failed. SDK "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " is unsupported. Min SDK version is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static installSecondaryDexes(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/util/List;)V
    .registers 5
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "dexDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "+",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 345
    .local p2, "files":Ljava/util/List;, "Ljava/util/List<+Ljava/io/File;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 346
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_10

    .line 347
    invoke-static {p0, p2, p1}, Landroidx/multidex/MultiDex$V19;->install(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V

    goto :goto_1d

    .line 348
    :cond_10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1a

    .line 349
    invoke-static {p0, p2}, Landroidx/multidex/MultiDex$V14;->install(Ljava/lang/ClassLoader;Ljava/util/List;)V

    goto :goto_1d

    .line 351
    :cond_1a
    invoke-static {p0, p2}, Landroidx/multidex/MultiDex$V4;->install(Ljava/lang/ClassLoader;Ljava/util/List;)V

    .line 354
    :cond_1d
    :goto_1d
    return-void
.end method

.method static isVMMultidexCapable(Ljava/lang/String;)Z
    .registers 7
    .param p0, "versionString"    # Ljava/lang/String;

    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, "isMultidexCapable":Z
    if-eqz p0, :cond_30

    .line 320
    const-string v1, "(\\d+)\\.(\\d+)(\\.\\d+)?"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 321
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 323
    const/4 v2, 0x1

    :try_start_14
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 324
    .local v3, "major":I
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_25} :catch_2f

    .line 325
    .local v5, "minor":I
    if-gt v3, v4, :cond_2d

    if-ne v3, v4, :cond_2c

    if-lt v5, v2, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    :cond_2d
    :goto_2d
    move v0, v2

    .line 330
    .end local v3    # "major":I
    .end local v5    # "minor":I
    goto :goto_30

    .line 328
    :catch_2f
    move-exception v2

    .line 333
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_30
    :goto_30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VM with version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_44

    const-string v2, " has multidex support"

    goto :goto_46

    :cond_44
    const-string v2, " does not have multidex support"

    :goto_46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MultiDex"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return v0
.end method

.method private static mkdirChecked(Ljava/io/File;)V
    .registers 5
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 477
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    .line 478
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_ad

    .line 479
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 480
    .local v0, "parent":Ljava/io/File;
    const-string v1, "Failed to create dir "

    const-string v2, "MultiDex"

    if-nez v0, :cond_32

    .line 481
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". Parent file is null."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    .line 483
    :cond_32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". parent file is a dir "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 484
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", a file "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 485
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", exists "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 486
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", readable "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 487
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", writable "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 488
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 483
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :goto_90
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 492
    .end local v0    # "parent":Ljava/io/File;
    :cond_ad
    return-void
.end method
