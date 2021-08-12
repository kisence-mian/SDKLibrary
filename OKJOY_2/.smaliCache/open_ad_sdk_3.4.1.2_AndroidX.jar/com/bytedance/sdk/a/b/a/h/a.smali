.class public final Lcom/bytedance/sdk/a/b/a/h/a;
.super Ljava/lang/Object;
.source "PublicSuffixDatabase.java"


# static fields
.field private static final a:[B

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:Lcom/bytedance/sdk/a/b/a/h/a;


# instance fields
.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Ljava/util/concurrent/CountDownLatch;

.field private g:[B

.field private h:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/16 v1, 0x2a

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    sput-object v0, Lcom/bytedance/sdk/a/b/a/h/a;->a:[B

    .line 41
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/bytedance/sdk/a/b/a/h/a;->b:[Ljava/lang/String;

    .line 42
    const-string v0, "*"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/h/a;->c:[Ljava/lang/String;

    .line 46
    new-instance v0, Lcom/bytedance/sdk/a/b/a/h/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/a/h/a;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/a/b/a/h/a;->d:Lcom/bytedance/sdk/a/b/a/h/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/h/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/h/a;->f:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/a/b/a/h/a;
    .registers 1

    .line 66
    sget-object v0, Lcom/bytedance/sdk/a/b/a/h/a;->d:Lcom/bytedance/sdk/a/b/a/h/a;

    return-object v0
.end method

.method private static a([B[[BI)Ljava/lang/String;
    .registers 20

    .line 200
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 201
    array-length v2, v0

    .line 202
    const/4 v3, 0x0

    move v4, v3

    .line 203
    :goto_7
    if-ge v4, v2, :cond_92

    .line 204
    add-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    .line 207
    :goto_d
    const/16 v6, 0xa

    const/4 v7, -0x1

    if-le v5, v7, :cond_19

    aget-byte v8, v0, v5

    if-eq v8, v6, :cond_19

    .line 208
    add-int/lit8 v5, v5, -0x1

    goto :goto_d

    .line 210
    :cond_19
    add-int/lit8 v5, v5, 0x1

    .line 213
    const/4 v8, 0x1

    move v9, v8

    .line 214
    :goto_1d
    add-int v10, v5, v9

    aget-byte v11, v0, v10

    if-eq v11, v6, :cond_26

    .line 215
    add-int/lit8 v9, v9, 0x1

    goto :goto_1d

    .line 217
    :cond_26
    sub-int v6, v10, v5

    .line 222
    nop

    .line 223
    nop

    .line 224
    nop

    .line 226
    move/from16 v11, p2

    move v9, v3

    move v12, v9

    move v13, v12

    .line 229
    :goto_30
    if-eqz v9, :cond_36

    .line 230
    const/16 v9, 0x2e

    .line 231
    move v14, v3

    goto :goto_41

    .line 233
    :cond_36
    aget-object v14, v1, v11

    aget-byte v14, v14, v12

    and-int/lit16 v14, v14, 0xff

    move/from16 v16, v14

    move v14, v9

    move/from16 v9, v16

    .line 236
    :goto_41
    add-int v15, v5, v13

    aget-byte v15, v0, v15

    and-int/lit16 v15, v15, 0xff

    .line 238
    sub-int/2addr v9, v15

    .line 239
    if-eqz v9, :cond_4b

    goto :goto_5c

    .line 241
    :cond_4b
    add-int/lit8 v13, v13, 0x1

    .line 242
    add-int/lit8 v12, v12, 0x1

    .line 243
    if-ne v13, v6, :cond_52

    goto :goto_5c

    .line 245
    :cond_52
    aget-object v15, v1, v11

    array-length v15, v15

    if-ne v15, v12, :cond_90

    .line 248
    array-length v14, v1

    sub-int/2addr v14, v8

    if-ne v11, v14, :cond_8a

    .line 249
    nop

    .line 258
    :goto_5c
    if-gez v9, :cond_62

    .line 259
    add-int/lit8 v5, v5, -0x1

    move v2, v5

    goto :goto_81

    .line 260
    :cond_62
    if-lez v9, :cond_67

    .line 261
    add-int/lit8 v4, v10, 0x1

    goto :goto_81

    .line 264
    :cond_67
    sub-int v7, v6, v13

    .line 265
    aget-object v8, v1, v11

    array-length v8, v8

    sub-int/2addr v8, v12

    .line 266
    :goto_6d
    add-int/lit8 v11, v11, 0x1

    array-length v9, v1

    if-ge v11, v9, :cond_77

    .line 267
    aget-object v9, v1, v11

    array-length v9, v9

    add-int/2addr v8, v9

    goto :goto_6d

    .line 270
    :cond_77
    if-ge v8, v7, :cond_7d

    .line 271
    add-int/lit8 v5, v5, -0x1

    move v2, v5

    goto :goto_81

    .line 272
    :cond_7d
    if-le v8, v7, :cond_82

    .line 273
    add-int/lit8 v4, v10, 0x1

    .line 280
    :goto_81
    goto :goto_7

    .line 276
    :cond_82
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/bytedance/sdk/a/b/a/c;->e:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v5, v6, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 277
    goto :goto_93

    .line 251
    :cond_8a
    add-int/lit8 v11, v11, 0x1

    .line 252
    nop

    .line 253
    move v12, v7

    move v9, v8

    goto :goto_91

    .line 245
    :cond_90
    move v9, v14

    .line 256
    :goto_91
    goto :goto_30

    .line 203
    :cond_92
    const/4 v1, 0x0

    .line 281
    :goto_93
    return-object v1
.end method

.method private a([Ljava/lang/String;)[Ljava/lang/String;
    .registers 10

    .line 114
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/h/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/h/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 115
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/h/a;->b()V

    goto :goto_1d

    .line 118
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/h/a;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1b} :catch_1c

    .line 120
    goto :goto_1d

    .line 119
    :catch_1c
    move-exception v0

    .line 123
    :goto_1d
    monitor-enter p0

    .line 124
    :try_start_1e
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/h/a;->g:[B

    if-eqz v0, :cond_c0

    .line 128
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_c8

    .line 131
    array-length v0, p1

    new-array v3, v0, [[B

    .line 132
    move v4, v1

    :goto_27
    array-length v5, p1

    if-ge v4, v5, :cond_37

    .line 133
    aget-object v5, p1, v4

    sget-object v6, Lcom/bytedance/sdk/a/b/a/c;->e:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    aput-object v5, v3, v4

    .line 132
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 138
    :cond_37
    nop

    .line 139
    move p1, v1

    :goto_39
    const/4 v4, 0x0

    if-ge p1, v0, :cond_49

    .line 140
    iget-object v5, p0, Lcom/bytedance/sdk/a/b/a/h/a;->g:[B

    invoke-static {v5, v3, p1}, Lcom/bytedance/sdk/a/b/a/h/a;->a([B[[BI)Ljava/lang/String;

    move-result-object v5

    .line 141
    if-eqz v5, :cond_46

    .line 142
    nop

    .line 143
    goto :goto_4a

    .line 139
    :cond_46
    add-int/lit8 p1, p1, 0x1

    goto :goto_39

    :cond_49
    move-object v5, v4

    .line 152
    :goto_4a
    nop

    .line 153
    if-le v0, v2, :cond_69

    .line 154
    invoke-virtual {v3}, [[B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[B

    .line 155
    move v6, v1

    :goto_54
    array-length v7, p1

    sub-int/2addr v7, v2

    if-ge v6, v7, :cond_69

    .line 156
    sget-object v7, Lcom/bytedance/sdk/a/b/a/h/a;->a:[B

    aput-object v7, p1, v6

    .line 157
    iget-object v7, p0, Lcom/bytedance/sdk/a/b/a/h/a;->g:[B

    invoke-static {v7, p1, v6}, Lcom/bytedance/sdk/a/b/a/h/a;->a([B[[BI)Ljava/lang/String;

    move-result-object v7

    .line 158
    if-eqz v7, :cond_66

    .line 159
    nop

    .line 160
    goto :goto_6a

    .line 155
    :cond_66
    add-int/lit8 v6, v6, 0x1

    goto :goto_54

    .line 166
    :cond_69
    move-object v7, v4

    :goto_6a
    nop

    .line 167
    if-eqz v7, :cond_80

    .line 168
    nop

    :goto_6e
    add-int/lit8 p1, v0, -0x1

    if-ge v1, p1, :cond_80

    .line 169
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/h/a;->h:[B

    invoke-static {p1, v3, v1}, Lcom/bytedance/sdk/a/b/a/h/a;->a([B[[BI)Ljava/lang/String;

    move-result-object p1

    .line 171
    if-eqz p1, :cond_7d

    .line 172
    nop

    .line 173
    move-object v4, p1

    goto :goto_80

    .line 168
    :cond_7d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6e

    .line 178
    :cond_80
    :goto_80
    if-eqz v4, :cond_9c

    .line 180
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 181
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 182
    :cond_9c
    if-nez v5, :cond_a3

    if-nez v7, :cond_a3

    .line 183
    sget-object p1, Lcom/bytedance/sdk/a/b/a/h/a;->c:[Ljava/lang/String;

    return-object p1

    .line 186
    :cond_a3
    if-eqz v5, :cond_ac

    const-string p1, "\\."

    .line 187
    invoke-virtual {v5, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_ae

    :cond_ac
    sget-object p1, Lcom/bytedance/sdk/a/b/a/h/a;->b:[Ljava/lang/String;

    .line 190
    :goto_ae
    if-eqz v7, :cond_b7

    const-string v0, "\\."

    .line 191
    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_b9

    :cond_b7
    sget-object v0, Lcom/bytedance/sdk/a/b/a/h/a;->b:[Ljava/lang/String;

    .line 194
    :goto_b9
    array-length v1, p1

    array-length v2, v0

    if-le v1, v2, :cond_be

    goto :goto_bf

    :cond_be
    move-object p1, v0

    :goto_bf
    return-object p1

    .line 125
    :cond_c0
    :try_start_c0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to load publicsuffixes.gz resource from the classpath."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 128
    :catchall_c8
    move-exception p1

    monitor-exit p0
    :try_end_ca
    .catchall {:try_start_c0 .. :try_end_ca} :catchall_c8

    throw p1
.end method

.method private b()V
    .registers 6

    .line 290
    const/4 v0, 0x0

    .line 294
    :goto_1
    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/h/a;->c()V
    :try_end_4
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_4} :catch_2f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_10
    .catchall {:try_start_1 .. :try_end_4} :catchall_e

    .line 304
    if-eqz v0, :cond_d

    .line 305
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 295
    :cond_d
    return-void

    .line 304
    :catchall_e
    move-exception v1

    goto :goto_25

    .line 298
    :catch_10
    move-exception v1

    .line 299
    :try_start_11
    invoke-static {}, Lcom/bytedance/sdk/a/b/a/g/e;->b()Lcom/bytedance/sdk/a/b/a/g/e;

    move-result-object v2

    const/4 v3, 0x5

    const-string v4, "Failed to read public suffix list"

    invoke-virtual {v2, v3, v4, v1}, Lcom/bytedance/sdk/a/b/a/g/e;->a(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_e

    .line 304
    if-eqz v0, :cond_24

    .line 305
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 300
    :cond_24
    return-void

    .line 304
    :goto_25
    if-eqz v0, :cond_2e

    .line 305
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 307
    :cond_2e
    throw v1

    .line 296
    :catch_2f
    move-exception v0

    .line 297
    const/4 v0, 0x1

    .line 301
    goto :goto_1
.end method

.method private c()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    const-class v0, Lcom/bytedance/sdk/a/b/a/h/a;

    const-string v1, "publicsuffixes.gz"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 315
    if-nez v0, :cond_b

    return-void

    .line 317
    :cond_b
    new-instance v1, Lcom/bytedance/sdk/a/a/j;

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/l;->a(Ljava/io/InputStream;)Lcom/bytedance/sdk/a/a/s;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/a/a/j;-><init>(Lcom/bytedance/sdk/a/a/s;)V

    invoke-static {v1}, Lcom/bytedance/sdk/a/a/l;->a(Lcom/bytedance/sdk/a/a/s;)Lcom/bytedance/sdk/a/a/e;

    move-result-object v0

    .line 319
    :try_start_18
    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->j()I

    move-result v1

    .line 320
    new-array v1, v1, [B

    .line 321
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/a/a/e;->a([B)V

    .line 323
    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->j()I

    move-result v2

    .line 324
    new-array v2, v2, [B

    .line 325
    invoke-interface {v0, v2}, Lcom/bytedance/sdk/a/a/e;->a([B)V
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_3d

    .line 327
    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/io/Closeable;)V

    .line 328
    nop

    .line 330
    monitor-enter p0

    .line 331
    :try_start_2f
    iput-object v1, p0, Lcom/bytedance/sdk/a/b/a/h/a;->g:[B

    .line 332
    iput-object v2, p0, Lcom/bytedance/sdk/a/b/a/h/a;->h:[B

    .line 333
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_3a

    .line 335
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/h/a;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 336
    return-void

    .line 333
    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v0

    .line 327
    :catchall_3d
    move-exception v1

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/io/Closeable;)V

    .line 328
    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 83
    if-eqz p1, :cond_5b

    .line 86
    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/a/b/a/h/a;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 89
    array-length v3, v0

    array-length v4, v2

    const/16 v5, 0x21

    const/4 v6, 0x0

    if-ne v3, v4, :cond_21

    aget-object v3, v2, v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_21

    .line 91
    const/4 p1, 0x0

    return-object p1

    .line 95
    :cond_21
    aget-object v3, v2, v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_2d

    .line 97
    array-length v0, v0

    array-length v2, v2

    sub-int/2addr v0, v2

    goto :goto_32

    .line 100
    :cond_2d
    array-length v0, v0

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v0, v2

    .line 103
    :goto_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 105
    nop

    :goto_3c
    array-length v1, p1

    if-ge v0, v1, :cond_4d

    .line 106
    aget-object v1, p1, v0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 108
    :cond_4d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 83
    :cond_5b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "domain == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
