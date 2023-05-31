.class public final Lcom/anythink/core/b/f/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "Agent_ZSR"

.field private static b:I

.field private static c:I

.field private static d:J

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Landroid/content/Context;

.field private static h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Ljava/io/File;

.field private static j:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static k:Z

.field private static l:Ljava/lang/String;

.field private static m:Lcom/anythink/core/b/e/e;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 35
    const/4 v0, 0x5

    sput v0, Lcom/anythink/core/b/f/b;->b:I

    .line 36
    const/16 v0, 0xa

    sput v0, Lcom/anythink/core/b/f/b;->c:I

    .line 38
    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/anythink/core/b/f/b;->d:J

    .line 40
    const-string v0, ""

    sput-object v0, Lcom/anythink/core/b/f/b;->e:Ljava/lang/String;

    .line 41
    const-string v0, ""

    sput-object v0, Lcom/anythink/core/b/f/b;->f:Ljava/lang/String;

    .line 43
    sput-object v2, Lcom/anythink/core/b/f/b;->g:Landroid/content/Context;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/anythink/core/b/f/b;->h:Ljava/util/HashMap;

    .line 48
    sput-object v2, Lcom/anythink/core/b/f/b;->i:Ljava/io/File;

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/anythink/core/b/f/b;->k:Z

    .line 53
    const-string v0, ""

    sput-object v0, Lcom/anythink/core/b/f/b;->l:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/anythink/core/b/f/b$1;

    invoke-direct {v0}, Lcom/anythink/core/b/f/b$1;-><init>()V

    sput-object v0, Lcom/anythink/core/b/f/b;->m:Lcom/anythink/core/b/e/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(I)V
    .registers 1

    .prologue
    .line 31
    invoke-static {p0}, Lcom/anythink/core/b/f/b;->b(I)V

    return-void
.end method

.method protected static declared-synchronized a(Lcom/anythink/core/b/c/d;)V
    .registers 7

    .prologue
    .line 158
    const-class v1, Lcom/anythink/core/b/f/b;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/anythink/core/b/f/b;->i:Ljava/io/File;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/anythink/core/b/f/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_16

    .line 159
    :cond_b
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/f/b;->a(Landroid/content/Context;)Z

    .line 162
    :cond_16
    sget-object v0, Lcom/anythink/core/b/f/b;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v0

    sget-object v2, Lcom/anythink/core/b/f/b;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v2

    .line 163
    invoke-virtual {v2}, Lcom/anythink/core/c/a;->D()I

    move-result v0

    if-eqz v0, :cond_6f

    invoke-virtual {v2}, Lcom/anythink/core/c/a;->D()I

    move-result v0

    .line 164
    :goto_2c
    sput v0, Lcom/anythink/core/b/f/b;->b:I

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/anythink/core/b/f/b;->c:I

    .line 165
    invoke-virtual {v2}, Lcom/anythink/core/c/a;->F()J

    move-result-wide v2

    sput-wide v2, Lcom/anythink/core/b/f/b;->d:J
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_77

    .line 168
    :try_start_38
    invoke-virtual {p0}, Lcom/anythink/core/b/c/d;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    new-instance v2, Ljava/io/FileWriter;

    sget-object v3, Lcom/anythink/core/b/f/b;->i:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 177
    const-string v3, "Agent_ZSR"

    const-string v4, "onEvent Log :"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v2, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 179
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 180
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    .line 182
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 185
    sget-object v0, Lcom/anythink/core/b/f/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_6a} :catch_7e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_38 .. :try_end_6a} :catch_7c
    .catch Ljava/lang/StackOverflowError; {:try_start_38 .. :try_end_6a} :catch_72
    .catch Ljava/lang/Error; {:try_start_38 .. :try_end_6a} :catch_7a
    .catchall {:try_start_38 .. :try_end_6a} :catchall_77

    .line 199
    :goto_6a
    :try_start_6a
    invoke-static {}, Lcom/anythink/core/b/f/b;->c()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_77

    .line 201
    monitor-exit v1

    return-void

    .line 163
    :cond_6f
    :try_start_6f
    sget v0, Lcom/anythink/core/b/f/b;->b:I

    goto :goto_2c

    .line 192
    :catch_72
    move-exception v0

    :goto_73
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_77

    goto :goto_6a

    .line 158
    :catchall_77
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_7a
    move-exception v0

    goto :goto_6a

    .line 192
    :catch_7c
    move-exception v0

    goto :goto_73

    .line 197
    :catch_7e
    move-exception v0

    goto :goto_6a
.end method

.method static synthetic a()Z
    .registers 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/anythink/core/b/f/b;->k:Z

    return v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Z
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 82
    const-class v4, Lcom/anythink/core/b/f/b;

    monitor-enter v4

    if-nez p0, :cond_9

    .line 150
    :goto_7
    monitor-exit v4

    return v0

    .line 86
    :cond_9
    :try_start_9
    sget-object v2, Lcom/anythink/core/b/f/b;->g:Landroid/content/Context;

    if-eqz v2, :cond_f

    move v0, v1

    .line 87
    goto :goto_7

    .line 90
    :cond_f
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/b/a/e;->f()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/anythink/core/b/f/b;->l:Ljava/lang/String;

    .line 91
    sput-object p0, Lcom/anythink/core/b/f/b;->g:Landroid/content/Context;
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_148

    .line 95
    :try_start_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_agent_log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/anythink/core/b/f/b;->e:Ljava/lang/String;

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_temp_log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/anythink/core/b/f/b;->f:Ljava/lang/String;

    .line 98
    sget-object v2, Lcom/anythink/core/b/f/b;->i:Ljava/io/File;

    if-nez v2, :cond_ba

    .line 99
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/anythink/core/b/f/b;->e:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    sput-object v2, Lcom/anythink/core/b/f/b;->i:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_ad

    .line 101
    sget-object v2, Lcom/anythink/core/b/f/b;->i:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 103
    :cond_ad
    sget-object v2, Lcom/anythink/core/b/f/b;->i:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_ba

    .line 104
    sget-object v2, Lcom/anythink/core/b/f/b;->i:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_ba} :catch_13a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1b .. :try_end_ba} :catch_14d
    .catch Ljava/lang/StackOverflowError; {:try_start_1b .. :try_end_ba} :catch_143
    .catch Ljava/lang/Error; {:try_start_1b .. :try_end_ba} :catch_14b
    .catchall {:try_start_1b .. :try_end_ba} :catchall_148

    .line 110
    :cond_ba
    :try_start_ba
    new-instance v2, Ljava/io/LineNumberReader;

    new-instance v3, Ljava/io/FileReader;

    sget-object v5, Lcom/anythink/core/b/f/b;->i:Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 111
    const-wide v6, 0x7fffffffffffffffL

    invoke-virtual {v2, v6, v7}, Ljava/io/LineNumberReader;->skip(J)J

    .line 112
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result v3

    .line 113
    sget-object v5, Lcom/anythink/core/b/f/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v5, :cond_dd

    .line 114
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v5, Lcom/anythink/core/b/f/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 116
    :cond_dd
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->close()V

    .line 117
    const-string v2, "Agent_ZSR"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "init file log count:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/anythink/core/b/f/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_fa} :catch_12c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_ba .. :try_end_fa} :catch_14d
    .catch Ljava/lang/StackOverflowError; {:try_start_ba .. :try_end_fa} :catch_143
    .catch Ljava/lang/Error; {:try_start_ba .. :try_end_fa} :catch_14b
    .catchall {:try_start_ba .. :try_end_fa} :catchall_148

    .line 130
    :cond_fa
    :goto_fa
    :try_start_fa
    sget-object v2, Lcom/anythink/core/b/f/b;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v2

    sget-object v3, Lcom/anythink/core/b/f/b;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v3

    .line 131
    invoke-virtual {v3}, Lcom/anythink/core/c/a;->D()I

    move-result v2

    if-eqz v2, :cond_13d

    invoke-virtual {v3}, Lcom/anythink/core/c/a;->D()I

    move-result v2

    .line 132
    :goto_110
    sput v2, Lcom/anythink/core/b/f/b;->b:I

    mul-int/lit8 v2, v2, 0x2

    sput v2, Lcom/anythink/core/b/f/b;->c:I

    .line 133
    invoke-virtual {v3}, Lcom/anythink/core/c/a;->F()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-eqz v2, :cond_140

    invoke-virtual {v3}, Lcom/anythink/core/c/a;->F()J

    move-result-wide v2

    :goto_124
    sput-wide v2, Lcom/anythink/core/b/f/b;->d:J

    .line 135
    invoke-static {}, Lcom/anythink/core/b/f/b;->d()V

    :goto_129
    move v0, v1

    .line 150
    goto/16 :goto_7

    .line 122
    :catch_12c
    move-exception v2

    sget-object v2, Lcom/anythink/core/b/f/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v2, :cond_fa

    .line 123
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v2, Lcom/anythink/core/b/f/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    goto :goto_fa

    .line 142
    :catch_13a
    move-exception v1

    goto/16 :goto_7

    .line 131
    :cond_13d
    sget v2, Lcom/anythink/core/b/f/b;->b:I

    goto :goto_110

    .line 133
    :cond_140
    sget-wide v2, Lcom/anythink/core/b/f/b;->d:J
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_142} :catch_13a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_fa .. :try_end_142} :catch_14d
    .catch Ljava/lang/StackOverflowError; {:try_start_fa .. :try_end_142} :catch_143
    .catch Ljava/lang/Error; {:try_start_fa .. :try_end_142} :catch_14b
    .catchall {:try_start_fa .. :try_end_142} :catchall_148

    goto :goto_124

    .line 144
    :catch_143
    move-exception v0

    :goto_144
    :try_start_144
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_147
    .catchall {:try_start_144 .. :try_end_147} :catchall_148

    goto :goto_129

    .line 82
    :catchall_148
    move-exception v0

    monitor-exit v4

    throw v0

    :catch_14b
    move-exception v0

    goto :goto_129

    .line 144
    :catch_14d
    move-exception v0

    goto :goto_144
.end method

.method static synthetic b()Landroid/content/Context;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/anythink/core/b/f/b;->g:Landroid/content/Context;

    return-object v0
.end method

.method private static declared-synchronized b(I)V
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 309
    const-class v2, Lcom/anythink/core/b/f/b;

    monitor-enter v2

    :try_start_4
    new-instance v3, Ljava/io/File;

    sget-object v1, Lcom/anythink/core/b/f/b;->f:Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_14

    .line 311
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 313
    :cond_14
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    sget-object v5, Lcom/anythink/core/b/f/b;->i:Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 314
    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move v1, v0

    .line 318
    :goto_26
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_54

    .line 320
    add-int/lit8 v1, v1, 0x1

    .line 321
    if-le v1, p0, :cond_3c

    .line 322
    invoke-virtual {v5, v6}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 323
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_38} :catch_39
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_38} :catch_4c
    .catch Ljava/lang/StackOverflowError; {:try_start_4 .. :try_end_38} :catch_74
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_38} :catch_80
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_38} :catch_7e
    .catchall {:try_start_4 .. :try_end_38} :catchall_51

    goto :goto_26

    .line 350
    :catch_39
    move-exception v0

    .line 351
    :goto_3a
    monitor-exit v2

    return-void

    .line 325
    :cond_3c
    :try_start_3c
    const-string v7, "Agent_ZSR"

    const-string v8, "Remove log:"

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_4b} :catch_39
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3c .. :try_end_4b} :catch_4c
    .catch Ljava/lang/StackOverflowError; {:try_start_3c .. :try_end_4b} :catch_74
    .catch Ljava/lang/Error; {:try_start_3c .. :try_end_4b} :catch_80
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_4b} :catch_7e
    .catchall {:try_start_3c .. :try_end_4b} :catchall_51

    goto :goto_26

    .line 343
    :catch_4c
    move-exception v0

    :goto_4d
    :try_start_4d
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_51

    goto :goto_3a

    .line 309
    :catchall_51
    move-exception v0

    monitor-exit v2

    throw v0

    .line 328
    :cond_54
    :try_start_54
    invoke-virtual {v5}, Ljava/io/FileWriter;->flush()V

    .line 329
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V

    .line 330
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 332
    sget-object v1, Lcom/anythink/core/b/f/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    sub-int/2addr v4, p0

    if-gez v4, :cond_76

    :goto_66
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 333
    sget-object v0, Lcom/anythink/core/b/f/b;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 334
    sget-object v0, Lcom/anythink/core/b/f/b;->i:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_3a

    .line 343
    :catch_74
    move-exception v0

    goto :goto_4d

    .line 332
    :cond_76
    sget-object v0, Lcom/anythink/core/b/f/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_7b} :catch_39
    .catch Ljava/lang/OutOfMemoryError; {:try_start_54 .. :try_end_7b} :catch_4c
    .catch Ljava/lang/StackOverflowError; {:try_start_54 .. :try_end_7b} :catch_74
    .catch Ljava/lang/Error; {:try_start_54 .. :try_end_7b} :catch_80
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_7b} :catch_7e
    .catchall {:try_start_54 .. :try_end_7b} :catchall_51

    move-result v0

    sub-int/2addr v0, p0

    goto :goto_66

    .line 351
    :catch_7e
    move-exception v0

    goto :goto_3a

    .line 350
    :catch_80
    move-exception v0

    goto :goto_3a
.end method

.method private static declared-synchronized c()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 260
    const-class v3, Lcom/anythink/core/b/f/b;

    monitor-enter v3

    :try_start_4
    sget-object v0, Lcom/anythink/core/b/f/b;->g:Landroid/content/Context;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_93

    if-nez v0, :cond_a

    .line 304
    :cond_8
    :goto_8
    monitor-exit v3

    return-void

    .line 264
    :cond_a
    :try_start_a
    sget-boolean v0, Lcom/anythink/core/b/f/b;->k:Z

    if-nez v0, :cond_8

    sget-object v0, Lcom/anythink/core/b/f/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    sget v1, Lcom/anythink/core/b/f/b;->b:I

    if-lt v0, v1, :cond_8

    .line 266
    const/4 v0, 0x1

    sput-boolean v0, Lcom/anythink/core/b/f/b;->k:Z
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_93

    .line 268
    const/4 v1, 0x0

    .line 270
    :try_start_1c
    new-instance v0, Ljava/io/BufferedReader;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1e} :catch_60
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1c .. :try_end_1e} :catch_c9
    .catch Ljava/lang/StackOverflowError; {:try_start_1c .. :try_end_1e} :catch_6d
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1e} :catch_7e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_8c

    :try_start_1e
    new-instance v4, Ljava/io/FileReader;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_20} :catch_60
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1e .. :try_end_20} :catch_c9
    .catch Ljava/lang/StackOverflowError; {:try_start_1e .. :try_end_20} :catch_9f
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_20} :catch_7e
    .catchall {:try_start_1e .. :try_end_20} :catchall_8c

    :try_start_20
    sget-object v5, Lcom/anythink/core/b/f/b;->i:Ljava/io/File;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_22} :catch_60
    .catch Ljava/lang/OutOfMemoryError; {:try_start_20 .. :try_end_22} :catch_c9
    .catch Ljava/lang/StackOverflowError; {:try_start_20 .. :try_end_22} :catch_a2
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_22} :catch_7e
    .catchall {:try_start_20 .. :try_end_22} :catchall_8c

    :try_start_22
    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_60
    .catch Ljava/lang/OutOfMemoryError; {:try_start_22 .. :try_end_25} :catch_c9
    .catch Ljava/lang/StackOverflowError; {:try_start_22 .. :try_end_25} :catch_a5
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_25} :catch_7e
    .catchall {:try_start_22 .. :try_end_25} :catchall_8c

    :try_start_25
    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_60
    .catch Ljava/lang/OutOfMemoryError; {:try_start_25 .. :try_end_28} :catch_c9
    .catch Ljava/lang/StackOverflowError; {:try_start_25 .. :try_end_28} :catch_a8
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_28} :catch_7e
    .catchall {:try_start_25 .. :try_end_28} :catchall_8c

    .line 273
    :try_start_28
    new-instance v4, Ljava/util/ArrayList;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2a} :catch_ce
    .catch Ljava/lang/OutOfMemoryError; {:try_start_28 .. :try_end_2a} :catch_cc
    .catch Ljava/lang/StackOverflowError; {:try_start_28 .. :try_end_2a} :catch_ab
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2a} :catch_9d
    .catchall {:try_start_28 .. :try_end_2a} :catchall_98

    :try_start_2a
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_ce
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2a .. :try_end_2d} :catch_cc
    .catch Ljava/lang/StackOverflowError; {:try_start_2a .. :try_end_2d} :catch_ad
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2d} :catch_9d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_98

    move v1, v2

    .line 274
    :goto_2e
    :try_start_2e
    sget v2, Lcom/anythink/core/b/f/b;->c:I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_30} :catch_ce
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2e .. :try_end_30} :catch_cc
    .catch Ljava/lang/StackOverflowError; {:try_start_2e .. :try_end_30} :catch_af
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_30} :catch_9d
    .catchall {:try_start_2e .. :try_end_30} :catchall_98

    if-ge v1, v2, :cond_4d

    :try_start_32
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_ce
    .catch Ljava/lang/OutOfMemoryError; {:try_start_32 .. :try_end_35} :catch_cc
    .catch Ljava/lang/StackOverflowError; {:try_start_32 .. :try_end_35} :catch_b1
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_35} :catch_9d
    .catchall {:try_start_32 .. :try_end_35} :catchall_98

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 276
    :try_start_38
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_ce
    .catch Ljava/lang/OutOfMemoryError; {:try_start_38 .. :try_end_3b} :catch_cc
    .catch Ljava/lang/StackOverflowError; {:try_start_38 .. :try_end_3b} :catch_b3
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3b} :catch_9d
    .catchall {:try_start_38 .. :try_end_3b} :catchall_98

    .line 277
    :try_start_3b
    const-string v5, "Agent_ZSR"
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3d} :catch_ce
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3b .. :try_end_3d} :catch_cc
    .catch Ljava/lang/StackOverflowError; {:try_start_3b .. :try_end_3d} :catch_b5
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3d} :catch_9d
    .catchall {:try_start_3b .. :try_end_3d} :catchall_98

    :try_start_3d
    const-string v6, "Try to send:"
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3f} :catch_ce
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3d .. :try_end_3f} :catch_cc
    .catch Ljava/lang/StackOverflowError; {:try_start_3d .. :try_end_3f} :catch_b7
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3f} :catch_9d
    .catchall {:try_start_3d .. :try_end_3f} :catchall_98

    :try_start_3f
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_ce
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3f .. :try_end_42} :catch_cc
    .catch Ljava/lang/StackOverflowError; {:try_start_3f .. :try_end_42} :catch_b9
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_42} :catch_9d
    .catchall {:try_start_3f .. :try_end_42} :catchall_98

    move-result-object v2

    :try_start_43
    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_ce
    .catch Ljava/lang/OutOfMemoryError; {:try_start_43 .. :try_end_46} :catch_cc
    .catch Ljava/lang/StackOverflowError; {:try_start_43 .. :try_end_46} :catch_bb
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_46} :catch_9d
    .catchall {:try_start_43 .. :try_end_46} :catchall_98

    move-result-object v2

    :try_start_47
    invoke-static {v5, v2}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_ce
    .catch Ljava/lang/OutOfMemoryError; {:try_start_47 .. :try_end_4a} :catch_cc
    .catch Ljava/lang/StackOverflowError; {:try_start_47 .. :try_end_4a} :catch_bd
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_4a} :catch_9d
    .catchall {:try_start_47 .. :try_end_4a} :catchall_98

    .line 278
    add-int/lit8 v1, v1, 0x1

    .line 279
    goto :goto_2e

    .line 281
    :cond_4d
    :try_start_4d
    new-instance v1, Lcom/anythink/core/b/e/b;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4f} :catch_ce
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4d .. :try_end_4f} :catch_cc
    .catch Ljava/lang/StackOverflowError; {:try_start_4d .. :try_end_4f} :catch_bf
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4f} :catch_9d
    .catchall {:try_start_4d .. :try_end_4f} :catchall_98

    :try_start_4f
    sget-object v2, Lcom/anythink/core/b/f/b;->g:Landroid/content/Context;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_51} :catch_ce
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4f .. :try_end_51} :catch_cc
    .catch Ljava/lang/StackOverflowError; {:try_start_4f .. :try_end_51} :catch_c1
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_51} :catch_9d
    .catchall {:try_start_4f .. :try_end_51} :catchall_98

    :try_start_51
    invoke-direct {v1, v2, v4}, Lcom/anythink/core/b/e/b;-><init>(Landroid/content/Context;Ljava/util/List;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_ce
    .catch Ljava/lang/OutOfMemoryError; {:try_start_51 .. :try_end_54} :catch_cc
    .catch Ljava/lang/StackOverflowError; {:try_start_51 .. :try_end_54} :catch_c3
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_54} :catch_9d
    .catchall {:try_start_51 .. :try_end_54} :catchall_98

    .line 282
    const/4 v2, 0x0

    :try_start_55
    sget-object v4, Lcom/anythink/core/b/f/b;->m:Lcom/anythink/core/b/e/e;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_57} :catch_ce
    .catch Ljava/lang/OutOfMemoryError; {:try_start_55 .. :try_end_57} :catch_cc
    .catch Ljava/lang/StackOverflowError; {:try_start_55 .. :try_end_57} :catch_c5
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_57} :catch_9d
    .catchall {:try_start_55 .. :try_end_57} :catchall_98

    :try_start_57
    invoke-virtual {v1, v2, v4}, Lcom/anythink/core/b/e/b;->a(ILcom/anythink/core/b/e/e;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_ce
    .catch Ljava/lang/OutOfMemoryError; {:try_start_57 .. :try_end_5a} :catch_cc
    .catch Ljava/lang/StackOverflowError; {:try_start_57 .. :try_end_5a} :catch_c7
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_5a} :catch_9d
    .catchall {:try_start_57 .. :try_end_5a} :catchall_98

    .line 297
    :try_start_5a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_5e
    .catchall {:try_start_5a .. :try_end_5d} :catchall_93

    goto :goto_8

    .line 302
    :catch_5e
    move-exception v0

    goto :goto_8

    .line 285
    :catch_60
    move-exception v0

    move-object v0, v1

    :goto_62
    const/4 v1, 0x0

    :try_start_63
    sput-boolean v1, Lcom/anythink/core/b/f/b;->k:Z
    :try_end_65
    .catchall {:try_start_63 .. :try_end_65} :catchall_98

    .line 296
    if-eqz v0, :cond_8

    .line 297
    :try_start_67
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_6b
    .catchall {:try_start_67 .. :try_end_6a} :catchall_93

    goto :goto_8

    .line 302
    :catch_6b
    move-exception v0

    goto :goto_8

    .line 290
    :catch_6d
    move-exception v0

    move-object v0, v1

    :goto_6f
    move-object v1, v0

    const/4 v0, 0x0

    :try_start_71
    sput-boolean v0, Lcom/anythink/core/b/f/b;->k:Z

    .line 291
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_76
    .catchall {:try_start_71 .. :try_end_76} :catchall_8c

    .line 296
    if-eqz v1, :cond_8

    .line 297
    :try_start_78
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7b} :catch_7c
    .catchall {:try_start_78 .. :try_end_7b} :catchall_93

    goto :goto_8

    .line 302
    :catch_7c
    move-exception v0

    goto :goto_8

    .line 293
    :catch_7e
    move-exception v0

    move-object v0, v1

    :goto_80
    const/4 v1, 0x0

    :try_start_81
    sput-boolean v1, Lcom/anythink/core/b/f/b;->k:Z
    :try_end_83
    .catchall {:try_start_81 .. :try_end_83} :catchall_98

    .line 296
    if-eqz v0, :cond_8

    .line 297
    :try_start_85
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_88} :catch_89
    .catchall {:try_start_85 .. :try_end_88} :catchall_93

    goto :goto_8

    .line 302
    :catch_89
    move-exception v0

    goto/16 :goto_8

    .line 295
    :catchall_8c
    move-exception v0

    .line 296
    :goto_8d
    if-eqz v1, :cond_92

    .line 297
    :try_start_8f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_92} :catch_96
    .catchall {:try_start_8f .. :try_end_92} :catchall_93

    .line 301
    :cond_92
    :goto_92
    :try_start_92
    throw v0
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_93

    .line 260
    :catchall_93
    move-exception v0

    monitor-exit v3

    throw v0

    :catch_96
    move-exception v1

    goto :goto_92

    .line 295
    :catchall_98
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_8d

    .line 293
    :catch_9d
    move-exception v1

    goto :goto_80

    .line 290
    :catch_9f
    move-exception v0

    move-object v0, v1

    goto :goto_6f

    :catch_a2
    move-exception v0

    move-object v0, v1

    goto :goto_6f

    :catch_a5
    move-exception v0

    move-object v0, v1

    goto :goto_6f

    :catch_a8
    move-exception v0

    move-object v0, v1

    goto :goto_6f

    :catch_ab
    move-exception v1

    goto :goto_6f

    :catch_ad
    move-exception v1

    goto :goto_6f

    :catch_af
    move-exception v1

    goto :goto_6f

    :catch_b1
    move-exception v1

    goto :goto_6f

    :catch_b3
    move-exception v1

    goto :goto_6f

    :catch_b5
    move-exception v1

    goto :goto_6f

    :catch_b7
    move-exception v1

    goto :goto_6f

    :catch_b9
    move-exception v1

    goto :goto_6f

    :catch_bb
    move-exception v1

    goto :goto_6f

    :catch_bd
    move-exception v1

    goto :goto_6f

    :catch_bf
    move-exception v1

    goto :goto_6f

    :catch_c1
    move-exception v1

    goto :goto_6f

    :catch_c3
    move-exception v1

    goto :goto_6f

    :catch_c5
    move-exception v1

    goto :goto_6f

    :catch_c7
    move-exception v1

    goto :goto_6f

    :catch_c9
    move-exception v0

    move-object v0, v1

    goto :goto_6f

    :catch_cc
    move-exception v1

    goto :goto_6f

    .line 285
    :catch_ce
    move-exception v1

    goto :goto_62
.end method

.method private static d()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 358
    sget-object v0, Lcom/anythink/core/b/f/b;->g:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 410
    :cond_5
    :goto_5
    return-void

    .line 361
    :cond_6
    sget-object v0, Lcom/anythink/core/b/f/b;->g:Landroid/content/Context;

    sget-object v2, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    const-string v3, "LOG_SEND_TIME"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/anythink/core/b/g/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    sget-wide v4, Lcom/anythink/core/b/f/b;->d:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_30

    sget-object v0, Lcom/anythink/core/b/f/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    sget v2, Lcom/anythink/core/b/f/b;->b:I

    if-lt v0, v2, :cond_5

    .line 363
    :cond_30
    const-string v0, "Agent"

    const-string v2, "sendLogByTime:30 minites"

    invoke-static {v0, v2}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    sget-boolean v0, Lcom/anythink/core/b/f/b;->k:Z

    if-nez v0, :cond_5

    sget-object v0, Lcom/anythink/core/b/f/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/anythink/core/b/f/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_5

    .line 366
    const/4 v0, 0x1

    sput-boolean v0, Lcom/anythink/core/b/f/b;->k:Z

    .line 369
    :try_start_4a
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    sget-object v3, Lcom/anythink/core/b/f/b;->i:Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 372
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 373
    sget v0, Lcom/anythink/core/b/f/b;->c:I

    new-array v0, v0, [Ljava/lang/String;

    move v0, v1

    .line 374
    :goto_60
    sget v4, Lcom/anythink/core/b/f/b;->c:I

    if-ge v0, v4, :cond_7f

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7f

    .line 376
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    const-string v5, "Agent_ZSR"

    const-string v6, "SendLogByTime:"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    add-int/lit8 v0, v0, 0x1

    .line 379
    goto :goto_60

    .line 380
    :cond_7f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 382
    if-nez v0, :cond_8e

    .line 383
    const/4 v0, 0x0

    sput-boolean v0, Lcom/anythink/core/b/f/b;->k:Z
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_87} :catch_89
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4a .. :try_end_87} :catch_9d
    .catch Ljava/lang/StackOverflowError; {:try_start_4a .. :try_end_87} :catch_aa
    .catch Ljava/lang/Error; {:try_start_4a .. :try_end_87} :catch_a5

    goto/16 :goto_5

    .line 392
    :catch_89
    move-exception v0

    sput-boolean v1, Lcom/anythink/core/b/f/b;->k:Z

    goto/16 :goto_5

    .line 387
    :cond_8e
    :try_start_8e
    new-instance v0, Lcom/anythink/core/b/e/b;

    sget-object v2, Lcom/anythink/core/b/f/b;->g:Landroid/content/Context;

    invoke-direct {v0, v2, v3}, Lcom/anythink/core/b/e/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 389
    const/4 v2, 0x0

    sget-object v3, Lcom/anythink/core/b/f/b;->m:Lcom/anythink/core/b/e/e;

    invoke-virtual {v0, v2, v3}, Lcom/anythink/core/b/e/b;->a(ILcom/anythink/core/b/e/e;)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_9b} :catch_89
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8e .. :try_end_9b} :catch_9d
    .catch Ljava/lang/StackOverflowError; {:try_start_8e .. :try_end_9b} :catch_aa
    .catch Ljava/lang/Error; {:try_start_8e .. :try_end_9b} :catch_a5

    goto/16 :goto_5

    .line 397
    :catch_9d
    move-exception v0

    :goto_9e
    sput-boolean v1, Lcom/anythink/core/b/f/b;->k:Z

    .line 401
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_5

    .line 403
    :catch_a5
    move-exception v0

    sput-boolean v1, Lcom/anythink/core/b/f/b;->k:Z

    goto/16 :goto_5

    .line 397
    :catch_aa
    move-exception v0

    goto :goto_9e
.end method
