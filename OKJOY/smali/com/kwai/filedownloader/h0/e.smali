.class public Lcom/kwai/filedownloader/h0/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/h0/e$b;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:J

.field public final c:Z

.field public final d:Z

.field public final e:I

.field public final f:Z

.field public final g:Z


# direct methods
.method private constructor <init>()V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/kwai/filedownloader/h0/c;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_237

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const/4 v2, 0x0

    :try_start_1a
    invoke-static {}, Lcom/kwai/filedownloader/h0/c;->a()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v12, "filedownloader.properties"

    invoke-virtual {v8, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_27} :catch_167
    .catchall {:try_start_1a .. :try_end_27} :catchall_27d

    move-result-object v8

    if-eqz v8, :cond_281

    :try_start_2a
    invoke-virtual {v0, v8}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v2, "http.lenient"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_32} :catch_23f
    .catchall {:try_start_2a .. :try_end_32} :catchall_18c

    move-result-object v9

    :try_start_33
    const-string v2, "process.non-separate"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_38} :catch_248
    .catchall {:try_start_33 .. :try_end_38} :catchall_18c

    move-result-object v7

    :try_start_39
    const-string v2, "download.min-progress-step"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3e} :catch_251
    .catchall {:try_start_39 .. :try_end_3e} :catchall_18c

    move-result-object v6

    :try_start_3f
    const-string v2, "download.min-progress-time"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_44} :catch_25a
    .catchall {:try_start_3f .. :try_end_44} :catchall_18c

    move-result-object v5

    :try_start_45
    const-string v2, "download.max-network-thread-count"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4a} :catch_263
    .catchall {:try_start_45 .. :try_end_4a} :catchall_18c

    move-result-object v4

    :try_start_4b
    const-string v2, "file.non-pre-allocation"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_50} :catch_26c
    .catchall {:try_start_4b .. :try_end_50} :catchall_18c

    move-result-object v2

    :try_start_51
    const-string v3, "broadcast.completed"

    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_56} :catch_275
    .catchall {:try_start_51 .. :try_end_56} :catchall_18c

    move-result-object v1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    :goto_5c
    if-eqz v8, :cond_61

    :try_start_5e
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_161

    :cond_61
    :goto_61
    if-eqz v7, :cond_1b2

    const-string v0, "true"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    const-string v0, "false"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_194

    :cond_73
    const-string v0, "true"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwai/filedownloader/h0/e;->c:Z

    :goto_7b
    if-eqz v6, :cond_1d5

    const-string v0, "true"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d

    const-string v0, "false"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b7

    :cond_8d
    const-string v0, "true"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwai/filedownloader/h0/e;->d:Z

    :goto_95
    if-eqz v5, :cond_1da

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v5, 0x0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/kwai/filedownloader/h0/e;->a:I

    :goto_a6
    if-eqz v4, :cond_1e0

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/kwai/filedownloader/h0/e;->b:J

    :goto_b8
    if-eqz v3, :cond_1e6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/kwai/filedownloader/h0/e;->a(I)I

    move-result v0

    iput v0, p0, Lcom/kwai/filedownloader/h0/e;->e:I

    :goto_c8
    if-eqz v2, :cond_209

    const-string v0, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_da

    const-string v0, "false"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1eb

    :cond_da
    const-string v0, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwai/filedownloader/h0/e;->f:Z

    :goto_e2
    if-eqz v1, :cond_22c

    const-string v0, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f4

    const-string v0, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20e

    :cond_f4
    const-string v0, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwai/filedownloader/h0/e;->g:Z

    :goto_fc
    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v0, :cond_160

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "http.lenient"

    aput-object v2, v0, v1

    iget-boolean v1, p0, Lcom/kwai/filedownloader/h0/e;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "process.non-separate"

    aput-object v2, v0, v1

    iget-boolean v1, p0, Lcom/kwai/filedownloader/h0/e;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v1, 0x5

    const-string v2, "download.min-progress-step"

    aput-object v2, v0, v1

    iget v1, p0, Lcom/kwai/filedownloader/h0/e;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v1, 0x7

    const-string v2, "download.min-progress-time"

    aput-object v2, v0, v1

    iget-wide v2, p0, Lcom/kwai/filedownloader/h0/e;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v1, 0x9

    const-string v2, "download.max-network-thread-count"

    aput-object v2, v0, v1

    iget v1, p0, Lcom/kwai/filedownloader/h0/e;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-class v1, Lcom/kwai/filedownloader/h0/e;

    const-string v2, "init properties %d\n load properties: %s=%B; %s=%B; %s=%d; %s=%d; %s=%d"

    invoke-static {v1, v2, v0}, Lcom/kwai/filedownloader/h0/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_160
    return-void

    :catch_161
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_61

    :catch_167
    move-exception v0

    move-object v8, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    :goto_16f
    :try_start_16f
    instance-of v9, v0, Ljava/io/FileNotFoundException;

    if-eqz v9, :cond_188

    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v0, :cond_181

    const-class v0, Lcom/kwai/filedownloader/h0/e;
    :try_end_179
    .catchall {:try_start_16f .. :try_end_179} :catchall_18c

    const-string v9, "not found filedownloader.properties"

    const/4 v12, 0x0

    :try_start_17c
    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v0, v9, v12}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_181
    .catchall {:try_start_17c .. :try_end_181} :catchall_18c

    :cond_181
    :goto_181
    if-eqz v8, :cond_61

    :try_start_183
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_186
    .catch Ljava/io/IOException; {:try_start_183 .. :try_end_186} :catch_161

    goto/16 :goto_61

    :cond_188
    :try_start_188
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_18b
    .catchall {:try_start_188 .. :try_end_18b} :catchall_18c

    goto :goto_181

    :catchall_18c
    move-exception v0

    move-object v1, v8

    :goto_18e
    if-eqz v1, :cond_193

    :try_start_190
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_193
    .catch Ljava/io/IOException; {:try_start_190 .. :try_end_193} :catch_231

    :cond_193
    :goto_193
    throw v0

    :cond_194
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "http.lenient"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "true"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "false"

    aput-object v3, v1, v2

    const-string v2, "the value of \'%s\' must be \'%s\' or \'%s\'"

    invoke-static {v2, v1}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwai/filedownloader/h0/e;->c:Z

    goto/16 :goto_7b

    :cond_1b7
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "process.non-separate"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "true"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "false"

    aput-object v3, v1, v2

    const-string v2, "the value of \'%s\' must be \'%s\' or \'%s\'"

    invoke-static {v2, v1}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwai/filedownloader/h0/e;->d:Z

    goto/16 :goto_95

    :cond_1da
    const/high16 v0, 0x10000

    iput v0, p0, Lcom/kwai/filedownloader/h0/e;->a:I

    goto/16 :goto_a6

    :cond_1e0
    const-wide/16 v4, 0x7d0

    iput-wide v4, p0, Lcom/kwai/filedownloader/h0/e;->b:J

    goto/16 :goto_b8

    :cond_1e6
    const/4 v0, 0x3

    iput v0, p0, Lcom/kwai/filedownloader/h0/e;->e:I

    goto/16 :goto_c8

    :cond_1eb
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "file.non-pre-allocation"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "true"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "false"

    aput-object v3, v1, v2

    const-string v2, "the value of \'%s\' must be \'%s\' or \'%s\'"

    invoke-static {v2, v1}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwai/filedownloader/h0/e;->f:Z

    goto/16 :goto_e2

    :cond_20e
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "broadcast.completed"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "true"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "false"

    aput-object v3, v1, v2

    const-string v2, "the value of \'%s\' must be \'%s\' or \'%s\'"

    invoke-static {v2, v1}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwai/filedownloader/h0/e;->g:Z

    goto/16 :goto_fc

    :catch_231
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_193

    :cond_237
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please invoke the \'FileDownloader#setup\' before using FileDownloader. If you want to register some components on FileDownloader please invoke the \'FileDownloader#setupOnApplicationOnCreate\' on the \'Application#onCreate\' first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_23f
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    goto/16 :goto_16f

    :catch_248
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    goto/16 :goto_16f

    :catch_251
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    goto/16 :goto_16f

    :catch_25a
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    goto/16 :goto_16f

    :catch_263
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    goto/16 :goto_16f

    :catch_26c
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    goto/16 :goto_16f

    :catch_275
    move-exception v0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    goto/16 :goto_16f

    :catchall_27d
    move-exception v0

    move-object v1, v2

    goto/16 :goto_18e

    :cond_281
    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    goto/16 :goto_5c
.end method

.method synthetic constructor <init>(Lcom/kwai/filedownloader/h0/e$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/kwai/filedownloader/h0/e;-><init>()V

    return-void
.end method

.method public static a(I)I
    .registers 8

    const/4 v4, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-le p0, v0, :cond_25

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v2, v3, v1

    aput-object v2, v3, v6

    const-class v1, Lcom/kwai/filedownloader/h0/e;

    const-string v2, "require the count of network thread  is %d, what is more than the max valid count(%d), so adjust to %d auto"

    invoke-static {v1, v2, v3}, Lcom/kwai/filedownloader/h0/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move p0, v0

    :cond_24
    :goto_24
    return p0

    :cond_25
    if-ge p0, v1, :cond_24

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v5

    aput-object v3, v0, v1

    aput-object v3, v0, v6

    const-class v2, Lcom/kwai/filedownloader/h0/e;

    const-string v3, "require the count of network thread  is %d, what is less than the min valid count(%d), so adjust to %d auto"

    invoke-static {v2, v3, v0}, Lcom/kwai/filedownloader/h0/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move p0, v1

    goto :goto_24
.end method

.method public static a()Lcom/kwai/filedownloader/h0/e;
    .registers 1

    invoke-static {}, Lcom/kwai/filedownloader/h0/e$b;->a()Lcom/kwai/filedownloader/h0/e;

    move-result-object v0

    return-object v0
.end method
