.class public final Lcom/kwad/sdk/crash/c/c;
.super Lcom/kwad/sdk/crash/c/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/crash/c/c$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/crash/c/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwad/sdk/crash/c/c$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/crash/c/c;-><init>()V

    return-void
.end method

.method public static d()Lcom/kwad/sdk/crash/c/c;
    .registers 1

    invoke-static {}, Lcom/kwad/sdk/crash/c/c$a;->a()Lcom/kwad/sdk/crash/c/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/io/File;Lcom/kwad/sdk/crash/e;Lcom/kwad/sdk/crash/report/c;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/kwad/sdk/crash/c/b;->a(Ljava/io/File;Lcom/kwad/sdk/crash/e;Lcom/kwad/sdk/crash/report/c;)V

    invoke-static {}, Lcom/kwad/sdk/crash/d;->a()Lcom/kwad/sdk/crash/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kwad/sdk/crash/d;->i()Z

    move-result p1

    if-eqz p1, :cond_17

    new-instance p1, Ljava/io/File;

    const-string p2, "sdcard/kwad_ex/java_crash/dump"

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/kwad/sdk/crash/c/c;->a(Ljava/io/File;)V

    :cond_17
    return-void
.end method

.method public a(Ljava/lang/Throwable;Lcom/kwad/sdk/crash/model/message/ExceptionMessage;Landroid/content/Context;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/kwad/sdk/crash/c/c;->a(Ljava/lang/Throwable;Lcom/kwad/sdk/crash/model/message/ExceptionMessage;Landroid/content/Context;Z)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;Lcom/kwad/sdk/crash/model/message/ExceptionMessage;Landroid/content/Context;Z)V
    .registers 26

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "java_crash_mkdir_fail"

    const-string v4, "uploader.uploadEvent(message);"

    const-string v5, "java_crash_dump_error"

    const-string v6, "------  Java Crash Happened Begin ------\n"

    const-string v7, "ExceptionCollector"

    iget-object v0, v1, Lcom/kwad/sdk/crash/c/c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iget-object v8, v1, Lcom/kwad/sdk/crash/c/c;->f:Ljava/io/File;

    iget-object v9, v1, Lcom/kwad/sdk/crash/c/c;->g:Ljava/io/File;

    iget-object v10, v1, Lcom/kwad/sdk/crash/c/c;->h:Ljava/io/File;

    iget-object v11, v1, Lcom/kwad/sdk/crash/c/c;->i:Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/kwad/sdk/crash/c/c;->a()Lcom/kwad/sdk/crash/report/c;

    move-result-object v12

    :try_start_20
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mCrashDetail:Ljava/lang/String;

    iget-object v13, v1, Lcom/kwad/sdk/crash/c/c;->e:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v13
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_1ce

    if-nez v13, :cond_66

    :try_start_2e
    iget-object v13, v1, Lcom/kwad/sdk/crash/c/c;->e:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    move-result v13

    if-nez v13, :cond_66

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v2, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "create "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/kwad/sdk/crash/c/c;->d()Lcom/kwad/sdk/crash/c/c;

    move-result-object v14

    iget-object v14, v14, Lcom/kwad/sdk/crash/c/c;->e:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " failed!\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mErrorMessage:Ljava/lang/String;
    :try_end_61
    .catchall {:try_start_2e .. :try_end_61} :catchall_63

    const/4 v13, 0x0

    goto :goto_67

    :catchall_63
    move-exception v0

    goto/16 :goto_1d5

    :cond_66
    const/4 v13, 0x1

    :goto_67
    const-string v14, "-"

    if-eqz v8, :cond_73

    if-eqz v0, :cond_6e

    goto :goto_73

    :cond_6e
    move-object/from16 v18, v3

    move-object/from16 v17, v5

    goto :goto_9e

    :cond_73
    :goto_73
    :try_start_73
    new-instance v15, Ljava/io/File;
    :try_end_75
    .catchall {:try_start_73 .. :try_end_75} :catchall_1c6

    move-object/from16 v16, v8

    :try_start_77
    iget-object v8, v1, Lcom/kwad/sdk/crash/c/c;->e:Ljava/io/File;
    :try_end_79
    .catchall {:try_start_77 .. :try_end_79} :catchall_1be

    move-object/from16 v17, v5

    :try_start_7b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_80
    .catchall {:try_start_7b .. :try_end_80} :catchall_1b6

    move-object/from16 v18, v3

    :try_start_82
    sget-object v3, Lcom/kwad/sdk/crash/c/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".dump"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v15, v8, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_9d
    .catchall {:try_start_82 .. :try_end_9d} :catchall_1ac

    move-object v8, v15

    :goto_9e
    if-eqz v9, :cond_a2

    if-eqz v0, :cond_c9

    :cond_a2
    :try_start_a2
    new-instance v3, Ljava/io/File;

    iget-object v5, v1, Lcom/kwad/sdk/crash/c/c;->e:Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_ab
    .catchall {:try_start_a2 .. :try_end_ab} :catchall_1a2

    move-object/from16 v19, v9

    :try_start_ad
    sget-object v9, Lcom/kwad/sdk/crash/c/c;->a:Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, ".log"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v5, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_c8
    .catchall {:try_start_ad .. :try_end_c8} :catchall_198

    move-object v9, v3

    :cond_c9
    if-eqz v10, :cond_cd

    if-eqz v0, :cond_f4

    :cond_cd
    :try_start_cd
    new-instance v3, Ljava/io/File;

    iget-object v5, v1, Lcom/kwad/sdk/crash/c/c;->e:Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_d6
    .catchall {:try_start_cd .. :try_end_d6} :catchall_196

    move-object/from16 v20, v10

    :try_start_d8
    sget-object v10, Lcom/kwad/sdk/crash/c/c;->a:Ljava/lang/String;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ".jtrace"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_f3
    .catchall {:try_start_d8 .. :try_end_f3} :catchall_18e

    move-object v10, v3

    :cond_f4
    :try_start_f4
    invoke-static/range {p1 .. p3}, Lcom/kwad/sdk/crash/utils/f;->a(Ljava/lang/Throwable;Lcom/kwad/sdk/crash/model/message/ExceptionMessage;Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Lcom/kwad/sdk/crash/c/c;->c()I

    move-result v0

    invoke-static {v2, v0}, Lcom/kwad/sdk/crash/utils/f;->a(Lcom/kwad/sdk/crash/model/message/ExceptionMessage;I)V

    iget-object v0, v1, Lcom/kwad/sdk/crash/c/c;->c:Lcom/kwad/sdk/crash/e;

    if-eqz v0, :cond_10b

    iget-object v0, v1, Lcom/kwad/sdk/crash/c/c;->c:Lcom/kwad/sdk/crash/e;

    invoke-virtual/range {p0 .. p0}, Lcom/kwad/sdk/crash/c/c;->c()I

    move-result v3

    invoke-interface {v0, v3, v2}, Lcom/kwad/sdk/crash/e;->a(ILcom/kwad/sdk/crash/model/message/ExceptionMessage;)V
    :try_end_10b
    .catchall {:try_start_f4 .. :try_end_10b} :catchall_18c

    :cond_10b
    :try_start_10b
    invoke-virtual/range {p2 .. p2}, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v13, :cond_158

    invoke-static {v8, v0}, Lcom/kwad/sdk/crash/utils/f;->a(Ljava/io/File;Ljava/lang/CharSequence;)V

    invoke-static {v10}, Lcom/kwad/sdk/crash/utils/f;->c(Ljava/io/File;)V

    invoke-static {v9}, Lcom/kwad/sdk/crash/utils/f;->a(Ljava/io/File;)V

    invoke-static {}, Lcom/kwad/sdk/crash/d;->a()Lcom/kwad/sdk/crash/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/crash/d;->i()Z

    move-result v0

    if-eqz v0, :cond_12d

    iget-object v0, v1, Lcom/kwad/sdk/crash/c/c;->e:Ljava/io/File;

    invoke-virtual {v1, v0}, Lcom/kwad/sdk/crash/c/c;->b(Ljava/io/File;)V

    :cond_12d
    if-eqz v12, :cond_153

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v7, v0}, Lcom/kwad/sdk/crash/report/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_150

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/io/File;

    const/4 v2, 0x0

    aput-object v8, v0, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/kwad/sdk/crash/c/c;->a([Ljava/io/File;Ljava/util/concurrent/CountDownLatch;)V

    goto :goto_153

    :cond_150
    invoke-virtual/range {p0 .. p0}, Lcom/kwad/sdk/crash/c/c;->b()V

    :cond_153
    :goto_153
    invoke-static {v11}, Lcom/kwad/sdk/crash/utils/f;->d(Ljava/io/File;)V

    goto/16 :goto_260

    :cond_158
    if-eqz v12, :cond_260

    invoke-static {v7, v4}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v2}, Lcom/kwad/sdk/crash/report/c;->a(Lcom/kwad/sdk/crash/model/message/ExceptionMessage;)V

    move-object/from16 v3, v18

    invoke-interface {v12, v3, v0}, Lcom/kwad/sdk/crash/report/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v7, v0}, Lcom/kwad/sdk/crash/report/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_179
    .catchall {:try_start_10b .. :try_end_179} :catchall_17b

    goto/16 :goto_260

    :catchall_17b
    move-exception v0

    if-eqz v12, :cond_260

    :try_start_17e
    invoke-static {v0}, Lcom/kwad/sdk/crash/utils/f;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, v17

    :goto_184
    invoke-interface {v12, v5, v0}, Lcom/kwad/sdk/crash/report/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_187
    .catch Ljava/lang/Exception; {:try_start_17e .. :try_end_187} :catch_189

    goto/16 :goto_260

    :catch_189
    move-exception v0

    goto/16 :goto_260

    :catchall_18c
    move-exception v0

    goto :goto_1a7

    :catchall_18e
    move-exception v0

    move-object/from16 v5, v17

    move-object/from16 v3, v18

    move-object/from16 v10, v20

    goto :goto_1d6

    :catchall_196
    move-exception v0

    goto :goto_1a5

    :catchall_198
    move-exception v0

    move-object/from16 v20, v10

    move-object/from16 v5, v17

    move-object/from16 v3, v18

    move-object/from16 v9, v19

    goto :goto_1d6

    :catchall_1a2
    move-exception v0

    move-object/from16 v19, v9

    :goto_1a5
    move-object/from16 v20, v10

    :goto_1a7
    move-object/from16 v5, v17

    move-object/from16 v3, v18

    goto :goto_1d6

    :catchall_1ac
    move-exception v0

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move-object/from16 v5, v17

    move-object/from16 v3, v18

    goto :goto_1c3

    :catchall_1b6
    move-exception v0

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move-object/from16 v5, v17

    goto :goto_1c3

    :catchall_1be
    move-exception v0

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    :goto_1c3
    move-object/from16 v8, v16

    goto :goto_1d6

    :catchall_1c6
    move-exception v0

    move-object/from16 v16, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    goto :goto_1d6

    :catchall_1ce
    move-exception v0

    move-object/from16 v16, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    :goto_1d5
    const/4 v13, 0x1

    :goto_1d6
    :try_start_1d6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v2, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mErrorMessage:Ljava/lang/String;
    :try_end_1eb
    .catchall {:try_start_1d6 .. :try_end_1eb} :catchall_261

    :try_start_1eb
    invoke-virtual/range {p2 .. p2}, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v13, :cond_237

    invoke-static {v8, v0}, Lcom/kwad/sdk/crash/utils/f;->a(Ljava/io/File;Ljava/lang/CharSequence;)V

    invoke-static {v10}, Lcom/kwad/sdk/crash/utils/f;->c(Ljava/io/File;)V

    invoke-static {v9}, Lcom/kwad/sdk/crash/utils/f;->a(Ljava/io/File;)V

    invoke-static {}, Lcom/kwad/sdk/crash/d;->a()Lcom/kwad/sdk/crash/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/crash/d;->i()Z

    move-result v0

    if-eqz v0, :cond_20d

    iget-object v0, v1, Lcom/kwad/sdk/crash/c/c;->e:Ljava/io/File;

    invoke-virtual {v1, v0}, Lcom/kwad/sdk/crash/c/c;->b(Ljava/io/File;)V

    :cond_20d
    if-eqz v12, :cond_233

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v7, v0}, Lcom/kwad/sdk/crash/report/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_230

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/io/File;

    const/4 v2, 0x0

    aput-object v8, v0, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/kwad/sdk/crash/c/c;->a([Ljava/io/File;Ljava/util/concurrent/CountDownLatch;)V

    goto :goto_233

    :cond_230
    invoke-virtual/range {p0 .. p0}, Lcom/kwad/sdk/crash/c/c;->b()V

    :cond_233
    :goto_233
    invoke-static {v11}, Lcom/kwad/sdk/crash/utils/f;->d(Ljava/io/File;)V

    goto :goto_260

    :cond_237
    if-eqz v12, :cond_260

    invoke-static {v7, v4}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v2}, Lcom/kwad/sdk/crash/report/c;->a(Lcom/kwad/sdk/crash/model/message/ExceptionMessage;)V

    invoke-interface {v12, v3, v0}, Lcom/kwad/sdk/crash/report/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v7, v0}, Lcom/kwad/sdk/crash/report/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_256
    .catchall {:try_start_1eb .. :try_end_256} :catchall_257

    goto :goto_260

    :catchall_257
    move-exception v0

    if-eqz v12, :cond_260

    :try_start_25a
    invoke-static {v0}, Lcom/kwad/sdk/crash/utils/f;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0
    :try_end_25e
    .catch Ljava/lang/Exception; {:try_start_25a .. :try_end_25e} :catch_189

    goto/16 :goto_184

    :cond_260
    :goto_260
    return-void

    :catchall_261
    move-exception v0

    move-object v14, v0

    :try_start_263
    invoke-virtual/range {p2 .. p2}, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v13, :cond_2af

    invoke-static {v8, v0}, Lcom/kwad/sdk/crash/utils/f;->a(Ljava/io/File;Ljava/lang/CharSequence;)V

    invoke-static {v10}, Lcom/kwad/sdk/crash/utils/f;->c(Ljava/io/File;)V

    invoke-static {v9}, Lcom/kwad/sdk/crash/utils/f;->a(Ljava/io/File;)V

    invoke-static {}, Lcom/kwad/sdk/crash/d;->a()Lcom/kwad/sdk/crash/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/crash/d;->i()Z

    move-result v0

    if-eqz v0, :cond_285

    iget-object v0, v1, Lcom/kwad/sdk/crash/c/c;->e:Ljava/io/File;

    invoke-virtual {v1, v0}, Lcom/kwad/sdk/crash/c/c;->b(Ljava/io/File;)V

    :cond_285
    if-eqz v12, :cond_2ab

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v7, v0}, Lcom/kwad/sdk/crash/report/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_2a8

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/io/File;

    const/4 v2, 0x0

    aput-object v8, v0, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/kwad/sdk/crash/c/c;->a([Ljava/io/File;Ljava/util/concurrent/CountDownLatch;)V

    goto :goto_2ab

    :cond_2a8
    invoke-virtual/range {p0 .. p0}, Lcom/kwad/sdk/crash/c/c;->b()V

    :cond_2ab
    :goto_2ab
    invoke-static {v11}, Lcom/kwad/sdk/crash/utils/f;->d(Ljava/io/File;)V

    goto :goto_2db

    :cond_2af
    if-eqz v12, :cond_2db

    invoke-static {v7, v4}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v2}, Lcom/kwad/sdk/crash/report/c;->a(Lcom/kwad/sdk/crash/model/message/ExceptionMessage;)V

    invoke-interface {v12, v3, v0}, Lcom/kwad/sdk/crash/report/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v7, v0}, Lcom/kwad/sdk/crash/report/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2ce
    .catchall {:try_start_263 .. :try_end_2ce} :catchall_2cf

    goto :goto_2db

    :catchall_2cf
    move-exception v0

    if-eqz v12, :cond_2db

    :try_start_2d2
    invoke-static {v0}, Lcom/kwad/sdk/crash/utils/f;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v5, v0}, Lcom/kwad/sdk/crash/report/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d9
    .catch Ljava/lang/Exception; {:try_start_2d2 .. :try_end_2d9} :catch_2da

    goto :goto_2db

    :catch_2da
    move-exception v0

    :cond_2db
    :goto_2db
    throw v14
.end method

.method protected a([Ljava/io/File;Ljava/util/concurrent/CountDownLatch;)V
    .registers 6

    new-instance p2, Lcom/kwad/sdk/crash/report/d;

    invoke-direct {p2}, Lcom/kwad/sdk/crash/report/d;-><init>()V

    invoke-virtual {p0}, Lcom/kwad/sdk/crash/c/c;->a()Lcom/kwad/sdk/crash/report/c;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/kwad/sdk/crash/report/d;->a(Lcom/kwad/sdk/crash/report/c;)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_18

    aget-object v2, p1, v1

    invoke-virtual {p2, v2}, Lcom/kwad/sdk/crash/report/d;->b(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_18
    return-void
.end method

.method protected c()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
