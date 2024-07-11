.class abstract Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;
.super Ljava/lang/Number;
.source "Striped64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64$Cell;
    }
.end annotation


# static fields
.field static final NCPU:I

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final baseOffset:J

.field private static final busyOffset:J

.field static final rng:Ljava/util/Random;

.field static final threadHashCode:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[I>;"
        }
    .end annotation
.end field


# instance fields
.field volatile transient base:J

.field volatile transient busy:I

.field volatile transient cells:[Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64$Cell;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 128
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->threadHashCode:Ljava/lang/ThreadLocal;

    .line 131
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->rng:Ljava/util/Random;

    .line 134
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->NCPU:I

    .line 273
    :try_start_18
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    .line 274
    const-class v1, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;

    .line 275
    const-string v2, "base"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->baseOffset:J

    .line 276
    const-string v2, "busy"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->busyOffset:J
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_38} :catch_3a

    .line 279
    nop

    .line 280
    return-void

    .line 277
    :catch_3a
    move-exception v0

    .line 278
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>()V
    .registers 1

    .line 149
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lsun/misc/Unsafe;
    .registers 1

    .line 24
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    return-object v0
.end method

.method private static getUnsafe()Lsun/misc/Unsafe;
    .registers 3

    .line 290
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 291
    :catch_5
    move-exception v0

    .line 294
    :try_start_6
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64$1;

    invoke-direct {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_11
    .catch Ljava/security/PrivilegedActionException; {:try_start_6 .. :try_end_11} :catch_12

    return-object v0

    .line 307
    :catch_12
    move-exception v0

    .line 308
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v2, "Could not initialize intrinsics"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method final casBase(JJ)Z
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cmp",
            "val"
        }
    .end annotation

    .line 153
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->baseOffset:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    return p1
.end method

.method final casBusy()Z
    .registers 7

    .line 158
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->busyOffset:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method abstract fn(JJ)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "currentValue",
            "newValue"
        }
    .end annotation
.end method

.method final retryUpdate(J[IZ)V
    .registers 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "hc",
            "wasUncontended"
        }
    .end annotation

    .line 182
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    const/4 v0, 0x1

    const/4 v4, 0x0

    if-nez p3, :cond_1b

    .line 183
    sget-object v5, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->threadHashCode:Ljava/lang/ThreadLocal;

    new-array v6, v0, [I

    invoke-virtual {v5, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 184
    sget-object v5, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->rng:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v5

    .line 185
    if-nez v5, :cond_18

    const/4 v5, 0x1

    :cond_18
    aput v5, v6, v4

    .line 186
    goto :goto_1f

    :cond_1b
    aget v5, p3, v4

    move-object/from16 v6, p3

    .line 187
    :goto_1f
    move v7, v5

    const/4 v8, 0x0

    move/from16 v5, p4

    .line 193
    :cond_23
    :goto_23
    iget-object v9, v1, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->cells:[Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64$Cell;

    if-eqz v9, :cond_ba

    array-length v10, v9

    if-lez v10, :cond_ba

    .line 194
    add-int/lit8 v11, v10, -0x1

    and-int/2addr v11, v7

    aget-object v11, v9, v11

    if-nez v11, :cond_65

    .line 195
    iget v9, v1, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->busy:I

    if-nez v9, :cond_63

    .line 196
    new-instance v9, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64$Cell;

    invoke-direct {v9, v2, v3}, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64$Cell;-><init>(J)V

    .line 197
    iget v10, v1, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->busy:I

    if-nez v10, :cond_63

    invoke-virtual/range {p0 .. p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->casBusy()Z

    move-result v10

    if-eqz v10, :cond_63

    .line 198
    nop

    .line 202
    :try_start_45
    iget-object v10, v1, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->cells:[Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64$Cell;

    if-eqz v10, :cond_57

    array-length v11, v10

    if-lez v11, :cond_57

    add-int/lit8 v11, v11, -0x1

    and-int/2addr v11, v7

    aget-object v12, v10, v11

    if-nez v12, :cond_57

    .line 203
    aput-object v9, v10, v11
    :try_end_55
    .catchall {:try_start_45 .. :try_end_55} :catchall_5f

    .line 204
    const/4 v9, 0x1

    goto :goto_58

    .line 207
    :cond_57
    const/4 v9, 0x0

    :goto_58
    iput v4, v1, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->busy:I

    .line 208
    nop

    .line 209
    if-eqz v9, :cond_23

    goto/16 :goto_f4

    .line 207
    :catchall_5f
    move-exception v0

    iput v4, v1, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->busy:I

    throw v0

    .line 213
    :cond_63
    const/4 v8, 0x0

    goto :goto_ae

    .line 214
    :cond_65
    if-nez v5, :cond_69

    .line 215
    const/4 v5, 0x1

    goto :goto_ae

    .line 216
    :cond_69
    iget-wide v12, v11, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64$Cell;->value:J

    invoke-virtual {v1, v12, v13, v2, v3}, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->fn(JJ)J

    move-result-wide v14

    invoke-virtual {v11, v12, v13, v14, v15}, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64$Cell;->cas(JJ)Z

    move-result v11

    if-eqz v11, :cond_77

    goto/16 :goto_f4

    .line 217
    :cond_77
    sget v11, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->NCPU:I

    if-ge v10, v11, :cond_ad

    iget-object v11, v1, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->cells:[Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64$Cell;

    if-eq v11, v9, :cond_80

    goto :goto_ad

    .line 218
    :cond_80
    if-nez v8, :cond_84

    const/4 v8, 0x1

    goto :goto_ae

    .line 219
    :cond_84
    iget v11, v1, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->busy:I

    if-nez v11, :cond_ae

    invoke-virtual/range {p0 .. p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->casBusy()Z

    move-result v11

    if-eqz v11, :cond_ae

    .line 221
    :try_start_8e
    iget-object v8, v1, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->cells:[Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64$Cell;

    if-ne v8, v9, :cond_a2

    .line 222
    shl-int/lit8 v8, v10, 0x1

    new-array v8, v8, [Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64$Cell;

    .line 223
    const/4 v11, 0x0

    :goto_97
    if-ge v11, v10, :cond_a0

    aget-object v12, v9, v11

    aput-object v12, v8, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_97

    .line 224
    :cond_a0
    iput-object v8, v1, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->cells:[Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64$Cell;
    :try_end_a2
    .catchall {:try_start_8e .. :try_end_a2} :catchall_a9

    .line 227
    :cond_a2
    iput v4, v1, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->busy:I

    .line 228
    nop

    .line 229
    nop

    .line 230
    const/4 v8, 0x0

    goto/16 :goto_23

    .line 227
    :catchall_a9
    move-exception v0

    iput v4, v1, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->busy:I

    throw v0

    .line 217
    :cond_ad
    :goto_ad
    const/4 v8, 0x0

    .line 232
    :cond_ae
    :goto_ae
    shl-int/lit8 v9, v7, 0xd

    xor-int/2addr v7, v9

    .line 233
    ushr-int/lit8 v9, v7, 0x11

    xor-int/2addr v7, v9

    .line 234
    shl-int/lit8 v9, v7, 0x5

    xor-int/2addr v7, v9

    .line 235
    aput v7, v6, v4

    goto :goto_f6

    .line 236
    :cond_ba
    iget v10, v1, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->busy:I

    if-nez v10, :cond_e8

    iget-object v10, v1, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->cells:[Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64$Cell;

    if-ne v10, v9, :cond_e8

    invoke-virtual/range {p0 .. p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->casBusy()Z

    move-result v10

    if-eqz v10, :cond_e8

    .line 237
    nop

    .line 239
    :try_start_c9
    iget-object v10, v1, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->cells:[Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64$Cell;

    if-ne v10, v9, :cond_dd

    .line 240
    const/4 v9, 0x2

    new-array v9, v9, [Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64$Cell;

    .line 241
    and-int/lit8 v10, v7, 0x1

    new-instance v11, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64$Cell;

    invoke-direct {v11, v2, v3}, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64$Cell;-><init>(J)V

    aput-object v11, v9, v10

    .line 242
    iput-object v9, v1, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->cells:[Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64$Cell;
    :try_end_db
    .catchall {:try_start_c9 .. :try_end_db} :catchall_e4

    .line 243
    const/4 v9, 0x1

    goto :goto_de

    .line 239
    :cond_dd
    const/4 v9, 0x0

    .line 246
    :goto_de
    iput v4, v1, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->busy:I

    .line 247
    nop

    .line 248
    if-eqz v9, :cond_f5

    goto :goto_f4

    .line 246
    :catchall_e4
    move-exception v0

    iput v4, v1, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->busy:I

    throw v0

    .line 249
    :cond_e8
    iget-wide v9, v1, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->base:J

    invoke-virtual {v1, v9, v10, v2, v3}, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->fn(JJ)J

    move-result-wide v11

    invoke-virtual {v1, v9, v10, v11, v12}, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->casBase(JJ)Z

    move-result v9

    if-eqz v9, :cond_f5

    .line 251
    :goto_f4
    return-void

    .line 249
    :cond_f5
    nop

    .line 250
    :goto_f6
    goto/16 :goto_23
.end method
