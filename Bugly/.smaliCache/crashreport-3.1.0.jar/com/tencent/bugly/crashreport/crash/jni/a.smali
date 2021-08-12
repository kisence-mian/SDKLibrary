.class public final Lcom/tencent/bugly/crashreport/crash/jni/a;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/tencent/bugly/crashreport/crash/b;

.field private final c:Lcom/tencent/bugly/crashreport/common/info/a;

.field private final d:Lcom/tencent/bugly/crashreport/common/strategy/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/crashreport/crash/b;Lcom/tencent/bugly/crashreport/common/strategy/a;)V
    .registers 5

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->a:Landroid/content/Context;

    .line 49
    iput-object p3, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->b:Lcom/tencent/bugly/crashreport/crash/b;

    .line 50
    iput-object p2, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    .line 51
    iput-object p4, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/crashreport/common/strategy/a;

    .line 52
    return-void
.end method


# virtual methods
.method public final handleNativeException(IIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .registers 38

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    .line 193
    move-object/from16 v19, v0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Native Crash Happen v1"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 194
    const/16 v18, 0x0

    move/from16 v1, p1

    move-object/from16 v0, v19

    invoke-virtual/range {v0 .. v18}, Lcom/tencent/bugly/crashreport/crash/jni/a;->handleNativeException2(IIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public final handleNativeException2(IIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 46

    .line 205
    move-object/from16 v14, p0

    move-object/from16 v0, p8

    move/from16 v13, p11

    move/from16 v1, p13

    move-object/from16 v2, p18

    const/4 v12, 0x0

    new-array v3, v12, [Ljava/lang/Object;

    const-string v4, "Native Crash Happen v2"

    invoke-static {v4, v3}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 210
    nop

    .line 211
    :try_start_13
    invoke-static/range {p9 .. p9}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 213
    const-string v3, "UNKNOWN"
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_2ca

    .line 215
    const-string v4, ")"

    const-string v5, "("

    if-lez v13, :cond_43

    .line 217
    :try_start_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, p7

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v7, p12

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 218
    const-string v6, "KERNEL"

    move-object v10, v1

    move-object/from16 v18, v3

    move-object v9, v6

    goto :goto_79

    .line 221
    :cond_43
    move-object/from16 v6, p7

    move-object/from16 v7, p12

    .line 222
    if-lez v1, :cond_4d

    .line 223
    invoke-static/range {p13 .. p13}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 225
    :cond_4d
    invoke-static/range {p13 .. p13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_75

    .line 226
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v18, v1

    move-object v10, v6

    move-object v9, v7

    goto :goto_79

    .line 225
    :cond_75
    move-object/from16 v18, v3

    move-object v10, v6

    move-object v9, v7

    .line 230
    :goto_79
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 231
    if-eqz v2, :cond_b9

    .line 232
    move v3, v12

    :goto_81
    array-length v6, v2

    if-ge v3, v6, :cond_c0

    .line 233
    aget-object v6, v2, v3

    .line 234
    if-eqz v6, :cond_b6

    .line 235
    const-string v7, "Extra message[%d]: %s"

    const/4 v15, 0x2

    new-array v8, v15, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v8, v12

    const/16 v16, 0x1

    aput-object v6, v8, v16

    invoke-static {v7, v8}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 236
    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 237
    array-length v8, v7

    if-ne v8, v15, :cond_ac

    .line 238
    aget-object v6, v7, v12

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b6

    .line 240
    :cond_ac
    const-string v7, "bad extraMsg %s"

    const/4 v8, 0x1

    new-array v15, v8, [Ljava/lang/Object;

    aput-object v6, v15, v12

    invoke-static {v7, v15}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 232
    :cond_b6
    :goto_b6
    add-int/lit8 v3, v3, 0x1

    goto :goto_81

    .line 245
    :cond_b9
    const-string v2, "not found extraMsg"

    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 248
    :cond_c0
    nop

    .line 249
    const-string v2, "HasPendingException"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 250
    if-eqz v2, :cond_dd

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_dd

    .line 251
    const-string v2, "Native crash happened with a Java pending exception."

    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 252
    const/16 v19, 0x1

    goto :goto_df

    .line 255
    :cond_dd
    move/from16 v19, v12

    :goto_df
    const-string v2, "ExceptionProcessName"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 256
    if-eqz v2, :cond_fd

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_f0

    goto :goto_fd

    .line 259
    :cond_f0
    const-string v3, "Name of crash process: %s"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v2, v7, v12

    invoke-static {v3, v7}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object/from16 v20, v2

    goto :goto_103

    .line 257
    :cond_fd
    :goto_fd
    iget-object v2, v14, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v2, v2, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    move-object/from16 v20, v2

    .line 262
    :goto_103
    const-string v2, "ExceptionThreadName"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 263
    if-eqz v2, :cond_18a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_116

    const/4 v8, 0x1

    goto/16 :goto_18b

    .line 267
    :cond_116
    const-string v3, "Name of crash thread: %s"

    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v2, v6, v12

    invoke-static {v3, v6}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 268
    nop

    .line 269
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 270
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 271
    :goto_12d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_165

    .line 272
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Thread;

    .line 273
    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_164

    .line 274
    nop

    .line 275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 276
    move/from16 v16, v8

    goto :goto_167

    .line 278
    :cond_164
    goto :goto_12d

    .line 271
    :cond_165
    move/from16 v16, v12

    .line 279
    :goto_167
    if-nez v16, :cond_187

    .line 280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v21, v2

    goto :goto_1b2

    .line 279
    :cond_187
    move-object/from16 v21, v2

    goto :goto_1b2

    .line 263
    :cond_18a
    const/4 v8, 0x1

    .line 264
    :goto_18b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 266
    move-object/from16 v21, v2

    .line 284
    :goto_1b2
    const-wide/16 v2, 0x3e8

    mul-long v4, p3, v2

    div-long v2, p5, v2

    add-long/2addr v4, v2

    .line 286
    const-string v2, "SysLogPath"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Ljava/lang/String;

    .line 287
    const-string v2, "JniLogPath"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v23, v1

    check-cast v23, Ljava/lang/String;

    .line 289
    iget-object v1, v14, Lcom/tencent/bugly/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/strategy/a;->b()Z

    move-result v1

    if-nez v1, :cond_1dc

    .line 290
    const-string v1, "no remote but still store!"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 293
    :cond_1dc
    iget-object v1, v14, Lcom/tencent/bugly/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v1

    .line 294
    iget-boolean v1, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->g:Z
    :try_end_1e4
    .catchall {:try_start_1f .. :try_end_1e4} :catchall_2ca

    const-string v7, "\n"

    if-nez v1, :cond_22e

    :try_start_1e8
    iget-object v1, v14, Lcom/tencent/bugly/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/strategy/a;->b()Z

    move-result v1

    if-eqz v1, :cond_22e

    .line 295
    const-string v1, "crash report was closed by remote , will not upload to Bugly , print local for helpful!"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 297
    const-string v1, "NATIVE_CRASH"

    invoke-static {}, Lcom/tencent/bugly/proguard/z;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v20

    move-object/from16 p5, v21

    move-object/from16 p6, v0

    move-object/from16 p7, v3

    invoke-static/range {p2 .. p7}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    .line 299
    invoke-static/range {p10 .. p10}, Lcom/tencent/bugly/proguard/z;->b(Ljava/lang/String;)V
    :try_end_22d
    .catchall {:try_start_1e8 .. :try_end_22d} :catchall_2ca

    .line 300
    return-void

    .line 303
    :cond_22e
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object v6, v10

    move-object/from16 v24, v7

    move-object/from16 v7, p8

    move-object v8, v11

    move-object/from16 v25, v10

    move-object/from16 v10, v18

    move-object/from16 v26, v11

    move-object/from16 v11, p10

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move-object/from16 v14, p17

    move/from16 v18, v19

    :try_start_24f
    invoke-virtual/range {v1 .. v18}, Lcom/tencent/bugly/crashreport/crash/jni/a;->packageCrashDatas(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;ZZ)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    move-result-object v1

    .line 306
    if-nez v1, :cond_25e

    .line 307
    const-string v0, "pkg crash datas fail!"

    const/4 v2, 0x0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 308
    return-void

    .line 311
    :cond_25e
    const/4 v2, 0x0

    const-string v3, "NATIVE_CRASH"

    invoke-static {}, Lcom/tencent/bugly/proguard/z;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v25

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v6, v24

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v5, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v20

    move-object/from16 p5, v21

    move-object/from16 p6, v0

    move-object/from16 p7, v1

    invoke-static/range {p2 .. p7}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    :try_end_297
    .catchall {:try_start_24f .. :try_end_297} :catchall_2c6

    .line 313
    move-object/from16 v3, p0

    :try_start_299
    iget-object v0, v3, Lcom/tencent/bugly/crashreport/crash/jni/a;->b:Lcom/tencent/bugly/crashreport/crash/b;

    move/from16 v4, p11

    invoke-virtual {v0, v1, v4}, Lcom/tencent/bugly/crashreport/crash/b;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;I)Z

    move-result v0

    if-nez v0, :cond_2a5

    const/4 v12, 0x1

    goto :goto_2a6

    :cond_2a5
    move v12, v2

    .line 314
    :goto_2a6
    const/4 v0, 0x0

    .line 315
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v2

    .line 316
    if-eqz v2, :cond_2b1

    .line 317
    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getDumpFilePath()Ljava/lang/String;

    move-result-object v0

    .line 319
    :cond_2b1
    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(ZLjava/lang/String;)V

    .line 320
    if-eqz v12, :cond_2be

    .line 321
    iget-object v0, v3, Lcom/tencent/bugly/crashreport/crash/jni/a;->b:Lcom/tencent/bugly/crashreport/crash/b;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/tencent/bugly/crashreport/crash/b;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;JZ)V

    .line 323
    :cond_2be
    iget-object v0, v3, Lcom/tencent/bugly/crashreport/crash/jni/a;->b:Lcom/tencent/bugly/crashreport/crash/b;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/crash/b;->b(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    :try_end_2c3
    .catchall {:try_start_299 .. :try_end_2c3} :catchall_2c4

    .line 328
    return-void

    .line 324
    :catchall_2c4
    move-exception v0

    goto :goto_2cc

    :catchall_2c6
    move-exception v0

    move-object/from16 v3, p0

    goto :goto_2cc

    :catchall_2ca
    move-exception v0

    move-object v3, v14

    .line 325
    :goto_2cc
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_2d5

    .line 326
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 329
    :cond_2d5
    return-void
.end method

.method public final packageCrashDatas(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;ZZ)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;"
        }
    .end annotation

    .line 64
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p10

    move-object/from16 v3, p14

    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/bugly/crashreport/crash/c;->k()Z

    move-result v4

    .line 65
    const/4 v5, 0x0

    if-eqz v4, :cond_18

    .line 66
    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful!"

    invoke-static {v7, v6}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 69
    :cond_18
    new-instance v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    invoke-direct {v6}, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;-><init>()V

    .line 71
    const/4 v7, 0x1

    iput v7, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    .line 72
    iget-object v8, v0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v8}, Lcom/tencent/bugly/crashreport/common/info/a;->h()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    .line 73
    iget-object v8, v0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v8, v8, Lcom/tencent/bugly/crashreport/common/info/a;->j:Ljava/lang/String;

    iput-object v8, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    .line 74
    iget-object v8, v0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v8}, Lcom/tencent/bugly/crashreport/common/info/a;->w()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    .line 75
    iget-object v8, v0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v8}, Lcom/tencent/bugly/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    .line 76
    move-object/from16 v8, p5

    iput-object v8, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    .line 77
    const-string v8, ""

    if-eqz v4, :cond_49

    const-string v4, " This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful![Bugly]"

    goto :goto_4a

    :cond_49
    move-object v4, v8

    :goto_4a
    iput-object v4, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    .line 80
    move-object/from16 v4, p6

    iput-object v4, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    .line 81
    if-nez p7, :cond_53

    goto :goto_55

    :cond_53
    move-object/from16 v8, p7

    :goto_55
    iput-object v8, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    .line 82
    move-wide v8, p3

    iput-wide v8, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    .line 83
    iget-object v4, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/bugly/proguard/z;->b([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    .line 84
    iput-object v1, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    .line 85
    move-object v4, p2

    iput-object v4, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    .line 86
    iget-object v4, v0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v4}, Lcom/tencent/bugly/crashreport/common/info/a;->y()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->I:Ljava/lang/String;

    .line 87
    iget-object v4, v0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v4}, Lcom/tencent/bugly/crashreport/common/info/a;->v()Ljava/util/Map;

    move-result-object v4

    iput-object v4, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    .line 88
    iget-object v4, v0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v4}, Lcom/tencent/bugly/crashreport/common/info/a;->J()Ljava/util/Map;

    move-result-object v4

    iput-object v4, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    .line 89
    iput-object v2, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    .line 90
    nop

    .line 91
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v4

    .line 92
    const/4 v8, 0x0

    if-eqz v4, :cond_92

    .line 93
    invoke-virtual {v4}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getDumpFilePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_93

    .line 92
    :cond_92
    move-object v4, v8

    .line 95
    :goto_93
    invoke-static {v4, v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-static {v2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9f

    .line 97
    iput-object v2, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->U:Ljava/lang/String;

    .line 99
    :cond_9f
    invoke-static {v4}, Lcom/tencent/bugly/crashreport/crash/jni/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->V:Ljava/lang/String;

    .line 100
    sget v2, Lcom/tencent/bugly/crashreport/crash/c;->e:I

    move-object/from16 v4, p11

    invoke-static {v4, v2, v8, v5}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    .line 102
    sget v2, Lcom/tencent/bugly/crashreport/crash/c;->e:I

    move-object/from16 v4, p12

    invoke-static {v4, v2, v8, v7}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->x:Ljava/lang/String;

    .line 104
    move-object/from16 v2, p9

    iput-object v2, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->J:Ljava/lang/String;

    .line 105
    move-object/from16 v2, p8

    iput-object v2, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    .line 106
    move-object/from16 v2, p13

    iput-object v2, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->L:Ljava/lang/String;

    .line 109
    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->p()J

    move-result-wide v9

    iput-wide v9, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->F:J

    .line 110
    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->o()J

    move-result-wide v9

    iput-wide v9, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->G:J

    .line 111
    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->q()J

    move-result-wide v9

    iput-wide v9, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->H:J

    .line 112
    if-eqz p16, :cond_1b5

    .line 114
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->k()J

    move-result-wide v2

    iput-wide v2, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->C:J

    .line 115
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->i()J

    move-result-wide v2

    iput-wide v2, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->D:J

    .line 116
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->m()J

    move-result-wide v2

    iput-wide v2, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->E:J

    .line 117
    iget-object v2, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    if-nez v2, :cond_ff

    .line 118
    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/jni/a;->a:Landroid/content/Context;

    sget v3, Lcom/tencent/bugly/crashreport/crash/c;->e:I

    invoke-static {v2, v3, v8}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    .line 121
    :cond_ff
    invoke-static {}, Lcom/tencent/bugly/proguard/y;->a()[B

    move-result-object v2

    iput-object v2, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->y:[B

    .line 122
    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-wide v2, v2, Lcom/tencent/bugly/crashreport/common/info/a;->a:J

    iput-wide v2, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->M:J

    .line 123
    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->a()Z

    move-result v2

    iput-boolean v2, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->N:Z

    .line 125
    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->H()I

    move-result v2

    iput v2, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->P:I

    .line 126
    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->I()I

    move-result v2

    iput v2, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->Q:I

    .line 127
    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->B()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    .line 128
    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->G()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->S:Ljava/util/Map;

    .line 129
    sget v2, Lcom/tencent/bugly/crashreport/crash/c;->f:I

    invoke-static {v2, v5}, Lcom/tencent/bugly/proguard/z;->a(IZ)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/util/Map;

    .line 131
    const-string v2, "java:\n"

    .line 132
    iget-object v3, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 133
    if-lez v3, :cond_1a7

    .line 134
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v3, v2

    .line 135
    iget-object v2, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v3, v2, :cond_1a7

    .line 136
    iget-object v2, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    iget-object v4, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1a7

    iget-object v4, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/util/Map;

    iget-object v7, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a7

    .line 141
    iget-object v4, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/util/Map;

    iget-object v7, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 144
    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 145
    if-lez v2, :cond_1a7

    .line 146
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 148
    iget-object v4, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/util/Map;

    iget-object v7, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    invoke-interface {v4, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v4, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    .line 156
    :cond_1a7
    if-nez v1, :cond_1af

    .line 157
    iget-object v1, v0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v1, v1, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    iput-object v1, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    .line 160
    :cond_1af
    iget-object v1, v0, Lcom/tencent/bugly/crashreport/crash/jni/a;->b:Lcom/tencent/bugly/crashreport/crash/b;

    invoke-virtual {v1, v6}, Lcom/tencent/bugly/crashreport/crash/b;->c(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    .line 161
    goto :goto_1e4

    .line 163
    :cond_1b5
    const-wide/16 v4, -0x1

    iput-wide v4, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->C:J

    .line 164
    iput-wide v4, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->D:J

    .line 165
    iput-wide v4, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->E:J

    .line 166
    iget-object v2, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    if-nez v2, :cond_1c5

    .line 167
    const-string v2, "this crash is occurred at last process! Log is miss, when get an terrible ABRT Native Exception etc."

    iput-object v2, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    .line 170
    :cond_1c5
    iput-wide v4, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->M:J

    .line 171
    const/4 v2, -0x1

    iput v2, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->P:I

    .line 172
    iput v2, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->Q:I

    .line 173
    move-object/from16 v2, p15

    iput-object v2, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    .line 175
    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->G()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->S:Ljava/util/Map;

    .line 176
    iput-object v8, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/util/Map;

    .line 177
    if-nez v1, :cond_1e0

    .line 178
    const-string v1, "unknown(record)"

    iput-object v1, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    .line 180
    :cond_1e0
    if-eqz v3, :cond_1e4

    .line 181
    iput-object v3, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->y:[B

    .line 185
    :cond_1e4
    :goto_1e4
    return-object v6
.end method
