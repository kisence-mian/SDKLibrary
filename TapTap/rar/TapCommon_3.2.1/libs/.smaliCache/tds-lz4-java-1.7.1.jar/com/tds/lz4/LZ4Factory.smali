.class public final Lcom/tds/lz4/LZ4Factory;
.super Ljava/lang/Object;
.source "LZ4Factory.java"


# static fields
.field private static JAVA_SAFE_INSTANCE:Lcom/tds/lz4/LZ4Factory;

.field private static JAVA_UNSAFE_INSTANCE:Lcom/tds/lz4/LZ4Factory;

.field private static NATIVE_INSTANCE:Lcom/tds/lz4/LZ4Factory;


# instance fields
.field private final fastCompressor:Lcom/tds/lz4/LZ4Compressor;

.field private final fastDecompressor:Lcom/tds/lz4/LZ4FastDecompressor;

.field private final highCompressor:Lcom/tds/lz4/LZ4Compressor;

.field private final highCompressors:[Lcom/tds/lz4/LZ4Compressor;

.field private final impl:Ljava/lang/String;

.field private final safeDecompressor:Lcom/tds/lz4/LZ4SafeDecompressor;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 20
    .param p1, "impl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 189
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const/16 v2, 0x12

    new-array v2, v2, [Lcom/tds/lz4/LZ4Compressor;

    iput-object v2, v0, Lcom/tds/lz4/LZ4Factory;->highCompressors:[Lcom/tds/lz4/LZ4Compressor;

    .line 190
    iput-object v1, v0, Lcom/tds/lz4/LZ4Factory;->impl:Ljava/lang/String;

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.tds.lz4.LZ4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "Compressor"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tds/lz4/LZ4Factory;->classInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tds/lz4/LZ4Compressor;

    iput-object v3, v0, Lcom/tds/lz4/LZ4Factory;->fastCompressor:Lcom/tds/lz4/LZ4Compressor;

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.tds.lz4.LZ4HC"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tds/lz4/LZ4Factory;->classInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tds/lz4/LZ4Compressor;

    iput-object v3, v0, Lcom/tds/lz4/LZ4Factory;->highCompressor:Lcom/tds/lz4/LZ4Compressor;

    .line 193
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "FastDecompressor"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tds/lz4/LZ4Factory;->classInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tds/lz4/LZ4FastDecompressor;

    iput-object v5, v0, Lcom/tds/lz4/LZ4Factory;->fastDecompressor:Lcom/tds/lz4/LZ4FastDecompressor;

    .line 194
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SafeDecompressor"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tds/lz4/LZ4Factory;->classInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tds/lz4/LZ4SafeDecompressor;

    iput-object v4, v0, Lcom/tds/lz4/LZ4Factory;->safeDecompressor:Lcom/tds/lz4/LZ4SafeDecompressor;

    .line 195
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 196
    .local v4, "highConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/tds/lz4/LZ4Compressor;>;"
    const/16 v6, 0x9

    aput-object v3, v2, v6

    .line 197
    const/4 v2, 0x1

    .local v2, "level":I
    :goto_a2
    const/16 v3, 0x11

    if-gt v2, v3, :cond_be

    .line 198
    if-ne v2, v6, :cond_a9

    goto :goto_bb

    .line 199
    :cond_a9
    iget-object v3, v0, Lcom/tds/lz4/LZ4Factory;->highCompressors:[Lcom/tds/lz4/LZ4Compressor;

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tds/lz4/LZ4Compressor;

    aput-object v7, v3, v2

    .line 197
    :goto_bb
    add-int/lit8 v2, v2, 0x1

    goto :goto_a2

    .line 203
    .end local v2    # "level":I
    :cond_be
    const/16 v2, 0x14

    new-array v2, v2, [B

    fill-array-data v2, :array_13a

    .line 204
    .local v2, "original":[B
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/tds/lz4/LZ4Compressor;

    iget-object v6, v0, Lcom/tds/lz4/LZ4Factory;->fastCompressor:Lcom/tds/lz4/LZ4Compressor;

    aput-object v6, v3, v8

    iget-object v6, v0, Lcom/tds/lz4/LZ4Factory;->highCompressor:Lcom/tds/lz4/LZ4Compressor;

    aput-object v6, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_d8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_139

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tds/lz4/LZ4Compressor;

    .line 205
    .local v5, "compressor":Lcom/tds/lz4/LZ4Compressor;
    array-length v6, v2

    invoke-virtual {v5, v6}, Lcom/tds/lz4/LZ4Compressor;->maxCompressedLength(I)I

    move-result v6

    .line 206
    .local v6, "maxCompressedLength":I
    new-array v7, v6, [B

    .line 207
    .local v7, "compressed":[B
    const/4 v11, 0x0

    array-length v12, v2

    const/4 v14, 0x0

    move-object v9, v5

    move-object v10, v2

    move-object v13, v7

    move v15, v6

    invoke-virtual/range {v9 .. v15}, Lcom/tds/lz4/LZ4Compressor;->compress([BII[BII)I

    move-result v15

    .line 208
    .local v15, "compressedLength":I
    array-length v9, v2

    new-array v14, v9, [B

    .line 209
    .local v14, "restored":[B
    iget-object v9, v0, Lcom/tds/lz4/LZ4Factory;->fastDecompressor:Lcom/tds/lz4/LZ4FastDecompressor;

    const/4 v13, 0x0

    array-length v12, v2

    move-object v10, v7

    move/from16 v16, v12

    move-object v12, v14

    move-object v8, v14

    .end local v14    # "restored":[B
    .local v8, "restored":[B
    move/from16 v14, v16

    invoke-virtual/range {v9 .. v14}, Lcom/tds/lz4/LZ4FastDecompressor;->decompress([BI[BII)I

    .line 210
    invoke-static {v2, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_133

    .line 213
    const/4 v14, 0x0

    invoke-static {v8, v14}, Ljava/util/Arrays;->fill([BB)V

    .line 214
    iget-object v9, v0, Lcom/tds/lz4/LZ4Factory;->safeDecompressor:Lcom/tds/lz4/LZ4SafeDecompressor;

    const/4 v11, 0x0

    const/16 v16, 0x0

    move-object v10, v7

    move v12, v15

    move-object v13, v8

    move/from16 v17, v14

    move/from16 v14, v16

    invoke-virtual/range {v9 .. v14}, Lcom/tds/lz4/LZ4SafeDecompressor;->decompress([BII[BI)I

    move-result v9

    .line 215
    .local v9, "decompressedLength":I
    array-length v10, v2

    if-ne v9, v10, :cond_12d

    invoke-static {v2, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-eqz v10, :cond_12d

    .line 218
    .end local v5    # "compressor":Lcom/tds/lz4/LZ4Compressor;
    .end local v6    # "maxCompressedLength":I
    .end local v7    # "compressed":[B
    .end local v8    # "restored":[B
    .end local v9    # "decompressedLength":I
    .end local v15    # "compressedLength":I
    move/from16 v8, v17

    goto :goto_d8

    .line 216
    .restart local v5    # "compressor":Lcom/tds/lz4/LZ4Compressor;
    .restart local v6    # "maxCompressedLength":I
    .restart local v7    # "compressed":[B
    .restart local v8    # "restored":[B
    .restart local v9    # "decompressedLength":I
    .restart local v15    # "compressedLength":I
    :cond_12d
    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 211
    .end local v9    # "decompressedLength":I
    :cond_133
    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 220
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "compressor":Lcom/tds/lz4/LZ4Compressor;
    .end local v6    # "maxCompressedLength":I
    .end local v7    # "compressed":[B
    .end local v8    # "restored":[B
    .end local v15    # "compressedLength":I
    :cond_139
    return-void

    :array_13a
    .array-data 1
        0x61t
        0x62t
        0x63t
        0x64t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
    .end array-data
.end method

.method private static classInstance(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p0, "cls"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 175
    const-class v0, Lcom/tds/lz4/LZ4Factory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 176
    .local v0, "loader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_d

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_e

    :cond_d
    move-object v1, v0

    :goto_e
    move-object v0, v1

    .line 177
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 178
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "INSTANCE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 179
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public static fastestInstance()Lcom/tds/lz4/LZ4Factory;
    .registers 2

    .line 161
    invoke-static {}, Lcom/tds/util/Native;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_18

    const-class v0, Lcom/tds/util/Native;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v0, v1, :cond_13

    goto :goto_18

    .line 169
    :cond_13
    invoke-static {}, Lcom/tds/lz4/LZ4Factory;->fastestJavaInstance()Lcom/tds/lz4/LZ4Factory;

    move-result-object v0

    return-object v0

    .line 164
    :cond_18
    :goto_18
    :try_start_18
    invoke-static {}, Lcom/tds/lz4/LZ4Factory;->nativeInstance()Lcom/tds/lz4/LZ4Factory;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1d

    return-object v0

    .line 165
    :catchall_1d
    move-exception v0

    .line 166
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/tds/lz4/LZ4Factory;->fastestJavaInstance()Lcom/tds/lz4/LZ4Factory;

    move-result-object v1

    return-object v1
.end method

.method public static fastestJavaInstance()Lcom/tds/lz4/LZ4Factory;
    .registers 2

    .line 137
    invoke-static {}, Lcom/tds/util/Utils;->isUnalignedAccessAllowed()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 139
    :try_start_6
    invoke-static {}, Lcom/tds/lz4/LZ4Factory;->unsafeInstance()Lcom/tds/lz4/LZ4Factory;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_b

    return-object v0

    .line 140
    :catchall_b
    move-exception v0

    .line 141
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/tds/lz4/LZ4Factory;->safeInstance()Lcom/tds/lz4/LZ4Factory;

    move-result-object v1

    return-object v1

    .line 144
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_11
    invoke-static {}, Lcom/tds/lz4/LZ4Factory;->safeInstance()Lcom/tds/lz4/LZ4Factory;

    move-result-object v0

    return-object v0
.end method

.method private static instance(Ljava/lang/String;)Lcom/tds/lz4/LZ4Factory;
    .registers 3
    .param p0, "impl"    # Ljava/lang/String;

    .line 51
    :try_start_0
    new-instance v0, Lcom/tds/lz4/LZ4Factory;

    invoke-direct {v0, p0}, Lcom/tds/lz4/LZ4Factory;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    .line 52
    :catch_6
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static main([Ljava/lang/String;)V
    .registers 4
    .param p0, "args"    # [Ljava/lang/String;

    .line 317
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fastest instance is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tds/lz4/LZ4Factory;->fastestInstance()Lcom/tds/lz4/LZ4Factory;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 318
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fastest Java instance is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tds/lz4/LZ4Factory;->fastestJavaInstance()Lcom/tds/lz4/LZ4Factory;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method public static declared-synchronized nativeInstance()Lcom/tds/lz4/LZ4Factory;
    .registers 2

    const-class v0, Lcom/tds/lz4/LZ4Factory;

    monitor-enter v0

    .line 90
    :try_start_3
    sget-object v1, Lcom/tds/lz4/LZ4Factory;->NATIVE_INSTANCE:Lcom/tds/lz4/LZ4Factory;

    if-nez v1, :cond_f

    .line 91
    const-string v1, "JNI"

    invoke-static {v1}, Lcom/tds/lz4/LZ4Factory;->instance(Ljava/lang/String;)Lcom/tds/lz4/LZ4Factory;

    move-result-object v1

    sput-object v1, Lcom/tds/lz4/LZ4Factory;->NATIVE_INSTANCE:Lcom/tds/lz4/LZ4Factory;

    .line 93
    :cond_f
    sget-object v1, Lcom/tds/lz4/LZ4Factory;->NATIVE_INSTANCE:Lcom/tds/lz4/LZ4Factory;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    monitor-exit v0

    return-object v1

    .line 89
    :catchall_13
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized safeInstance()Lcom/tds/lz4/LZ4Factory;
    .registers 2

    const-class v0, Lcom/tds/lz4/LZ4Factory;

    monitor-enter v0

    .line 104
    :try_start_3
    sget-object v1, Lcom/tds/lz4/LZ4Factory;->JAVA_SAFE_INSTANCE:Lcom/tds/lz4/LZ4Factory;

    if-nez v1, :cond_f

    .line 105
    const-string v1, "JavaSafe"

    invoke-static {v1}, Lcom/tds/lz4/LZ4Factory;->instance(Ljava/lang/String;)Lcom/tds/lz4/LZ4Factory;

    move-result-object v1

    sput-object v1, Lcom/tds/lz4/LZ4Factory;->JAVA_SAFE_INSTANCE:Lcom/tds/lz4/LZ4Factory;

    .line 107
    :cond_f
    sget-object v1, Lcom/tds/lz4/LZ4Factory;->JAVA_SAFE_INSTANCE:Lcom/tds/lz4/LZ4Factory;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    monitor-exit v0

    return-object v1

    .line 103
    :catchall_13
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized unsafeInstance()Lcom/tds/lz4/LZ4Factory;
    .registers 2

    const-class v0, Lcom/tds/lz4/LZ4Factory;

    monitor-enter v0

    .line 120
    :try_start_3
    sget-object v1, Lcom/tds/lz4/LZ4Factory;->JAVA_UNSAFE_INSTANCE:Lcom/tds/lz4/LZ4Factory;

    if-nez v1, :cond_f

    .line 121
    const-string v1, "JavaUnsafe"

    invoke-static {v1}, Lcom/tds/lz4/LZ4Factory;->instance(Ljava/lang/String;)Lcom/tds/lz4/LZ4Factory;

    move-result-object v1

    sput-object v1, Lcom/tds/lz4/LZ4Factory;->JAVA_UNSAFE_INSTANCE:Lcom/tds/lz4/LZ4Factory;

    .line 123
    :cond_f
    sget-object v1, Lcom/tds/lz4/LZ4Factory;->JAVA_UNSAFE_INSTANCE:Lcom/tds/lz4/LZ4Factory;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    monitor-exit v0

    return-object v1

    .line 119
    :catchall_13
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public decompressor()Lcom/tds/lz4/LZ4Decompressor;
    .registers 2

    .line 308
    invoke-virtual {p0}, Lcom/tds/lz4/LZ4Factory;->fastDecompressor()Lcom/tds/lz4/LZ4FastDecompressor;

    move-result-object v0

    return-object v0
.end method

.method public fastCompressor()Lcom/tds/lz4/LZ4Compressor;
    .registers 2

    .line 228
    iget-object v0, p0, Lcom/tds/lz4/LZ4Factory;->fastCompressor:Lcom/tds/lz4/LZ4Compressor;

    return-object v0
.end method

.method public fastDecompressor()Lcom/tds/lz4/LZ4FastDecompressor;
    .registers 2

    .line 279
    iget-object v0, p0, Lcom/tds/lz4/LZ4Factory;->fastDecompressor:Lcom/tds/lz4/LZ4FastDecompressor;

    return-object v0
.end method

.method public highCompressor()Lcom/tds/lz4/LZ4Compressor;
    .registers 2

    .line 239
    iget-object v0, p0, Lcom/tds/lz4/LZ4Factory;->highCompressor:Lcom/tds/lz4/LZ4Compressor;

    return-object v0
.end method

.method public highCompressor(I)Lcom/tds/lz4/LZ4Compressor;
    .registers 3
    .param p1, "compressionLevel"    # I

    .line 262
    const/16 v0, 0x11

    if-le p1, v0, :cond_7

    .line 263
    const/16 p1, 0x11

    goto :goto_c

    .line 264
    :cond_7
    const/4 v0, 0x1

    if-ge p1, v0, :cond_c

    .line 265
    const/16 p1, 0x9

    .line 267
    :cond_c
    :goto_c
    iget-object v0, p0, Lcom/tds/lz4/LZ4Factory;->highCompressors:[Lcom/tds/lz4/LZ4Compressor;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public safeDecompressor()Lcom/tds/lz4/LZ4SafeDecompressor;
    .registers 2

    .line 288
    iget-object v0, p0, Lcom/tds/lz4/LZ4Factory;->safeDecompressor:Lcom/tds/lz4/LZ4SafeDecompressor;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tds/lz4/LZ4Factory;->impl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unknownSizeDecompressor()Lcom/tds/lz4/LZ4UnknownSizeDecompressor;
    .registers 2

    .line 298
    invoke-virtual {p0}, Lcom/tds/lz4/LZ4Factory;->safeDecompressor()Lcom/tds/lz4/LZ4SafeDecompressor;

    move-result-object v0

    return-object v0
.end method
