.class public Lcom/uc/crashsdk/JNIBridge;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addCachedInfo(Ljava/lang/String;Ljava/lang/String;)I
    .registers 2

    .line 244
    invoke-static {p0, p1}, Lcom/uc/crashsdk/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static addDumpFile(Ljava/lang/String;Ljava/lang/String;ZZIZ)I
    .registers 6

    .line 235
    invoke-static/range {p0 .. p5}, Lcom/uc/crashsdk/a;->a(Ljava/lang/String;Ljava/lang/String;ZZIZ)I

    move-result p0

    return p0
.end method

.method private static addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 220
    invoke-static {p0, p1}, Lcom/uc/crashsdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public static cmd(I)J
    .registers 4

    .line 375
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, v2}, Lcom/uc/crashsdk/JNIBridge;->nativeCmd(IJLjava/lang/String;[Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static cmd(ILjava/lang/String;)J
    .registers 5

    .line 379
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Lcom/uc/crashsdk/JNIBridge;->nativeCmd(IJLjava/lang/String;[Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static createCachedInfo(Ljava/lang/String;II)I
    .registers 3

    .line 240
    invoke-static {p0, p1, p2}, Lcom/uc/crashsdk/a;->a(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private static generateCustomLog(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 16

    .line 258
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 259
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    nop

    .line 262
    invoke-static {p4}, Lcom/uc/crashsdk/a;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {p5}, Lcom/uc/crashsdk/a;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 263
    invoke-static {p6}, Lcom/uc/crashsdk/a;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 261
    move-object v1, p1

    move-wide v2, p2

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Lcom/uc/crashsdk/e;->a(Ljava/lang/StringBuffer;Ljava/lang/String;JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected static getCallbackInfo(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 2

    .line 164
    invoke-static {p0, p1}, Lcom/uc/crashsdk/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDatasForClientJavaLog(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 319
    const-string v0, "$all$"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 321
    const/4 v1, 0x1

    if-ne p0, v1, :cond_15

    .line 322
    if-eqz v0, :cond_10

    .line 323
    invoke-static {}, Lcom/uc/crashsdk/a;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 325
    :cond_10
    invoke-static {p1}, Lcom/uc/crashsdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 327
    :cond_15
    const/4 v2, 0x2

    if-ne p0, v2, :cond_24

    .line 328
    if-eqz v0, :cond_1f

    .line 329
    invoke-static {}, Lcom/uc/crashsdk/a;->j()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 331
    :cond_1f
    invoke-static {p1, v1}, Lcom/uc/crashsdk/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 333
    :cond_24
    const/4 v1, 0x3

    if-ne p0, v1, :cond_33

    .line 334
    if-eqz v0, :cond_2e

    .line 335
    invoke-static {}, Lcom/uc/crashsdk/a;->l()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 337
    :cond_2e
    invoke-static {p1}, Lcom/uc/crashsdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 339
    :cond_33
    const/4 v0, 0x4

    if-ne p0, v0, :cond_42

    .line 340
    invoke-static {p1}, Lcom/uc/crashsdk/e;->c(Ljava/lang/String;)Z

    move-result p0

    .line 341
    if-eqz p0, :cond_3f

    const-string p0, "1"

    return-object p0

    :cond_3f
    const-string p0, "0"

    return-object p0

    .line 343
    :cond_42
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getJavaStackTrace(Ljava/lang/Thread;I)Ljava/lang/String;
    .registers 3

    .line 169
    if-eqz p1, :cond_10

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_10

    .line 170
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    .line 172
    :cond_10
    if-eqz p0, :cond_21

    .line 173
    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    .line 174
    const-string p1, "getJavaStackTrace"

    invoke-static {p0, p1}, Lcom/uc/crashsdk/e;->a([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 176
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 178
    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method public static native nativeAddCachedInfo(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native nativeAddCallbackInfo(Ljava/lang/String;IJI)I
.end method

.method public static native nativeAddDumpFile(Ljava/lang/String;Ljava/lang/String;ZZIZ)I
.end method

.method public static native nativeAddHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeChangeState(Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public static native nativeClientCloseConnection(J)V
.end method

.method public static native nativeClientCreateConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J
.end method

.method public static native nativeClientWriteData(JLjava/lang/String;)I
.end method

.method public static native nativeCloseFile(I)V
.end method

.method public static native nativeCmd(IJLjava/lang/String;[Ljava/lang/Object;)J
.end method

.method public static native nativeCrash(II)V
.end method

.method public static native nativeCreateCachedInfo(Ljava/lang/String;II)I
.end method

.method public static native nativeDumpThreads(Ljava/lang/String;J)Ljava/lang/String;
.end method

.method public static native nativeGenerateUnexpLog(JI)I
.end method

.method public static native nativeGet(IJLjava/lang/String;)Ljava/lang/String;
.end method

.method public static native nativeGetCallbackInfo(Ljava/lang/String;JIZ)Ljava/lang/String;
.end method

.method public static native nativeIsCrashing()Z
.end method

.method public static native nativeLockFile(IZ)Z
.end method

.method public static native nativeLog(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static native nativeOpenFile(Ljava/lang/String;)I
.end method

.method public static native nativeSet(IJLjava/lang/String;[Ljava/lang/Object;)J
.end method

.method public static native nativeSetForeground(Z)V
.end method

.method private static onCrashLogGenerated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    .line 184
    invoke-static {}, Lcom/uc/crashsdk/e;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 185
    const-string v1, "jni"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 186
    invoke-static {}, Lcom/uc/crashsdk/e;->E()Z

    move-result v2

    if-nez v2, :cond_25

    .line 187
    if-eqz v0, :cond_21

    if-eqz v1, :cond_21

    .line 189
    const/4 v2, 0x1

    :try_start_19
    invoke-static {v2}, Lcom/uc/crashsdk/f;->c(Z)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    .line 192
    goto :goto_21

    .line 190
    :catchall_1d
    move-exception v2

    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 196
    :cond_21
    :goto_21
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 198
    :cond_25
    invoke-static {p0, p1, p2}, Lcom/uc/crashsdk/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/uc/crashsdk/e;->E()Z

    move-result p0

    if-eqz p0, :cond_2f

    .line 200
    return-void

    .line 203
    :cond_2f
    if-nez p3, :cond_40

    if-nez v0, :cond_3a

    invoke-static {}, Lcom/uc/crashsdk/g;->s()Z

    move-result p0

    if-eqz p0, :cond_3a

    goto :goto_40

    .line 207
    :cond_3a
    if-eqz v0, :cond_3f

    .line 208
    invoke-static {v1}, Lcom/uc/crashsdk/e;->b(Z)V

    .line 210
    :cond_3f
    return-void

    .line 206
    :cond_40
    :goto_40
    const/4 p0, 0x0

    invoke-static {p0, p0}, Lcom/uc/crashsdk/e;->a(ZZ)Z

    return-void
.end method

.method private static onCrashRestarting()V
    .registers 1

    .line 214
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/uc/crashsdk/d;->a(Z)V

    .line 215
    invoke-static {}, Lcom/uc/crashsdk/b;->K()Z

    .line 216
    return-void
.end method

.method private static onKillProcess(Ljava/lang/String;II)V
    .registers 13

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onKillProcess. SIG: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-static {}, Lcom/uc/crashsdk/e;->a()Z

    move-result v1

    const-string v2, "crashsdk"

    if-eqz v1, :cond_1b

    .line 269
    invoke-static {v2, v0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 271
    :cond_1b
    invoke-static {v2, v0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :goto_1e
    const-string v0, "onKillProcess"

    invoke-static {v0}, Lcom/uc/crashsdk/e;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 276
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 277
    invoke-static {}, Lcom/uc/crashsdk/b;->m()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 276
    const-string v5, "State in disk: \'%s\'\n"

    invoke-static {v1, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x5

    new-array v5, v4, [Ljava/lang/Object;

    .line 280
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v6

    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v5, v3

    invoke-static {}, Lcom/uc/crashsdk/b;->r()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v7, 0x2

    aput-object p2, v5, v7

    .line 281
    invoke-static {}, Lcom/uc/crashsdk/b;->C()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v8, 0x3

    aput-object p2, v5, v8

    invoke-static {}, Lcom/uc/crashsdk/e;->m()Ljava/lang/String;

    move-result-object p2

    const/4 v9, 0x4

    aput-object p2, v5, v9

    .line 278
    const-string p2, "SIG: %d, fg: %s, exiting: %s, main process: %s, time: %s\n"

    invoke-static {v1, p2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v6, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    .line 284
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v6

    invoke-static {p1}, Lcom/uc/crashsdk/e;->a(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    .line 285
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v7

    .line 286
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Lcom/uc/crashsdk/e;->a(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v8

    .line 287
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    .line 282
    const-string p1, "Kill PID: %d (%s) by pid: %d (%s) tid: %d (%s)\n"

    invoke-static {p2, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v6, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 289
    invoke-static {}, Lcom/uc/crashsdk/e;->a()Z

    move-result p2

    if-eqz p2, :cond_c4

    .line 290
    invoke-static {v2, p1}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c7

    .line 292
    :cond_c4
    invoke-static {v2, p1}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :goto_c7
    invoke-static {}, Lcom/uc/crashsdk/b;->I()Z

    move-result p2

    if-nez p2, :cond_d9

    .line 297
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p2, p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;[B)Z

    .line 300
    :cond_d9
    return-void
.end method

.method private static onNativeEvent(IJ[Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    .line 119
    const/4 p1, 0x2

    const/4 p2, 0x0

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_58

    goto :goto_57

    .line 148
    :pswitch_7
    new-instance p0, Lcom/uc/crashsdk/a/e;

    const/16 p3, 0x66

    invoke-direct {p0, p3}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    const-wide/16 v0, 0x1f40

    invoke-static {p1, p0, v0, v1}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    .line 151
    invoke-static {}, Lcom/uc/crashsdk/e;->q()V

    goto :goto_57

    .line 142
    :pswitch_17
    invoke-static {}, Lcom/uc/crashsdk/a/g;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 138
    :pswitch_1c
    invoke-static {v0}, Lcom/uc/crashsdk/a;->a(Z)Z

    .line 139
    goto :goto_57

    .line 135
    :pswitch_20
    invoke-static {}, Lcom/uc/crashsdk/e;->g()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 127
    :pswitch_25
    if-eqz p3, :cond_44

    array-length p0, p3

    if-ne p0, p1, :cond_44

    const/4 p0, 0x0

    aget-object p1, p3, p0

    instance-of p1, p1, Ljava/lang/String;

    if-eqz p1, :cond_44

    aget-object p1, p3, v0

    instance-of p1, p1, Ljava/lang/String;

    if-eqz p1, :cond_44

    .line 130
    aget-object p0, p3, p0

    check-cast p0, Ljava/lang/String;

    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 132
    :cond_44
    return-object p2

    .line 124
    :pswitch_45
    invoke-static {}, Lcom/uc/crashsdk/e;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 121
    :pswitch_4a
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 152
    :goto_57
    return-object p2

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_45
        :pswitch_25
        :pswitch_20
        :pswitch_1c
        :pswitch_17
        :pswitch_7
    .end packed-switch
.end method

.method private static onPreClientCustomLog(Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 5

    .line 349
    invoke-static {}, Lcom/uc/crashsdk/g;->a()V

    .line 350
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/uc/crashsdk/e;->a(Z)V

    .line 351
    invoke-static {p0, p1, p2}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 353
    return v0

    .line 356
    :cond_e
    invoke-static {p0, p1, p2}, Lcom/uc/crashsdk/e;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 359
    const/4 p0, 0x1

    return p0
.end method

.method private static registerCurrentThread(Ljava/lang/String;I)I
    .registers 2

    .line 224
    invoke-static {p1, p0}, Lcom/uc/crashsdk/a;->a(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static registerInfoCallback(Ljava/lang/String;IJI)I
    .registers 11

    .line 229
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v3, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/uc/crashsdk/a;->a(Ljava/lang/String;ILjava/util/concurrent/Callable;JI)I

    move-result p0

    return p0
.end method

.method public static set(IJ)J
    .registers 4

    .line 367
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lcom/uc/crashsdk/JNIBridge;->nativeSet(IJLjava/lang/String;[Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static set(ILjava/lang/String;)J
    .registers 5

    .line 371
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Lcom/uc/crashsdk/JNIBridge;->nativeSet(IJLjava/lang/String;[Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static set(IZ)J
    .registers 4

    .line 363
    if-eqz p1, :cond_5

    const-wide/16 v0, 0x1

    goto :goto_7

    :cond_5
    const-wide/16 v0, 0x0

    :goto_7
    const/4 p1, 0x0

    invoke-static {p0, v0, v1, p1, p1}, Lcom/uc/crashsdk/JNIBridge;->nativeSet(IJLjava/lang/String;[Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method
