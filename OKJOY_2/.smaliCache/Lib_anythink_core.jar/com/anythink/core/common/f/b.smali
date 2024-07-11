.class public final Lcom/anythink/core/common/f/b;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/anythink/core/common/f/b;


# instance fields
.field private final a:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/content/Context;

.field private i:Ljava/io/File;

.field private j:Ljava/util/concurrent/atomic/AtomicInteger;

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Lcom/anythink/core/common/e/g;

.field private n:Lcom/anythink/core/common/e/a/b$a;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "Agent"

    iput-object v0, p0, Lcom/anythink/core/common/f/b;->a:Ljava/lang/String;

    .line 46
    const/4 v0, 0x5

    iput v0, p0, Lcom/anythink/core/common/f/b;->c:I

    .line 47
    const/16 v0, 0xa

    iput v0, p0, Lcom/anythink/core/common/f/b;->d:I

    .line 49
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/anythink/core/common/f/b;->e:J

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/core/common/f/b;->f:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/anythink/core/common/f/b;->g:Ljava/lang/String;

    .line 59
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/anythink/core/common/f/b;->k:Z

    .line 61
    iput-object v0, p0, Lcom/anythink/core/common/f/b;->l:Ljava/lang/String;

    .line 63
    new-instance v0, Lcom/anythink/core/common/f/b$1;

    invoke-direct {v0, p0}, Lcom/anythink/core/common/f/b$1;-><init>(Lcom/anythink/core/common/f/b;)V

    iput-object v0, p0, Lcom/anythink/core/common/f/b;->m:Lcom/anythink/core/common/e/g;

    .line 88
    new-instance v0, Lcom/anythink/core/common/f/b$2;

    invoke-direct {v0, p0}, Lcom/anythink/core/common/f/b$2;-><init>(Lcom/anythink/core/common/f/b;)V

    iput-object v0, p0, Lcom/anythink/core/common/f/b;->n:Lcom/anythink/core/common/e/a/b$a;

    .line 113
    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/f/b;)Landroid/content/Context;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/anythink/core/common/f/b;->h:Landroid/content/Context;

    return-object p0
.end method

.method public static declared-synchronized a()Lcom/anythink/core/common/f/b;
    .registers 2

    const-class v0, Lcom/anythink/core/common/f/b;

    monitor-enter v0

    .line 105
    :try_start_3
    sget-object v1, Lcom/anythink/core/common/f/b;->b:Lcom/anythink/core/common/f/b;

    if-nez v1, :cond_e

    .line 106
    new-instance v1, Lcom/anythink/core/common/f/b;

    invoke-direct {v1}, Lcom/anythink/core/common/f/b;-><init>()V

    sput-object v1, Lcom/anythink/core/common/f/b;->b:Lcom/anythink/core/common/f/b;

    .line 108
    :cond_e
    sget-object v1, Lcom/anythink/core/common/f/b;->b:Lcom/anythink/core/common/f/b;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 104
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized a(I)V
    .registers 10

    monitor-enter p0

    .line 322
    nop

    .line 324
    const/4 v0, 0x0

    :try_start_3
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/anythink/core/common/f/b;->g:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_13

    .line 326
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 328
    :cond_13
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    iget-object v4, p0, Lcom/anythink/core/common/f/b;->i:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1f} :catch_ab
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_1f} :catch_96
    .catch Ljava/lang/StackOverflowError; {:try_start_3 .. :try_end_1f} :catch_94
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_1f} :catch_8d
    .catchall {:try_start_3 .. :try_end_1f} :catchall_86

    .line 329
    :try_start_1f
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 332
    const/4 v3, 0x0

    move v4, v3

    .line 333
    :goto_26
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_49

    .line 335
    add-int/lit8 v4, v4, 0x1

    .line 336
    if-le v4, p1, :cond_39

    .line 337
    invoke-virtual {v0, v5}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 338
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_26

    .line 340
    :cond_39
    const-string v6, "Agent"

    const-string v7, "Remove log:"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 343
    :cond_49
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    .line 344
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 345
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 347
    iget-object v0, p0, Lcom/anythink/core/common/f/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    sub-int/2addr v4, p1

    if-gez v4, :cond_5c

    goto :goto_63

    :cond_5c
    iget-object v3, p0, Lcom/anythink/core/common/f/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    sub-int/2addr v3, p1

    :goto_63
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 348
    iget-object p1, p0, Lcom/anythink/core/common/f/b;->i:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 349
    iget-object p1, p0, Lcom/anythink/core/common/f/b;->i:Ljava/io/File;

    invoke-virtual {v1, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_70} :catch_83
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1f .. :try_end_70} :catch_80
    .catch Ljava/lang/StackOverflowError; {:try_start_1f .. :try_end_70} :catch_7e
    .catch Ljava/lang/Error; {:try_start_1f .. :try_end_70} :catch_7b
    .catchall {:try_start_1f .. :try_end_70} :catchall_78

    .line 368
    :try_start_70
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_75
    .catchall {:try_start_70 .. :try_end_73} :catchall_b2

    .line 374
    :cond_73
    :goto_73
    monitor-exit p0

    return-void

    .line 370
    :catch_75
    move-exception p1

    .line 375
    monitor-exit p0

    return-void

    .line 363
    :catchall_78
    move-exception p1

    move-object v0, v2

    goto :goto_87

    .line 359
    :catch_7b
    move-exception p1

    move-object v0, v2

    goto :goto_8e

    .line 354
    :catch_7e
    move-exception p1

    goto :goto_81

    :catch_80
    move-exception p1

    :goto_81
    move-object v0, v2

    goto :goto_97

    .line 350
    :catch_83
    move-exception p1

    move-object v0, v2

    goto :goto_ac

    .line 363
    :catchall_86
    move-exception p1

    .line 367
    :goto_87
    if-eqz v0, :cond_73

    .line 368
    :try_start_89
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    goto :goto_73

    .line 359
    :catch_8d
    move-exception p1

    .line 367
    :goto_8e
    if-eqz v0, :cond_73

    .line 368
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_93} :catch_75
    .catchall {:try_start_89 .. :try_end_93} :catchall_b2

    goto :goto_73

    .line 354
    :catch_94
    move-exception p1

    goto :goto_97

    :catch_96
    move-exception p1

    .line 358
    :goto_97
    :try_start_97
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_a0

    .line 367
    if-eqz v0, :cond_73

    .line 368
    :try_start_9c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_75
    .catchall {:try_start_9c .. :try_end_9f} :catchall_b2

    goto :goto_73

    .line 366
    :catchall_a0
    move-exception p1

    .line 367
    if-eqz v0, :cond_a9

    .line 368
    :try_start_a3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_a7
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_b2

    goto :goto_a9

    .line 370
    :catch_a7
    move-exception v0

    goto :goto_aa

    .line 374
    :cond_a9
    :goto_a9
    nop

    .line 375
    :goto_aa
    :try_start_aa
    throw p1
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_b2

    .line 350
    :catch_ab
    move-exception p1

    .line 367
    :goto_ac
    if-eqz v0, :cond_73

    .line 368
    :try_start_ae
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_75
    .catchall {:try_start_ae .. :try_end_b1} :catchall_b2

    goto :goto_73

    .line 321
    :catchall_b2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/anythink/core/common/f/b;I)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcom/anythink/core/common/f/b;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/f/b;Z)Z
    .registers 2

    .line 40
    iput-boolean p1, p0, Lcom/anythink/core/common/f/b;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/anythink/core/common/f/b;)J
    .registers 3

    .line 40
    iget-wide v0, p0, Lcom/anythink/core/common/f/b;->e:J

    return-wide v0
.end method

.method static synthetic c(Lcom/anythink/core/common/f/b;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/anythink/core/common/f/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private declared-synchronized c()V
    .registers 9

    monitor-enter p0

    .line 258
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/f/b;->h:Landroid/content/Context;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_df

    if-nez v0, :cond_7

    .line 259
    monitor-exit p0

    return-void

    .line 262
    :cond_7
    :try_start_7
    iget-boolean v0, p0, Lcom/anythink/core/common/f/b;->k:Z

    if-nez v0, :cond_dd

    iget-object v0, p0, Lcom/anythink/core/common/f/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_dd

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/anythink/core/common/f/b;->c:I

    if-lt v0, v1, :cond_dd

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/common/f/b;->k:Z
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_df

    .line 266
    const/4 v1, 0x0

    .line 268
    const/4 v2, 0x0

    :try_start_1c
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/anythink/core/common/f/b;->i:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_28} :catch_c9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1c .. :try_end_28} :catch_bd
    .catch Ljava/lang/StackOverflowError; {:try_start_1c .. :try_end_28} :catch_bb
    .catchall {:try_start_1c .. :try_end_28} :catchall_b2

    .line 269
    nop

    .line 271
    :try_start_29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    .line 272
    :goto_2f
    iget v5, p0, Lcom/anythink/core/common/f/b;->d:I

    if-ge v4, v5, :cond_4e

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4e

    .line 274
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    const-string v6, "Agent"

    const-string v7, "Try to send:"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    add-int/lit8 v4, v4, 0x1

    .line 277
    goto :goto_2f

    .line 280
    :cond_4e
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v4

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v4

    .line 281
    if-eqz v4, :cond_93

    .line 282
    invoke-virtual {v4}, Lcom/anythink/core/c/a;->d()I

    move-result v5

    packed-switch v5, :pswitch_data_e2

    .line 289
    new-instance v0, Lcom/anythink/core/common/e/b;

    goto :goto_84

    .line 284
    :pswitch_72
    new-instance v5, Lcom/anythink/core/common/e/a/a;

    invoke-direct {v5, v1}, Lcom/anythink/core/common/e/a/a;-><init>(Ljava/util/List;)V

    .line 285
    invoke-virtual {v4}, Lcom/anythink/core/c/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/anythink/core/common/e/a/a;->a(ILjava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/anythink/core/common/f/b;->n:Lcom/anythink/core/common/e/a/b$a;

    invoke-virtual {v5, v0}, Lcom/anythink/core/common/e/a/a;->a(Lcom/anythink/core/common/e/a/b$a;)V

    .line 287
    goto :goto_9f

    .line 289
    :goto_84
    iget-object v5, p0, Lcom/anythink/core/common/f/b;->h:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/anythink/core/c/a;->d()I

    move-result v4

    invoke-direct {v0, v5, v4, v1}, Lcom/anythink/core/common/e/b;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 290
    iget-object v1, p0, Lcom/anythink/core/common/f/b;->m:Lcom/anythink/core/common/e/g;

    invoke-virtual {v0, v2, v1}, Lcom/anythink/core/common/e/b;->a(ILcom/anythink/core/common/e/g;)V

    .line 291
    goto :goto_9f

    .line 294
    :cond_93
    new-instance v0, Lcom/anythink/core/common/e/b;

    iget-object v4, p0, Lcom/anythink/core/common/f/b;->h:Landroid/content/Context;

    invoke-direct {v0, v4, v2, v1}, Lcom/anythink/core/common/e/b;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 295
    iget-object v1, p0, Lcom/anythink/core/common/f/b;->m:Lcom/anythink/core/common/e/g;

    invoke-virtual {v0, v2, v1}, Lcom/anythink/core/common/e/b;->a(ILcom/anythink/core/common/e/g;)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_9f} :catch_af
    .catch Ljava/lang/OutOfMemoryError; {:try_start_29 .. :try_end_9f} :catch_ac
    .catch Ljava/lang/StackOverflowError; {:try_start_29 .. :try_end_9f} :catch_aa
    .catchall {:try_start_29 .. :try_end_9f} :catchall_a7

    .line 311
    :goto_9f
    :try_start_9f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a2} :catch_a4
    .catchall {:try_start_9f .. :try_end_a2} :catchall_df

    .line 315
    :cond_a2
    :goto_a2
    monitor-exit p0

    return-void

    .line 313
    :catch_a4
    move-exception v0

    .line 316
    monitor-exit p0

    return-void

    .line 306
    :catchall_a7
    move-exception v0

    move-object v1, v3

    goto :goto_b3

    .line 303
    :catch_aa
    move-exception v0

    goto :goto_ad

    :catch_ac
    move-exception v0

    :goto_ad
    move-object v1, v3

    goto :goto_be

    .line 298
    :catch_af
    move-exception v0

    move-object v1, v3

    goto :goto_ca

    .line 306
    :catchall_b2
    move-exception v0

    .line 307
    :goto_b3
    :try_start_b3
    iput-boolean v2, p0, Lcom/anythink/core/common/f/b;->k:Z
    :try_end_b5
    .catchall {:try_start_b3 .. :try_end_b5} :catchall_d2

    .line 310
    if-eqz v1, :cond_a2

    .line 311
    :try_start_b7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_ba} :catch_a4
    .catchall {:try_start_b7 .. :try_end_ba} :catchall_df

    goto :goto_a2

    .line 303
    :catch_bb
    move-exception v0

    goto :goto_be

    :catch_bd
    move-exception v0

    .line 304
    :goto_be
    :try_start_be
    iput-boolean v2, p0, Lcom/anythink/core/common/f/b;->k:Z

    .line 305
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_c3
    .catchall {:try_start_be .. :try_end_c3} :catchall_d2

    .line 310
    if-eqz v1, :cond_a2

    .line 311
    :try_start_c5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_c8} :catch_a4
    .catchall {:try_start_c5 .. :try_end_c8} :catchall_df

    goto :goto_a2

    .line 298
    :catch_c9
    move-exception v0

    .line 299
    :goto_ca
    :try_start_ca
    iput-boolean v2, p0, Lcom/anythink/core/common/f/b;->k:Z
    :try_end_cc
    .catchall {:try_start_ca .. :try_end_cc} :catchall_d2

    .line 310
    if-eqz v1, :cond_a2

    .line 311
    :try_start_ce
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d1} :catch_a4
    .catchall {:try_start_ce .. :try_end_d1} :catchall_df

    goto :goto_a2

    .line 309
    :catchall_d2
    move-exception v0

    .line 310
    if-eqz v1, :cond_db

    .line 311
    :try_start_d5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_d8} :catch_d9
    .catchall {:try_start_d5 .. :try_end_d8} :catchall_df

    goto :goto_db

    .line 313
    :catch_d9
    move-exception v1

    goto :goto_dc

    .line 315
    :cond_db
    :goto_db
    nop

    .line 316
    :goto_dc
    :try_start_dc
    throw v0
    :try_end_dd
    .catchall {:try_start_dc .. :try_end_dd} :catchall_df

    .line 318
    :cond_dd
    monitor-exit p0

    return-void

    .line 257
    :catchall_df
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_e2
    .packed-switch 0x1
        :pswitch_72
    .end packed-switch
.end method

.method static synthetic d(Lcom/anythink/core/common/f/b;)I
    .registers 1

    .line 40
    iget p0, p0, Lcom/anythink/core/common/f/b;->c:I

    return p0
.end method

.method static synthetic e(Lcom/anythink/core/common/f/b;)Z
    .registers 1

    .line 40
    iget-boolean p0, p0, Lcom/anythink/core/common/f/b;->k:Z

    return p0
.end method

.method static synthetic f(Lcom/anythink/core/common/f/b;)Ljava/io/File;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/anythink/core/common/f/b;->i:Ljava/io/File;

    return-object p0
.end method

.method static synthetic g(Lcom/anythink/core/common/f/b;)I
    .registers 1

    .line 40
    iget p0, p0, Lcom/anythink/core/common/f/b;->d:I

    return p0
.end method

.method static synthetic h(Lcom/anythink/core/common/f/b;)Lcom/anythink/core/common/e/a/b$a;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/anythink/core/common/f/b;->n:Lcom/anythink/core/common/e/a/b$a;

    return-object p0
.end method

.method static synthetic i(Lcom/anythink/core/common/f/b;)Lcom/anythink/core/common/e/g;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/anythink/core/common/f/b;->m:Lcom/anythink/core/common/e/g;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .registers 8

    .line 116
    const-string v0, "log"

    iget-object v1, p0, Lcom/anythink/core/common/f/b;->h:Landroid/content/Context;

    if-eqz v1, :cond_7

    .line 117
    return-void

    .line 120
    :cond_7
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/f/b;->l:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/f/b;->h:Landroid/content/Context;

    .line 124
    const/4 p1, 0x0

    :try_start_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/core/common/f/b;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_agent_log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/f/b;->f:Ljava/lang/String;

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/core/common/f/b;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_temp_log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/f/b;->g:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/anythink/core/common/f/b;->i:Ljava/io/File;

    if-nez v0, :cond_b7

    .line 128
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/anythink/core/common/f/b;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/anythink/core/common/f/b;->i:Ljava/io/File;

    .line 129
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_aa

    .line 130
    iget-object v0, p0, Lcom/anythink/core/common/f/b;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 132
    :cond_aa
    iget-object v0, p0, Lcom/anythink/core/common/f/b;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b7

    .line 133
    iget-object v0, p0, Lcom/anythink/core/common/f/b;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_b7} :catch_18e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_18 .. :try_end_b7} :catch_174
    .catch Ljava/lang/StackOverflowError; {:try_start_18 .. :try_end_b7} :catch_172
    .catch Ljava/lang/Error; {:try_start_18 .. :try_end_b7} :catch_167
    .catchall {:try_start_18 .. :try_end_b7} :catchall_165

    .line 137
    :cond_b7
    const/4 v0, 0x0

    .line 140
    :try_start_b8
    new-instance v1, Ljava/io/LineNumberReader;

    new-instance v2, Ljava/io/FileReader;

    iget-object v3, p0, Lcom/anythink/core/common/f/b;->i:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_c4} :catch_10f
    .catchall {:try_start_b8 .. :try_end_c4} :catchall_101

    .line 141
    const-wide v2, 0x7fffffffffffffffL

    :try_start_c9
    invoke-virtual {v1, v2, v3}, Ljava/io/LineNumberReader;->skip(J)J

    .line 142
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result v0

    .line 143
    iget-object v2, p0, Lcom/anythink/core/common/f/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v2, :cond_db

    .line 144
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/anythink/core/common/f/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 146
    :cond_db
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V

    .line 147
    const-string v0, "Agent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "init file log count:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/anythink/core/common/f/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_f8} :catch_fe
    .catchall {:try_start_c9 .. :try_end_f8} :catchall_fc

    .line 155
    :try_start_f8
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V
    :try_end_fb
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_fb} :catch_116
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_fb} :catch_18e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f8 .. :try_end_fb} :catch_174
    .catch Ljava/lang/StackOverflowError; {:try_start_f8 .. :try_end_fb} :catch_172
    .catch Ljava/lang/Error; {:try_start_f8 .. :try_end_fb} :catch_167
    .catchall {:try_start_f8 .. :try_end_fb} :catchall_165

    goto :goto_118

    .line 153
    :catchall_fc
    move-exception v0

    goto :goto_105

    .line 148
    :catch_fe
    move-exception v0

    move-object v0, v1

    goto :goto_110

    .line 153
    :catchall_101
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 154
    :goto_105
    if-eqz v1, :cond_10d

    .line 155
    :try_start_107
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V
    :try_end_10a
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_10a} :catch_10b
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_10a} :catch_18e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_107 .. :try_end_10a} :catch_174
    .catch Ljava/lang/StackOverflowError; {:try_start_107 .. :try_end_10a} :catch_172
    .catch Ljava/lang/Error; {:try_start_107 .. :try_end_10a} :catch_167
    .catchall {:try_start_107 .. :try_end_10a} :catchall_165

    goto :goto_10d

    .line 157
    :catch_10b
    move-exception v1

    goto :goto_10e

    .line 161
    :cond_10d
    :goto_10d
    nop

    .line 162
    :goto_10e
    :try_start_10e
    throw v0
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_10f} :catch_18e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10e .. :try_end_10f} :catch_174
    .catch Ljava/lang/StackOverflowError; {:try_start_10e .. :try_end_10f} :catch_172
    .catch Ljava/lang/Error; {:try_start_10e .. :try_end_10f} :catch_167
    .catchall {:try_start_10e .. :try_end_10f} :catchall_165

    .line 148
    :catch_10f
    move-exception v1

    .line 154
    :goto_110
    if-eqz v0, :cond_118

    .line 155
    :try_start_112
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->close()V
    :try_end_115
    .catch Ljava/io/IOException; {:try_start_112 .. :try_end_115} :catch_116
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_115} :catch_18e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_112 .. :try_end_115} :catch_174
    .catch Ljava/lang/StackOverflowError; {:try_start_112 .. :try_end_115} :catch_172
    .catch Ljava/lang/Error; {:try_start_112 .. :try_end_115} :catch_167
    .catchall {:try_start_112 .. :try_end_115} :catchall_165

    goto :goto_118

    .line 157
    :catch_116
    move-exception v0

    .line 162
    goto :goto_119

    .line 161
    :cond_118
    :goto_118
    nop

    .line 164
    :goto_119
    :try_start_119
    iget-object v0, p0, Lcom/anythink/core/common/f/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_124

    .line 165
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/anythink/core/common/f/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 168
    :cond_124
    iget-object v0, p0, Lcom/anythink/core/common/f/b;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/f/b;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->N()I

    move-result v1

    if-eqz v1, :cond_13b

    invoke-virtual {v0}, Lcom/anythink/core/c/a;->N()I

    move-result v1

    goto :goto_13d

    :cond_13b
    iget v1, p0, Lcom/anythink/core/common/f/b;->c:I

    :goto_13d
    iput v1, p0, Lcom/anythink/core/common/f/b;->c:I

    .line 170
    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/anythink/core/common/f/b;->d:I

    .line 171
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->P()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_152

    invoke-virtual {v0}, Lcom/anythink/core/c/a;->P()J

    move-result-wide v0

    goto :goto_154

    :cond_152
    iget-wide v0, p0, Lcom/anythink/core/common/f/b;->e:J

    :goto_154
    iput-wide v0, p0, Lcom/anythink/core/common/f/b;->e:J

    .line 173
    invoke-virtual {p0}, Lcom/anythink/core/common/f/b;->b()V
    :try_end_159
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_159} :catch_18e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_119 .. :try_end_159} :catch_174
    .catch Ljava/lang/StackOverflowError; {:try_start_119 .. :try_end_159} :catch_172
    .catch Ljava/lang/Error; {:try_start_119 .. :try_end_159} :catch_167
    .catchall {:try_start_119 .. :try_end_159} :catchall_165

    .line 187
    iget-object v0, p0, Lcom/anythink/core/common/f/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_199

    .line 188
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    :goto_162
    iput-object v0, p0, Lcom/anythink/core/common/f/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void

    .line 187
    :catchall_165
    move-exception v0

    goto :goto_182

    .line 182
    :catch_167
    move-exception v0

    .line 187
    iget-object v0, p0, Lcom/anythink/core/common/f/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_199

    .line 188
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto :goto_162

    .line 180
    :catch_172
    move-exception v0

    goto :goto_175

    :catch_174
    move-exception v0

    .line 181
    :goto_175
    :try_start_175
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_178
    .catchall {:try_start_175 .. :try_end_178} :catchall_165

    .line 187
    iget-object v0, p0, Lcom/anythink/core/common/f/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_199

    .line 188
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto :goto_162

    .line 187
    :goto_182
    iget-object v1, p0, Lcom/anythink/core/common/f/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v1, :cond_18d

    .line 188
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/anythink/core/common/f/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 190
    :cond_18d
    throw v0

    .line 176
    :catch_18e
    move-exception v0

    .line 187
    iget-object v0, p0, Lcom/anythink/core/common/f/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_199

    .line 188
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto :goto_162

    .line 193
    :cond_199
    return-void
.end method

.method protected final declared-synchronized a(Lcom/anythink/core/common/d/g;)V
    .registers 6

    monitor-enter p0

    .line 199
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/f/b;->i:Ljava/io/File;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/anythink/core/common/f/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_14

    .line 200
    :cond_9
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/b;->a(Landroid/content/Context;)V

    .line 203
    :cond_14
    iget-object v0, p0, Lcom/anythink/core/common/f/b;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/f/b;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->N()I

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {v0}, Lcom/anythink/core/c/a;->N()I

    move-result v1

    goto :goto_2d

    :cond_2b
    iget v1, p0, Lcom/anythink/core/common/f/b;->c:I

    :goto_2d
    iput v1, p0, Lcom/anythink/core/common/f/b;->c:I

    .line 205
    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/anythink/core/common/f/b;->d:I

    .line 206
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->P()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/common/f/b;->e:J
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_9d

    .line 208
    const/4 v0, 0x0

    .line 210
    :try_start_3a
    invoke-virtual {p1}, Lcom/anythink/core/common/d/g;->a()Lorg/json/JSONObject;

    move-result-object p1

    .line 212
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 218
    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/anythink/core/common/f/b;->i:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_4a} :catch_8e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3a .. :try_end_4a} :catch_7a
    .catch Ljava/lang/StackOverflowError; {:try_start_3a .. :try_end_4a} :catch_78
    .catch Ljava/lang/Error; {:try_start_3a .. :try_end_4a} :catch_71
    .catchall {:try_start_3a .. :try_end_4a} :catchall_6f

    .line 220
    :try_start_4a
    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 221
    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 222
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 224
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 227
    iget-object p1, p0, Lcom/anythink/core/common/f/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_5d} :catch_6c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4a .. :try_end_5d} :catch_69
    .catch Ljava/lang/StackOverflowError; {:try_start_4a .. :try_end_5d} :catch_67
    .catch Ljava/lang/Error; {:try_start_4a .. :try_end_5d} :catch_64
    .catchall {:try_start_4a .. :try_end_5d} :catchall_61

    .line 242
    :try_start_5d
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    goto :goto_97

    .line 240
    :catchall_61
    move-exception p1

    move-object v0, v1

    goto :goto_84

    .line 235
    :catch_64
    move-exception p1

    move-object v0, v1

    goto :goto_72

    .line 233
    :catch_67
    move-exception p1

    goto :goto_6a

    :catch_69
    move-exception p1

    :goto_6a
    move-object v0, v1

    goto :goto_7b

    .line 229
    :catch_6c
    move-exception p1

    move-object v0, v1

    goto :goto_8f

    .line 240
    :catchall_6f
    move-exception p1

    goto :goto_84

    .line 235
    :catch_71
    move-exception p1

    .line 241
    :goto_72
    if-eqz v0, :cond_97

    .line 242
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_77} :catch_95
    .catchall {:try_start_5d .. :try_end_77} :catchall_9d

    goto :goto_97

    .line 233
    :catch_78
    move-exception p1

    goto :goto_7b

    :catch_7a
    move-exception p1

    .line 234
    :goto_7b
    :try_start_7b
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_6f

    .line 241
    if-eqz v0, :cond_97

    .line 242
    :try_start_80
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_95
    .catchall {:try_start_80 .. :try_end_83} :catchall_9d

    goto :goto_97

    .line 241
    :goto_84
    if-eqz v0, :cond_8c

    .line 242
    :try_start_86
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8a
    .catchall {:try_start_86 .. :try_end_89} :catchall_9d

    goto :goto_8c

    .line 244
    :catch_8a
    move-exception v0

    goto :goto_8d

    .line 248
    :cond_8c
    :goto_8c
    nop

    .line 249
    :goto_8d
    :try_start_8d
    throw p1
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_9d

    .line 229
    :catch_8e
    move-exception p1

    .line 241
    :goto_8f
    if-eqz v0, :cond_97

    .line 242
    :try_start_91
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_95
    .catchall {:try_start_91 .. :try_end_94} :catchall_9d

    goto :goto_97

    .line 244
    :catch_95
    move-exception p1

    .line 249
    goto :goto_98

    .line 248
    :cond_97
    :goto_97
    nop

    .line 251
    :goto_98
    :try_start_98
    invoke-direct {p0}, Lcom/anythink/core/common/f/b;->c()V
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_9d

    .line 253
    monitor-exit p0

    return-void

    .line 198
    :catchall_9d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()V
    .registers 3

    .line 383
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/f/b$3;

    invoke-direct {v1, p0}, Lcom/anythink/core/common/f/b$3;-><init>(Lcom/anythink/core/common/f/b;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 475
    return-void
.end method
