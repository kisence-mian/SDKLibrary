.class public Lcom/bytedance/sdk/openadsdk/utils/ag;
.super Ljava/lang/Object;
.source "TTCrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/ag;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 41
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 42
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->b()V

    .line 43
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/utils/ag;
    .registers 1

    .line 36
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/ag;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;-><init>()V

    return-object v0
.end method

.method private a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 20

    .line 96
    move-object/from16 v1, p0

    const-string v0, ", "

    const-string v2, "0"

    const-string v3, "TTCrashHandler"

    .line 97
    nop

    .line 100
    const/4 v4, 0x0

    :try_start_a
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/utils/ag;->b:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 102
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->b()V

    .line 105
    :cond_15
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/utils/ag;->b:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 172
    nop

    .line 179
    nop

    .line 107
    return-void

    .line 110
    :cond_20
    nop

    .line 111
    nop

    .line 113
    new-instance v5, Ljava/io/File;

    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/utils/ag;->b:Ljava/lang/String;

    const-string v7, "tt_crash_count.properties"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6
    :try_end_2f
    .catchall {:try_start_a .. :try_end_2f} :catchall_111

    const-string v7, "tt_crash_info"

    const-string v8, "crash_last_time"

    const-string v9, "crash_count"

    const/4 v10, 0x1

    if-eqz v6, :cond_de

    :try_start_38
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_de

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_de

    .line 115
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    .line 116
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4e
    .catchall {:try_start_38 .. :try_end_4e} :catchall_111

    .line 117
    :try_start_4e
    invoke-virtual {v6, v11}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 118
    invoke-virtual {v6, v9, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 119
    invoke-virtual {v6, v8, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 121
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 123
    nop

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v13

    const-wide/32 v13, 0x493e0

    cmp-long v2, v15, v13

    const/4 v13, 0x0

    if-gez v2, :cond_7a

    .line 126
    add-int/2addr v12, v10

    .line 127
    move v2, v13

    goto :goto_7c

    .line 129
    :cond_7a
    move v2, v10

    move v12, v2

    .line 132
    :goto_7c
    const/4 v14, 0x3

    if-lt v12, v14, :cond_80

    goto :goto_81

    :cond_80
    move v10, v13

    .line 133
    :goto_81
    if-eqz v10, :cond_84

    .line 135
    goto :goto_85

    .line 133
    :cond_84
    move v13, v12

    .line 138
    :goto_85
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "=="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ab
    .catchall {:try_start_4e .. :try_end_ab} :catchall_da

    .line 140
    if-eqz v10, :cond_b3

    .line 143
    :try_start_ad
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_b0
    .catchall {:try_start_ad .. :try_end_b0} :catchall_b1

    goto :goto_b2

    .line 144
    :catchall_b1
    move-exception v0

    .line 145
    :goto_b2
    goto :goto_d0

    .line 147
    :cond_b3
    :try_start_b3
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v9, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    if-eqz v2, :cond_c7

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 151
    :cond_c7
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_cc
    .catchall {:try_start_b3 .. :try_end_cc} :catchall_da

    .line 152
    :try_start_cc
    invoke-virtual {v6, v2, v7}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_cf
    .catchall {:try_start_cc .. :try_end_cf} :catchall_d8

    move-object v4, v2

    .line 155
    :goto_d0
    if-eqz v10, :cond_d5

    .line 157
    :try_start_d2
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c()V
    :try_end_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_da

    .line 159
    :cond_d5
    move-object v2, v4

    move-object v4, v11

    goto :goto_102

    .line 169
    :catchall_d8
    move-exception v0

    goto :goto_dc

    :catchall_da
    move-exception v0

    move-object v2, v4

    :goto_dc
    move-object v4, v11

    goto :goto_113

    .line 160
    :cond_de
    :try_start_de
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 161
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 163
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_fa
    .catchall {:try_start_de .. :try_end_fa} :catchall_111

    .line 164
    :try_start_fa
    invoke-virtual {v0, v2, v7}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 166
    const-string v0, "==first"

    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_102
    .catchall {:try_start_fa .. :try_end_102} :catchall_10f

    .line 172
    :goto_102
    if-eqz v4, :cond_109

    .line 174
    :try_start_104
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_107
    .catchall {:try_start_104 .. :try_end_107} :catchall_108

    .line 176
    goto :goto_109

    .line 175
    :catchall_108
    move-exception v0

    .line 179
    :cond_109
    :goto_109
    if-eqz v2, :cond_127

    .line 181
    :try_start_10b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_10e
    .catchall {:try_start_10b .. :try_end_10e} :catchall_125

    goto :goto_124

    .line 169
    :catchall_10f
    move-exception v0

    goto :goto_113

    :catchall_111
    move-exception v0

    move-object v2, v4

    .line 170
    :goto_113
    :try_start_113
    const-string v5, "crash count error"

    invoke-static {v3, v5, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_118
    .catchall {:try_start_113 .. :try_end_118} :catchall_128

    .line 172
    if-eqz v4, :cond_11f

    .line 174
    :try_start_11a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_11d
    .catchall {:try_start_11a .. :try_end_11d} :catchall_11e

    .line 176
    goto :goto_11f

    .line 175
    :catchall_11e
    move-exception v0

    .line 179
    :cond_11f
    :goto_11f
    if-eqz v2, :cond_127

    .line 181
    :try_start_121
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_124
    .catchall {:try_start_121 .. :try_end_124} :catchall_125

    .line 183
    :goto_124
    goto :goto_127

    .line 182
    :catchall_125
    move-exception v0

    goto :goto_124

    .line 187
    :cond_127
    :goto_127
    return-void

    .line 172
    :catchall_128
    move-exception v0

    move-object v3, v0

    if-eqz v4, :cond_131

    .line 174
    :try_start_12c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_12f
    .catchall {:try_start_12c .. :try_end_12f} :catchall_130

    .line 176
    goto :goto_131

    .line 175
    :catchall_130
    move-exception v0

    .line 179
    :cond_131
    :goto_131
    if-eqz v2, :cond_138

    .line 181
    :try_start_133
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_136
    .catchall {:try_start_133 .. :try_end_136} :catchall_137

    .line 183
    goto :goto_138

    .line 182
    :catchall_137
    move-exception v0

    .line 185
    :cond_138
    :goto_138
    throw v3
.end method

.method private b()V
    .registers 4

    .line 46
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    .line 47
    if-nez v0, :cond_7

    .line 48
    return-void

    .line 52
    :cond_7
    :try_start_7
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 54
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_3f

    const-string v2, "TTCache"

    if-eqz v1, :cond_24

    .line 55
    :try_start_15
    invoke-virtual {v0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 56
    if-eqz v1, :cond_24

    .line 57
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 58
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/ag;->b:Ljava/lang/String;

    .line 63
    :cond_24
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/ag;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 64
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 65
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 67
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/ag;->b:Ljava/lang/String;
    :try_end_3e
    .catchall {:try_start_15 .. :try_end_3e} :catchall_3f

    .line 70
    :cond_3e
    goto :goto_40

    .line 69
    :catchall_3f
    move-exception v0

    .line 71
    :goto_40
    return-void
.end method

.method private c()V
    .registers 8

    .line 196
    const-string v0, "a"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_5
    const-string v4, "com.bytedance.sdk.openadsdk.TTC2Proxy"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v2

    invoke-static {v4, v0, v5}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 198
    if-eqz v4, :cond_1e

    .line 199
    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    .line 202
    :cond_1e
    goto :goto_20

    .line 201
    :catchall_1f
    move-exception v4

    .line 206
    :goto_20
    :try_start_20
    const-string v4, "com.bytedance.sdk.openadsdk.TTC3Proxy"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v2

    invoke-static {v4, v0, v5}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_39

    .line 209
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catchall {:try_start_20 .. :try_end_39} :catchall_3a

    .line 212
    :cond_39
    goto :goto_3b

    .line 211
    :catchall_3a
    move-exception v0

    .line 216
    :goto_3b
    :try_start_3b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/f;->a()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    .line 218
    goto :goto_40

    .line 217
    :catchall_3f
    move-exception v0

    .line 222
    :goto_40
    :try_start_40
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->b()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    .line 224
    goto :goto_45

    .line 223
    :catchall_44
    move-exception v0

    .line 228
    :goto_45
    :try_start_45
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_61

    .line 230
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 232
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/l;->c(Ljava/io/File;)V
    :try_end_61
    .catchall {:try_start_45 .. :try_end_61} :catchall_62

    .line 236
    :cond_61
    goto :goto_63

    .line 235
    :catchall_62
    move-exception v0

    .line 240
    :goto_63
    :try_start_63
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->e()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_67

    .line 242
    goto :goto_68

    .line 241
    :catchall_67
    move-exception v0

    .line 243
    :goto_68
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 6

    .line 75
    nop

    .line 77
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 78
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p2, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 79
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    if-eqz v1, :cond_23

    .line 81
    const-class v2, Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_24

    .line 85
    :cond_23
    goto :goto_25

    .line 84
    :catchall_24
    move-exception v1

    .line 87
    :goto_25
    if-eqz v0, :cond_2a

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 90
    :cond_2a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/ag;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_33

    if-eq v0, p0, :cond_33

    .line 91
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 93
    :cond_33
    return-void
.end method
