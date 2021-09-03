.class public final Lcom/tds/xxhash/XXHashFactory;
.super Ljava/lang/Object;
.source "XXHashFactory.java"


# static fields
.field private static JAVA_SAFE_INSTANCE:Lcom/tds/xxhash/XXHashFactory;

.field private static JAVA_UNSAFE_INSTANCE:Lcom/tds/xxhash/XXHashFactory;

.field private static NATIVE_INSTANCE:Lcom/tds/xxhash/XXHashFactory;


# instance fields
.field private final hash32:Lcom/tds/xxhash/XXHash32;

.field private final hash64:Lcom/tds/xxhash/XXHash64;

.field private final impl:Ljava/lang/String;

.field private final streamingHash32Factory:Lcom/tds/xxhash/StreamingXXHash32$Factory;

.field private final streamingHash64Factory:Lcom/tds/xxhash/StreamingXXHash64$Factory;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 15
    .param p1, "impl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/tds/xxhash/XXHashFactory;->impl:Ljava/lang/String;

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.tds.xxhash.XXHash32"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tds/xxhash/XXHashFactory;->classInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/xxhash/XXHash32;

    iput-object v0, p0, Lcom/tds/xxhash/XXHashFactory;->hash32:Lcom/tds/xxhash/XXHash32;

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.tds.xxhash.StreamingXXHash32"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "$Factory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tds/xxhash/XXHashFactory;->classInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/xxhash/StreamingXXHash32$Factory;

    iput-object v1, p0, Lcom/tds/xxhash/XXHashFactory;->streamingHash32Factory:Lcom/tds/xxhash/StreamingXXHash32$Factory;

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.tds.xxhash.XXHash64"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tds/xxhash/XXHashFactory;->classInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/tds/xxhash/XXHash64;

    iput-object v3, p0, Lcom/tds/xxhash/XXHashFactory;->hash64:Lcom/tds/xxhash/XXHash64;

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.tds.xxhash.StreamingXXHash64"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tds/xxhash/XXHashFactory;->classInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/xxhash/StreamingXXHash64$Factory;

    iput-object v1, p0, Lcom/tds/xxhash/XXHashFactory;->streamingHash64Factory:Lcom/tds/xxhash/StreamingXXHash64$Factory;

    .line 183
    const/16 v1, 0x64

    new-array v1, v1, [B

    .line 184
    .local v1, "bytes":[B
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 185
    .local v2, "random":Ljava/util/Random;
    invoke-virtual {v2, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 186
    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v9

    .line 188
    .local v9, "seed":I
    array-length v4, v1

    const/4 v10, 0x0

    invoke-virtual {v0, v1, v10, v4, v9}, Lcom/tds/xxhash/XXHash32;->hash([BIII)I

    move-result v0

    .line 189
    .local v0, "h1":I
    invoke-virtual {p0, v9}, Lcom/tds/xxhash/XXHashFactory;->newStreamingHash32(I)Lcom/tds/xxhash/StreamingXXHash32;

    move-result-object v11

    .line 190
    .local v11, "streamingHash32":Lcom/tds/xxhash/StreamingXXHash32;
    array-length v4, v1

    invoke-virtual {v11, v1, v10, v4}, Lcom/tds/xxhash/StreamingXXHash32;->update([BII)V

    .line 191
    invoke-virtual {v11}, Lcom/tds/xxhash/StreamingXXHash32;->getValue()I

    move-result v12

    .line 192
    .local v12, "h2":I
    array-length v6, v1

    int-to-long v7, v9

    const/4 v5, 0x0

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Lcom/tds/xxhash/XXHash64;->hash([BIIJ)J

    move-result-wide v3

    .line 193
    .local v3, "h3":J
    int-to-long v5, v9

    invoke-virtual {p0, v5, v6}, Lcom/tds/xxhash/XXHashFactory;->newStreamingHash64(J)Lcom/tds/xxhash/StreamingXXHash64;

    move-result-object v5

    .line 194
    .local v5, "streamingHash64":Lcom/tds/xxhash/StreamingXXHash64;
    array-length v6, v1

    invoke-virtual {v5, v1, v10, v6}, Lcom/tds/xxhash/StreamingXXHash64;->update([BII)V

    .line 195
    invoke-virtual {v5}, Lcom/tds/xxhash/StreamingXXHash64;->getValue()J

    move-result-wide v6

    .line 196
    .local v6, "h4":J
    if-ne v0, v12, :cond_c0

    .line 199
    cmp-long v8, v3, v6

    if-nez v8, :cond_ba

    .line 202
    return-void

    .line 200
    :cond_ba
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 197
    :cond_c0
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8
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

    .line 162
    const-class v0, Lcom/tds/xxhash/XXHashFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 163
    .local v0, "loader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_d

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_e

    :cond_d
    move-object v1, v0

    :goto_e
    move-object v0, v1

    .line 164
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 165
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "INSTANCE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 166
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public static fastestInstance()Lcom/tds/xxhash/XXHashFactory;
    .registers 2

    .line 148
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

    .line 156
    :cond_13
    invoke-static {}, Lcom/tds/xxhash/XXHashFactory;->fastestJavaInstance()Lcom/tds/xxhash/XXHashFactory;

    move-result-object v0

    return-object v0

    .line 151
    :cond_18
    :goto_18
    :try_start_18
    invoke-static {}, Lcom/tds/xxhash/XXHashFactory;->nativeInstance()Lcom/tds/xxhash/XXHashFactory;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1d

    return-object v0

    .line 152
    :catchall_1d
    move-exception v0

    .line 153
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/tds/xxhash/XXHashFactory;->fastestJavaInstance()Lcom/tds/xxhash/XXHashFactory;

    move-result-object v1

    return-object v1
.end method

.method public static fastestJavaInstance()Lcom/tds/xxhash/XXHashFactory;
    .registers 2

    .line 124
    invoke-static {}, Lcom/tds/util/Utils;->isUnalignedAccessAllowed()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 126
    :try_start_6
    invoke-static {}, Lcom/tds/xxhash/XXHashFactory;->unsafeInstance()Lcom/tds/xxhash/XXHashFactory;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_b

    return-object v0

    .line 127
    :catchall_b
    move-exception v0

    .line 128
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/tds/xxhash/XXHashFactory;->safeInstance()Lcom/tds/xxhash/XXHashFactory;

    move-result-object v1

    return-object v1

    .line 131
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_11
    invoke-static {}, Lcom/tds/xxhash/XXHashFactory;->safeInstance()Lcom/tds/xxhash/XXHashFactory;

    move-result-object v0

    return-object v0
.end method

.method private static instance(Ljava/lang/String;)Lcom/tds/xxhash/XXHashFactory;
    .registers 3
    .param p0, "impl"    # Ljava/lang/String;

    .line 47
    :try_start_0
    new-instance v0, Lcom/tds/xxhash/XXHashFactory;

    invoke-direct {v0, p0}, Lcom/tds/xxhash/XXHashFactory;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    .line 48
    :catch_6
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static main([Ljava/lang/String;)V
    .registers 4
    .param p0, "args"    # [Ljava/lang/String;

    .line 248
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fastest instance is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tds/xxhash/XXHashFactory;->fastestInstance()Lcom/tds/xxhash/XXHashFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 249
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fastest Java instance is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tds/xxhash/XXHashFactory;->fastestJavaInstance()Lcom/tds/xxhash/XXHashFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public static declared-synchronized nativeInstance()Lcom/tds/xxhash/XXHashFactory;
    .registers 2

    const-class v0, Lcom/tds/xxhash/XXHashFactory;

    monitor-enter v0

    .line 79
    :try_start_3
    sget-object v1, Lcom/tds/xxhash/XXHashFactory;->NATIVE_INSTANCE:Lcom/tds/xxhash/XXHashFactory;

    if-nez v1, :cond_f

    .line 80
    const-string v1, "JNI"

    invoke-static {v1}, Lcom/tds/xxhash/XXHashFactory;->instance(Ljava/lang/String;)Lcom/tds/xxhash/XXHashFactory;

    move-result-object v1

    sput-object v1, Lcom/tds/xxhash/XXHashFactory;->NATIVE_INSTANCE:Lcom/tds/xxhash/XXHashFactory;

    .line 82
    :cond_f
    sget-object v1, Lcom/tds/xxhash/XXHashFactory;->NATIVE_INSTANCE:Lcom/tds/xxhash/XXHashFactory;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    monitor-exit v0

    return-object v1

    .line 78
    :catchall_13
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized safeInstance()Lcom/tds/xxhash/XXHashFactory;
    .registers 2

    const-class v0, Lcom/tds/xxhash/XXHashFactory;

    monitor-enter v0

    .line 93
    :try_start_3
    sget-object v1, Lcom/tds/xxhash/XXHashFactory;->JAVA_SAFE_INSTANCE:Lcom/tds/xxhash/XXHashFactory;

    if-nez v1, :cond_f

    .line 94
    const-string v1, "JavaSafe"

    invoke-static {v1}, Lcom/tds/xxhash/XXHashFactory;->instance(Ljava/lang/String;)Lcom/tds/xxhash/XXHashFactory;

    move-result-object v1

    sput-object v1, Lcom/tds/xxhash/XXHashFactory;->JAVA_SAFE_INSTANCE:Lcom/tds/xxhash/XXHashFactory;

    .line 96
    :cond_f
    sget-object v1, Lcom/tds/xxhash/XXHashFactory;->JAVA_SAFE_INSTANCE:Lcom/tds/xxhash/XXHashFactory;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    monitor-exit v0

    return-object v1

    .line 92
    :catchall_13
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized unsafeInstance()Lcom/tds/xxhash/XXHashFactory;
    .registers 2

    const-class v0, Lcom/tds/xxhash/XXHashFactory;

    monitor-enter v0

    .line 107
    :try_start_3
    sget-object v1, Lcom/tds/xxhash/XXHashFactory;->JAVA_UNSAFE_INSTANCE:Lcom/tds/xxhash/XXHashFactory;

    if-nez v1, :cond_f

    .line 108
    const-string v1, "JavaUnsafe"

    invoke-static {v1}, Lcom/tds/xxhash/XXHashFactory;->instance(Ljava/lang/String;)Lcom/tds/xxhash/XXHashFactory;

    move-result-object v1

    sput-object v1, Lcom/tds/xxhash/XXHashFactory;->JAVA_UNSAFE_INSTANCE:Lcom/tds/xxhash/XXHashFactory;

    .line 110
    :cond_f
    sget-object v1, Lcom/tds/xxhash/XXHashFactory;->JAVA_UNSAFE_INSTANCE:Lcom/tds/xxhash/XXHashFactory;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    monitor-exit v0

    return-object v1

    .line 106
    :catchall_13
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public hash32()Lcom/tds/xxhash/XXHash32;
    .registers 2

    .line 210
    iget-object v0, p0, Lcom/tds/xxhash/XXHashFactory;->hash32:Lcom/tds/xxhash/XXHash32;

    return-object v0
.end method

.method public hash64()Lcom/tds/xxhash/XXHash64;
    .registers 2

    .line 219
    iget-object v0, p0, Lcom/tds/xxhash/XXHashFactory;->hash64:Lcom/tds/xxhash/XXHash64;

    return-object v0
.end method

.method public newStreamingHash32(I)Lcom/tds/xxhash/StreamingXXHash32;
    .registers 3
    .param p1, "seed"    # I

    .line 229
    iget-object v0, p0, Lcom/tds/xxhash/XXHashFactory;->streamingHash32Factory:Lcom/tds/xxhash/StreamingXXHash32$Factory;

    invoke-interface {v0, p1}, Lcom/tds/xxhash/StreamingXXHash32$Factory;->newStreamingHash(I)Lcom/tds/xxhash/StreamingXXHash32;

    move-result-object v0

    return-object v0
.end method

.method public newStreamingHash64(J)Lcom/tds/xxhash/StreamingXXHash64;
    .registers 4
    .param p1, "seed"    # J

    .line 239
    iget-object v0, p0, Lcom/tds/xxhash/XXHashFactory;->streamingHash64Factory:Lcom/tds/xxhash/StreamingXXHash64$Factory;

    invoke-interface {v0, p1, p2}, Lcom/tds/xxhash/StreamingXXHash64$Factory;->newStreamingHash(J)Lcom/tds/xxhash/StreamingXXHash64;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 254
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

    iget-object v1, p0, Lcom/tds/xxhash/XXHashFactory;->impl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
