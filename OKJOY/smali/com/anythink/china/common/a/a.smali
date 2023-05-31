.class public abstract Lcom/anythink/china/common/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/china/common/a/a$a;
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String; = ".temp"

.field public static final e:Ljava/lang/String; = ".log"

.field public static final f:Ljava/lang/String; = ".apk"

.field public static final g:I = 0x0

.field public static final h:I = 0x1

.field public static final i:I = 0x2

.field public static final j:I = 0x3

.field public static final k:I = 0x4

.field private static final r:Ljava/lang/String;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Z

.field protected c:Z

.field public l:I

.field protected m:J

.field protected n:J

.field protected o:J

.field protected p:J

.field protected q:J

.field private s:Lcom/anythink/china/common/a/a$a;

.field private t:Lcom/anythink/china/common/a/c;

.field private u:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-class v0, Lcom/anythink/china/common/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/china/common/a/a;->r:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/anythink/china/common/a/c;)V
    .registers 3

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/china/common/a/a;->l:I

    .line 67
    iput-object p1, p0, Lcom/anythink/china/common/a/a;->t:Lcom/anythink/china/common/a/c;

    .line 68
    iget-object v0, p1, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/china/common/a/a;->a:Ljava/lang/String;

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/anythink/china/common/a/a;Ljava/lang/String;Ljava/io/InputStream;)I
    .registers 4

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/anythink/china/common/a/a;->a(Ljava/lang/String;Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/io/InputStream;)I
    .registers 16

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x4

    .line 286
    invoke-static {p1}, Lcom/anythink/china/common/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 287
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v6

    .line 373
    :goto_f
    return v0

    .line 290
    :cond_10
    new-instance v10, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".temp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    new-instance v11, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".log"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    :try_start_40
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_54

    .line 297
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z

    move-result v0

    .line 298
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    move-result v2

    .line 299
    if-eqz v0, :cond_52

    if-nez v2, :cond_54

    :cond_52
    move v0, v6

    .line 300
    goto :goto_f

    .line 304
    :cond_54
    new-instance v8, Ljava/io/RandomAccessFile;

    const-string v0, "rws"

    invoke-direct {v8, v10, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_5b} :catch_1a4
    .catchall {:try_start_40 .. :try_end_5b} :catchall_199

    .line 305
    :try_start_5b
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v0, "rws"

    invoke-direct {v7, v11, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_62} :catch_1a8
    .catchall {:try_start_5b .. :try_end_62} :catchall_19d

    .line 307
    :try_start_62
    iget-wide v0, p0, Lcom/anythink/china/common/a/a;->m:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_b6

    .line 308
    sget-object v0, Lcom/anythink/china/common/a/a;->r:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/china/common/a/a;->t:Lcom/anythink/china/common/a/c;

    iget-object v2, v2, Lcom/anythink/china/common/a/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")  seek to -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/anythink/china/common/a/a;->m:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-wide v0, p0, Lcom/anythink/china/common/a/a;->m:J

    invoke-virtual {v8, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 314
    :goto_91
    const/high16 v0, 0x100000

    new-array v12, v0, [B

    .line 316
    iget-wide v0, p0, Lcom/anythink/china/common/a/a;->m:J

    iput-wide v0, p0, Lcom/anythink/china/common/a/a;->q:J

    .line 317
    :cond_99
    :goto_99
    const/4 v0, -0x1

    invoke-virtual {p2, v12}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-eq v0, v1, :cond_15c

    .line 319
    iget-boolean v0, p0, Lcom/anythink/china/common/a/a;->c:Z

    if-eqz v0, :cond_fe

    .line 320
    iget-object v0, p0, Lcom/anythink/china/common/a/a;->t:Lcom/anythink/china/common/a/c;

    if-eqz v0, :cond_ad

    .line 321
    iget-object v0, p0, Lcom/anythink/china/common/a/a;->t:Lcom/anythink/china/common/a/c;

    invoke-virtual {v0}, Lcom/anythink/china/common/a/c;->g()V
    :try_end_ad
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_ad} :catch_e0
    .catchall {:try_start_62 .. :try_end_ad} :catchall_150

    .line 363
    :cond_ad
    :try_start_ad
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    .line 366
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b3} :catch_f9

    .line 323
    :goto_b3
    const/4 v0, 0x2

    goto/16 :goto_f

    .line 311
    :cond_b6
    :try_start_b6
    sget-object v0, Lcom/anythink/china/common/a/a;->r:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/china/common/a/a;->t:Lcom/anythink/china/common/a/c;

    iget-object v2, v2, Lcom/anythink/china/common/a/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")  set temp file size -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/anythink/china/common/a/a;->p:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-wide v0, p0, Lcom/anythink/china/common/a/a;->p:J

    invoke-virtual {v8, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_df
    .catch Ljava/lang/Throwable; {:try_start_b6 .. :try_end_df} :catch_e0
    .catchall {:try_start_b6 .. :try_end_df} :catchall_150

    goto :goto_91

    .line 355
    :catch_e0
    move-exception v0

    move-object v1, v7

    move-object v2, v8

    .line 356
    :goto_e3
    :try_start_e3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 357
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/china/common/a/a;->u:Ljava/lang/String;
    :try_end_ec
    .catchall {:try_start_e3 .. :try_end_ec} :catchall_1a0

    .line 362
    if-eqz v2, :cond_f1

    .line 363
    :try_start_ee
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 365
    :cond_f1
    if-eqz v1, :cond_f6

    .line 366
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f6
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f6} :catch_18e

    :cond_f6
    :goto_f6
    move v0, v6

    .line 373
    goto/16 :goto_f

    .line 369
    :catch_f9
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b3

    .line 325
    :cond_fe
    :try_start_fe
    iget-boolean v0, p0, Lcom/anythink/china/common/a/a;->b:Z

    if-eqz v0, :cond_119

    .line 326
    iget-object v0, p0, Lcom/anythink/china/common/a/a;->t:Lcom/anythink/china/common/a/c;

    if-eqz v0, :cond_10b

    .line 327
    iget-object v0, p0, Lcom/anythink/china/common/a/a;->t:Lcom/anythink/china/common/a/c;

    invoke-virtual {v0}, Lcom/anythink/china/common/a/c;->f()V
    :try_end_10b
    .catch Ljava/lang/Throwable; {:try_start_fe .. :try_end_10b} :catch_e0
    .catchall {:try_start_fe .. :try_end_10b} :catchall_150

    .line 363
    :cond_10b
    :try_start_10b
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    .line 366
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_111
    .catch Ljava/io/IOException; {:try_start_10b .. :try_end_111} :catch_114

    .line 329
    :goto_111
    const/4 v0, 0x3

    goto/16 :goto_f

    .line 369
    :catch_114
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_111

    .line 332
    :cond_119
    const/4 v0, 0x0

    :try_start_11a
    invoke-virtual {v8, v12, v0, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 333
    iget-wide v2, p0, Lcom/anythink/china/common/a/a;->q:J

    int-to-long v0, v1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/anythink/china/common/a/a;->q:J

    .line 335
    iget-object v0, p0, Lcom/anythink/china/common/a/a;->t:Lcom/anythink/china/common/a/c;

    if-eqz v0, :cond_12d

    .line 336
    iget-object v0, p0, Lcom/anythink/china/common/a/a;->t:Lcom/anythink/china/common/a/c;

    iget-wide v2, p0, Lcom/anythink/china/common/a/a;->q:J

    iput-wide v2, v0, Lcom/anythink/china/common/a/c;->g:J

    .line 339
    :cond_12d
    const-wide/16 v0, 0x0

    invoke-virtual {v7, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 340
    iget-wide v0, p0, Lcom/anythink/china/common/a/a;->q:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 342
    iget-object v0, p0, Lcom/anythink/china/common/a/a;->s:Lcom/anythink/china/common/a/a$a;

    if-eqz v0, :cond_99

    .line 343
    iget-object v0, p0, Lcom/anythink/china/common/a/a;->s:Lcom/anythink/china/common/a/a$a;

    iget-object v1, p0, Lcom/anythink/china/common/a/a;->t:Lcom/anythink/china/common/a/c;

    iget-wide v2, p0, Lcom/anythink/china/common/a/a;->q:J

    iget-wide v4, p0, Lcom/anythink/china/common/a/a;->p:J

    invoke-interface/range {v0 .. v5}, Lcom/anythink/china/common/a/a$a;->b(Lcom/anythink/china/common/a/c;JJ)V
    :try_end_14e
    .catch Ljava/lang/Throwable; {:try_start_11a .. :try_end_14e} :catch_e0
    .catchall {:try_start_11a .. :try_end_14e} :catchall_150

    goto/16 :goto_99

    .line 361
    :catchall_150
    move-exception v0

    .line 362
    :goto_151
    if-eqz v8, :cond_156

    .line 363
    :try_start_153
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    .line 365
    :cond_156
    if-eqz v7, :cond_15b

    .line 366
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_15b
    .catch Ljava/io/IOException; {:try_start_153 .. :try_end_15b} :catch_194

    .line 370
    :cond_15b
    :goto_15b
    throw v0

    .line 348
    :cond_15c
    :try_start_15c
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 350
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_180

    .line 351
    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_180
    .catch Ljava/lang/Throwable; {:try_start_15c .. :try_end_180} :catch_e0
    .catchall {:try_start_15c .. :try_end_180} :catchall_150

    .line 363
    :cond_180
    :try_start_180
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    .line 366
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_186
    .catch Ljava/io/IOException; {:try_start_180 .. :try_end_186} :catch_189

    .line 354
    :goto_186
    const/4 v0, 0x1

    goto/16 :goto_f

    .line 369
    :catch_189
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_186

    :catch_18e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_f6

    :catch_194
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15b

    .line 361
    :catchall_199
    move-exception v0

    move-object v7, v1

    move-object v8, v1

    goto :goto_151

    :catchall_19d
    move-exception v0

    move-object v7, v1

    goto :goto_151

    :catchall_1a0
    move-exception v0

    move-object v7, v1

    move-object v8, v2

    goto :goto_151

    .line 355
    :catch_1a4
    move-exception v0

    move-object v2, v1

    goto/16 :goto_e3

    :catch_1a8
    move-exception v0

    move-object v2, v8

    goto/16 :goto_e3
.end method

.method static synthetic a(Lcom/anythink/china/common/a/a;)V
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 1377
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/china/common/a/a;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/anythink/china/common/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".log"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1378
    new-instance v5, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/china/common/a/a;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/anythink/china/common/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".temp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1379
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_50

    .line 1381
    :cond_49
    :try_start_49
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1382
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_4f} :catch_108

    .line 1424
    :cond_4f
    :goto_4f
    return-void

    .line 1392
    :cond_50
    :try_start_50
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_55} :catch_fb
    .catchall {:try_start_50 .. :try_end_55} :catchall_d5

    .line 1393
    :try_start_55
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5a} :catch_ff
    .catchall {:try_start_55 .. :try_end_5a} :catchall_ee

    .line 1394
    :try_start_5a
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5f} :catch_103
    .catchall {:try_start_5a .. :try_end_5f} :catchall_f2

    .line 1395
    :try_start_5f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 1397
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a3

    .line 1398
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/anythink/china/common/a/a;->m:J

    .line 1400
    iget-wide v6, p0, Lcom/anythink/china/common/a/a;->m:J

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-lez v0, :cond_b2

    .line 1401
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/anythink/china/common/a/a;->m:J

    .line 1405
    :goto_81
    sget-object v0, Lcom/anythink/china/common/a/a;->r:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "readLogFile: startPost -> "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/anythink/china/common/a/a;->m:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", downloadSize -> "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, p0, Lcom/anythink/china/common/a/a;->p:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_a3} :catch_b9
    .catchall {:try_start_5f .. :try_end_a3} :catchall_f5

    .line 1413
    :cond_a3
    :try_start_a3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1416
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 1419
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_ac} :catch_ad

    goto :goto_4f

    .line 1422
    :catch_ad
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4f

    .line 1403
    :cond_b2
    :try_start_b2
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/anythink/china/common/a/a;->p:J
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b8} :catch_b9
    .catchall {:try_start_b2 .. :try_end_b8} :catchall_f5

    goto :goto_81

    .line 1409
    :catch_b9
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    :goto_bc
    :try_start_bc
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_bf
    .catchall {:try_start_bc .. :try_end_bf} :catchall_f7

    .line 1412
    if-eqz v1, :cond_c4

    .line 1413
    :try_start_c1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1415
    :cond_c4
    if-eqz v2, :cond_c9

    .line 1416
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 1418
    :cond_c9
    if-eqz v3, :cond_4f

    .line 1419
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_ce} :catch_cf

    goto :goto_4f

    .line 1422
    :catch_cf
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4f

    .line 1411
    :catchall_d5
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    .line 1412
    :goto_d9
    if-eqz v1, :cond_de

    .line 1413
    :try_start_db
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1415
    :cond_de
    if-eqz v3, :cond_e3

    .line 1416
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 1418
    :cond_e3
    if-eqz v4, :cond_e8

    .line 1419
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_e8} :catch_e9

    .line 1423
    :cond_e8
    :goto_e8
    throw v0

    .line 1422
    :catch_e9
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e8

    .line 1411
    :catchall_ee
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_d9

    :catchall_f2
    move-exception v0

    move-object v1, v2

    goto :goto_d9

    :catchall_f5
    move-exception v0

    goto :goto_d9

    :catchall_f7
    move-exception v0

    move-object v4, v3

    move-object v3, v2

    goto :goto_d9

    .line 1409
    :catch_fb
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_bc

    :catch_ff
    move-exception v0

    move-object v1, v2

    move-object v3, v4

    goto :goto_bc

    :catch_103
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_bc

    .line 1385
    :catch_108
    move-exception v0

    goto/16 :goto_4f
.end method

.method static synthetic b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/c;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/anythink/china/common/a/a;->t:Lcom/anythink/china/common/a/c;

    return-object v0
.end method

.method static synthetic c(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/a$a;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/anythink/china/common/a/a;->s:Lcom/anythink/china/common/a/a$a;

    return-object v0
.end method

.method static synthetic d(Lcom/anythink/china/common/a/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/anythink/china/common/a/a;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/anythink/china/common/a/a;->r:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .registers 4

    .prologue
    .line 95
    new-instance v0, Lcom/anythink/china/common/a/a$1;

    invoke-direct {v0, p0}, Lcom/anythink/china/common/a/a$1;-><init>(Lcom/anythink/china/common/a/a;)V

    .line 277
    invoke-static {}, Lcom/anythink/china/common/a/a/a;->a()Lcom/anythink/china/common/a/a/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/anythink/china/common/a/a/a;->a(Lcom/anythink/china/common/a/a/b;I)V

    .line 282
    return-void
.end method

.method private h()V
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 377
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/china/common/a/a;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/anythink/china/common/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".log"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 378
    new-instance v5, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/china/common/a/a;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/anythink/china/common/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".temp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_50

    .line 381
    :cond_49
    :try_start_49
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 382
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_4f} :catch_108

    .line 424
    :cond_4f
    :goto_4f
    return-void

    .line 392
    :cond_50
    :try_start_50
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_55} :catch_fb
    .catchall {:try_start_50 .. :try_end_55} :catchall_d5

    .line 393
    :try_start_55
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5a} :catch_ff
    .catchall {:try_start_55 .. :try_end_5a} :catchall_ee

    .line 394
    :try_start_5a
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5f} :catch_103
    .catchall {:try_start_5a .. :try_end_5f} :catchall_f2

    .line 395
    :try_start_5f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 397
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a3

    .line 398
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/anythink/china/common/a/a;->m:J

    .line 400
    iget-wide v6, p0, Lcom/anythink/china/common/a/a;->m:J

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-lez v0, :cond_b2

    .line 401
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/anythink/china/common/a/a;->m:J

    .line 405
    :goto_81
    sget-object v0, Lcom/anythink/china/common/a/a;->r:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "readLogFile: startPost -> "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/anythink/china/common/a/a;->m:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", downloadSize -> "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, p0, Lcom/anythink/china/common/a/a;->p:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_a3} :catch_b9
    .catchall {:try_start_5f .. :try_end_a3} :catchall_f5

    .line 413
    :cond_a3
    :try_start_a3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 416
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 419
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_ac} :catch_ad

    goto :goto_4f

    .line 422
    :catch_ad
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4f

    .line 403
    :cond_b2
    :try_start_b2
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/anythink/china/common/a/a;->p:J
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b8} :catch_b9
    .catchall {:try_start_b2 .. :try_end_b8} :catchall_f5

    goto :goto_81

    .line 409
    :catch_b9
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    :goto_bc
    :try_start_bc
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_bf
    .catchall {:try_start_bc .. :try_end_bf} :catchall_f7

    .line 412
    if-eqz v1, :cond_c4

    .line 413
    :try_start_c1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 415
    :cond_c4
    if-eqz v2, :cond_c9

    .line 416
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 418
    :cond_c9
    if-eqz v3, :cond_4f

    .line 419
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_ce} :catch_cf

    goto :goto_4f

    .line 422
    :catch_cf
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4f

    .line 411
    :catchall_d5
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    .line 412
    :goto_d9
    if-eqz v1, :cond_de

    .line 413
    :try_start_db
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 415
    :cond_de
    if-eqz v3, :cond_e3

    .line 416
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 418
    :cond_e3
    if-eqz v4, :cond_e8

    .line 419
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_e8} :catch_e9

    .line 423
    :cond_e8
    :goto_e8
    throw v0

    .line 422
    :catch_e9
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e8

    .line 411
    :catchall_ee
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_d9

    :catchall_f2
    move-exception v0

    move-object v1, v2

    goto :goto_d9

    :catchall_f5
    move-exception v0

    goto :goto_d9

    :catchall_f7
    move-exception v0

    move-object v4, v3

    move-object v3, v2

    goto :goto_d9

    .line 409
    :catch_fb
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_bc

    :catch_ff
    move-exception v0

    move-object v1, v2

    move-object v3, v4

    goto :goto_bc

    :catch_103
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_bc

    .line 385
    :catch_108
    move-exception v0

    goto/16 :goto_4f
.end method

.method private static i()I
    .registers 1

    .prologue
    .line 433
    const v0, 0xea60

    return v0
.end method

.method private static j()I
    .registers 1

    .prologue
    .line 437
    const/16 v0, 0x4e20

    return v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/china/common/a/a;->b:Z

    .line 80
    return-void
.end method

.method protected final a(Lcom/anythink/china/api/ApkError;)V
    .registers 5

    .prologue
    .line 447
    sget-object v0, Lcom/anythink/china/common/a/a;->r:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/china/common/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-virtual {p0, p1}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/api/ApkError;)V

    .line 449
    return-void
.end method

.method public final a(Lcom/anythink/china/common/a/a$a;)V
    .registers 5

    .prologue
    .line 72
    iput-object p1, p0, Lcom/anythink/china/common/a/a;->s:Lcom/anythink/china/common/a/a$a;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/china/common/a/a;->b:Z

    .line 1095
    new-instance v0, Lcom/anythink/china/common/a/a$1;

    invoke-direct {v0, p0}, Lcom/anythink/china/common/a/a$1;-><init>(Lcom/anythink/china/common/a/a;)V

    .line 1277
    invoke-static {}, Lcom/anythink/china/common/a/a/a;->a()Lcom/anythink/china/common/a/a/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/anythink/china/common/a/a/a;->a(Lcom/anythink/china/common/a/a/b;I)V

    .line 75
    return-void
.end method

.method protected final a(Lorg/apache/http/conn/ConnectTimeoutException;)V
    .registers 4

    .prologue
    .line 443
    const-string v0, "10000"

    invoke-virtual {p1}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/china/api/ApkErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/api/ApkError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/api/ApkError;)V

    .line 444
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/china/common/a/a;->c:Z

    .line 84
    return-void
.end method

.method protected final b(Lcom/anythink/china/api/ApkError;)V
    .registers 5

    .prologue
    .line 467
    sget-object v0, Lcom/anythink/china/common/a/a;->r:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download failed --> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/china/common/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/china/api/ApkError;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/anythink/china/common/a/a;->s:Lcom/anythink/china/common/a/a$a;

    if-eqz v0, :cond_39

    .line 470
    iget-object v0, p0, Lcom/anythink/china/common/a/a;->s:Lcom/anythink/china/common/a/a$a;

    iget-object v1, p0, Lcom/anythink/china/common/a/a;->t:Lcom/anythink/china/common/a/c;

    invoke-virtual {p1}, Lcom/anythink/china/api/ApkError;->printStackTrace()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/anythink/china/common/a/a$a;->a(Lcom/anythink/china/common/a/c;Ljava/lang/String;)V

    .line 472
    :cond_39
    return-void
.end method

.method protected c()Z
    .registers 2

    .prologue
    .line 429
    const/4 v0, 0x1

    return v0
.end method

.method protected final d()V
    .registers 8

    .prologue
    .line 452
    sget-object v0, Lcom/anythink/china/common/a/a;->r:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/china/common/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/anythink/china/common/a/a;->s:Lcom/anythink/china/common/a/a$a;

    if-eqz v0, :cond_27

    .line 454
    iget-object v0, p0, Lcom/anythink/china/common/a/a;->s:Lcom/anythink/china/common/a/a$a;

    iget-object v1, p0, Lcom/anythink/china/common/a/a;->t:Lcom/anythink/china/common/a/c;

    iget-wide v2, p0, Lcom/anythink/china/common/a/a;->q:J

    iget-wide v4, p0, Lcom/anythink/china/common/a/a;->p:J

    iget v6, p0, Lcom/anythink/china/common/a/a;->l:I

    invoke-interface/range {v0 .. v6}, Lcom/anythink/china/common/a/a$a;->a(Lcom/anythink/china/common/a/c;JJI)V

    .line 456
    :cond_27
    return-void
.end method

.method protected final e()V
    .registers 5

    .prologue
    .line 459
    sget-object v0, Lcom/anythink/china/common/a/a;->r:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/china/common/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/anythink/china/common/a/a;->s:Lcom/anythink/china/common/a/a$a;

    if-eqz v0, :cond_25

    .line 462
    iget-object v0, p0, Lcom/anythink/china/common/a/a;->s:Lcom/anythink/china/common/a/a$a;

    iget-object v1, p0, Lcom/anythink/china/common/a/a;->t:Lcom/anythink/china/common/a/c;

    iget-object v2, p0, Lcom/anythink/china/common/a/a;->t:Lcom/anythink/china/common/a/c;

    iget-wide v2, v2, Lcom/anythink/china/common/a/c;->i:J

    invoke-interface {v0, v1, v2, v3}, Lcom/anythink/china/common/a/a$a;->a(Lcom/anythink/china/common/a/c;J)V

    .line 464
    :cond_25
    return-void
.end method
