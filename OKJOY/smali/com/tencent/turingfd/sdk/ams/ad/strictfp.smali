.class public Lcom/tencent/turingfd/sdk/ams/ad/strictfp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final nc:J

.field public static oc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/turingfd/sdk/ams/ad/strictfp;->nc:J

    const-string v0, ""

    .line 2
    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/strictfp;->oc:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;ZI)Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v3, 0x0

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "T:"

    .line 2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    sget-wide v0, Lcom/tencent/turingfd/sdk/ams/ad/strictfp;->nc:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ","

    .line 4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "LT:"

    .line 5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/tencent/turingfd/sdk/ams/ad/strictfp;->nc:J

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "F:"

    .line 8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_f1

    const-string v0, "1"

    .line 9
    :goto_45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    .line 10
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "PT:"

    .line 11
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "204"

    .line 13
    invoke-static {p0, v0}, Lcom/tencent/turingfd/sdk/ams/ad/package;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_76

    const-string v0, "0"

    .line 15
    :cond_76
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_89

    const-string v1, ","

    .line 16
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "R:"

    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_89
    const-string v0, "turingfd_protect_105548_38_adMini"

    .line 19
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "301"

    .line 20
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_a4

    const-string v1, ","

    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "RB:"

    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_a4
    const-string v0, "105"

    .line 24
    invoke-static {p0, v0}, Lcom/tencent/turingfd/sdk/ams/ad/package;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_bf

    const-string v0, ","

    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "TAT:"

    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "1"

    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    :cond_bf
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/strictfp;->oc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_109

    const-string v1, ""

    .line 30
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v0, "activity"

    .line 31
    :try_start_cf
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 32
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_dd
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 33
    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v3, :cond_f5

    .line 34
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_ef
    .catch Ljava/lang/Throwable; {:try_start_cf .. :try_end_ef} :catch_f7

    :goto_ef
    move-object v1, v0

    goto :goto_dd

    .line 8
    :cond_f1
    const-string v0, "0"

    goto/16 :goto_45

    :cond_f5
    move-object v0, v1

    .line 34
    goto :goto_ef

    :catch_f7
    move-exception v0

    .line 35
    :cond_f8
    sput-object v1, Lcom/tencent/turingfd/sdk/ams/ad/strictfp;->oc:Ljava/lang/String;

    const-string v0, ","

    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "P:"

    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/strictfp;->oc:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    :cond_109
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/continue;->getInstance()Lcom/tencent/turingfd/sdk/ams/ad/continue;

    move-result-object v0

    const-string v1, "3"

    .line 40
    invoke-virtual {v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/continue;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_133

    .line 55
    :cond_119
    :goto_119
    const-string v0, ""

    .line 56
    :goto_11b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12e

    const-string v1, ","

    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "RD:"

    .line 58
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :cond_12e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 42
    :cond_133
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 43
    :try_start_139
    new-instance v0, Ljava/io/RandomAccessFile;
    :try_end_13b
    .catch Ljava/lang/Throwable; {:try_start_139 .. :try_end_13b} :catch_183
    .catchall {:try_start_139 .. :try_end_13b} :catchall_18e

    const-string v5, "r"

    :try_start_13d
    invoke-direct {v0, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_140
    .catch Ljava/lang/Throwable; {:try_start_13d .. :try_end_140} :catch_183
    .catchall {:try_start_13d .. :try_end_140} :catchall_18e

    .line 44
    :try_start_140
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-int v1, v4

    int-to-long v6, v1

    cmp-long v4, v6, v4

    if-nez v4, :cond_170

    .line 45
    new-array v1, v1, [B

    .line 46
    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V
    :try_end_14f
    .catch Ljava/lang/Throwable; {:try_start_140 .. :try_end_14f} :catch_178
    .catchall {:try_start_140 .. :try_end_14f} :catchall_19c

    .line 47
    :try_start_14f
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_152
    .catch Ljava/io/IOException; {:try_start_14f .. :try_end_152} :catch_186

    move-object v0, v1

    .line 52
    :goto_153
    array-length v1, v0

    if-eqz v1, :cond_119

    const-string v1, ".turingdebug"

    .line 53
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a([B[B)[B

    move-result-object v1

    .line 54
    :try_start_160
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V
    :try_end_168
    .catch Ljava/lang/Throwable; {:try_start_160 .. :try_end_168} :catch_19a

    .line 55
    :goto_168
    :try_start_168
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_16d
    .catch Ljava/lang/Throwable; {:try_start_168 .. :try_end_16d} :catch_16e

    goto :goto_11b

    :catch_16e
    move-exception v0

    goto :goto_119

    .line 48
    :cond_170
    :try_start_170
    new-instance v1, Ljava/io/IOException;
    :try_end_172
    .catch Ljava/lang/Throwable; {:try_start_170 .. :try_end_172} :catch_178
    .catchall {:try_start_170 .. :try_end_172} :catchall_19c

    const-string v4, ""

    :try_start_174
    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_178
    .catch Ljava/lang/Throwable; {:try_start_174 .. :try_end_178} :catch_178
    .catchall {:try_start_174 .. :try_end_178} :catchall_19c

    :catch_178
    move-exception v1

    :goto_179
    const/4 v1, 0x0

    .line 49
    :try_start_17a
    new-array v1, v1, [B
    :try_end_17c
    .catchall {:try_start_17a .. :try_end_17c} :catchall_19c

    if-eqz v0, :cond_1a1

    .line 50
    :try_start_17e
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_181
    .catch Ljava/io/IOException; {:try_start_17e .. :try_end_181} :catch_186

    move-object v0, v1

    goto :goto_153

    .line 48
    :catch_183
    move-exception v0

    move-object v0, v1

    goto :goto_179

    .line 51
    :catch_186
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_153

    .line 48
    :catchall_18e
    move-exception v0

    .line 60
    :goto_18f
    if-eqz v1, :cond_194

    .line 61
    :try_start_191
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_194
    .catch Ljava/io/IOException; {:try_start_191 .. :try_end_194} :catch_195

    .line 63
    :cond_194
    :goto_194
    throw v0

    .line 62
    :catch_195
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_194

    :catch_19a
    move-exception v0

    goto :goto_168

    .line 48
    :catchall_19c
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_18f

    :cond_1a1
    move-object v0, v1

    goto :goto_153
.end method
