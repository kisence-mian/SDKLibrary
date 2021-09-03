.class final Lcom/tds/protobuf/UnsafeUtil;
.super Ljava/lang/Object;
.source "UnsafeUtil.java"


# static fields
.field private static final ARRAY_BASE_OFFSET:J

.field private static final BUFFER_ADDRESS_OFFSET:J

.field private static final HAS_UNSAFE_ARRAY_OPERATIONS:Z

.field private static final HAS_UNSAFE_BYTEBUFFER_OPERATIONS:Z

.field private static final UNSAFE:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 46
    invoke-static {}, Lcom/tds/protobuf/UnsafeUtil;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/tds/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    .line 48
    invoke-static {}, Lcom/tds/protobuf/UnsafeUtil;->supportsUnsafeByteBufferOperations()Z

    move-result v0

    sput-boolean v0, Lcom/tds/protobuf/UnsafeUtil;->HAS_UNSAFE_BYTEBUFFER_OPERATIONS:Z

    .line 49
    invoke-static {}, Lcom/tds/protobuf/UnsafeUtil;->supportsUnsafeArrayOperations()Z

    move-result v0

    sput-boolean v0, Lcom/tds/protobuf/UnsafeUtil;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    .line 50
    invoke-static {}, Lcom/tds/protobuf/UnsafeUtil;->byteArrayBaseOffset()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/tds/protobuf/UnsafeUtil;->ARRAY_BASE_OFFSET:J

    .line 51
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "address"

    invoke-static {v0, v1}, Lcom/tds/protobuf/UnsafeUtil;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lcom/tds/protobuf/UnsafeUtil;->fieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lcom/tds/protobuf/UnsafeUtil;->BUFFER_ADDRESS_OFFSET:J

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method static addressOffset(Ljava/nio/ByteBuffer;)J
    .registers 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 105
    sget-object v0, Lcom/tds/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/tds/protobuf/UnsafeUtil;->BUFFER_ADDRESS_OFFSET:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static byteArrayBaseOffset()I
    .registers 2

    .line 184
    sget-boolean v0, Lcom/tds/protobuf/UnsafeUtil;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/tds/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    const-class v1, [B

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, -0x1

    :goto_e
    return v0
.end method

.method static copyMemory(JJJ)V
    .registers 13
    .param p0, "srcAddress"    # J
    .param p2, "targetAddress"    # J
    .param p4, "length"    # J

    .line 98
    sget-object v0, Lcom/tds/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lsun/misc/Unsafe;->copyMemory(JJJ)V

    .line 99
    return-void
.end method

.method static copyMemory([BJ[BJJ)V
    .registers 17
    .param p0, "src"    # [B
    .param p1, "srcOffset"    # J
    .param p3, "target"    # [B
    .param p4, "targetOffset"    # J
    .param p6, "length"    # J

    .line 78
    sget-object v0, Lcom/tds/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-wide v5, p4

    move-wide v7, p6

    invoke-virtual/range {v0 .. v8}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 79
    return-void
.end method

.method private static field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 202
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 203
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    .line 207
    goto :goto_c

    .line 204
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :catchall_9
    move-exception v0

    .line 206
    .local v0, "t":Ljava/lang/Throwable;
    const/4 v1, 0x0

    move-object v0, v1

    .line 208
    .local v0, "field":Ljava/lang/reflect/Field;
    :goto_c
    return-object v0
.end method

.method private static fieldOffset(Ljava/lang/reflect/Field;)J
    .registers 3
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .line 192
    if-eqz p0, :cond_c

    sget-object v0, Lcom/tds/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    if-nez v0, :cond_7

    goto :goto_c

    :cond_7
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    goto :goto_e

    :cond_c
    :goto_c
    const-wide/16 v0, -0x1

    :goto_e
    return-wide v0
.end method

.method static getArrayBaseOffset()J
    .registers 2

    .line 65
    sget-wide v0, Lcom/tds/protobuf/UnsafeUtil;->ARRAY_BASE_OFFSET:J

    return-wide v0
.end method

.method static getByte(J)B
    .registers 3
    .param p0, "address"    # J

    .line 86
    sget-object v0, Lcom/tds/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v0

    return v0
.end method

.method static getByte([BJ)B
    .registers 4
    .param p0, "target"    # [B
    .param p1, "offset"    # J

    .line 69
    sget-object v0, Lcom/tds/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v0

    return v0
.end method

.method static getLong(J)J
    .registers 4
    .param p0, "address"    # J

    .line 94
    sget-object v0, Lcom/tds/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static getLong([BJ)J
    .registers 5
    .param p0, "target"    # [B
    .param p1, "offset"    # J

    .line 82
    sget-object v0, Lcom/tds/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getUnsafe()Lsun/misc/Unsafe;
    .registers 2

    .line 112
    const/4 v0, 0x0

    .line 114
    .local v0, "unsafe":Lsun/misc/Unsafe;
    :try_start_1
    new-instance v1, Lcom/tds/protobuf/UnsafeUtil$1;

    invoke-direct {v1}, Lcom/tds/protobuf/UnsafeUtil$1;-><init>()V

    .line 115
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/Unsafe;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    move-object v0, v1

    .line 135
    goto :goto_f

    .line 132
    :catchall_e
    move-exception v1

    .line 136
    :goto_f
    return-object v0
.end method

.method static hasUnsafeArrayOperations()Z
    .registers 1

    .line 57
    sget-boolean v0, Lcom/tds/protobuf/UnsafeUtil;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    return v0
.end method

.method static hasUnsafeByteBufferOperations()Z
    .registers 1

    .line 61
    sget-boolean v0, Lcom/tds/protobuf/UnsafeUtil;->HAS_UNSAFE_BYTEBUFFER_OPERATIONS:Z

    return v0
.end method

.method static putByte(JB)V
    .registers 4
    .param p0, "address"    # J
    .param p2, "value"    # B

    .line 90
    sget-object v0, Lcom/tds/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->putByte(JB)V

    .line 91
    return-void
.end method

.method static putByte([BJB)V
    .registers 5
    .param p0, "target"    # [B
    .param p1, "offset"    # J
    .param p3, "value"    # B

    .line 73
    sget-object v0, Lcom/tds/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 74
    return-void
.end method

.method private static supportsUnsafeArrayOperations()Z
    .registers 9

    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "supported":Z
    sget-object v1, Lcom/tds/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    if-eqz v1, :cond_69

    .line 146
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 147
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "arrayBaseOffset"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 148
    const-string v2, "getByte"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v3

    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 149
    const-string v2, "putByte"

    const/4 v5, 0x3

    new-array v7, v5, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Object;

    aput-object v8, v7, v6

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    invoke-virtual {v1, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 150
    const-string v2, "getLong"

    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Object;

    aput-object v8, v7, v6

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {v1, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 151
    const-string v2, "copyMemory"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Object;

    aput-object v8, v7, v6

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v7, v3

    const-class v3, Ljava/lang/Object;

    aput-object v3, v7, v4

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v7, v5

    const/4 v3, 0x4

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v7, v3

    invoke-virtual {v1, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_66
    .catchall {:try_start_5 .. :try_end_66} :catchall_68

    .line 153
    const/4 v0, 0x1

    .line 156
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_69

    .line 154
    :catchall_68
    move-exception v1

    .line 158
    :cond_69
    :goto_69
    return v0
.end method

.method private static supportsUnsafeByteBufferOperations()Z
    .registers 9

    .line 162
    const-string v0, "getLong"

    const/4 v1, 0x0

    .line 163
    .local v1, "supported":Z
    sget-object v2, Lcom/tds/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    if-eqz v2, :cond_60

    .line 165
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 166
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "objectFieldOffset"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/reflect/Field;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 167
    const-string v3, "getByte"

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 168
    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v4

    invoke-virtual {v2, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 169
    const-string v5, "putByte"

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v4

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 170
    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v7

    invoke-virtual {v2, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 171
    const-string v0, "copyMemory"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v4

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v5, v3

    invoke-virtual {v2, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_5d
    .catchall {:try_start_7 .. :try_end_5d} :catchall_5f

    .line 172
    const/4 v1, 0x1

    .line 175
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_60

    .line 173
    :catchall_5f
    move-exception v0

    .line 177
    :cond_60
    :goto_60
    return v1
.end method
