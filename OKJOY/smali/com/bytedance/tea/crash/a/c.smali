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

    .prologue
    .line 66
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/tea/crash/a/c;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .prologue
    const/16 v4, 0x64

    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v2, p0, Lcom/bytedance/tea/crash/a/c;->f:Z

    .line 73
    if-eqz p1, :cond_e

    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_16

    .line 74
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context must not be null or not application"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_16
    iput-object p1, p0, Lcom/bytedance/tea/crash/a/c;->d:Landroid/content/Context;

    .line 77
    iget-object v0, p0, Lcom/bytedance/tea/crash/a/c;->d:Landroid/content/Context;

    const-string v1, "anr_monitor_table"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/tea/crash/a/c;->g:Landroid/content/SharedPreferences;

    .line 78
    iget-object v0, p0, Lcom/bytedance/tea/crash/a/c;->g:Landroid/content/SharedPreferences;

    const-string v1, "trace_anr_happen_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/tea/crash/a/c;->e:J

    .line 79
    invoke-static {v4, v4}, Lcom/bytedance/tea/crash/a/g;->a(II)V

    .line 80
    return-void
.end method

.method private a(Ljava/io/BufferedReader;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    if-nez p1, :cond_4

    .line 273
    const/4 v0, 0x0

    .line 280
    :goto_3
    return-object v0

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

    move-result-object v0

    goto :goto_3
.end method

.method private static a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 167
    invoke-static {}, Lcom/bytedance/tea/crash/h;->b()Lcom/bytedance/tea/crash/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/b;->c()Ljava/util/List;

    move-result-object v0

    .line 168
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/tea/crash/e;

    .line 169
    sget-object v2, Lcom/bytedance/tea/crash/c;->d:Lcom/bytedance/tea/crash/c;

    const/4 v3, 0x0

    invoke-interface {v0, v2, p0, v3}, Lcom/bytedance/tea/crash/e;->a(Lcom/bytedance/tea/crash/c;Ljava/lang/String;Ljava/lang/Thread;)V

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

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 254
    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    array-length v0, p2

    if-gtz v0, :cond_b

    :cond_9
    move-object v0, v1

    .line 268
    :goto_a
    return-object v0

    .line 259
    :cond_b
    :try_start_b
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 260
    array-length v4, p2

    move v0, v2

    :goto_13
    if-ge v0, v4, :cond_b

    aget-object v5, p2, v0

    .line 261
    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 262
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v5, v0, v2

    const/4 v2, 0x1

    aput-object v3, v0, v2
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_2a} :catch_2b

    goto :goto_a

    .line 266
    :catch_2b
    move-exception v0

    :cond_2c
    move-object v0, v1

    .line 268
    goto :goto_a

    .line 260
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;
    .registers 16

    .prologue
    .line 174
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 175
    const/4 v0, 0x0

    .line 250
    :goto_7
    return-object v0

    .line 177
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 179
    :cond_19
    const/4 v0, 0x0

    goto :goto_7

    .line 181
    :cond_1b
    const/4 v2, 0x0

    .line 183
    :try_start_1c
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_26} :catch_1bb
    .catchall {:try_start_1c .. :try_end_26} :catchall_1c6

    .line 184
    :try_start_26
    const-string v0, "-{5}\\spid\\s\\d+\\sat\\s\\d+-\\d+-\\d+\\s\\d{2}:\\d{2}:\\d{2}\\s-{5}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 185
    const-string v2, "-{5}\\send\\s\\d+\\s-{5}"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 186
    const-string v2, "Cmd\\sline:\\s(\\S+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 187
    const-string v3, "\".+\"\\s(daemon\\s){0,1}prio=\\d+\\stid=\\d+\\s.*"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 188
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 190
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/util/regex/Pattern;

    const/4 v7, 0x0

    aput-object v0, v4, v7

    invoke-direct {p0, v1, v4}, Lcom/bytedance/tea/crash/a/c;->a(Ljava/io/BufferedReader;[Ljava/util/regex/Pattern;)[Ljava/lang/Object;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_50} :catch_1ce
    .catchall {:try_start_26 .. :try_end_50} :catchall_1cc

    move-result-object v0

    if-nez v0, :cond_58

    .line 191
    const/4 v0, 0x0

    .line 248
    invoke-static {v1}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    goto :goto_7

    .line 193
    :cond_58
    const/4 v4, 0x1

    :try_start_59
    aget-object v4, v0, v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "\\s"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x1

    aget-object v7, v0, v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "\\s"

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x4

    aget-object v7, v7, v10

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v7, 0x1

    aget-object v0, v0, v7

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "\\s"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x5

    aget-object v0, v0, v7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    .line 197
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/regex/Pattern;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-direct {p0, v1, v0}, Lcom/bytedance/tea/crash/a/c;->a(Ljava/io/BufferedReader;[Ljava/util/regex/Pattern;)[Ljava/lang/Object;
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_b4} :catch_1ce
    .catchall {:try_start_59 .. :try_end_b4} :catchall_1cc

    move-result-object v0

    if-nez v0, :cond_bd

    .line 198
    const/4 v0, 0x0

    .line 248
    invoke-static {v1}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    goto/16 :goto_7

    .line 200
    :cond_bd
    const/4 v2, 0x1

    :try_start_be
    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\s"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aget-object v0, v0, v2

    .line 202
    int-to-long v2, p2

    cmp-long v2, v8, v2

    if-nez v2, :cond_d8

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_d5} :catch_1ce
    .catchall {:try_start_be .. :try_end_d5} :catchall_1cc

    move-result v0

    if-nez v0, :cond_de

    .line 203
    :cond_d8
    const/4 v0, 0x0

    .line 248
    invoke-static {v1}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    goto/16 :goto_7

    .line 205
    :cond_de
    :try_start_de
    iget-wide v2, p0, Lcom/bytedance/tea/crash/a/c;->e:J

    const-wide/16 v8, 0x0

    cmp-long v0, v2, v8

    if-eqz v0, :cond_f9

    iget-wide v2, p0, Lcom/bytedance/tea/crash/a/c;->e:J

    sub-long/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_ec} :catch_1ce
    .catchall {:try_start_de .. :try_end_ec} :catchall_1cc

    move-result-wide v2

    const-wide/16 v8, 0x4e20

    cmp-long v0, v2, v8

    if-gez v0, :cond_f9

    .line 206
    const/4 v0, 0x0

    .line 248
    invoke-static {v1}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    goto/16 :goto_7

    .line 208
    :cond_f9
    :try_start_f9
    iput-wide v10, p0, Lcom/bytedance/tea/crash/a/c;->e:J

    .line 209
    iget-object v0, p0, Lcom/bytedance/tea/crash/a/c;->g:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_110

    .line 210
    iget-object v0, p0, Lcom/bytedance/tea/crash/a/c;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "trace_anr_happen_time"

    iget-wide v8, p0, Lcom/bytedance/tea/crash/a/c;->e:J

    invoke-interface {v0, v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 212
    :cond_110
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 213
    const-string v2, "anrTime"

    invoke-virtual {v0, v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 215
    const/4 v2, 0x0

    .line 216
    :cond_11b
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/util/regex/Pattern;

    const/4 v4, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v6, v3, v4

    invoke-direct {p0, v1, v3}, Lcom/bytedance/tea/crash/a/c;->a(Ljava/io/BufferedReader;[Ljava/util/regex/Pattern;)[Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1a8

    const/4 v3, 0x0

    aget-object v3, v7, v3

    if-ne v3, v6, :cond_1a8

    .line 218
    const/4 v3, -0x1

    .line 219
    const-string v4, ""

    .line 220
    const-string v8, "\".+\""

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 221
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_15c

    .line 222
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x1

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v4, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 224
    :cond_15c
    const-string v8, "tid=\\d+"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v7, v7, v9

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 225
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_187

    .line 226
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 227
    const-string v7, "="

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 229
    :cond_187
    invoke-direct {p0, v1}, Lcom/bytedance/tea/crash/a/c;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v7

    .line 230
    const/4 v8, -0x1

    if-eq v3, v8, :cond_11b

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11b

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11b

    .line 233
    const-string v3, "main"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11b

    .line 234
    const-string v2, "mainStackFromTrace"

    invoke-virtual {v0, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a7
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_1a7} :catch_1ce
    .catchall {:try_start_f9 .. :try_end_1a7} :catchall_1cc

    .line 235
    const/4 v2, 0x1

    .line 239
    :cond_1a8
    if-nez v2, :cond_1b0

    .line 240
    const/4 v0, 0x0

    .line 248
    invoke-static {v1}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    goto/16 :goto_7

    .line 242
    :cond_1b0
    :try_start_1b0
    const-string v2, "thread_number"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1b6
    .catch Ljava/lang/Exception; {:try_start_1b0 .. :try_end_1b6} :catch_1ce
    .catchall {:try_start_1b0 .. :try_end_1b6} :catchall_1cc

    .line 248
    invoke-static {v1}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    goto/16 :goto_7

    .line 245
    :catch_1bb
    move-exception v0

    move-object v1, v2

    .line 246
    :goto_1bd
    :try_start_1bd
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1c0
    .catchall {:try_start_1bd .. :try_end_1c0} :catchall_1cc

    .line 248
    invoke-static {v1}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    .line 250
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 248
    :catchall_1c6
    move-exception v0

    move-object v1, v2

    :goto_1c8
    invoke-static {v1}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1cc
    move-exception v0

    goto :goto_1c8

    .line 245
    :catch_1ce
    move-exception v0

    goto :goto_1bd
.end method

.method public a()V
    .registers 4

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/bytedance/tea/crash/a/c;->f:Z

    if-eqz v0, :cond_5

    .line 94
    :goto_4
    return-void

    .line 86
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1f

    .line 88
    new-instance v0, Lcom/bytedance/tea/crash/a/a;

    const-string v1, "/data/anr/"

    const/16 v2, 0x8

    invoke-direct {v0, p0, v1, v2}, Lcom/bytedance/tea/crash/a/a;-><init>(Lcom/bytedance/tea/crash/a/c;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/bytedance/tea/crash/a/c;->b:Lcom/bytedance/tea/crash/a/a;

    .line 89
    iget-object v0, p0, Lcom/bytedance/tea/crash/a/c;->b:Lcom/bytedance/tea/crash/a/a;

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/a/a;->startWatching()V

    .line 93
    :goto_1b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/tea/crash/a/c;->f:Z

    goto :goto_4

    .line 91
    :cond_1f
    new-instance v0, Lcom/bytedance/tea/crash/a/d;

    invoke-direct {v0, p0}, Lcom/bytedance/tea/crash/a/d;-><init>(Lcom/bytedance/tea/crash/a/c;)V

    iput-object v0, p0, Lcom/bytedance/tea/crash/a/c;->c:Lcom/bytedance/tea/crash/a/d;

    goto :goto_1b
.end method

.method a(ILjava/lang/String;I)Z
    .registers 14

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 105
    .line 108
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->b()Lorg/json/JSONArray;

    move-result-object v4

    .line 109
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 110
    invoke-static {v6, v7}, Lcom/bytedance/tea/crash/a/g;->a(J)Lorg/json/JSONObject;

    move-result-object v5

    .line 112
    const/16 v3, 0x64

    invoke-static {v3, v6, v7}, Lcom/bytedance/tea/crash/a/g;->a(IJ)Lorg/json/JSONArray;

    move-result-object v6

    .line 116
    :try_start_15
    sget-boolean v3, Lcom/bytedance/tea/crash/a/c;->a:Z

    invoke-static {v3}, Lcom/bytedance/tea/crash/a/e;->a(Z)Lorg/json/JSONObject;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_1a} :catch_29

    move-result-object v0

    .line 122
    :goto_1b
    iget-object v3, p0, Lcom/bytedance/tea/crash/a/c;->d:Landroid/content/Context;

    invoke-static {v3, p3}, Lcom/bytedance/tea/crash/a/e;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 124
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2e

    move v0, v1

    .line 163
    :goto_28
    return v0

    .line 117
    :catch_29
    move-exception v3

    .line 118
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1b

    .line 129
    :cond_2e
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_49

    .line 130
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iget-object v7, p0, Lcom/bytedance/tea/crash/a/c;->d:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p2, v1, v7}, Lcom/bytedance/tea/crash/a/c;->a(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 131
    if-eqz v1, :cond_49

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-lez v7, :cond_49

    move-object v0, v1

    .line 137
    :cond_49
    if-eqz v0, :cond_f8

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_f8

    .line 139
    :try_start_51
    const-string v1, "pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 140
    const-string v1, "package"

    iget-object v7, p0, Lcom/bytedance/tea/crash/a/c;->d:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    const-string v1, "is_remote_process"

    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 143
    new-instance v1, Lcom/bytedance/tea/crash/c/a;

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v1, v7}, Lcom/bytedance/tea/crash/c/a;-><init>(Lorg/json/JSONObject;)V

    .line 144
    const-string v7, "data"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    const-string v0, "is_anr"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v0, v7}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    const-string v0, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v0, v7}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    const-string v0, "event_type"

    const-string v7, "anr"

    invoke-virtual {v1, v0, v7}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    const-string v0, "history_message"

    invoke-virtual {v1, v0, v4}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    const-string v0, "current_message"

    invoke-virtual {v1, v0, v5}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    const-string v0, "pending_messages"

    invoke-virtual {v1, v0, v6}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    const-string v0, "anr_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    const-string v0, "crash_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    const-string v0, "anr_info"

    invoke-virtual {v1, v0, v3}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    const-string v0, "all_thread_stacks"

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/bytedance/tea/crash/g/m;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    invoke-static {}, Lcom/bytedance/tea/crash/e/a/e;->a()Lcom/bytedance/tea/crash/e/a/e;

    move-result-object v0

    sget-object v4, Lcom/bytedance/tea/crash/c;->d:Lcom/bytedance/tea/crash/c;

    invoke-virtual {v0, v4, v1}, Lcom/bytedance/tea/crash/e/a/e;->a(Lcom/bytedance/tea/crash/c;Lcom/bytedance/tea/crash/c/a;)Lcom/bytedance/tea/crash/c/a;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/bytedance/tea/crash/a/c;->d:Landroid/content/Context;

    sget-object v4, Lcom/bytedance/tea/crash/c;->d:Lcom/bytedance/tea/crash/c;

    invoke-virtual {v4}, Lcom/bytedance/tea/crash/c;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/bytedance/tea/crash/g/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/bytedance/tea/crash/upload/a;->a()Lcom/bytedance/tea/crash/upload/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/c/a;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/tea/crash/upload/a;->b(Lorg/json/JSONObject;)V

    .line 158
    invoke-static {v3}, Lcom/bytedance/tea/crash/a/c;->a(Ljava/lang/String;)V
    :try_end_f8
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_f8} :catch_fb

    :cond_f8
    :goto_f8
    move v0, v2

    .line 163
    goto/16 :goto_28

    .line 159
    :catch_fb
    move-exception v0

    .line 160
    invoke-static {v0}, Lcom/bytedance/tea/crash/g/j;->b(Ljava/lang/Throwable;)V

    goto :goto_f8
.end method
