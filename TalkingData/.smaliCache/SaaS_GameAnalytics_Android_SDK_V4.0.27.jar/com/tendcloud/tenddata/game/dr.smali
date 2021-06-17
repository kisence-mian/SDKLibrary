.class public Lcom/tendcloud/tenddata/game/dr;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/dr$b;,
        Lcom/tendcloud/tenddata/game/dr$a;,
        Lcom/tendcloud/tenddata/game/dr$c;
    }
.end annotation


# static fields
.field private static final a:I = 0x19

.field private static b:Lcom/tendcloud/tenddata/game/dr;


# instance fields
.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Ljava/util/HashMap;

.field private e:Ljava/util/zip/CRC32;

.field private f:Ljava/util/Map;

.field private g:Ljava/util/Map;

.field private h:Ljava/util/concurrent/locks/Lock;


# direct methods
.method private constructor <init>()V
    .registers 7

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dr;->h:Ljava/util/concurrent/locks/Lock;

    .line 56
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/dr;->c()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dr;->d:Ljava/util/HashMap;

    .line 59
    invoke-static {}, Lcom/tendcloud/tenddata/game/a;->values()[Lcom/tendcloud/tenddata/game/a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_33

    aget-object v3, v0, v2

    .line 60
    iget-object v4, p0, Lcom/tendcloud/tenddata/game/dr;->d:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/tendcloud/tenddata/game/a;->index()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 62
    :cond_33
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dr;->c:Ljava/util/concurrent/ExecutorService;

    .line 63
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dr;->e:Ljava/util/zip/CRC32;

    .line 64
    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/game/dr;
    .registers 2

    .line 47
    const-class v0, Lcom/tendcloud/tenddata/game/dr;

    monitor-enter v0

    .line 48
    :try_start_3
    sget-object v1, Lcom/tendcloud/tenddata/game/dr;->b:Lcom/tendcloud/tenddata/game/dr;

    if-nez v1, :cond_e

    .line 49
    new-instance v1, Lcom/tendcloud/tenddata/game/dr;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/dr;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/game/dr;->b:Lcom/tendcloud/tenddata/game/dr;

    .line 51
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 52
    sget-object v0, Lcom/tendcloud/tenddata/game/dr;->b:Lcom/tendcloud/tenddata/game/dr;

    return-object v0

    .line 51
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/game/dr;)Ljava/util/HashMap;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/tendcloud/tenddata/game/dr;->d:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/game/dr;Ljava/io/File;Lcom/tendcloud/tenddata/game/a;)V
    .registers 3

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/tendcloud/tenddata/game/dr;->a(Ljava/io/File;Lcom/tendcloud/tenddata/game/a;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .registers 3

    .line 191
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 192
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/dr;->c(Ljava/io/File;)Ljava/util/List;

    move-result-object p1

    .line 193
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/dr;->a(Ljava/io/File;)V

    .line 194
    goto :goto_18

    .line 195
    :cond_15
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    .line 202
    :goto_18
    goto :goto_1d

    .line 197
    :catchall_19
    move-exception p1

    .line 201
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 203
    :goto_1d
    return-void
.end method

.method private a(Ljava/io/File;Lcom/tendcloud/tenddata/game/a;)V
    .registers 4

    .line 164
    :try_start_0
    invoke-virtual {p2}, Lcom/tendcloud/tenddata/game/a;->getFileLimitType()I

    move-result p2

    packed-switch p2, :pswitch_data_2a

    goto :goto_24

    .line 176
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/dr;->a(Ljava/io/File;)V

    .line 177
    goto :goto_24

    .line 171
    :pswitch_c
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    array-length p2, p2

    const/16 v0, 0xa

    if-lt p2, v0, :cond_24

    .line 172
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/dr;->a(Ljava/io/File;)V

    goto :goto_24

    .line 166
    :pswitch_19
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/dr;->b(Ljava/io/File;)I

    move-result p2

    const/16 v0, 0x19

    if-le p2, v0, :cond_24

    .line 167
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/dr;->a(Ljava/io/File;)V
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_25

    .line 186
    :cond_24
    :goto_24
    goto :goto_29

    .line 181
    :catchall_25
    move-exception p1

    .line 185
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 187
    :goto_29
    return-void

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_19
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method

.method private b(Ljava/io/File;)I
    .registers 9

    .line 207
    nop

    .line 208
    const/4 v0, 0x0

    if-nez p1, :cond_5

    .line 209
    return v0

    .line 211
    :cond_5
    :try_start_5
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_c

    .line 212
    return v0

    .line 214
    :cond_c
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 215
    if-eqz p1, :cond_32

    array-length v1, p1

    if-nez v1, :cond_16

    goto :goto_32

    .line 218
    :cond_16
    array-length v1, p1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_1a
    if-ge v4, v1, :cond_2c

    aget-object v5, p1, v4

    .line 219
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_29

    .line 220
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v2, v5

    .line 218
    :cond_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 224
    :cond_2c
    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_33

    long-to-int p1, v2

    .line 225
    return p1

    .line 216
    :cond_32
    :goto_32
    return v0

    .line 226
    :catchall_33
    move-exception p1

    .line 230
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 232
    return v0
.end method

.method private c(Ljava/io/File;)Ljava/util/List;
    .registers 3

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 240
    if-eqz p1, :cond_19

    .line 242
    :try_start_b
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 243
    new-instance p1, Lcom/tendcloud/tenddata/game/ds;

    invoke-direct {p1, p0}, Lcom/tendcloud/tenddata/game/ds;-><init>(Lcom/tendcloud/tenddata/game/dr;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_18

    .line 253
    goto :goto_19

    .line 249
    :catchall_18
    move-exception p1

    .line 255
    :cond_19
    :goto_19
    return-object v0
.end method

.method private c()V
    .registers 9

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dr;->f:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dr;->g:Ljava/util/Map;

    .line 70
    :try_start_e
    invoke-static {}, Lcom/tendcloud/tenddata/game/a;->values()[Lcom/tendcloud/tenddata/game/a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_70

    aget-object v3, v0, v2

    .line 71
    sget-object v4, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    .line 72
    new-instance v5, Ljava/io/File;

    invoke-virtual {v3}, Lcom/tendcloud/tenddata/game/a;->getRootFolder()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Lcom/tendcloud/tenddata/game/a;->getDataFolder()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3d

    .line 75
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v4

    .line 76
    if-nez v4, :cond_3d

    .line 77
    return-void

    .line 80
    :cond_3d
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Lock"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/tendcloud/tenddata/game/a;->index()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 81
    iget-object v5, p0, Lcom/tendcloud/tenddata/game/dr;->f:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/tendcloud/tenddata/game/a;->index()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v7, "rw"

    invoke-direct {v6, v4, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6d
    .catchall {:try_start_e .. :try_end_6d} :catchall_71

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 88
    :cond_70
    goto :goto_75

    .line 83
    :catchall_71
    move-exception v0

    .line 87
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 90
    :goto_75
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/tendcloud/tenddata/game/a;ILjava/lang/String;)Ljava/util/TreeSet;
    .registers 23

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    monitor-enter p0

    .line 280
    :try_start_7
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 281
    if-eqz v9, :cond_15

    .line 282
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    .line 285
    :cond_15
    new-instance v10, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lcom/tendcloud/tenddata/game/a;->getDataFolder()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 286
    nop

    .line 287
    nop

    .line 288
    nop

    .line 289
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_45

    .line 290
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operationFolder is not exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->iForInternal([Ljava/lang/String;)V

    goto/16 :goto_149

    .line 292
    :cond_45
    invoke-virtual {v10}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v12

    .line 294
    if-eqz v12, :cond_149

    array-length v0, v12

    if-lez v0, :cond_149

    .line 295
    array-length v0, v12

    move/from16 v2, p2

    if-ge v0, v2, :cond_56

    array-length v0, v12
    :try_end_54
    .catchall {:try_start_7 .. :try_end_54} :catchall_162

    move v13, v0

    goto :goto_57

    :cond_56
    move v13, v2

    .line 297
    :goto_57
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v14, 0x0

    :goto_5b
    if-ge v14, v13, :cond_149

    .line 299
    :try_start_5d
    new-instance v0, Ljava/io/File;

    aget-object v4, v12, v14

    invoke-direct {v0, v10, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 300
    new-instance v15, Lcom/tendcloud/tenddata/game/dq;

    aget-object v4, v12, v14

    invoke-direct {v15, v4}, Lcom/tendcloud/tenddata/game/dq;-><init>(Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_5d .. :try_end_6b} :catchall_fe

    .line 301
    :try_start_6b
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v6, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_72
    .catchall {:try_start_6b .. :try_end_72} :catchall_f8

    .line 305
    :try_start_72
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v16
    :try_end_7a
    .catchall {:try_start_72 .. :try_end_7a} :catchall_f4

    .line 309
    if-nez v16, :cond_9a

    .line 313
    :try_start_7c
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_f0

    .line 354
    if-eqz v16, :cond_89

    .line 355
    :try_start_81
    invoke-virtual/range {v16 .. v16}, Ljava/nio/channels/FileLock;->release()V

    .line 356
    const/16 v16, 0x0

    goto :goto_89

    .line 365
    :catchall_87
    move-exception v0

    goto :goto_94

    .line 361
    :cond_89
    :goto_89
    nop

    .line 362
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8d
    .catchall {:try_start_81 .. :try_end_8d} :catchall_87

    .line 363
    :goto_8d
    nop

    .line 369
    move-object v3, v15

    move-object/from16 v2, v16

    const/4 v1, 0x0

    goto/16 :goto_134

    :goto_94
    move-object v1, v6

    move-object v3, v15

    move-object/from16 v2, v16

    goto/16 :goto_134

    .line 317
    :cond_9a
    const-wide/16 v0, 0x1

    :try_start_9c
    invoke-virtual {v6, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 320
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    .line 321
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    .line 322
    new-array v1, v1, [B

    .line 323
    invoke-virtual {v6, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 325
    iget-object v2, v7, Lcom/tendcloud/tenddata/game/dr;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->reset()V

    .line 326
    iget-object v2, v7, Lcom/tendcloud/tenddata/game/dr;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v2, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 327
    iget-object v2, v7, Lcom/tendcloud/tenddata/game/dr;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v3, v2

    if-ne v0, v3, :cond_c9

    .line 328
    nop

    .line 330
    invoke-virtual {v15, v1}, Lcom/tendcloud/tenddata/game/dq;->writeData([B)V

    .line 331
    invoke-virtual {v7, v15, v8}, Lcom/tendcloud/tenddata/game/dr;->a(Lcom/tendcloud/tenddata/game/dq;Lcom/tendcloud/tenddata/game/a;)V

    move-object/from16 v18, v6

    goto :goto_e2

    .line 343
    :cond_c9
    iget-object v0, v7, Lcom/tendcloud/tenddata/game/dr;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/tendcloud/tenddata/game/dr$b;
    :try_end_cd
    .catchall {:try_start_9c .. :try_end_cd} :catchall_f0

    const/16 v17, 0x0

    move-object v1, v5

    move-object/from16 v2, p0

    move-object v3, v15

    move-object/from16 v4, p1

    move-object v11, v5

    move-object/from16 v5, p3

    move-object/from16 v18, v6

    move-object/from16 v6, v17

    :try_start_dc
    invoke-direct/range {v1 .. v6}, Lcom/tendcloud/tenddata/game/dr$b;-><init>(Lcom/tendcloud/tenddata/game/dr;Lcom/tendcloud/tenddata/game/dq;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;Lcom/tendcloud/tenddata/game/ds;)V

    invoke-interface {v0, v11}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_e2
    .catchall {:try_start_dc .. :try_end_e2} :catchall_ee

    .line 354
    :goto_e2
    if-eqz v16, :cond_e9

    .line 355
    :try_start_e4
    invoke-virtual/range {v16 .. v16}, Ljava/nio/channels/FileLock;->release()V

    .line 356
    const/16 v16, 0x0

    .line 361
    :cond_e9
    nop

    .line 362
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V
    :try_end_ed
    .catchall {:try_start_e4 .. :try_end_ed} :catchall_11f

    goto :goto_8d

    .line 346
    :catchall_ee
    move-exception v0

    goto :goto_104

    :catchall_f0
    move-exception v0

    move-object/from16 v18, v6

    goto :goto_104

    :catchall_f4
    move-exception v0

    move-object/from16 v18, v6

    goto :goto_fb

    :catchall_f8
    move-exception v0

    move-object/from16 v18, v1

    :goto_fb
    move-object/from16 v16, v2

    goto :goto_104

    :catchall_fe
    move-exception v0

    move-object/from16 v18, v1

    move-object/from16 v16, v2

    move-object v15, v3

    .line 350
    :goto_104
    :try_start_104
    iget-object v0, v7, Lcom/tendcloud/tenddata/game/dr;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v11, Lcom/tendcloud/tenddata/game/dr$b;

    const/4 v6, 0x0

    move-object v1, v11

    move-object/from16 v2, p0

    move-object v3, v15

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/tendcloud/tenddata/game/dr$b;-><init>(Lcom/tendcloud/tenddata/game/dr;Lcom/tendcloud/tenddata/game/dq;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;Lcom/tendcloud/tenddata/game/ds;)V

    invoke-interface {v0, v11}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_117
    .catchall {:try_start_104 .. :try_end_117} :catchall_138

    .line 354
    if-eqz v16, :cond_121

    .line 355
    :try_start_119
    invoke-virtual/range {v16 .. v16}, Ljava/nio/channels/FileLock;->release()V

    .line 356
    const/16 v16, 0x0

    goto :goto_121

    .line 365
    :catchall_11f
    move-exception v0

    goto :goto_129

    .line 361
    :cond_121
    :goto_121
    if-eqz v18, :cond_12f

    .line 362
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V
    :try_end_126
    .catchall {:try_start_119 .. :try_end_126} :catchall_11f

    .line 363
    const/16 v18, 0x0

    goto :goto_12f

    .line 370
    :goto_129
    move-object v3, v15

    move-object/from16 v2, v16

    move-object/from16 v1, v18

    goto :goto_134

    .line 369
    :cond_12f
    :goto_12f
    move-object v3, v15

    move-object/from16 v2, v16

    move-object/from16 v1, v18

    .line 297
    :goto_134
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_5b

    .line 353
    :catchall_138
    move-exception v0

    move-object v1, v0

    .line 354
    if-eqz v16, :cond_142

    .line 355
    :try_start_13c
    invoke-virtual/range {v16 .. v16}, Ljava/nio/channels/FileLock;->release()V

    .line 356
    goto :goto_142

    .line 365
    :catchall_140
    move-exception v0

    goto :goto_148

    .line 361
    :cond_142
    :goto_142
    if-eqz v18, :cond_147

    .line 362
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V
    :try_end_147
    .catchall {:try_start_13c .. :try_end_147} :catchall_140

    .line 369
    :cond_147
    nop

    :goto_148
    :try_start_148
    throw v1

    .line 374
    :cond_149
    :goto_149
    iget-object v0, v7, Lcom/tendcloud/tenddata/game/dr;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_15f

    if-eqz v8, :cond_15f

    .line 375
    invoke-virtual/range {p1 .. p1}, Lcom/tendcloud/tenddata/game/a;->index()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;
    :try_end_15d
    .catchall {:try_start_148 .. :try_end_15d} :catchall_162

    monitor-exit p0

    return-object v0

    .line 377
    :cond_15f
    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    .line 279
    :catchall_162
    move-exception v0

    monitor-exit p0

    goto :goto_166

    :goto_165
    throw v0

    :goto_166
    goto :goto_165
.end method

.method public declared-synchronized a(Lcom/tendcloud/tenddata/game/dq;Lcom/tendcloud/tenddata/game/a;)V
    .registers 4

    monitor-enter p0

    .line 264
    if-eqz p2, :cond_21

    if-eqz p1, :cond_21

    .line 265
    :try_start_5
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dr;->d:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/game/a;->index()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/TreeSet;

    invoke-virtual {p2, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    goto :goto_21

    .line 267
    :catchall_19
    move-exception p1

    .line 271
    :try_start_1a
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    goto :goto_22

    .line 263
    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1

    .line 272
    :cond_21
    :goto_21
    nop

    .line 273
    :goto_22
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Lcom/tendcloud/tenddata/game/dq;Lcom/tendcloud/tenddata/game/dl;)V
    .registers 6

    monitor-enter p0

    .line 259
    :try_start_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dr;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tendcloud/tenddata/game/dr$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/tendcloud/tenddata/game/dr$c;-><init>(Lcom/tendcloud/tenddata/game/dr;Lcom/tendcloud/tenddata/game/dq;Lcom/tendcloud/tenddata/game/dl;Lcom/tendcloud/tenddata/game/ds;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 260
    monitor-exit p0

    return-void

    .line 258
    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()V
    .registers 8

    .line 93
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 95
    :try_start_6
    invoke-static {}, Lcom/tendcloud/tenddata/game/a;->values()[Lcom/tendcloud/tenddata/game/a;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v2, :cond_3b

    aget-object v5, v1, v4

    .line 96
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Lcom/tendcloud/tenddata/game/a;->getDataFolder()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 98
    invoke-direct {p0, v6}, Lcom/tendcloud/tenddata/game/dr;->c(Ljava/io/File;)Ljava/util/List;

    move-result-object v5

    .line 99
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_28
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_38

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 100
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 105
    goto :goto_28

    .line 95
    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 108
    :cond_3b
    invoke-static {}, Lcom/tendcloud/tenddata/game/a;->values()[Lcom/tendcloud/tenddata/game/a;

    move-result-object v1

    array-length v2, v1

    :goto_40
    if-ge v3, v2, :cond_78

    aget-object v4, v1, v3

    .line 109
    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Lcom/tendcloud/tenddata/game/a;->getRootFolder()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 110
    new-instance v0, Ljava/io/File;

    invoke-virtual {v4}, Lcom/tendcloud/tenddata/game/a;->getDataFolder()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_74

    .line 112
    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/dr;->c(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 113
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_64
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 114
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_73
    .catchall {:try_start_6 .. :try_end_73} :catchall_79

    .line 119
    goto :goto_64

    .line 108
    :cond_74
    add-int/lit8 v3, v3, 0x1

    move-object v0, v5

    goto :goto_40

    .line 127
    :cond_78
    goto :goto_7d

    .line 122
    :catchall_79
    move-exception v0

    .line 126
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 128
    :goto_7d
    return-void
.end method

.method public clearDataCache(Lcom/tendcloud/tenddata/game/a;)V
    .registers 3

    .line 463
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dr;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->index()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/TreeSet;

    .line 464
    invoke-virtual {p1}, Ljava/util/TreeSet;->clear()V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    .line 467
    goto :goto_15

    .line 465
    :catchall_14
    move-exception p1

    .line 468
    :goto_15
    return-void
.end method

.method public confirmRead(Lcom/tendcloud/tenddata/game/a;)V
    .registers 4

    .line 457
    new-instance v0, Lcom/tendcloud/tenddata/game/dr$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/tendcloud/tenddata/game/dr$a;-><init>(Lcom/tendcloud/tenddata/game/dr;Lcom/tendcloud/tenddata/game/a;Lcom/tendcloud/tenddata/game/ds;)V

    .line 458
    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/dr$a;->run()V

    .line 459
    return-void
.end method

.method public getFileLock(Lcom/tendcloud/tenddata/game/a;)V
    .registers 5

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dr;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 133
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dr;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->index()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/dr;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->index()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_2b

    .line 139
    goto :goto_2c

    .line 134
    :catchall_2b
    move-exception p1

    .line 140
    :goto_2c
    return-void
.end method

.method public releaseFileLock(Lcom/tendcloud/tenddata/game/a;)V
    .registers 4

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dr;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->index()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_2b

    if-eqz v0, :cond_2a

    .line 146
    :try_start_10
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dr;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->index()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/channels/FileLock;

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->release()V

    .line 147
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/dr;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_29

    .line 152
    goto :goto_2a

    .line 148
    :catchall_29
    move-exception p1

    .line 158
    :cond_2a
    :goto_2a
    goto :goto_2c

    .line 154
    :catchall_2b
    move-exception p1

    .line 160
    :goto_2c
    return-void
.end method
