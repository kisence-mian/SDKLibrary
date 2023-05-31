.class public Lcom/didi/virtualapk/internal/utils/DexUtil;
.super Ljava/lang/Object;
.source "DexUtil.java"


# static fields
.field private static sHasInsertedNativeLibrary:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/didi/virtualapk/internal/utils/DexUtil;->sHasInsertedNativeLibrary:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static combineArray(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p0, "firstArray"    # Ljava/lang/Object;
    .param p1, "secondArray"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 56
    .local v1, "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 57
    .local v0, "firstArrayLength":I
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    .line 58
    .local v3, "secondArrayLength":I
    add-int v4, v0, v3

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    .line 59
    .local v2, "result":Ljava/lang/Object;
    invoke-static {p0, v5, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    invoke-static {p1, v5, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    return-object v2
.end method

.method private static getDexElements(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "pathList"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {p0}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    const-string v1, "dexElements"

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/virtualapk/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getPathList(Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 3
    .param p0, "baseDexClassLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {p0}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    const-string v1, "pathList"

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/virtualapk/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static insertDex(Ldalvik/system/DexClassLoader;Ljava/lang/ClassLoader;Ljava/io/File;)V
    .registers 9
    .param p0, "dexClassLoader"    # Ldalvik/system/DexClassLoader;
    .param p1, "baseClassLoader"    # Ljava/lang/ClassLoader;
    .param p2, "nativeLibsDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {p1}, Lcom/didi/virtualapk/internal/utils/DexUtil;->getPathList(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/virtualapk/internal/utils/DexUtil;->getDexElements(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 38
    .local v1, "baseDexElements":Ljava/lang/Object;
    invoke-static {p0}, Lcom/didi/virtualapk/internal/utils/DexUtil;->getPathList(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/virtualapk/internal/utils/DexUtil;->getDexElements(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 39
    .local v2, "newDexElements":Ljava/lang/Object;
    invoke-static {v1, v2}, Lcom/didi/virtualapk/internal/utils/DexUtil;->combineArray(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 40
    .local v0, "allDexElements":Ljava/lang/Object;
    invoke-static {p1}, Lcom/didi/virtualapk/internal/utils/DexUtil;->getPathList(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    .line 41
    .local v3, "pathList":Ljava/lang/Object;
    invoke-static {v3}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v4

    const-string v5, "dexElements"

    invoke-virtual {v4, v5}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    .line 43
    invoke-static {p0, p1, p2}, Lcom/didi/virtualapk/internal/utils/DexUtil;->insertNativeLibrary(Ldalvik/system/DexClassLoader;Ljava/lang/ClassLoader;Ljava/io/File;)V

    .line 44
    return-void
.end method

.method private static declared-synchronized insertNativeLibrary(Ldalvik/system/DexClassLoader;Ljava/lang/ClassLoader;Ljava/io/File;)V
    .registers 26
    .param p0, "dexClassLoader"    # Ldalvik/system/DexClassLoader;
    .param p1, "baseClassLoader"    # Ljava/lang/ClassLoader;
    .param p2, "nativeLibsDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    const-class v21, Lcom/didi/virtualapk/internal/utils/DexUtil;

    monitor-enter v21

    :try_start_3
    sget-boolean v20, Lcom/didi/virtualapk/internal/utils/DexUtil;->sHasInsertedNativeLibrary:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_b5

    if-eqz v20, :cond_9

    .line 113
    :goto_7
    monitor-exit v21

    return-void

    .line 68
    :cond_9
    const/16 v20, 0x1

    :try_start_b
    sput-boolean v20, Lcom/didi/virtualapk/internal/utils/DexUtil;->sHasInsertedNativeLibrary:Z

    .line 70
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v7

    .line 71
    .local v7, "context":Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Lcom/didi/virtualapk/internal/utils/DexUtil;->getPathList(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v6

    .line 72
    .local v6, "basePathList":Ljava/lang/Object;
    sget v20, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0x16

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_c4

    .line 73
    invoke-static {v6}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v18

    .line 74
    .local v18, "reflector":Lcom/didi/virtualapk/utils/Reflector;
    const-string v20, "nativeLibraryDirectories"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/didi/virtualapk/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 75
    .local v13, "nativeLibraryDirectories":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    const-string v20, "nativeLibraryPathElements"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/didi/virtualapk/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object v5

    .line 78
    .local v5, "baseNativeLibraryPathElements":Ljava/lang/Object;
    invoke-static {v5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    .line 80
    .local v4, "baseArrayLength":I
    invoke-static/range {p0 .. p0}, Lcom/didi/virtualapk/internal/utils/DexUtil;->getPathList(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v17

    .line 81
    .local v17, "newPathList":Ljava/lang/Object;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/utils/Reflector;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 82
    .local v16, "newNativeLibraryPathElements":Ljava/lang/Object;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v10

    .line 83
    .local v10, "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v20, v4, 0x1

    move/from16 v0, v20

    invoke-static {v10, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    .line 84
    .local v3, "allNativeLibraryPathElements":Ljava/lang/Object;
    const/16 v20, 0x0

    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-static {v5, v0, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    sget v20, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0x1a

    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_b8

    .line 88
    const-string v20, "path"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v19

    .line 92
    .local v19, "soPathField":Ljava/lang/reflect/Field;
    :goto_83
    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 93
    invoke-static/range {v16 .. v16}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v14

    .line 94
    .local v14, "newArrayLength":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_8d
    if-ge v11, v14, :cond_ae

    .line 95
    move-object/from16 v0, v16

    invoke-static {v0, v11}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v9

    .line 96
    .local v9, "element":Ljava/lang/Object;
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/io/File;

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 97
    .local v8, "dir":Ljava/lang/String;
    const-string v20, "valibs"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_c1

    .line 98
    invoke-static {v3, v4, v9}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 103
    .end local v8    # "dir":Ljava/lang/String;
    .end local v9    # "element":Ljava/lang/Object;
    :cond_ae
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;
    :try_end_b3
    .catchall {:try_start_b .. :try_end_b3} :catchall_b5

    goto/16 :goto_7

    .line 65
    .end local v3    # "allNativeLibraryPathElements":Ljava/lang/Object;
    .end local v4    # "baseArrayLength":I
    .end local v5    # "baseNativeLibraryPathElements":Ljava/lang/Object;
    .end local v6    # "basePathList":Ljava/lang/Object;
    .end local v7    # "context":Landroid/content/Context;
    .end local v10    # "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "i":I
    .end local v13    # "nativeLibraryDirectories":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v14    # "newArrayLength":I
    .end local v16    # "newNativeLibraryPathElements":Ljava/lang/Object;
    .end local v17    # "newPathList":Ljava/lang/Object;
    .end local v18    # "reflector":Lcom/didi/virtualapk/utils/Reflector;
    .end local v19    # "soPathField":Ljava/lang/reflect/Field;
    :catchall_b5
    move-exception v20

    monitor-exit v21

    throw v20

    .line 90
    .restart local v3    # "allNativeLibraryPathElements":Ljava/lang/Object;
    .restart local v4    # "baseArrayLength":I
    .restart local v5    # "baseNativeLibraryPathElements":Ljava/lang/Object;
    .restart local v6    # "basePathList":Ljava/lang/Object;
    .restart local v7    # "context":Landroid/content/Context;
    .restart local v10    # "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v13    # "nativeLibraryDirectories":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v16    # "newNativeLibraryPathElements":Ljava/lang/Object;
    .restart local v17    # "newPathList":Ljava/lang/Object;
    .restart local v18    # "reflector":Lcom/didi/virtualapk/utils/Reflector;
    :cond_b8
    :try_start_b8
    const-string v20, "dir"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v19

    .restart local v19    # "soPathField":Ljava/lang/reflect/Field;
    goto :goto_83

    .line 94
    .restart local v8    # "dir":Ljava/lang/String;
    .restart local v9    # "element":Ljava/lang/Object;
    .restart local v11    # "i":I
    .restart local v14    # "newArrayLength":I
    :cond_c1
    add-int/lit8 v11, v11, 0x1

    goto :goto_8d

    .line 105
    .end local v3    # "allNativeLibraryPathElements":Ljava/lang/Object;
    .end local v4    # "baseArrayLength":I
    .end local v5    # "baseNativeLibraryPathElements":Ljava/lang/Object;
    .end local v8    # "dir":Ljava/lang/String;
    .end local v9    # "element":Ljava/lang/Object;
    .end local v10    # "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "i":I
    .end local v13    # "nativeLibraryDirectories":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v14    # "newArrayLength":I
    .end local v16    # "newNativeLibraryPathElements":Ljava/lang/Object;
    .end local v17    # "newPathList":Ljava/lang/Object;
    .end local v18    # "reflector":Lcom/didi/virtualapk/utils/Reflector;
    .end local v19    # "soPathField":Ljava/lang/reflect/Field;
    :cond_c4
    invoke-static {v6}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v20

    const-string v22, "nativeLibraryDirectories"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v18

    .line 106
    .restart local v18    # "reflector":Lcom/didi/virtualapk/utils/Reflector;
    invoke-virtual/range {v18 .. v18}, Lcom/didi/virtualapk/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/io/File;

    .line 107
    .local v12, "nativeLibraryDirectories":[Ljava/io/File;
    array-length v2, v12

    .line 108
    .local v2, "N":I
    add-int/lit8 v20, v2, 0x1

    move/from16 v0, v20

    new-array v15, v0, [Ljava/io/File;

    .line 109
    .local v15, "newNativeLibraryDirectories":[Ljava/io/File;
    const/16 v20, 0x0

    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-static {v12, v0, v15, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    aput-object p2, v15, v2

    .line 111
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;
    :try_end_f1
    .catchall {:try_start_b8 .. :try_end_f1} :catchall_b5

    goto/16 :goto_7
.end method
