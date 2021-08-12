.class public Lcom/bytedance/tea/crash/a/c;
.super Ljava/lang/Object;
.source "ANRManager.java"


# static fields
.field static volatile a:Z


# instance fields
.field private b:Lcom/bytedance/tea/crash/a/a;

.field private c:Lcom/bytedance/tea/crash/a/d;

.field private final d:Landroid/content/Context;

.field private volatile e:J

.field private volatile f:Z

.field private final g:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 66
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/tea/crash/a/c;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/tea/crash/a/c;->f:Z

    .line 73
    if-eqz p1, :cond_26

    instance-of v1, p1, Landroid/app/Application;

    if-eqz v1, :cond_26

    .line 76
    iput-object p1, p0, Lcom/bytedance/tea/crash/a/c;->d:Landroid/content/Context;

    .line 77
    const-string v1, "anr_monitor_table"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/tea/crash/a/c;->g:Landroid/content/SharedPreferences;

    .line 78
    const-wide/16 v0, 0x0

    const-string v2, "trace_anr_happen_time"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/tea/crash/a/c;->e:J

    .line 79
    const/16 p1, 0x64

    invoke-static {p1, p1}, Lcom/bytedance/tea/crash/a/g;->a(II)V

    .line 80
    return-void

    .line 74
    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "context must not be null or not application"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/io/BufferedReader;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    if-nez p1, :cond_4

    .line 273
    const/4 p1, 0x0

    return-object p1

    .line 275
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    :goto_9
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_23

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 280
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static a(Ljava/lang/String;)V
    .registers 5

    .line 167
    invoke-static {}, Lcom/bytedance/tea/crash/h;->b()Lcom/bytedance/tea/crash/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/b;->c()Ljava/util/List;

    move-result-object v0

    .line 168
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/tea/crash/e;

    .line 169
    sget-object v2, Lcom/bytedance/tea/crash/c;->d:Lcom/bytedance/tea/crash/c;

    const/4 v3, 0x0

    invoke-interface {v1, v2, p0, v3}, Lcom/bytedance/tea/crash/e;->a(Lcom/bytedance/tea/crash/c;Ljava/lang/String;Ljava/lang/Thread;)V

    .line 170
    goto :goto_c

    .line 171
    :cond_1f
    return-void
.end method

.method private varargs a(Ljava/io/BufferedReader;[Ljava/util/regex/Pattern;)[Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    if-eqz p2, :cond_2f

    array-length v1, p2

    if-gtz v1, :cond_9

    goto :goto_2f

    .line 259
    :cond_9
    :try_start_9
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 260
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_12
    if-ge v4, v2, :cond_9

    aget-object v5, p2, v4

    .line 261
    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_29

    .line 262
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v5, p1, v3

    const/4 p2, 0x1

    aput-object v1, p1, p2
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_2d

    return-object p1

    .line 260
    :cond_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 267
    :cond_2c
    goto :goto_2e

    .line 266
    :catchall_2d
    move-exception p1

    .line 268
    :goto_2e
    return-object v0

    .line 255
    :cond_2f
    :goto_2f
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;
    .registers 21

    .line 174
    move-object/from16 v1, p0

    const-string v0, "\\s"

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    .line 175
    return-object v3

    .line 177
    :cond_c
    new-instance v2, Ljava/io/File;

    move-object/from16 v4, p1

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1cd

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_21

    goto/16 :goto_1cd

    .line 181
    :cond_21
    nop

    .line 183
    :try_start_22
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2c} :catch_1bd
    .catchall {:try_start_22 .. :try_end_2c} :catchall_1bb

    .line 184
    :try_start_2c
    const-string v2, "-{5}\\spid\\s\\d+\\sat\\s\\d+-\\d+-\\d+\\s\\d{2}:\\d{2}:\\d{2}\\s-{5}"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 185
    const-string v5, "-{5}\\send\\s\\d+\\s-{5}"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 186
    const-string v6, "Cmd\\sline:\\s(\\S+)"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 187
    const-string v7, "\".+\"\\s(daemon\\s){0,1}prio=\\d+\\stid=\\d+\\s.*"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 188
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd HH:mm:ss"

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v8, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 190
    const/4 v9, 0x1

    new-array v10, v9, [Ljava/util/regex/Pattern;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-direct {v1, v4, v10}, Lcom/bytedance/tea/crash/a/c;->a(Ljava/io/BufferedReader;[Ljava/util/regex/Pattern;)[Ljava/lang/Object;

    move-result-object v2
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_57} :catch_1b9
    .catchall {:try_start_2c .. :try_end_57} :catchall_1c7

    if-nez v2, :cond_5e

    .line 191
    nop

    .line 248
    invoke-static {v4}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    .line 191
    return-object v3

    .line 193
    :cond_5e
    :try_start_5e
    aget-object v10, v2, v9

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x2

    aget-object v10, v10, v12

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 194
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v15, v2, v9

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x4

    aget-object v15, v15, v16

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v15, " "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v2, v2, v9

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v15, 0x5

    aget-object v2, v2, v15

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    move-wide v15, v13

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    .line 197
    new-array v2, v9, [Ljava/util/regex/Pattern;

    aput-object v6, v2, v11

    invoke-direct {v1, v4, v2}, Lcom/bytedance/tea/crash/a/c;->a(Ljava/io/BufferedReader;[Ljava/util/regex/Pattern;)[Ljava/lang/Object;

    move-result-object v2
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_b2} :catch_1b9
    .catchall {:try_start_5e .. :try_end_b2} :catchall_1c7

    if-nez v2, :cond_b9

    .line 198
    nop

    .line 248
    invoke-static {v4}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    .line 198
    return-object v3

    .line 200
    :cond_b9
    :try_start_b9
    aget-object v2, v2, v9

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aget-object v0, v0, v2

    .line 202
    move/from16 v2, p2

    int-to-long v9, v2

    cmp-long v2, v15, v9

    if-nez v2, :cond_1b4

    move-object/from16 v2, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d7

    goto/16 :goto_1b4

    .line 205
    :cond_d7
    iget-wide v8, v1, Lcom/bytedance/tea/crash/a/c;->e:J

    const-wide/16 v14, 0x0

    cmp-long v0, v8, v14

    if-eqz v0, :cond_f1

    iget-wide v8, v1, Lcom/bytedance/tea/crash/a/c;->e:J

    sub-long/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_e6} :catch_1b9
    .catchall {:try_start_b9 .. :try_end_e6} :catchall_1c7

    const-wide/16 v14, 0x4e20

    cmp-long v0, v8, v14

    if-gez v0, :cond_f1

    .line 206
    nop

    .line 248
    invoke-static {v4}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    .line 206
    return-object v3

    .line 208
    :cond_f1
    :try_start_f1
    iput-wide v12, v1, Lcom/bytedance/tea/crash/a/c;->e:J

    .line 209
    iget-object v0, v1, Lcom/bytedance/tea/crash/a/c;->g:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_106

    .line 210
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "trace_anr_happen_time"

    iget-wide v8, v1, Lcom/bytedance/tea/crash/a/c;->e:J

    invoke-interface {v0, v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 212
    :cond_106
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 213
    const-string v2, "anrTime"

    invoke-virtual {v0, v2, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 215
    nop

    .line 216
    :cond_111
    :goto_111
    const/4 v2, 0x2

    new-array v8, v2, [Ljava/util/regex/Pattern;

    aput-object v5, v8, v11

    const/4 v6, 0x1

    aput-object v7, v8, v6

    invoke-direct {v1, v4, v8}, Lcom/bytedance/tea/crash/a/c;->a(Ljava/io/BufferedReader;[Ljava/util/regex/Pattern;)[Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1a2

    aget-object v9, v8, v11

    if-ne v9, v7, :cond_1a2

    .line 218
    nop

    .line 219
    const-string v9, ""

    .line 220
    const-string v10, "\".+\""

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    const/4 v6, 0x1

    aget-object v12, v8, v6

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 221
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_14f

    .line 222
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v6, 0x1

    sub-int/2addr v10, v6

    invoke-virtual {v9, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 224
    :cond_14f
    const-string v10, "tid=\\d+"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    const/4 v6, 0x1

    aget-object v8, v8, v6

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 225
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    const/4 v12, -0x1

    if-eqz v10, :cond_17c

    .line 226
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v8

    .line 227
    const-string v10, "="

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v6, 0x1

    add-int/2addr v10, v6

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_17d

    .line 225
    :cond_17c
    move v8, v12

    .line 229
    :goto_17d
    invoke-direct {v1, v4}, Lcom/bytedance/tea/crash/a/c;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v10

    .line 230
    if-eq v8, v12, :cond_111

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_111

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_190

    .line 231
    goto :goto_111

    .line 233
    :cond_190
    const-string v8, "main"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1a0

    .line 234
    const-string v2, "mainStackFromTrace"

    invoke-virtual {v0, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_19d} :catch_1b9
    .catchall {:try_start_f1 .. :try_end_19d} :catchall_1c7

    .line 235
    nop

    .line 236
    const/4 v11, 0x1

    goto :goto_1a2

    .line 238
    :cond_1a0
    goto/16 :goto_111

    .line 239
    :cond_1a2
    :goto_1a2
    if-nez v11, :cond_1a9

    .line 240
    nop

    .line 248
    invoke-static {v4}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    .line 240
    return-object v3

    .line 242
    :cond_1a9
    :try_start_1a9
    const-string v2, "thread_number"

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1af
    .catch Ljava/lang/Exception; {:try_start_1a9 .. :try_end_1af} :catch_1b9
    .catchall {:try_start_1a9 .. :try_end_1af} :catchall_1c7

    .line 244
    nop

    .line 248
    invoke-static {v4}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    .line 244
    return-object v0

    .line 203
    :cond_1b4
    :goto_1b4
    nop

    .line 248
    invoke-static {v4}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    .line 203
    return-object v3

    .line 245
    :catch_1b9
    move-exception v0

    goto :goto_1bf

    .line 248
    :catchall_1bb
    move-exception v0

    goto :goto_1c9

    .line 245
    :catch_1bd
    move-exception v0

    move-object v4, v3

    .line 246
    :goto_1bf
    :try_start_1bf
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1c2
    .catchall {:try_start_1bf .. :try_end_1c2} :catchall_1c7

    .line 248
    invoke-static {v4}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    .line 249
    nop

    .line 250
    return-object v3

    .line 248
    :catchall_1c7
    move-exception v0

    move-object v3, v4

    :goto_1c9
    invoke-static {v3}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    throw v0

    .line 179
    :cond_1cd
    :goto_1cd
    return-object v3
.end method

.method public a()V
    .registers 4

    .line 83
    iget-boolean v0, p0, Lcom/bytedance/tea/crash/a/c;->f:Z

    if-eqz v0, :cond_5

    .line 84
    return-void

    .line 86
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1a

    .line 88
    new-instance v0, Lcom/bytedance/tea/crash/a/a;

    const/16 v1, 0x8

    const-string v2, "/data/anr/"

    invoke-direct {v0, p0, v2, v1}, Lcom/bytedance/tea/crash/a/a;-><init>(Lcom/bytedance/tea/crash/a/c;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/bytedance/tea/crash/a/c;->b:Lcom/bytedance/tea/crash/a/a;

    .line 89
    invoke-virtual {v0}, Lcom/bytedance/tea/crash/a/a;->startWatching()V

    goto :goto_21

    .line 91
    :cond_1a
    new-instance v0, Lcom/bytedance/tea/crash/a/d;

    invoke-direct {v0, p0}, Lcom/bytedance/tea/crash/a/d;-><init>(Lcom/bytedance/tea/crash/a/c;)V

    iput-object v0, p0, Lcom/bytedance/tea/crash/a/c;->c:Lcom/bytedance/tea/crash/a/d;

    .line 93
    :goto_21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/tea/crash/a/c;->f:Z

    .line 94
    return-void
.end method

.method a(ILjava/lang/String;I)Z
    .registers 11

    .line 105
    nop

    .line 108
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->b()Lorg/json/JSONArray;

    move-result-object v0

    .line 109
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 110
    invoke-static {v1, v2}, Lcom/bytedance/tea/crash/a/g;->a(J)Lorg/json/JSONObject;

    move-result-object v3

    .line 112
    const/16 v4, 0x64

    invoke-static {v4, v1, v2}, Lcom/bytedance/tea/crash/a/g;->a(IJ)Lorg/json/JSONArray;

    move-result-object v1

    .line 116
    const/4 v2, 0x0

    :try_start_14
    sget-boolean v4, Lcom/bytedance/tea/crash/a/c;->a:Z

    invoke-static {v4}, Lcom/bytedance/tea/crash/a/e;->a(Z)Lorg/json/JSONObject;

    move-result-object v4
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_1a} :catch_1b

    .line 119
    goto :goto_20

    .line 117
    :catch_1b
    move-exception v4

    .line 118
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    move-object v4, v2

    .line 122
    :goto_20
    iget-object v5, p0, Lcom/bytedance/tea/crash/a/c;->d:Landroid/content/Context;

    invoke-static {v5, p3}, Lcom/bytedance/tea/crash/a/e;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    .line 124
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2e

    .line 125
    return v6

    .line 129
    :cond_2e
    const/16 v5, 0xc8

    if-ne p1, v5, :cond_49

    .line 130
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    iget-object v5, p0, Lcom/bytedance/tea/crash/a/c;->d:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p2, p1, v5}, Lcom/bytedance/tea/crash/a/c;->a(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 131
    if-eqz p1, :cond_49

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p2

    if-lez p2, :cond_49

    .line 132
    move-object v4, p1

    .line 137
    :cond_49
    const/4 p1, 0x1

    if-eqz v4, :cond_fa

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result p2

    if-lez p2, :cond_fa

    .line 139
    :try_start_52
    const-string p2, "pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, p2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 140
    const-string p2, "package"

    iget-object v5, p0, Lcom/bytedance/tea/crash/a/c;->d:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    const-string p2, "is_remote_process"

    invoke-virtual {v4, p2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 143
    new-instance p2, Lcom/bytedance/tea/crash/c/a;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p2, v5}, Lcom/bytedance/tea/crash/c/a;-><init>(Lorg/json/JSONObject;)V

    .line 144
    const-string v5, "data"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v5, v4}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    const-string v4, "is_anr"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    const-string v4, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    const-string v4, "event_type"

    const-string v5, "anr"

    invoke-virtual {p2, v4, v5}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    const-string v4, "history_message"

    invoke-virtual {p2, v4, v0}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    const-string v0, "current_message"

    invoke-virtual {p2, v0, v3}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    const-string v0, "pending_messages"

    invoke-virtual {p2, v0, v1}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    const-string v0, "anr_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    const-string v0, "crash_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    const-string v0, "anr_info"

    invoke-virtual {p2, v0, p3}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    const-string v0, "all_thread_stacks"

    invoke-static {v2}, Lcom/bytedance/tea/crash/g/m;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    invoke-static {}, Lcom/bytedance/tea/crash/e/a/e;->a()Lcom/bytedance/tea/crash/e/a/e;

    move-result-object v0

    sget-object v1, Lcom/bytedance/tea/crash/c;->d:Lcom/bytedance/tea/crash/c;

    invoke-virtual {v0, v1, p2}, Lcom/bytedance/tea/crash/e/a/e;->a(Lcom/bytedance/tea/crash/c;Lcom/bytedance/tea/crash/c/a;)Lcom/bytedance/tea/crash/c/a;

    move-result-object p2

    .line 156
    iget-object v0, p0, Lcom/bytedance/tea/crash/a/c;->d:Landroid/content/Context;

    sget-object v1, Lcom/bytedance/tea/crash/c;->d:Lcom/bytedance/tea/crash/c;

    invoke-virtual {v1}, Lcom/bytedance/tea/crash/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/bytedance/tea/crash/g/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/bytedance/tea/crash/upload/a;->a()Lcom/bytedance/tea/crash/upload/a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bytedance/tea/crash/c/a;->a()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/bytedance/tea/crash/upload/a;->b(Lorg/json/JSONObject;)V

    .line 158
    invoke-static {p3}, Lcom/bytedance/tea/crash/a/c;->a(Ljava/lang/String;)V
    :try_end_f5
    .catchall {:try_start_52 .. :try_end_f5} :catchall_f6

    .line 161
    goto :goto_fa

    .line 159
    :catchall_f6
    move-exception p2

    .line 160
    invoke-static {p2}, Lcom/bytedance/tea/crash/g/j;->b(Ljava/lang/Throwable;)V

    .line 163
    :cond_fa
    :goto_fa
    return p1
.end method
