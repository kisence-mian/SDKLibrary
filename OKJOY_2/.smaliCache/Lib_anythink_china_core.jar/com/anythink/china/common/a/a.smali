.class public abstract Lcom/anythink/china/common/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/china/common/a/a$a;
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/String; = ".temp"

.field public static final f:Ljava/lang/String; = ".log"

.field public static final g:Ljava/lang/String; = ".apk"

.field public static final h:I = 0x0

.field public static final i:I = 0x1

.field public static final j:I = 0x2

.field public static final k:I = 0x3

.field public static final l:I = 0x4

.field private static final u:Ljava/lang/String;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Z

.field protected d:Z

.field public m:I

.field protected n:J

.field protected o:J

.field protected p:J

.field protected q:J

.field protected r:J

.field protected s:J

.field protected t:J

.field private v:Lcom/anythink/china/common/a/a$a;

.field private w:Lcom/anythink/china/common/a/e;

.field private x:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    const-class v0, Lcom/anythink/china/common/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/china/common/a/a;->u:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/anythink/china/common/a/e;)V
    .registers 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/china/common/a/a;->m:I

    .line 74
    iput-object p1, p0, Lcom/anythink/china/common/a/a;->w:Lcom/anythink/china/common/a/e;

    .line 75
    iget-object v0, p1, Lcom/anythink/china/common/a/e;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/china/common/a/a;->a:Ljava/lang/String;

    .line 76
    iget-object p1, p1, Lcom/anythink/china/common/a/e;->k:Ljava/lang/String;

    iput-object p1, p0, Lcom/anythink/china/common/a/a;->b:Ljava/lang/String;

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/anythink/china/common/a/a;Ljava/lang/String;Ljava/io/InputStream;)I
    .registers 3

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/anythink/china/common/a/a;->a(Ljava/lang/String;Ljava/io/InputStream;)I

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;Ljava/io/InputStream;)I
    .registers 24

    .line 298
    move-object/from16 v1, p0

    const-string v0, "rws"

    invoke-static/range {p1 .. p1}, Lcom/anythink/china/common/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 299
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_10

    .line 300
    return v4

    .line 302
    :cond_10
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".temp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".log"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 305
    nop

    .line 306
    nop

    .line 308
    const/4 v6, 0x0

    :try_start_43
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_56

    .line 309
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v7

    .line 310
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result v8

    .line 311
    if-eqz v7, :cond_55

    if-nez v8, :cond_56

    .line 312
    :cond_55
    return v4

    .line 316
    :cond_56
    new-instance v7, Ljava/io/RandomAccessFile;

    invoke-direct {v7, v3, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_43 .. :try_end_5b} :catchall_18c

    .line 317
    :try_start_5b
    new-instance v8, Ljava/io/RandomAccessFile;

    invoke-direct {v8, v5, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_5b .. :try_end_60} :catchall_188

    .line 319
    :try_start_60
    iget-wide v9, v1, Lcom/anythink/china/common/a/a;->n:J
    :try_end_62
    .catchall {:try_start_60 .. :try_end_62} :catchall_186

    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    const-string v6, "("

    if-lez v0, :cond_92

    .line 320
    :try_start_6a
    sget-object v0, Lcom/anythink/china/common/a/a;->u:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/anythink/china/common/a/a;->w:Lcom/anythink/china/common/a/e;

    iget-object v6, v6, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ")  seek to -> "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v9, v1, Lcom/anythink/china/common/a/a;->n:J

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-wide v9, v1, Lcom/anythink/china/common/a/a;->n:J

    invoke-virtual {v7, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_b9

    .line 323
    :cond_92
    sget-object v0, Lcom/anythink/china/common/a/a;->u:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/anythink/china/common/a/a;->w:Lcom/anythink/china/common/a/e;

    iget-object v6, v6, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ")  set temp file size -> "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v9, v1, Lcom/anythink/china/common/a/a;->s:J

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-wide v9, v1, Lcom/anythink/china/common/a/a;->s:J

    invoke-virtual {v7, v9, v10}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 326
    :goto_b9
    const/high16 v0, 0x100000

    new-array v0, v0, [B

    .line 328
    iget-wide v9, v1, Lcom/anythink/china/common/a/a;->n:J

    iput-wide v9, v1, Lcom/anythink/china/common/a/a;->t:J

    .line 329
    :goto_c1
    const/4 v6, -0x1

    move-object/from16 v9, p2

    invoke-virtual {v9, v0}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-eq v6, v10, :cond_14c

    .line 331
    iget-boolean v6, v1, Lcom/anythink/china/common/a/a;->d:Z

    if-eqz v6, :cond_e9

    .line 332
    iget-object v0, v1, Lcom/anythink/china/common/a/a;->w:Lcom/anythink/china/common/a/e;

    if-eqz v0, :cond_d5

    .line 333
    invoke-virtual {v0}, Lcom/anythink/china/common/a/e;->g()V
    :try_end_d5
    .catchall {:try_start_6a .. :try_end_d5} :catchall_186

    .line 375
    :cond_d5
    :try_start_d5
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_d9

    .line 379
    goto :goto_de

    .line 378
    :catch_d9
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 382
    :goto_de
    :try_start_de
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e1} :catch_e2

    .line 386
    goto :goto_e7

    .line 385
    :catch_e2
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 335
    :goto_e7
    const/4 v0, 0x2

    return v0

    .line 337
    :cond_e9
    :try_start_e9
    iget-boolean v6, v1, Lcom/anythink/china/common/a/a;->c:Z

    if-eqz v6, :cond_108

    .line 338
    iget-object v0, v1, Lcom/anythink/china/common/a/a;->w:Lcom/anythink/china/common/a/e;

    if-eqz v0, :cond_f4

    .line 339
    invoke-virtual {v0}, Lcom/anythink/china/common/a/e;->f()V
    :try_end_f4
    .catchall {:try_start_e9 .. :try_end_f4} :catchall_186

    .line 375
    :cond_f4
    :try_start_f4
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_f7} :catch_f8

    .line 379
    goto :goto_fd

    .line 378
    :catch_f8
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 382
    :goto_fd
    :try_start_fd
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_100
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_100} :catch_101

    .line 386
    goto :goto_106

    .line 385
    :catch_101
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 341
    :goto_106
    const/4 v0, 0x3

    return v0

    .line 344
    :cond_108
    const/4 v6, 0x0

    :try_start_109
    invoke-virtual {v7, v0, v6, v10}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 345
    iget-wide v13, v1, Lcom/anythink/china/common/a/a;->t:J

    move-object/from16 p1, v5

    int-to-long v4, v10

    add-long/2addr v13, v4

    iput-wide v13, v1, Lcom/anythink/china/common/a/a;->t:J

    .line 347
    iget-object v4, v1, Lcom/anythink/china/common/a/a;->w:Lcom/anythink/china/common/a/e;

    if-eqz v4, :cond_11a

    .line 348
    iput-wide v13, v4, Lcom/anythink/china/common/a/e;->g:J

    .line 351
    :cond_11a
    invoke-virtual {v8, v11, v12}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 352
    iget-wide v4, v1, Lcom/anythink/china/common/a/a;->t:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/io/RandomAccessFile;->write([B)V

    .line 354
    iget-object v4, v1, Lcom/anythink/china/common/a/a;->v:Lcom/anythink/china/common/a/a$a;

    if-eqz v4, :cond_145

    .line 355
    iget-object v5, v1, Lcom/anythink/china/common/a/a;->w:Lcom/anythink/china/common/a/e;

    iget-wide v13, v1, Lcom/anythink/china/common/a/a;->t:J

    iget-wide v11, v1, Lcom/anythink/china/common/a/a;->s:J

    move-object v15, v4

    move-object/from16 v16, v5

    move-wide/from16 v17, v13

    move-wide/from16 v19, v11

    invoke-interface/range {v15 .. v20}, Lcom/anythink/china/common/a/a$a;->b(Lcom/anythink/china/common/a/e;JJ)V

    move-object/from16 v5, p1

    const/4 v4, 0x4

    const-wide/16 v11, 0x0

    goto/16 :goto_c1

    .line 354
    :cond_145
    move-object/from16 v5, p1

    const/4 v4, 0x4

    const-wide/16 v11, 0x0

    goto/16 :goto_c1

    .line 360
    :cond_14c
    move-object/from16 p1, v5

    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".apk"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 362
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_172

    .line 363
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z
    :try_end_172
    .catchall {:try_start_109 .. :try_end_172} :catchall_186

    .line 375
    :cond_172
    :try_start_172
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_175
    .catch Ljava/io/IOException; {:try_start_172 .. :try_end_175} :catch_176

    .line 379
    goto :goto_17b

    .line 378
    :catch_176
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 382
    :goto_17b
    :try_start_17b
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_17e
    .catch Ljava/io/IOException; {:try_start_17b .. :try_end_17e} :catch_17f

    .line 386
    goto :goto_184

    .line 385
    :catch_17f
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 366
    :goto_184
    const/4 v0, 0x1

    return v0

    .line 367
    :catchall_186
    move-exception v0

    goto :goto_18a

    :catchall_188
    move-exception v0

    move-object v8, v6

    :goto_18a
    move-object v6, v7

    goto :goto_18e

    :catchall_18c
    move-exception v0

    move-object v8, v6

    .line 368
    :goto_18e
    :try_start_18e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 369
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/anythink/china/common/a/a;->x:Ljava/lang/String;
    :try_end_197
    .catchall {:try_start_18e .. :try_end_197} :catchall_1b3

    .line 374
    if-eqz v6, :cond_1a3

    .line 375
    :try_start_199
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_19c
    .catch Ljava/io/IOException; {:try_start_199 .. :try_end_19c} :catch_19d

    goto :goto_1a3

    .line 378
    :catch_19d
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1a4

    .line 379
    :cond_1a3
    :goto_1a3
    nop

    .line 381
    :goto_1a4
    if-eqz v8, :cond_1b0

    .line 382
    :try_start_1a6
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1a9
    .catch Ljava/io/IOException; {:try_start_1a6 .. :try_end_1a9} :catch_1aa

    goto :goto_1b0

    .line 385
    :catch_1aa
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 387
    goto :goto_1b1

    .line 386
    :cond_1b0
    :goto_1b0
    nop

    .line 389
    :goto_1b1
    const/4 v2, 0x4

    return v2

    .line 373
    :catchall_1b3
    move-exception v0

    move-object v2, v0

    .line 374
    if-eqz v6, :cond_1c1

    .line 375
    :try_start_1b7
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1ba
    .catch Ljava/io/IOException; {:try_start_1b7 .. :try_end_1ba} :catch_1bb

    goto :goto_1c1

    .line 378
    :catch_1bb
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1c2

    .line 379
    :cond_1c1
    :goto_1c1
    nop

    .line 381
    :goto_1c2
    if-eqz v8, :cond_1ce

    .line 382
    :try_start_1c4
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1c7
    .catch Ljava/io/IOException; {:try_start_1c4 .. :try_end_1c7} :catch_1c8

    goto :goto_1ce

    .line 385
    :catch_1c8
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1cf

    .line 386
    :cond_1ce
    :goto_1ce
    nop

    .line 387
    :goto_1cf
    throw v2
.end method

.method static synthetic a(Lcom/anythink/china/common/a/a;)V
    .registers 10

    .line 1393
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/china/common/a/a;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/anythink/china/common/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1394
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/china/common/a/a;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/anythink/china/common/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1395
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_f7

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4a

    goto/16 :goto_f7

    .line 1404
    :cond_4a
    nop

    .line 1405
    nop

    .line 1406
    nop

    .line 1408
    const/4 v2, 0x0

    :try_start_4e
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_53} :catch_c7
    .catchall {:try_start_4e .. :try_end_53} :catchall_c3

    .line 1409
    :try_start_53
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_58} :catch_c0
    .catchall {:try_start_53 .. :try_end_58} :catchall_bd

    .line 1410
    :try_start_58
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5d} :catch_bb
    .catchall {:try_start_58 .. :try_end_5d} :catchall_dd

    .line 1411
    :try_start_5d
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 1413
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a6

    .line 1414
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/anythink/china/common/a/a;->n:J

    .line 1416
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-lez v2, :cond_7e

    .line 1417
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/anythink/china/common/a/a;->n:J

    goto :goto_84

    .line 1419
    :cond_7e
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/anythink/china/common/a/a;->s:J

    .line 1421
    :goto_84
    sget-object v1, Lcom/anythink/china/common/a/a;->u:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "readLogFile: startPost -> "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/anythink/china/common/a/a;->n:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", downloadSize -> "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v5, p0, Lcom/anythink/china/common/a/a;->s:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_a6} :catch_b8
    .catchall {:try_start_5d .. :try_end_a6} :catchall_b5

    .line 1429
    :cond_a6
    :try_start_a6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 1432
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 1435
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_af} :catch_b0

    .line 1439
    return-void

    .line 1438
    :catch_b0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 1440
    return-void

    .line 1427
    :catchall_b5
    move-exception p0

    move-object v2, v4

    goto :goto_de

    .line 1425
    :catch_b8
    move-exception p0

    move-object v2, v4

    goto :goto_ca

    :catch_bb
    move-exception p0

    goto :goto_ca

    .line 1427
    :catchall_bd
    move-exception p0

    move-object v0, v2

    goto :goto_de

    .line 1425
    :catch_c0
    move-exception p0

    move-object v0, v2

    goto :goto_ca

    .line 1427
    :catchall_c3
    move-exception p0

    move-object v0, v2

    move-object v3, v0

    goto :goto_de

    .line 1425
    :catch_c7
    move-exception p0

    move-object v0, v2

    move-object v3, v0

    :goto_ca
    :try_start_ca
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_cd
    .catchall {:try_start_ca .. :try_end_cd} :catchall_dd

    .line 1428
    if-eqz v2, :cond_d2

    .line 1429
    :try_start_cf
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 1431
    :cond_d2
    if-eqz v0, :cond_d7

    .line 1432
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 1434
    :cond_d7
    if-eqz v3, :cond_dc

    .line 1435
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_dc} :catch_b0

    .line 1439
    :cond_dc
    return-void

    .line 1427
    :catchall_dd
    move-exception p0

    .line 1428
    :goto_de
    if-eqz v2, :cond_e6

    .line 1429
    :try_start_e0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_e6

    .line 1438
    :catch_e4
    move-exception v0

    goto :goto_f1

    .line 1431
    :cond_e6
    :goto_e6
    if-eqz v0, :cond_eb

    .line 1432
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 1434
    :cond_eb
    if-eqz v3, :cond_f5

    .line 1435
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_f0} :catch_e4

    goto :goto_f5

    .line 1438
    :goto_f1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f6

    .line 1439
    :cond_f5
    :goto_f5
    nop

    .line 1440
    :goto_f6
    throw p0

    .line 1397
    :cond_f7
    :goto_f7
    :try_start_f7
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1398
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_fd
    .catchall {:try_start_f7 .. :try_end_fd} :catchall_fe

    .line 1400
    return-void

    .line 1399
    :catchall_fe
    move-exception p0

    .line 1401
    return-void
.end method

.method static synthetic b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/e;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/anythink/china/common/a/a;->w:Lcom/anythink/china/common/a/e;

    return-object p0
.end method

.method static synthetic c(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/a$a;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/anythink/china/common/a/a;->v:Lcom/anythink/china/common/a/a$a;

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/china/common/a/a;)Ljava/lang/String;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/anythink/china/common/a/a;->x:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f()Ljava/lang/String;
    .registers 1

    .line 33
    sget-object v0, Lcom/anythink/china/common/a/a;->u:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .registers 3

    .line 105
    new-instance v0, Lcom/anythink/china/common/a/a$1;

    invoke-direct {v0, p0}, Lcom/anythink/china/common/a/a$1;-><init>(Lcom/anythink/china/common/a/a;)V

    .line 289
    invoke-static {}, Lcom/anythink/china/common/a/a/a;->a()Lcom/anythink/china/common/a/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/china/common/a/a/a;->a(Lcom/anythink/core/common/g/a/b;)V

    .line 294
    return-void
.end method

.method private h()V
    .registers 10

    .line 393
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/china/common/a/a;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/anythink/china/common/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 394
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/china/common/a/a;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/anythink/china/common/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_f7

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4a

    goto/16 :goto_f7

    .line 404
    :cond_4a
    nop

    .line 405
    nop

    .line 406
    nop

    .line 408
    const/4 v2, 0x0

    :try_start_4e
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_53} :catch_c7
    .catchall {:try_start_4e .. :try_end_53} :catchall_c3

    .line 409
    :try_start_53
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_58} :catch_c0
    .catchall {:try_start_53 .. :try_end_58} :catchall_bd

    .line 410
    :try_start_58
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5d} :catch_bb
    .catchall {:try_start_58 .. :try_end_5d} :catchall_dd

    .line 411
    :try_start_5d
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 413
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a6

    .line 414
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/anythink/china/common/a/a;->n:J

    .line 416
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-lez v2, :cond_7e

    .line 417
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/anythink/china/common/a/a;->n:J

    goto :goto_84

    .line 419
    :cond_7e
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/anythink/china/common/a/a;->s:J

    .line 421
    :goto_84
    sget-object v1, Lcom/anythink/china/common/a/a;->u:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "readLogFile: startPost -> "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/anythink/china/common/a/a;->n:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", downloadSize -> "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v5, p0, Lcom/anythink/china/common/a/a;->s:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_a6} :catch_b8
    .catchall {:try_start_5d .. :try_end_a6} :catchall_b5

    .line 429
    :cond_a6
    :try_start_a6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 432
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 435
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_af} :catch_b0

    .line 439
    return-void

    .line 438
    :catch_b0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 440
    return-void

    .line 427
    :catchall_b5
    move-exception v1

    move-object v2, v4

    goto :goto_de

    .line 425
    :catch_b8
    move-exception v1

    move-object v2, v4

    goto :goto_ca

    :catch_bb
    move-exception v1

    goto :goto_ca

    .line 427
    :catchall_bd
    move-exception v1

    move-object v0, v2

    goto :goto_de

    .line 425
    :catch_c0
    move-exception v1

    move-object v0, v2

    goto :goto_ca

    .line 427
    :catchall_c3
    move-exception v1

    move-object v0, v2

    move-object v3, v0

    goto :goto_de

    .line 425
    :catch_c7
    move-exception v1

    move-object v0, v2

    move-object v3, v0

    :goto_ca
    :try_start_ca
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_cd
    .catchall {:try_start_ca .. :try_end_cd} :catchall_dd

    .line 428
    if-eqz v2, :cond_d2

    .line 429
    :try_start_cf
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 431
    :cond_d2
    if-eqz v0, :cond_d7

    .line 432
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 434
    :cond_d7
    if-eqz v3, :cond_dc

    .line 435
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_dc} :catch_b0

    .line 439
    :cond_dc
    return-void

    .line 427
    :catchall_dd
    move-exception v1

    .line 428
    :goto_de
    if-eqz v2, :cond_e6

    .line 429
    :try_start_e0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_e6

    .line 438
    :catch_e4
    move-exception v0

    goto :goto_f1

    .line 431
    :cond_e6
    :goto_e6
    if-eqz v0, :cond_eb

    .line 432
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 434
    :cond_eb
    if-eqz v3, :cond_f5

    .line 435
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_f0} :catch_e4

    goto :goto_f5

    .line 438
    :goto_f1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f6

    .line 439
    :cond_f5
    :goto_f5
    nop

    .line 440
    :goto_f6
    throw v1

    .line 397
    :cond_f7
    :goto_f7
    :try_start_f7
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 398
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_fd
    .catchall {:try_start_f7 .. :try_end_fd} :catchall_fe

    .line 400
    return-void

    .line 399
    :catchall_fe
    move-exception v0

    .line 401
    return-void
.end method

.method private static i()I
    .registers 1

    .line 449
    const v0, 0xea60

    return v0
.end method

.method private static j()I
    .registers 1

    .line 453
    const/16 v0, 0x4e20

    return v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/china/common/a/a;->c:Z

    .line 88
    return-void
.end method

.method public final a(Lcom/anythink/china/common/a/a$a;)V
    .registers 3

    .line 80
    iput-object p1, p0, Lcom/anythink/china/common/a/a;->v:Lcom/anythink/china/common/a/a$a;

    .line 81
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/china/common/a/a;->c:Z

    .line 82
    nop

    .line 1105
    new-instance p1, Lcom/anythink/china/common/a/a$1;

    invoke-direct {p1, p0}, Lcom/anythink/china/common/a/a$1;-><init>(Lcom/anythink/china/common/a/a;)V

    .line 1289
    invoke-static {}, Lcom/anythink/china/common/a/a/a;->a()Lcom/anythink/china/common/a/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/china/common/a/a/a;->a(Lcom/anythink/core/common/g/a/b;)V

    .line 83
    return-void
.end method

.method protected final a(Lcom/anythink/china/common/a/b;)V
    .registers 5

    .line 463
    sget-object v0, Lcom/anythink/china/common/a/a;->u:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/china/common/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-virtual {p0, p1}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/b;)V

    .line 465
    return-void
.end method

.method protected final a(Lorg/apache/http/conn/ConnectTimeoutException;)V
    .registers 3

    .line 459
    invoke-virtual {p1}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "10000"

    invoke-static {v0, p1}, Lcom/anythink/china/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/common/a/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/b;)V

    .line 460
    return-void
.end method

.method public final b()V
    .registers 2

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/china/common/a/a;->d:Z

    .line 92
    return-void
.end method

.method protected final b(Lcom/anythink/china/common/a/b;)V
    .registers 5

    .line 483
    sget-object v0, Lcom/anythink/china/common/a/a;->u:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download failed --> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/china/common/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/china/common/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/anythink/china/common/a/a;->v:Lcom/anythink/china/common/a/a$a;

    if-eqz v0, :cond_37

    .line 486
    iget-object v1, p0, Lcom/anythink/china/common/a/a;->w:Lcom/anythink/china/common/a/e;

    invoke-virtual {p1}, Lcom/anythink/china/common/a/b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/anythink/china/common/a/a$a;->a(Lcom/anythink/china/common/a/e;Ljava/lang/String;)V

    .line 488
    :cond_37
    return-void
.end method

.method protected c()Z
    .registers 2

    .line 445
    const/4 v0, 0x1

    return v0
.end method

.method protected final d()V
    .registers 10

    .line 468
    sget-object v0, Lcom/anythink/china/common/a/a;->u:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/china/common/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v2, p0, Lcom/anythink/china/common/a/a;->v:Lcom/anythink/china/common/a/a$a;

    if-eqz v2, :cond_25

    .line 470
    iget-object v3, p0, Lcom/anythink/china/common/a/a;->w:Lcom/anythink/china/common/a/e;

    iget-wide v4, p0, Lcom/anythink/china/common/a/a;->t:J

    iget-wide v6, p0, Lcom/anythink/china/common/a/a;->s:J

    iget v8, p0, Lcom/anythink/china/common/a/a;->m:I

    invoke-interface/range {v2 .. v8}, Lcom/anythink/china/common/a/a$a;->a(Lcom/anythink/china/common/a/e;JJI)V

    .line 472
    :cond_25
    return-void
.end method

.method protected final e()V
    .registers 5

    .line 475
    sget-object v0, Lcom/anythink/china/common/a/a;->u:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/china/common/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/anythink/china/common/a/a;->v:Lcom/anythink/china/common/a/a$a;

    if-eqz v0, :cond_21

    .line 478
    iget-object v1, p0, Lcom/anythink/china/common/a/a;->w:Lcom/anythink/china/common/a/e;

    iget-wide v2, v1, Lcom/anythink/china/common/a/e;->i:J

    invoke-interface {v0, v1, v2, v3}, Lcom/anythink/china/common/a/a$a;->a(Lcom/anythink/china/common/a/e;J)V

    .line 480
    :cond_21
    return-void
.end method
