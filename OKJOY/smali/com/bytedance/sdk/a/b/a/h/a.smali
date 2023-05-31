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
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-array v0, v3, [B

    const/16 v1, 0x2a

    aput-byte v1, v0, v2

    sput-object v0, Lcom/bytedance/sdk/a/b/a/h/a;->a:[B

    .line 41
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/bytedance/sdk/a/b/a/h/a;->b:[Ljava/lang/String;

    .line 42
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "*"

    aput-object v1, v0, v2

    sput-object v0, Lcom/bytedance/sdk/a/b/a/h/a;->c:[Ljava/lang/String;

    .line 46
    new-instance v0, Lcom/bytedance/sdk/a/b/a/h/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/a/h/a;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/a/b/a/h/a;->d:Lcom/bytedance/sdk/a/b/a/h/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
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

    .prologue
    .line 66
    sget-object v0, Lcom/bytedance/sdk/a/b/a/h/a;->d:Lcom/bytedance/sdk/a/b/a/h/a;

    return-object v0
.end method

.method private static a([B[[BI)Ljava/lang/String;
    .registers 15

    .prologue
    .line 200
    const/4 v5, 0x0

    .line 201
    array-length v4, p0

    .line 202
    const/4 v6, 0x0

    .line 203
    :goto_3
    if-ge v5, v4, :cond_98

    .line 204
    add-int v0, v5, v4

    div-int/lit8 v0, v0, 0x2

    .line 207
    :goto_9
    const/4 v1, -0x1

    if-le v0, v1, :cond_15

    aget-byte v1, p0, v0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_15

    .line 208
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 210
    :cond_15
    add-int/lit8 v9, v0, 0x1

    .line 213
    const/4 v0, 0x1

    .line 214
    :goto_18
    add-int v1, v9, v0

    aget-byte v1, p0, v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_23

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 217
    :cond_23
    add-int v1, v9, v0

    sub-int v10, v1, v9

    .line 223
    const/4 v8, 0x0

    .line 224
    const/4 v7, 0x0

    .line 226
    const/4 v2, 0x0

    move v3, p2

    .line 229
    :goto_2b
    if-eqz v2, :cond_44

    .line 230
    const/16 v1, 0x2e

    .line 231
    const/4 v2, 0x0

    .line 236
    :goto_30
    add-int v11, v9, v7

    aget-byte v11, p0, v11

    and-int/lit16 v11, v11, 0xff

    .line 238
    sub-int v11, v1, v11

    .line 239
    if-eqz v11, :cond_4b

    move v1, v7

    move v2, v8

    .line 258
    :goto_3c
    if-gez v11, :cond_67

    .line 259
    add-int/lit8 v0, v9, -0x1

    move v1, v5

    :goto_41
    move v4, v0

    move v5, v1

    .line 280
    goto :goto_3

    .line 233
    :cond_44
    aget-object v1, p1, v3

    aget-byte v1, v1, v8

    and-int/lit16 v1, v1, 0xff

    goto :goto_30

    .line 241
    :cond_4b
    add-int/lit8 v7, v7, 0x1

    .line 242
    add-int/lit8 v1, v8, 0x1

    .line 243
    if-ne v7, v10, :cond_54

    move v2, v1

    move v1, v7

    goto :goto_3c

    .line 245
    :cond_54
    aget-object v8, p1, v3

    array-length v8, v8

    if-ne v8, v1, :cond_65

    .line 248
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ne v3, v2, :cond_61

    move v2, v1

    move v1, v7

    .line 249
    goto :goto_3c

    .line 251
    :cond_61
    add-int/lit8 v3, v3, 0x1

    .line 252
    const/4 v1, -0x1

    .line 253
    const/4 v2, 0x1

    :cond_65
    move v8, v1

    .line 256
    goto :goto_2b

    .line 260
    :cond_67
    if-lez v11, :cond_6f

    .line 261
    add-int/2addr v0, v9

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    move v0, v4

    goto :goto_41

    .line 264
    :cond_6f
    sub-int v7, v10, v1

    .line 265
    aget-object v1, p1, v3

    array-length v1, v1

    sub-int v2, v1, v2

    .line 266
    add-int/lit8 v1, v3, 0x1

    :goto_78
    array-length v3, p1

    if-ge v1, v3, :cond_82

    .line 267
    aget-object v3, p1, v1

    array-length v3, v3

    add-int/2addr v2, v3

    .line 266
    add-int/lit8 v1, v1, 0x1

    goto :goto_78

    .line 270
    :cond_82
    if-ge v2, v7, :cond_88

    .line 271
    add-int/lit8 v0, v9, -0x1

    move v1, v5

    goto :goto_41

    .line 272
    :cond_88
    if-le v2, v7, :cond_90

    .line 273
    add-int/2addr v0, v9

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    move v0, v4

    goto :goto_41

    .line 276
    :cond_90
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/bytedance/sdk/a/b/a/c;->e:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v9, v10, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 281
    :goto_97
    return-object v0

    :cond_98
    move-object v0, v6

    goto :goto_97
.end method

.method private a([Ljava/lang/String;)[Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 114
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/h/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/h/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 115
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/h/a;->b()V

    .line 123
    :goto_16
    monitor-enter p0

    .line 124
    :try_start_17
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/h/a;->g:[B

    if-nez v0, :cond_2e

    .line 125
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to load publicsuffixes.gz resource from the classpath."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_23

    throw v0

    .line 118
    :cond_26
    :try_start_26
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/h/a;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_2b} :catch_2c

    goto :goto_16

    .line 119
    :catch_2c
    move-exception v0

    goto :goto_16

    .line 128
    :cond_2e
    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_23

    .line 131
    array-length v0, p1

    new-array v6, v0, [[B

    move v0, v1

    .line 132
    :goto_33
    array-length v2, p1

    if-ge v0, v2, :cond_43

    .line 133
    aget-object v2, p1, v0

    sget-object v4, Lcom/bytedance/sdk/a/b/a/c;->e:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    aput-object v2, v6, v0

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_43
    move v0, v1

    .line 139
    :goto_44
    array-length v2, v6

    if-ge v0, v2, :cond_c5

    .line 140
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/h/a;->g:[B

    invoke-static {v2, v6, v0}, Lcom/bytedance/sdk/a/b/a/h/a;->a([B[[BI)Ljava/lang/String;

    move-result-object v2

    .line 141
    if-eqz v2, :cond_97

    .line 153
    :goto_4f
    array-length v0, v6

    if-le v0, v5, :cond_c3

    .line 154
    invoke-virtual {v6}, [[B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    move v4, v1

    .line 155
    :goto_59
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_c3

    .line 156
    sget-object v5, Lcom/bytedance/sdk/a/b/a/h/a;->a:[B

    aput-object v5, v0, v4

    .line 157
    iget-object v5, p0, Lcom/bytedance/sdk/a/b/a/h/a;->g:[B

    invoke-static {v5, v0, v4}, Lcom/bytedance/sdk/a/b/a/h/a;->a([B[[BI)Ljava/lang/String;

    move-result-object v5

    .line 158
    if-eqz v5, :cond_9a

    move-object v4, v5

    .line 167
    :goto_6b
    if-eqz v4, :cond_7b

    .line 168
    :goto_6d
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_7b

    .line 169
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/h/a;->h:[B

    invoke-static {v0, v6, v1}, Lcom/bytedance/sdk/a/b/a/h/a;->a([B[[BI)Ljava/lang/String;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_9d

    move-object v3, v0

    .line 178
    :cond_7b
    if-eqz v3, :cond_a0

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 194
    :cond_96
    :goto_96
    return-object v0

    .line 139
    :cond_97
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 155
    :cond_9a
    add-int/lit8 v4, v4, 0x1

    goto :goto_59

    .line 168
    :cond_9d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6d

    .line 182
    :cond_a0
    if-nez v2, :cond_a7

    if-nez v4, :cond_a7

    .line 183
    sget-object v0, Lcom/bytedance/sdk/a/b/a/h/a;->c:[Ljava/lang/String;

    goto :goto_96

    .line 186
    :cond_a7
    if-eqz v2, :cond_bd

    const-string v0, "\\."

    .line 187
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 190
    :goto_af
    if-eqz v4, :cond_c0

    const-string v0, "\\."

    .line 191
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 194
    :goto_b7
    array-length v2, v1

    array-length v3, v0

    if-le v2, v3, :cond_96

    move-object v0, v1

    goto :goto_96

    .line 187
    :cond_bd
    sget-object v1, Lcom/bytedance/sdk/a/b/a/h/a;->b:[Ljava/lang/String;

    goto :goto_af

    .line 191
    :cond_c0
    sget-object v0, Lcom/bytedance/sdk/a/b/a/h/a;->b:[Ljava/lang/String;

    goto :goto_b7

    :cond_c3
    move-object v4, v3

    goto :goto_6b

    :cond_c5
    move-object v2, v3

    goto :goto_4f
.end method

.method private b()V
    .registers 6

    .prologue
    .line 290
    const/4 v0, 0x0

    move v1, v0

    .line 294
    :goto_2
    :try_start_2
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/h/a;->c()V
    :try_end_5
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_5} :catch_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_13
    .catchall {:try_start_2 .. :try_end_5} :catchall_28

    .line 304
    if-eqz v1, :cond_e

    .line 305
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 300
    :cond_e
    :goto_e
    return-void

    .line 296
    :catch_f
    move-exception v0

    .line 297
    const/4 v0, 0x1

    move v1, v0

    .line 301
    goto :goto_2

    .line 298
    :catch_13
    move-exception v0

    .line 299
    :try_start_14
    invoke-static {}, Lcom/bytedance/sdk/a/b/a/g/e;->b()Lcom/bytedance/sdk/a/b/a/g/e;

    move-result-object v2

    const/4 v3, 0x5

    const-string v4, "Failed to read public suffix list"

    invoke-virtual {v2, v3, v4, v0}, Lcom/bytedance/sdk/a/b/a/g/e;->a(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_28

    .line 304
    if-eqz v1, :cond_e

    .line 305
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_e

    .line 304
    :catchall_28
    move-exception v0

    if-eqz v1, :cond_32

    .line 305
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 307
    :cond_32
    throw v0
.end method

.method private c()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    const-class v0, Lcom/bytedance/sdk/a/b/a/h/a;

    const-string v1, "publicsuffixes.gz"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 315
    if-nez v0, :cond_b

    .line 336
    :goto_a
    return-void

    .line 317
    :cond_b
    new-instance v1, Lcom/bytedance/sdk/a/a/j;

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/l;->a(Ljava/io/InputStream;)Lcom/bytedance/sdk/a/a/s;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/a/a/j;-><init>(Lcom/bytedance/sdk/a/a/s;)V

    invoke-static {v1}, Lcom/bytedance/sdk/a/a/l;->a(Lcom/bytedance/sdk/a/a/s;)Lcom/bytedance/sdk/a/a/e;

    move-result-object v1

    .line 319
    :try_start_18
    invoke-interface {v1}, Lcom/bytedance/sdk/a/a/e;->j()I

    move-result v0

    .line 320
    new-array v0, v0, [B

    .line 321
    invoke-interface {v1, v0}, Lcom/bytedance/sdk/a/a/e;->a([B)V

    .line 323
    invoke-interface {v1}, Lcom/bytedance/sdk/a/a/e;->j()I

    move-result v2

    .line 324
    new-array v2, v2, [B

    .line 325
    invoke-interface {v1, v2}, Lcom/bytedance/sdk/a/a/e;->a([B)V
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_39

    .line 327
    invoke-static {v1}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/io/Closeable;)V

    .line 330
    monitor-enter p0

    .line 331
    :try_start_2e
    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/h/a;->g:[B

    .line 332
    iput-object v2, p0, Lcom/bytedance/sdk/a/b/a/h/a;->h:[B

    .line 333
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_3e

    .line 335
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/h/a;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_a

    .line 327
    :catchall_39
    move-exception v0

    invoke-static {v1}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/io/Closeable;)V

    .line 328
    throw v0

    .line 333
    :catchall_3e
    move-exception v0

    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    const/16 v5, 0x21

    const/4 v4, 0x0

    .line 83
    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "domain == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_d
    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/a/b/a/h/a;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 89
    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_29

    aget-object v2, v1, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_29

    .line 91
    const/4 v0, 0x0

    .line 110
    :goto_28
    return-object v0

    .line 95
    :cond_29
    aget-object v2, v1, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_50

    .line 97
    array-length v0, v0

    array-length v1, v1

    sub-int/2addr v0, v1

    .line 103
    :goto_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    const-string v2, "\\."

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 105
    :goto_3f
    array-length v3, v2

    if-ge v0, v3, :cond_56

    .line 106
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 100
    :cond_50
    array-length v0, v0

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    goto :goto_34

    .line 108
    :cond_56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_28
.end method
