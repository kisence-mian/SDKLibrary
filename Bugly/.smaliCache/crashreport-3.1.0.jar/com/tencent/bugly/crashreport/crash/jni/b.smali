.class public final Lcom/tencent/bugly/crashreport/crash/jni/b;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;
    .registers 9

    .line 302
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_a5

    if-eqz p1, :cond_a5

    if-nez p2, :cond_a

    goto/16 :goto_a5

    .line 307
    :cond_a
    new-instance v2, Ljava/io/File;

    const-string v3, "rqd_record.eup"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_a4

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result p1

    if-nez p1, :cond_1f

    goto/16 :goto_a4

    .line 312
    :cond_1f
    nop

    .line 314
    :try_start_20
    new-instance p1, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_2a} :catch_87
    .catchall {:try_start_20 .. :try_end_2a} :catchall_85

    .line 315
    :try_start_2a
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v2

    .line 316
    const/4 v3, 0x1

    if-eqz v2, :cond_71

    const-string v4, "NATIVE_RQD_REPORT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a

    goto :goto_71

    .line 321
    :cond_3a
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 322
    nop

    .line 323
    move-object v4, v1

    .line 324
    :goto_41
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_50

    .line 325
    if-nez v4, :cond_4b

    .line 326
    move-object v4, v5

    goto :goto_41

    .line 328
    :cond_4b
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    move-object v4, v1

    goto :goto_41

    .line 332
    :cond_50
    if-eqz v4, :cond_64

    .line 333
    const-string p0, "record not pair! drop! %s"

    new-array p2, v3, [Ljava/lang/Object;

    aput-object v4, p2, v0

    invoke-static {p0, p2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_5b} :catch_83
    .catchall {:try_start_2a .. :try_end_5b} :catchall_97

    .line 334
    :try_start_5b
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f

    .line 347
    goto :goto_63

    .line 345
    :catch_5f
    move-exception p0

    .line 346
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 347
    :goto_63
    return-object v1

    .line 337
    :cond_64
    :try_start_64
    invoke-static {p0, v2, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Landroid/content/Context;Ljava/util/Map;Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    move-result-object p0
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_68} :catch_83
    .catchall {:try_start_64 .. :try_end_68} :catchall_97

    .line 342
    :try_start_68
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c

    .line 347
    goto :goto_70

    .line 345
    :catch_6c
    move-exception p1

    .line 346
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 347
    :goto_70
    return-object p0

    .line 317
    :cond_71
    :goto_71
    :try_start_71
    const-string p0, "record read fail! %s"

    new-array p2, v3, [Ljava/lang/Object;

    aput-object v2, p2, v0

    invoke-static {p0, p2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_7a} :catch_83
    .catchall {:try_start_71 .. :try_end_7a} :catchall_97

    .line 318
    :try_start_7a
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_7e

    .line 347
    goto :goto_82

    .line 345
    :catch_7e
    move-exception p0

    .line 346
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 347
    :goto_82
    return-object v1

    .line 338
    :catch_83
    move-exception p0

    goto :goto_89

    .line 342
    :catchall_85
    move-exception p0

    goto :goto_99

    .line 338
    :catch_87
    move-exception p0

    move-object p1, v1

    .line 339
    :goto_89
    :try_start_89
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_97

    .line 340
    if-eqz p1, :cond_96

    .line 344
    :try_start_8e
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_92

    .line 347
    goto :goto_96

    .line 345
    :catch_92
    move-exception p0

    .line 346
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 347
    :cond_96
    :goto_96
    return-object v1

    .line 342
    :catchall_97
    move-exception p0

    move-object v1, p1

    :goto_99
    if-eqz v1, :cond_a3

    .line 344
    :try_start_9b
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_9f

    .line 347
    goto :goto_a3

    .line 345
    :catch_9f
    move-exception p1

    .line 346
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 347
    :cond_a3
    :goto_a3
    throw p0

    .line 309
    :cond_a4
    :goto_a4
    return-object v1

    .line 303
    :cond_a5
    :goto_a5
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "get eup record file args error"

    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 304
    return-object v1
.end method

.method private static a(Landroid/content/Context;Ljava/util/Map;Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;",
            ")",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;"
        }
    .end annotation

    .line 98
    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 99
    return-object v1

    .line 102
    :cond_6
    invoke-static/range {p0 .. p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v2

    .line 103
    const/4 v3, 0x0

    if-nez v2, :cond_15

    .line 104
    new-array v0, v3, [Ljava/lang/Object;

    const-string v2, "abnormal com info not created"

    invoke-static {v2, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 105
    return-object v1

    .line 108
    :cond_15
    const-string v2, "intStateStr"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 109
    if-eqz v2, :cond_2cc

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_2d

    move-object v2, v1

    move v1, v3

    goto/16 :goto_2ce

    .line 114
    :cond_2d
    invoke-static {v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 115
    const/4 v4, 0x1

    if-nez v2, :cond_46

    .line 116
    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "parse intSateMap fail"

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 117
    return-object v1

    .line 122
    :cond_46
    :try_start_46
    const-string v5, "sino"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 123
    const-string v5, "sud"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 125
    const-string v5, "soVersion"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v19, v5

    check-cast v19, Ljava/lang/String;

    .line 126
    if-nez v19, :cond_70

    .line 127
    const-string v0, "error format at version"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 128
    return-object v1

    .line 131
    :cond_70
    const-string v5, "errorAddr"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_78
    .catchall {:try_start_46 .. :try_end_78} :catchall_2be

    .line 132
    const-string v6, "unknown"

    if-nez v5, :cond_7e

    move-object v12, v6

    goto :goto_7f

    :cond_7e
    move-object v12, v5

    .line 134
    :goto_7f
    :try_start_7f
    const-string v5, "codeMsg"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 135
    if-nez v5, :cond_8a

    move-object v5, v6

    .line 137
    :cond_8a
    const-string v7, "tombPath"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 138
    if-nez v7, :cond_97

    move-object/from16 v16, v6

    goto :goto_99

    :cond_97
    move-object/from16 v16, v7

    .line 140
    :goto_99
    const-string v7, "signalName"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 141
    if-nez v7, :cond_a4

    move-object v7, v6

    .line 143
    :cond_a4
    const-string v8, "errnoMsg"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v8, "stack"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 146
    if-nez v8, :cond_b4

    move-object v8, v6

    .line 148
    :cond_b4
    const-string v9, "jstack"

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 149
    if-eqz v9, :cond_d5

    .line 150
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "java:\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 155
    :cond_d5
    const-string v9, "sico"

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;
    :try_end_dd
    .catchall {:try_start_7f .. :try_end_dd} :catchall_2be

    .line 156
    nop

    .line 157
    const-string v10, ")"

    const-string v11, "("

    if-eqz v9, :cond_107

    :try_start_e4
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lez v9, :cond_107

    .line 160
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 161
    const-string v7, "KERNEL"

    move-object v14, v7

    goto :goto_109

    .line 164
    :cond_107
    move-object v14, v5

    move-object v5, v7

    .line 167
    :goto_109
    const-string v7, "nativeLog"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 169
    nop

    .line 170
    if-eqz v7, :cond_123

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_123

    .line 171
    const-string v9, "BuglyNativeLog.txt"

    invoke-static {v1, v7, v9}, Lcom/tencent/bugly/proguard/z;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    move-object/from16 v20, v7

    goto :goto_125

    .line 174
    :cond_123
    move-object/from16 v20, v1

    :goto_125
    const-string v7, "sendingProcess"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 175
    if-nez v7, :cond_130

    .line 176
    move-object v7, v6

    .line 178
    :cond_130
    const-string v9, "spd"

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 179
    if-eqz v9, :cond_155

    .line 180
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v15, v7

    goto :goto_156

    .line 179
    :cond_155
    move-object v15, v7

    .line 183
    :goto_156
    const-string v7, "threadName"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 184
    if-nez v7, :cond_161

    .line 185
    move-object v7, v6

    .line 187
    :cond_161
    const-string v9, "et"

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 188
    if-eqz v9, :cond_186

    .line 189
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v9, v7

    goto :goto_187

    .line 188
    :cond_186
    move-object v9, v7

    .line 192
    :goto_187
    const-string v7, "processName"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 193
    if-nez v7, :cond_192

    .line 194
    goto :goto_193

    .line 193
    :cond_192
    move-object v6, v7

    .line 196
    :goto_193
    const-string v7, "ep"

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 197
    if-eqz v7, :cond_1b8

    .line 198
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    goto :goto_1b9

    .line 197
    :cond_1b8
    move-object v7, v6

    .line 201
    :goto_1b9
    nop

    .line 202
    const-string v6, "key-value"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 203
    if-eqz v6, :cond_1f1

    .line 204
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 205
    const-string v11, "\n"

    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 206
    array-length v11, v6

    move v13, v3

    :goto_1d1
    if-ge v13, v11, :cond_1ee

    aget-object v1, v6, v13

    .line 207
    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 208
    array-length v4, v1

    const/4 v3, 0x2

    if-ne v4, v3, :cond_1e8

    .line 209
    const/4 v3, 0x0

    aget-object v4, v1, v3

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-interface {v10, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_1e8
    add-int/lit8 v13, v13, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_1d1

    :cond_1ee
    move-object/from16 v21, v10

    goto :goto_1f3

    .line 203
    :cond_1f1
    const/16 v21, 0x0

    .line 214
    :goto_1f3
    const-string v1, "ets"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v3, v1

    .line 215
    const-string v1, "etms"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    .line 216
    const-wide/16 v10, 0x3e8

    mul-long/2addr v3, v10

    div-long/2addr v1, v10

    add-long/2addr v1, v3

    .line 218
    nop

    .line 219
    invoke-static {v8}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 221
    const-string v3, "sysLogPath"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Ljava/lang/String;

    .line 222
    const-string v3, "jniLogPath"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Ljava/lang/String;

    .line 224
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v6, p2

    move-object v8, v9

    move-wide v9, v1

    move-object v11, v5

    invoke-interface/range {v6 .. v23}, Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;->packageCrashDatas(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;ZZ)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    move-result-object v1

    .line 227
    if-eqz v1, :cond_2bd

    .line 228
    const-string v2, "userId"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 229
    if-eqz v2, :cond_251

    .line 230
    const-string v3, "[Native record info] userId: %s"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v5, v4

    invoke-static {v3, v5}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 231
    iput-object v2, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    .line 233
    :cond_251
    const-string v2, "sysLog"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 234
    if-eqz v2, :cond_25d

    .line 235
    iput-object v2, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    .line 237
    :cond_25d
    const-string v2, "appVersion"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 238
    if-eqz v2, :cond_274

    .line 239
    const-string v3, "[Native record info] appVersion: %s"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v5, v4

    invoke-static {v3, v5}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 240
    iput-object v2, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    .line 242
    :cond_274
    const-string v2, "isAppForeground"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 243
    if-eqz v2, :cond_291

    .line 244
    const-string v3, "[Native record info] isAppForeground: %s"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v5, v4

    invoke-static {v3, v5}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 245
    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->N:Z

    .line 247
    :cond_291
    const-string v2, "launchTime"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 248
    if-eqz v0, :cond_2b7

    .line 249
    const-string v2, "[Native record info] launchTime: %s"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v4, v3

    invoke-static {v2, v4}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2a6
    .catchall {:try_start_e4 .. :try_end_2a6} :catchall_2be

    .line 251
    :try_start_2a6
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->M:J
    :try_end_2ac
    .catch Ljava/lang/NumberFormatException; {:try_start_2a6 .. :try_end_2ac} :catch_2ad
    .catchall {:try_start_2a6 .. :try_end_2ac} :catchall_2be

    .line 256
    goto :goto_2b7

    .line 252
    :catch_2ad
    move-exception v0

    .line 253
    :try_start_2ae
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_2b7

    .line 254
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 258
    :cond_2b7
    :goto_2b7
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/util/Map;

    .line 259
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->k:Z
    :try_end_2bd
    .catchall {:try_start_2ae .. :try_end_2bd} :catchall_2be

    .line 261
    :cond_2bd
    return-object v1

    .line 262
    :catchall_2be
    move-exception v0

    .line 263
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "error format"

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 264
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 266
    const/4 v2, 0x0

    return-object v2

    .line 109
    :cond_2cc
    move-object v2, v1

    move v1, v3

    .line 110
    :goto_2ce
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "no intStateStr"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 111
    return-object v2
.end method

.method private static a(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 274
    return-object v0

    .line 276
    :cond_4
    nop

    .line 278
    :try_start_5
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x400

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_2e

    .line 280
    :goto_c
    :try_start_c
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_28

    .line 281
    if-nez v2, :cond_24

    .line 282
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const-string v3, "UTf-8"

    invoke-direct {p0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_2c

    .line 289
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p0

    .line 284
    :cond_24
    :try_start_24
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2c

    goto :goto_c

    .line 289
    :cond_28
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_38

    .line 286
    :catchall_2c
    move-exception p0

    goto :goto_30

    :catchall_2e
    move-exception p0

    move-object v1, v0

    .line 287
    :goto_30
    :try_start_30
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_39

    .line 289
    if-eqz v1, :cond_38

    .line 290
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 294
    :cond_38
    :goto_38
    return-object v0

    .line 289
    :catchall_39
    move-exception p0

    if-eqz v1, :cond_3f

    .line 290
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_3f
    throw p0
.end method

.method protected static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 75
    if-nez p0, :cond_5

    .line 76
    const-string p0, ""

    return-object p0

    .line 78
    :cond_5
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 79
    if-eqz v1, :cond_33

    array-length v2, v1

    if-nez v2, :cond_11

    goto :goto_33

    .line 83
    :cond_11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    array-length v2, v1

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_2e

    aget-object v4, v1, v3

    .line 85
    const-string v5, "java.lang.Thread.getStackTrace("

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2b

    .line 86
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 89
    :cond_2e
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 80
    :cond_33
    :goto_33
    return-object p0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .registers 10

    .line 546
    const/4 v0, 0x0

    if-eqz p0, :cond_f8

    if-gtz p1, :cond_7

    goto/16 :goto_f8

    .line 549
    :cond_7
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 550
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_f7

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_1a

    goto/16 :goto_f7

    .line 553
    :cond_1a
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v3, "Read system log from native record file(length: %s bytes): %s"

    invoke-static {v3, v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 555
    sget-object v2, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "Add this record file to list for cleaning lastly."

    invoke-static {v3, v2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 558
    if-nez p2, :cond_4d

    .line 559
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p1, p3}, Lcom/tencent/bugly/proguard/z;->a(Ljava/io/File;IZ)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_ea

    .line 561
    :cond_4d
    nop

    .line 562
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 564
    :try_start_53
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v1, "utf-8"

    invoke-direct {v3, v5, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_64
    .catchall {:try_start_53 .. :try_end_64} :catchall_bf

    .line 567
    :goto_64
    :try_start_64
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_af

    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "[ ]*:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 570
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_94

    .line 571
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    :cond_94
    if-lez p1, :cond_ae

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-le v0, p1, :cond_ae

    .line 574
    if-eqz p3, :cond_a6

    .line 575
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 576
    goto :goto_af

    .line 578
    :cond_a6
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v4, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 581
    :cond_ae
    goto :goto_64

    .line 582
    :cond_af
    :goto_af
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_b3
    .catchall {:try_start_64 .. :try_end_b3} :catchall_bc

    .line 588
    :try_start_b3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_b6} :catch_b7

    .line 594
    :goto_b6
    goto :goto_ea

    .line 591
    :catch_b7
    move-exception p1

    .line 593
    invoke-static {p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_b6

    .line 583
    :catchall_bc
    move-exception p1

    move-object v0, v2

    goto :goto_c0

    :catchall_bf
    move-exception p1

    .line 585
    :goto_c0
    :try_start_c0
    invoke-static {p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 586
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\n[error:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_e4
    .catchall {:try_start_c0 .. :try_end_e4} :catchall_eb

    .line 588
    if-eqz v0, :cond_ea

    .line 590
    :try_start_e6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_e9} :catch_b7

    goto :goto_b6

    .line 598
    :cond_ea
    :goto_ea
    return-object p0

    .line 588
    :catchall_eb
    move-exception p0

    if-eqz v0, :cond_f6

    .line 590
    :try_start_ee
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_f1} :catch_f2

    .line 594
    goto :goto_f6

    .line 591
    :catch_f2
    move-exception p1

    .line 593
    invoke-static {p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 594
    :cond_f6
    :goto_f6
    throw p0

    .line 551
    :cond_f7
    :goto_f7
    return-object v0

    .line 547
    :cond_f8
    :goto_f8
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 442
    if-eqz p0, :cond_42

    if-nez p1, :cond_5

    goto :goto_42

    .line 445
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 446
    invoke-static {p0, p1}, Lcom/tencent/bugly/crashreport/crash/jni/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 448
    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 449
    const-string v2, "Register infos:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    :cond_1e
    invoke-static {p0, p1}, Lcom/tencent/bugly/crashreport/crash/jni/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 454
    if-eqz p0, :cond_3d

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3d

    .line 455
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_35

    .line 456
    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    :cond_35
    const-string p1, "System SO infos:\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    :cond_3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 443
    :cond_42
    :goto_42
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(ZLjava/lang/String;)V
    .registers 5

    .line 516
    if-eqz p1, :cond_37

    .line 517
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/util/List;

    new-instance v1, Ljava/io/File;

    const-string v2, "rqd_record.eup"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/util/List;

    new-instance v1, Ljava/io/File;

    const-string v2, "reg_record.txt"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/util/List;

    new-instance v1, Ljava/io/File;

    const-string v2, "map_record.txt"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/util/List;

    new-instance v1, Ljava/io/File;

    const-string v2, "backup_record.txt"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    if-eqz p0, :cond_37

    .line 523
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/crash/jni/b;->c(Ljava/lang/String;)V

    .line 526
    :cond_37
    sget-object p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/util/List;

    if-eqz p0, :cond_72

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_72

    .line 527
    sget-object p0, Lcom/tencent/bugly/crashreport/crash/jni/b;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_47
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_72

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    .line 528
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 529
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 530
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Delete record file %s"

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 532
    :cond_71
    goto :goto_47

    .line 534
    :cond_72
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 472
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 473
    return-object v0

    .line 475
    :cond_4
    new-instance v1, Ljava/io/File;

    const-string v2, "backup_record.txt"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_16

    .line 477
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 479
    :cond_16
    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 353
    const-string v0, "reg_record.txt"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object p0

    .line 354
    const/4 v0, 0x0

    if-nez p0, :cond_a

    .line 355
    return-object v0

    .line 358
    :cond_a
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 360
    if-eqz v2, :cond_6a

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1c

    goto :goto_6a

    .line 363
    :cond_1c
    const-string p1, "                "

    .line 364
    const/16 v2, 0x12

    .line 365
    nop

    .line 366
    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    .line 367
    :goto_24
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6
    :try_end_28
    .catchall {:try_start_a .. :try_end_28} :catchall_75

    const-string v7, "\n"

    if-eqz v6, :cond_58

    .line 368
    :try_start_2c
    rem-int/lit8 v8, v4, 0x4

    if-nez v8, :cond_3b

    .line 369
    if-lez v4, :cond_35

    .line 370
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    :cond_35
    const-string v5, "  "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4e

    .line 374
    :cond_3b
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x10

    if-le v7, v8, :cond_45

    .line 375
    const/16 v2, 0x1c

    .line 377
    :cond_45
    sub-int v5, v2, v5

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    :goto_4e
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    .line 380
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 383
    :cond_58
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_5f
    .catchall {:try_start_2c .. :try_end_5f} :catchall_75

    .line 390
    if-eqz p0, :cond_69

    .line 392
    :try_start_61
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_65

    .line 396
    goto :goto_69

    .line 393
    :catch_65
    move-exception p0

    .line 395
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 396
    :cond_69
    :goto_69
    return-object p1

    .line 361
    :cond_6a
    :goto_6a
    if-eqz p0, :cond_74

    .line 392
    :try_start_6c
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6f} :catch_70

    .line 396
    goto :goto_74

    .line 393
    :catch_70
    move-exception p0

    .line 395
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 396
    :cond_74
    :goto_74
    return-object v0

    .line 385
    :catchall_75
    move-exception p1

    .line 387
    :try_start_76
    invoke-static {p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_84

    .line 388
    if-eqz p0, :cond_83

    .line 392
    :try_start_7b
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7e} :catch_7f

    .line 396
    goto :goto_83

    .line 393
    :catch_7f
    move-exception p0

    .line 395
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 396
    :cond_83
    :goto_83
    return-object v0

    .line 390
    :catchall_84
    move-exception p1

    if-eqz p0, :cond_8f

    .line 392
    :try_start_87
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8a} :catch_8b

    .line 396
    goto :goto_8f

    .line 393
    :catch_8b
    move-exception p0

    .line 395
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 396
    :cond_8f
    :goto_8f
    throw p1
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 402
    const-string v0, "map_record.txt"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object p0

    .line 403
    const/4 v0, 0x0

    if-nez p0, :cond_a

    .line 404
    return-object v0

    .line 407
    :cond_a
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 409
    if-eqz v2, :cond_3f

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1c

    goto :goto_3f

    .line 412
    :cond_1c
    :goto_1c
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 413
    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 417
    :cond_30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_4a

    .line 423
    if-eqz p0, :cond_3e

    .line 425
    :try_start_36
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_3a

    .line 429
    goto :goto_3e

    .line 426
    :catch_3a
    move-exception p0

    .line 428
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 429
    :cond_3e
    :goto_3e
    return-object p1

    .line 410
    :cond_3f
    :goto_3f
    if-eqz p0, :cond_49

    .line 425
    :try_start_41
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_45

    .line 429
    goto :goto_49

    .line 426
    :catch_45
    move-exception p0

    .line 428
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 429
    :cond_49
    :goto_49
    return-object v0

    .line 418
    :catchall_4a
    move-exception p1

    .line 420
    :try_start_4b
    invoke-static {p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_59

    .line 421
    if-eqz p0, :cond_58

    .line 425
    :try_start_50
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_54

    .line 429
    goto :goto_58

    .line 426
    :catch_54
    move-exception p0

    .line 428
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 429
    :cond_58
    :goto_58
    return-object v0

    .line 423
    :catchall_59
    move-exception p1

    if-eqz p0, :cond_64

    .line 425
    :try_start_5c
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5f} :catch_60

    .line 429
    goto :goto_64

    .line 426
    :catch_60
    move-exception p0

    .line 428
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 429
    :cond_64
    :goto_64
    throw p1
.end method

.method public static c(Ljava/lang/String;)V
    .registers 9

    .line 488
    if-nez p0, :cond_3

    .line 489
    return-void

    .line 492
    :cond_3
    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p0

    if-eqz p0, :cond_4b

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_4b

    .line 494
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 495
    if-eqz p0, :cond_4b

    .line 496
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_1d
    if-ge v2, v0, :cond_4b

    aget-object v3, p0, v2

    .line 497
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_48

    .line 498
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 499
    const-string v4, "Delete empty record file %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_4c

    .line 496
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 506
    :cond_4b
    return-void

    .line 504
    :catchall_4c
    move-exception p0

    .line 505
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 507
    return-void
.end method

.method private static d(Ljava/lang/String;)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 48
    return-object v0

    .line 52
    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_6
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 53
    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 54
    array-length v5, v4

    move v6, v1

    :goto_13
    if-ge v6, v5, :cond_3d

    aget-object v7, v4, v6

    .line 55
    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 56
    array-length v9, v8

    const/4 v10, 0x2

    if-eq v9, v10, :cond_2b

    .line 57
    const-string v3, "error format at %s"

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v7, v4, v1

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 58
    return-object v0

    .line 61
    :cond_2b
    aget-object v7, v8, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 62
    aget-object v8, v8, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3a} :catch_3e

    .line 54
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 65
    :cond_3d
    return-object v3

    .line 66
    :catch_3e
    move-exception v3

    .line 67
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    const-string p0, "error format intStateStr %s"

    invoke-static {p0, v2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    return-object v0
.end method
