.class public Lcom/JoyFramework/d/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JoyFramework/d/aj$a;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Lcom/JoyFramework/d/aj;


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/JoyFramework/remote/bean/MoreGameItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sput-object p1, Lcom/JoyFramework/d/aj;->a:Landroid/content/Context;

    .line 59
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/JoyFramework/d/aj;
    .registers 4

    .prologue
    .line 46
    sget-object v0, Lcom/JoyFramework/d/aj;->b:Lcom/JoyFramework/d/aj;

    if-nez v0, :cond_17

    .line 47
    const-class v1, Lcom/JoyFramework/d/aj;

    monitor-enter v1

    .line 48
    :try_start_7
    sget-object v0, Lcom/JoyFramework/d/aj;->b:Lcom/JoyFramework/d/aj;

    if-nez v0, :cond_16

    .line 49
    new-instance v0, Lcom/JoyFramework/d/aj;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/JoyFramework/d/aj;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/JoyFramework/d/aj;->b:Lcom/JoyFramework/d/aj;

    .line 51
    :cond_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_1a

    .line 53
    :cond_17
    sget-object v0, Lcom/JoyFramework/d/aj;->b:Lcom/JoyFramework/d/aj;

    return-object v0

    .line 51
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method static synthetic a(Lcom/JoyFramework/d/aj;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 33
    iput-object p1, p0, Lcom/JoyFramework/d/aj;->c:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/JoyFramework/d/aj;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ILcom/JoyFramework/d/aj$a;)V
    .registers 6

    .prologue
    .line 33
    invoke-direct/range {p0 .. p5}, Lcom/JoyFramework/d/aj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ILcom/JoyFramework/d/aj$a;)V

    return-void
.end method

.method private a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ILcom/JoyFramework/d/aj$a;)V
    .registers 11

    .prologue
    .line 293
    if-nez p1, :cond_3

    .line 361
    :cond_2
    :goto_2
    return-void

    .line 296
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 299
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 303
    const/16 v0, 0x400

    :try_start_11
    new-array v0, v0, [B
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_13} :catch_108

    .line 305
    const/4 v2, 0x0

    .line 307
    :try_start_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/JoyFramework/d/aj;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 308
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_36} :catch_28e
    .catchall {:try_start_14 .. :try_end_36} :catchall_1f4

    .line 309
    :goto_36
    :try_start_36
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_127

    .line 310
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_41} :catch_42
    .catchall {:try_start_36 .. :try_end_41} :catchall_28b

    goto :goto_36

    .line 313
    :catch_42
    move-exception v0

    .line 314
    :goto_43
    :try_start_43
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/JoyFramework/d/aj;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 316
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_76

    .line 317
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 319
    :cond_76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4fdd\u5b58\u672c\u5730\u6587\u4ef6\u5931\u8d25\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/JoyFramework/d/aq;->c(Ljava/lang/String;)V
    :try_end_90
    .catchall {:try_start_43 .. :try_end_90} :catchall_28b

    .line 321
    if-eqz p1, :cond_95

    .line 323
    :try_start_92
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_1d3
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_95} :catch_108

    .line 328
    :cond_95
    :goto_95
    if-eqz v1, :cond_9a

    .line 330
    :try_start_97
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_1d9
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9a} :catch_108

    .line 335
    :cond_9a
    :goto_9a
    :try_start_9a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/JoyFramework/d/aj;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 336
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    const-string v0, ""

    .line 338
    sget-object v0, Lcom/JoyFramework/d/aj$a;->a:Lcom/JoyFramework/d/aj$a;

    if-ne p5, v0, :cond_1df

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-Icon"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    :goto_db
    sget-object v2, Lcom/JoyFramework/d/aj;->a:Landroid/content/Context;

    const-string v3, ""

    invoke-static {v2, v0, v3}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 344
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_fc

    .line 346
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_fc

    .line 347
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 351
    :cond_fc
    sget-object v2, Lcom/JoyFramework/d/aj;->a:Landroid/content/Context;

    invoke-static {v2, p3, v1}, Lcom/JoyFramework/d/bw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    sget-object v2, Lcom/JoyFramework/d/aj;->a:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/JoyFramework/d/bw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_106} :catch_108

    goto/16 :goto_2

    .line 357
    :catch_108
    move-exception v0

    .line 358
    const-string v1, "DownLoadFileUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveFileToDisk: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 312
    :cond_127
    :try_start_127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4fdd\u5b58\u672c\u5730\u6587\u4ef6\u6210\u529f\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/JoyFramework/d/aq;->c(Ljava/lang/String;)V
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_13d} :catch_42
    .catchall {:try_start_127 .. :try_end_13d} :catchall_28b

    .line 321
    if-eqz p1, :cond_142

    .line 323
    :try_start_13f
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_142
    .catch Ljava/io/IOException; {:try_start_13f .. :try_end_142} :catch_1b5
    .catch Ljava/lang/Exception; {:try_start_13f .. :try_end_142} :catch_108

    .line 328
    :cond_142
    :goto_142
    if-eqz v1, :cond_147

    .line 330
    :try_start_144
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_147
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_147} :catch_1ba
    .catch Ljava/lang/Exception; {:try_start_144 .. :try_end_147} :catch_108

    .line 335
    :cond_147
    :goto_147
    :try_start_147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/JoyFramework/d/aj;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 336
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    const-string v0, ""

    .line 338
    sget-object v0, Lcom/JoyFramework/d/aj$a;->a:Lcom/JoyFramework/d/aj$a;

    if-ne p5, v0, :cond_1bf

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-Icon"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    :goto_188
    sget-object v2, Lcom/JoyFramework/d/aj;->a:Landroid/content/Context;

    const-string v3, ""

    invoke-static {v2, v0, v3}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 344
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1a9

    .line 346
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1a9

    .line 347
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 351
    :cond_1a9
    sget-object v2, Lcom/JoyFramework/d/aj;->a:Landroid/content/Context;

    invoke-static {v2, p3, v1}, Lcom/JoyFramework/d/bw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    sget-object v2, Lcom/JoyFramework/d/aj;->a:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/JoyFramework/d/bw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 324
    :catch_1b5
    move-exception v0

    .line 325
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_142

    .line 331
    :catch_1ba
    move-exception v0

    .line 332
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_147

    .line 341
    :cond_1bf
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-Resource"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_188

    .line 324
    :catch_1d3
    move-exception v0

    .line 325
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_95

    .line 331
    :catch_1d9
    move-exception v0

    .line 332
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9a

    .line 341
    :cond_1df
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-Resource"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1f1
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_1f1} :catch_108

    move-result-object v0

    goto/16 :goto_db

    .line 321
    :catchall_1f4
    move-exception v0

    move-object v1, v2

    :goto_1f6
    if-eqz p1, :cond_1fb

    .line 323
    :try_start_1f8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1fb
    .catch Ljava/io/IOException; {:try_start_1f8 .. :try_end_1fb} :catch_26d
    .catch Ljava/lang/Exception; {:try_start_1f8 .. :try_end_1fb} :catch_108

    .line 328
    :cond_1fb
    :goto_1fb
    if-eqz v1, :cond_200

    .line 330
    :try_start_1fd
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_200
    .catch Ljava/io/IOException; {:try_start_1fd .. :try_end_200} :catch_272
    .catch Ljava/lang/Exception; {:try_start_1fd .. :try_end_200} :catch_108

    .line 335
    :cond_200
    :goto_200
    :try_start_200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/JoyFramework/d/aj;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 336
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_26c

    .line 337
    const-string v1, ""

    .line 338
    sget-object v1, Lcom/JoyFramework/d/aj$a;->a:Lcom/JoyFramework/d/aj$a;

    if-ne p5, v1, :cond_277

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-Icon"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 343
    :goto_241
    sget-object v3, Lcom/JoyFramework/d/aj;->a:Landroid/content/Context;

    const-string v4, ""

    invoke-static {v3, v1, v4}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 344
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_262

    .line 346
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_262

    .line 347
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 351
    :cond_262
    sget-object v3, Lcom/JoyFramework/d/aj;->a:Landroid/content/Context;

    invoke-static {v3, p3, v2}, Lcom/JoyFramework/d/bw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    sget-object v3, Lcom/JoyFramework/d/aj;->a:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/JoyFramework/d/bw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_26c
    throw v0

    .line 324
    :catch_26d
    move-exception v2

    .line 325
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1fb

    .line 331
    :catch_272
    move-exception v1

    .line 332
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_200

    .line 341
    :cond_277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-Resource"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_289
    .catch Ljava/lang/Exception; {:try_start_200 .. :try_end_289} :catch_108

    move-result-object v1

    goto :goto_241

    .line 321
    :catchall_28b
    move-exception v0

    goto/16 :goto_1f6

    .line 313
    :catch_28e
    move-exception v0

    move-object v1, v2

    goto/16 :goto_43
.end method


# virtual methods
.method public a(Ljava/lang/String;ILcom/JoyFramework/d/aj$a;)Ljava/lang/Runnable;
    .registers 12

    .prologue
    const/4 v7, 0x0

    .line 214
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v7

    .line 284
    :goto_8
    return-object v0

    .line 219
    :cond_9
    :try_start_9
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 220
    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 222
    sget-object v0, Lcom/JoyFramework/d/aj;->a:Landroid/content/Context;

    const-string v1, ""

    invoke-static {v0, v4, v1}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 225
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_34

    move-object v0, v7

    .line 226
    goto :goto_8

    .line 229
    :cond_34
    if-gez p2, :cond_38

    move-object v0, v7

    .line 230
    goto :goto_8

    .line 233
    :cond_38
    new-instance v0, Lcom/JoyFramework/d/al;

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/JoyFramework/d/al;-><init>(Lcom/JoyFramework/d/aj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/JoyFramework/d/aj$a;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_41} :catch_42

    goto :goto_8

    .line 281
    :catch_42
    move-exception v0

    .line 282
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 283
    const-string v1, "DownLoadFileUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downLoadFile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    .line 284
    goto :goto_8
.end method

.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/JoyFramework/remote/bean/MoreGameItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/JoyFramework/d/aj;->c:Ljava/util/List;

    return-object v0
.end method

.method public b()I
    .registers 3

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/JoyFramework/d/aj;->a()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_8

    .line 80
    const/4 v0, -0x1

    .line 87
    :goto_7
    return v0

    .line 82
    :cond_8
    invoke-virtual {p0}, Lcom/JoyFramework/d/aj;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 83
    invoke-virtual {p0}, Lcom/JoyFramework/d/aj;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 84
    if-ne v1, v0, :cond_1c

    .line 85
    const/4 v0, 0x1

    goto :goto_7

    .line 87
    :cond_1c
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public c()I
    .registers 3

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/JoyFramework/d/aj;->a()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_8

    .line 98
    const/4 v0, -0x1

    .line 105
    :goto_7
    return v0

    .line 100
    :cond_8
    invoke-virtual {p0}, Lcom/JoyFramework/d/aj;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 101
    invoke-virtual {p0}, Lcom/JoyFramework/d/aj;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 102
    if-ne v1, v0, :cond_1c

    .line 103
    const/4 v0, 0x1

    goto :goto_7

    .line 105
    :cond_1c
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public d()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 116
    iget-object v0, p0, Lcom/JoyFramework/d/aj;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 118
    iget-object v1, p0, Lcom/JoyFramework/d/aj;->c:Ljava/util/List;

    if-eqz v1, :cond_42

    if-lez v0, :cond_42

    .line 119
    iget-object v0, p0, Lcom/JoyFramework/d/aj;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 120
    const/4 v0, 0x0

    move v1, v0

    :goto_19
    if-ge v1, v3, :cond_42

    .line 121
    iget-object v0, p0, Lcom/JoyFramework/d/aj;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/MoreGameItem;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/MoreGameItem;->h()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 123
    sget-object v4, Lcom/JoyFramework/d/aj;->a:Landroid/content/Context;

    const-string v5, ""

    invoke-static {v4, v0, v5}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 125
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_3e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_19

    .line 130
    :cond_42
    return-object v2
.end method

.method public e()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 140
    iget-object v0, p0, Lcom/JoyFramework/d/aj;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 142
    iget-object v1, p0, Lcom/JoyFramework/d/aj;->c:Ljava/util/List;

    if-eqz v1, :cond_42

    if-lez v0, :cond_42

    .line 143
    iget-object v0, p0, Lcom/JoyFramework/d/aj;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 144
    const/4 v0, 0x0

    move v1, v0

    :goto_19
    if-ge v1, v3, :cond_42

    .line 145
    iget-object v0, p0, Lcom/JoyFramework/d/aj;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/MoreGameItem;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/MoreGameItem;->d()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 147
    sget-object v4, Lcom/JoyFramework/d/aj;->a:Landroid/content/Context;

    const-string v5, ""

    invoke-static {v4, v0, v5}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 149
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_3e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_19

    .line 154
    :cond_42
    return-object v2
.end method

.method public f()V
    .registers 7

    .prologue
    .line 159
    invoke-static {}, Lcom/JoyFramework/remote/a/a;->c()Ljava/util/HashMap;

    move-result-object v0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/JoyFramework/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/JoyFramework/a/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/JoyFramework/remote/b/d/f;->a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-static {}, Lcom/JoyFramework/remote/b/d/b;->a()Lcom/JoyFramework/remote/b/d/b;

    move-result-object v1

    new-instance v2, Lcom/JoyFramework/remote/b/c/b;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sget-object v4, Lcom/JoyFramework/d/aj;->a:Landroid/content/Context;

    new-instance v5, Lcom/JoyFramework/d/ak;

    invoke-direct {v5, p0}, Lcom/JoyFramework/d/ak;-><init>(Lcom/JoyFramework/d/aj;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/JoyFramework/remote/b/c/b;-><init>(Ljava/lang/Boolean;Landroid/content/Context;Lcom/JoyFramework/remote/b/c/c;)V

    invoke-virtual {v1, v0, v2}, Lcom/JoyFramework/remote/b/d/b;->moreGame(Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;

    .line 205
    return-void
.end method
