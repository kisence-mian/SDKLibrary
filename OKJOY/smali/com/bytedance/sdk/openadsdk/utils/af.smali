.class public Lcom/bytedance/sdk/openadsdk/utils/af;
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

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/af;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 41
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 42
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/af;->b()V

    .line 43
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/utils/af;
    .registers 1

    .prologue
    .line 36
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/af;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/utils/af;-><init>()V

    return-object v0
.end method

.method private a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 16

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 96
    const/4 v2, 0x0

    .line 97
    const/4 v3, 0x0

    .line 100
    :try_start_5
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/utils/af;->b:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 102
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/af;->b()V

    .line 105
    :cond_10
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/utils/af;->b:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_15} :catch_11e
    .catchall {:try_start_5 .. :try_end_15} :catchall_136

    move-result v5

    if-eqz v5, :cond_23

    .line 172
    if-eqz v1, :cond_1d

    .line 174
    :try_start_1a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1d} :catch_143

    .line 179
    :cond_1d
    :goto_1d
    if-eqz v1, :cond_22

    .line 181
    :try_start_1f
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_22} :catch_146

    .line 187
    :cond_22
    :goto_22
    return-void

    .line 113
    :cond_23
    :try_start_23
    new-instance v6, Ljava/io/File;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/af;->b:Ljava/lang/String;

    const-string v3, "tt_crash_count.properties"

    invoke-direct {v6, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_ee

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_ee

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_ee

    .line 115
    new-instance v7, Ljava/util/Properties;

    invoke-direct {v7}, Ljava/util/Properties;-><init>()V

    .line 116
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_48} :catch_11e
    .catchall {:try_start_23 .. :try_end_48} :catchall_136

    .line 117
    :try_start_48
    invoke-virtual {v7, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 118
    const-string v2, "crash_count"

    const-string v5, "0"

    invoke-virtual {v7, v2, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 119
    const-string v5, "crash_last_time"

    const-string v8, "0"

    invoke-virtual {v7, v5, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 120
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 121
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v8, v10, v8

    const-wide/32 v10, 0x493e0

    cmp-long v5, v8, v10

    if-gez v5, :cond_c5

    .line 126
    add-int/lit8 v2, v2, 0x1

    move v5, v0

    .line 132
    :goto_7b
    const/4 v8, 0x3

    if-lt v2, v8, :cond_c8

    .line 133
    :goto_7e
    if-eqz v4, :cond_16d

    .line 138
    :goto_80
    const-string v2, "TTCrashHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ac
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_ac} :catch_161
    .catchall {:try_start_48 .. :try_end_ac} :catchall_155

    .line 140
    if-eqz v4, :cond_ca

    .line 143
    :try_start_ae
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_b1
    .catch Ljava/lang/Throwable; {:try_start_ae .. :try_end_b1} :catch_149
    .catchall {:try_start_ae .. :try_end_b1} :catchall_155

    .line 155
    :goto_b1
    if-eqz v4, :cond_b6

    .line 157
    :try_start_b3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/af;->c()V
    :try_end_b6
    .catch Ljava/lang/Throwable; {:try_start_b3 .. :try_end_b6} :catch_161
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_155

    .line 172
    :cond_b6
    :goto_b6
    if-eqz v3, :cond_bb

    .line 174
    :try_start_b8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_bb
    .catch Ljava/lang/Throwable; {:try_start_b8 .. :try_end_bb} :catch_14c

    .line 179
    :cond_bb
    :goto_bb
    if-eqz v1, :cond_22

    .line 181
    :try_start_bd
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_c0
    .catch Ljava/lang/Throwable; {:try_start_bd .. :try_end_c0} :catch_c2

    goto/16 :goto_22

    .line 182
    :catch_c2
    move-exception v0

    goto/16 :goto_22

    :cond_c5
    move v5, v4

    move v2, v4

    .line 129
    goto :goto_7b

    :cond_c8
    move v4, v0

    .line 132
    goto :goto_7e

    .line 147
    :cond_ca
    :try_start_ca
    const-string v2, "crash_count"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v2, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    if-eqz v5, :cond_e2

    .line 149
    const-string v0, "crash_last_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 151
    :cond_e2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_e7
    .catch Ljava/lang/Throwable; {:try_start_ca .. :try_end_e7} :catch_161
    .catchall {:try_start_ca .. :try_end_e7} :catchall_155

    .line 152
    :try_start_e7
    const-string v0, "tt_crash_info"

    invoke-virtual {v7, v2, v0}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_ec
    .catch Ljava/lang/Throwable; {:try_start_e7 .. :try_end_ec} :catch_164
    .catchall {:try_start_e7 .. :try_end_ec} :catchall_157

    move-object v1, v2

    goto :goto_b1

    .line 160
    :cond_ee
    :try_start_ee
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 161
    const-string v2, "crash_count"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    const-string v2, "crash_last_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 163
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_10f
    .catch Ljava/lang/Throwable; {:try_start_ee .. :try_end_10f} :catch_11e
    .catchall {:try_start_ee .. :try_end_10f} :catchall_136

    .line 164
    :try_start_10f
    const-string v3, "tt_crash_info"

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 166
    const-string v0, "TTCrashHandler"

    const-string v3, "==first"

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11b
    .catch Ljava/lang/Throwable; {:try_start_10f .. :try_end_11b} :catch_168
    .catchall {:try_start_10f .. :try_end_11b} :catchall_15a

    move-object v3, v1

    move-object v1, v2

    goto :goto_b6

    .line 169
    :catch_11e
    move-exception v0

    move-object v2, v1

    .line 170
    :goto_120
    :try_start_120
    const-string v3, "TTCrashHandler"

    const-string v4, "crash count error"

    invoke-static {v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_127
    .catchall {:try_start_120 .. :try_end_127} :catchall_15e

    .line 172
    if-eqz v2, :cond_12c

    .line 174
    :try_start_129
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_12c
    .catch Ljava/lang/Throwable; {:try_start_129 .. :try_end_12c} :catch_14f

    .line 179
    :cond_12c
    :goto_12c
    if-eqz v1, :cond_22

    .line 181
    :try_start_12e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_131
    .catch Ljava/lang/Throwable; {:try_start_12e .. :try_end_131} :catch_133

    goto/16 :goto_22

    .line 182
    :catch_133
    move-exception v0

    goto/16 :goto_22

    .line 172
    :catchall_136
    move-exception v0

    move-object v3, v1

    :goto_138
    if-eqz v3, :cond_13d

    .line 174
    :try_start_13a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_13d
    .catch Ljava/lang/Throwable; {:try_start_13a .. :try_end_13d} :catch_151

    .line 179
    :cond_13d
    :goto_13d
    if-eqz v1, :cond_142

    .line 181
    :try_start_13f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_142
    .catch Ljava/lang/Throwable; {:try_start_13f .. :try_end_142} :catch_153

    .line 183
    :cond_142
    :goto_142
    throw v0

    .line 175
    :catch_143
    move-exception v0

    goto/16 :goto_1d

    .line 182
    :catch_146
    move-exception v0

    goto/16 :goto_22

    .line 144
    :catch_149
    move-exception v0

    goto/16 :goto_b1

    .line 175
    :catch_14c
    move-exception v0

    goto/16 :goto_bb

    :catch_14f
    move-exception v0

    goto :goto_12c

    :catch_151
    move-exception v2

    goto :goto_13d

    .line 182
    :catch_153
    move-exception v1

    goto :goto_142

    .line 172
    :catchall_155
    move-exception v0

    goto :goto_138

    :catchall_157
    move-exception v0

    move-object v1, v2

    goto :goto_138

    :catchall_15a
    move-exception v0

    move-object v3, v1

    move-object v1, v2

    goto :goto_138

    :catchall_15e
    move-exception v0

    move-object v3, v2

    goto :goto_138

    .line 169
    :catch_161
    move-exception v0

    move-object v2, v3

    goto :goto_120

    :catch_164
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_120

    :catch_168
    move-exception v0

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    goto :goto_120

    :cond_16d
    move v0, v2

    goto/16 :goto_80
.end method

.method private b()V
    .registers 4

    .prologue
    .line 46
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    .line 47
    if-nez v0, :cond_7

    .line 71
    :cond_6
    :goto_6
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

    if-eqz v1, :cond_24

    .line 55
    const-string v1, "TTCache"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 56
    if-eqz v1, :cond_24

    .line 57
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 58
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/af;->b:Ljava/lang/String;

    .line 63
    :cond_24
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/af;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 64
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 65
    new-instance v1, Ljava/io/File;

    const-string v2, "TTCache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 67
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/af;->b:Ljava/lang/String;
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_40} :catch_41

    goto :goto_6

    .line 69
    :catch_41
    move-exception v0

    goto :goto_6
.end method

.method private c()V
    .registers 6

    .prologue
    .line 196
    :try_start_0
    const-string v0, "com.bytedance.sdk.openadsdk.TTC2Proxy"

    const-string v1, "a"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_20

    .line 199
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_20} :catch_70

    .line 206
    :cond_20
    :goto_20
    :try_start_20
    const-string v0, "com.bytedance.sdk.openadsdk.TTC3Proxy"

    const-string v1, "a"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_40

    .line 209
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_40} :catch_6e

    .line 216
    :cond_40
    :goto_40
    :try_start_40
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/i;->a()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_43} :catch_66

    .line 222
    :goto_43
    :try_start_43
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->b()V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_46} :catch_68

    .line 228
    :goto_46
    :try_start_46
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 230
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 232
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/k;->c(Ljava/io/File;)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_62} :catch_6c

    .line 240
    :cond_62
    :goto_62
    :try_start_62
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->e()V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_65} :catch_6a

    .line 243
    :goto_65
    return-void

    .line 217
    :catch_66
    move-exception v0

    goto :goto_43

    .line 223
    :catch_68
    move-exception v0

    goto :goto_46

    .line 241
    :catch_6a
    move-exception v0

    goto :goto_65

    .line 235
    :catch_6c
    move-exception v0

    goto :goto_62

    .line 211
    :catch_6e
    move-exception v0

    goto :goto_40

    .line 201
    :catch_70
    move-exception v0

    goto :goto_20
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 77
    :try_start_1
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
    if-eqz v1, :cond_22

    .line 81
    const-class v2, Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_21} :catch_35

    move-result v0

    .line 87
    :cond_22
    :goto_22
    if-eqz v0, :cond_27

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 90
    :cond_27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/af;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/af;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eq v0, p0, :cond_34

    .line 91
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/af;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 93
    :cond_34
    return-void

    .line 84
    :catch_35
    move-exception v1

    goto :goto_22
.end method
