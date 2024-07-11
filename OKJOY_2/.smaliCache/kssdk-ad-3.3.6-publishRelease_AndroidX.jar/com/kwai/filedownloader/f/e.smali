.class public Lcom/kwai/filedownloader/f/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/f/e$a;
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
    .registers 26

    move-object/from16 v1, p0

    const-string v2, "broadcast.completed"

    const-string v3, "file.non-pre-allocation"

    const-string v4, "download.max-network-thread-count"

    const-string v5, "download.min-progress-time"

    const-string v6, "download.min-progress-step"

    const-class v7, Lcom/kwai/filedownloader/f/e;

    const-string v8, "http.lenient"

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/kwai/filedownloader/f/c;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_213

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const/4 v12, 0x0

    :try_start_23
    invoke-static {}, Lcom/kwai/filedownloader/f/c;->a()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    const-string v14, "filedownloader.properties"

    invoke-virtual {v13, v14}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v13
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_31} :catch_79
    .catchall {:try_start_23 .. :try_end_31} :catchall_74

    if-eqz v13, :cond_5d

    :try_start_33
    invoke-virtual {v0, v13}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v0, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3a} :catch_5b
    .catchall {:try_start_33 .. :try_end_3a} :catchall_204

    :try_start_3a
    invoke-virtual {v0, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3e} :catch_59
    .catchall {:try_start_3a .. :try_end_3e} :catchall_204

    :try_start_3e
    invoke-virtual {v0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_42} :catch_57
    .catchall {:try_start_3e .. :try_end_42} :catchall_204

    :try_start_42
    invoke-virtual {v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_46} :catch_55
    .catchall {:try_start_42 .. :try_end_46} :catchall_204

    :try_start_46
    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4a} :catch_53
    .catchall {:try_start_46 .. :try_end_4a} :catchall_204

    :try_start_4a
    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4e} :catch_51
    .catchall {:try_start_4a .. :try_end_4e} :catchall_204

    move-object v11, v14

    move-object v14, v0

    goto :goto_66

    :catch_51
    move-exception v0

    goto :goto_83

    :catch_53
    move-exception v0

    goto :goto_81

    :catch_55
    move-exception v0

    goto :goto_7f

    :catch_57
    move-exception v0

    goto :goto_7d

    :catch_59
    move-exception v0

    goto :goto_7c

    :catch_5b
    move-exception v0

    goto :goto_7b

    :cond_5d
    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_66
    if-eqz v13, :cond_71

    :try_start_68
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_71

    :catch_6c
    move-exception v0

    move-object v13, v0

    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    :cond_71
    :goto_71
    move-object/from16 v0, v18

    goto :goto_a5

    :catchall_74
    move-exception v0

    move-object v2, v0

    const/4 v11, 0x0

    goto/16 :goto_207

    :catch_79
    move-exception v0

    const/4 v13, 0x0

    :goto_7b
    const/4 v14, 0x0

    :goto_7c
    const/4 v15, 0x0

    :goto_7d
    const/16 v16, 0x0

    :goto_7f
    const/16 v17, 0x0

    :goto_81
    const/16 v18, 0x0

    :goto_83
    :try_start_83
    instance-of v11, v0, Ljava/io/FileNotFoundException;

    if-eqz v11, :cond_93

    sget-boolean v0, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v0, :cond_96

    const-string v0, "not found filedownloader.properties"

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v7, v0, v11}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_96

    :cond_93
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_96
    .catchall {:try_start_83 .. :try_end_96} :catchall_204

    :cond_96
    :goto_96
    if-eqz v13, :cond_a1

    :try_start_98
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_9c

    goto :goto_a1

    :catch_9c
    move-exception v0

    move-object v11, v0

    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    :cond_a1
    :goto_a1
    move-object v11, v14

    move-object/from16 v0, v18

    const/4 v14, 0x0

    :goto_a5
    const-string v13, "the value of \'%s\' must be \'%s\' or \'%s\'"

    const/16 v18, 0x2

    const/16 v19, 0x1

    const-string v12, "false"

    move-object/from16 v20, v7

    const-string v7, "true"

    if-eqz v11, :cond_de

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_d4

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c0

    goto :goto_d4

    :cond_c0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    aput-object v7, v2, v19

    aput-object v12, v2, v18

    invoke-static {v13, v2}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d4
    :goto_d4
    move-object/from16 v21, v4

    const/4 v4, 0x0

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, v1, Lcom/kwai/filedownloader/f/e;->c:Z

    goto :goto_e3

    :cond_de
    move-object/from16 v21, v4

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/kwai/filedownloader/f/e;->c:Z

    :goto_e3
    invoke-virtual {v7, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v22, "process.non-separate"

    if-nez v11, :cond_105

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f2

    goto :goto_105

    :cond_f2
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v22, v2, v4

    aput-object v7, v2, v19

    aput-object v12, v2, v18

    invoke-static {v13, v2}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_105
    :goto_105
    invoke-virtual {v7, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/kwai/filedownloader/f/e;->d:Z

    if-eqz v15, :cond_11b

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v15, 0x0

    invoke-static {v15, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_11d

    :cond_11b
    const/high16 v11, 0x10000

    :goto_11d
    iput v11, v1, Lcom/kwai/filedownloader/f/e;->a:I

    if-eqz v16, :cond_136

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    move-object v15, v5

    move-object/from16 v16, v6

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-wide/from16 v23, v9

    move-object v10, v8

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    goto :goto_13e

    :cond_136
    move-object v15, v5

    move-object/from16 v16, v6

    move-wide/from16 v23, v9

    move-object v10, v8

    const-wide/16 v5, 0x7d0

    :goto_13e
    iput-wide v5, v1, Lcom/kwai/filedownloader/f/e;->b:J

    if-eqz v17, :cond_152

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/kwai/filedownloader/f/e;->a(I)I

    move-result v5

    iput v5, v1, Lcom/kwai/filedownloader/f/e;->e:I

    const/4 v5, 0x3

    goto :goto_155

    :cond_152
    const/4 v5, 0x3

    iput v5, v1, Lcom/kwai/filedownloader/f/e;->e:I

    :goto_155
    if-eqz v0, :cond_17f

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_177

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_164

    goto :goto_177

    :cond_164
    new-instance v0, Ljava/lang/IllegalStateException;

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v2, v5

    aput-object v7, v2, v19

    aput-object v12, v2, v18

    invoke-static {v13, v2}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_177
    :goto_177
    const/4 v5, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/kwai/filedownloader/f/e;->f:Z

    goto :goto_182

    :cond_17f
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/kwai/filedownloader/f/e;->f:Z

    :goto_182
    if-eqz v14, :cond_1ab

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a4

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_191

    goto :goto_1a4

    :cond_191
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v5

    aput-object v7, v3, v19

    aput-object v12, v3, v18

    invoke-static {v13, v3}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a4
    :goto_1a4
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/kwai/filedownloader/f/e;->g:Z

    goto :goto_1ad

    :cond_1ab
    iput-boolean v5, v1, Lcom/kwai/filedownloader/f/e;->g:Z

    :goto_1ad
    sget-boolean v0, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v0, :cond_203

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v23

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v5

    aput-object v10, v0, v19

    iget-boolean v2, v1, Lcom/kwai/filedownloader/f/e;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v18

    const/4 v2, 0x3

    aput-object v22, v0, v2

    const/4 v2, 0x4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x5

    aput-object v16, v0, v2

    const/4 v2, 0x6

    iget v3, v1, Lcom/kwai/filedownloader/f/e;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x7

    aput-object v15, v0, v2

    const/16 v2, 0x8

    iget-wide v3, v1, Lcom/kwai/filedownloader/f/e;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x9

    aput-object v21, v0, v2

    const/16 v2, 0xa

    iget v3, v1, Lcom/kwai/filedownloader/f/e;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "init properties %d\n load properties: %s=%B; %s=%B; %s=%d; %s=%d; %s=%d"

    move-object/from16 v3, v20

    invoke-static {v3, v2, v0}, Lcom/kwai/filedownloader/f/d;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_203
    return-void

    :catchall_204
    move-exception v0

    move-object v2, v0

    move-object v11, v13

    :goto_207
    if-eqz v11, :cond_212

    :try_start_209
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_20c
    .catch Ljava/io/IOException; {:try_start_209 .. :try_end_20c} :catch_20d

    goto :goto_212

    :catch_20d
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_212
    :goto_212
    throw v2

    :cond_213
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Please invoke the \'FileDownloader#setup\' before using FileDownloader. If you want to register some components on FileDownloader please invoke the \'FileDownloader#setupOnApplicationOnCreate\' on the \'Application#onCreate\' first."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Lcom/kwai/filedownloader/f/e$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/kwai/filedownloader/f/e;-><init>()V

    return-void
.end method

.method public static a(I)I
    .registers 9

    const-class v0, Lcom/kwai/filedownloader/f/e;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0xc

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-le p0, v6, :cond_24

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    aput-object v7, v3, v4

    aput-object v7, v3, v1

    const-string p0, "require the count of network thread  is %d, what is more than the max valid count(%d), so adjust to %d auto"

    invoke-static {v0, p0, v3}, Lcom/kwai/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6

    :cond_24
    if-ge p0, v4, :cond_38

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    aput-object v5, v3, v4

    aput-object v5, v3, v1

    const-string p0, "require the count of network thread  is %d, what is less than the min valid count(%d), so adjust to %d auto"

    invoke-static {v0, p0, v3}, Lcom/kwai/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :cond_38
    return p0
.end method

.method public static a()Lcom/kwai/filedownloader/f/e;
    .registers 1

    invoke-static {}, Lcom/kwai/filedownloader/f/e$a;->a()Lcom/kwai/filedownloader/f/e;

    move-result-object v0

    return-object v0
.end method
