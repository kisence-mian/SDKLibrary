.class public Lcom/kwad/sdk/c/f/h;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/kwad/sdk/a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "rep.log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/kwad/sdk/c/f/h;->a:Ljava/io/File;

    sget-object v0, Lcom/kwad/sdk/c/f/h;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1a

    :try_start_15
    sget-object v0, Lcom/kwad/sdk/c/f/h;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1a} :catch_1b

    :cond_1a
    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    goto :goto_1a
.end method

.method private a(Ljava/io/Closeable;)V
    .registers 3

    if-eqz p1, :cond_5

    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method private declared-synchronized c()V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_2
    sget-object v0, Lcom/kwad/sdk/c/f/h;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/kwad/sdk/c/f/h;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_f
    new-instance v1, Ljava/io/FileWriter;

    sget-object v0, Lcom/kwad/sdk/c/f/h;->a:Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_16} :catch_38
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_35
    .catchall {:try_start_2 .. :try_end_16} :catchall_2f

    :try_start_16
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1e} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1e} :catch_23
    .catchall {:try_start_16 .. :try_end_1e} :catchall_3b

    :try_start_1e
    invoke-direct {p0, v1}, Lcom/kwad/sdk/c/f/h;->a(Ljava/io/Closeable;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_29

    :goto_21
    monitor-exit p0

    return-void

    :catch_23
    move-exception v0

    move-object v0, v1

    :goto_25
    :try_start_25
    invoke-direct {p0, v0}, Lcom/kwad/sdk/c/f/h;->a(Ljava/io/Closeable;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_21

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_2c
    move-exception v0

    move-object v0, v1

    goto :goto_25

    :catchall_2f
    move-exception v0

    move-object v1, v2

    :goto_31
    :try_start_31
    invoke-direct {p0, v1}, Lcom/kwad/sdk/c/f/h;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_35
    .catchall {:try_start_31 .. :try_end_35} :catchall_29

    :catch_35
    move-exception v0

    move-object v0, v2

    goto :goto_25

    :catch_38
    move-exception v0

    move-object v0, v2

    goto :goto_25

    :catchall_3b
    move-exception v0

    goto :goto_31
.end method


# virtual methods
.method declared-synchronized a()Ljava/util/List;
    .registers 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kwad/sdk/c/f/g;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/kwad/sdk/c/f/h;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1b

    sget-object v1, Lcom/kwad/sdk/c/f/h;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_44

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_1d

    :cond_1b
    :goto_1b
    monitor-exit p0

    return-object v0

    :cond_1d
    :try_start_1d
    new-instance v2, Ljava/io/FileInputStream;

    sget-object v1, Lcom/kwad/sdk/c/f/h;->a:Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_24} :catch_96
    .catchall {:try_start_1d .. :try_end_24} :catchall_92

    :try_start_24
    new-instance v5, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v5, v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2b} :catch_8e
    .catchall {:try_start_24 .. :try_end_2b} :catchall_8b

    :try_start_2b
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_30} :catch_87
    .catchall {:try_start_2b .. :try_end_30} :catchall_9a

    move-object v1, v3

    :goto_31
    :try_start_31
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_61
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_53
    .catchall {:try_start_31 .. :try_end_34} :catchall_47

    move-result-object v6

    :goto_35
    if-nez v6, :cond_64

    :try_start_37
    invoke-direct {p0}, Lcom/kwad/sdk/c/f/h;->c()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_53
    .catchall {:try_start_37 .. :try_end_3a} :catchall_47

    :try_start_3a
    invoke-direct {p0, v4}, Lcom/kwad/sdk/c/f/h;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v5}, Lcom/kwad/sdk/c/f/h;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v2}, Lcom/kwad/sdk/c/f/h;->a(Ljava/io/Closeable;)V
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_44

    goto :goto_1b

    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_47
    move-exception v0

    move-object v3, v4

    :goto_49
    :try_start_49
    invoke-direct {p0, v3}, Lcom/kwad/sdk/c/f/h;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v5}, Lcom/kwad/sdk/c/f/h;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v2}, Lcom/kwad/sdk/c/f/h;->a(Ljava/io/Closeable;)V

    throw v0

    :catch_53
    move-exception v1

    move-object v1, v2

    move-object v3, v4

    move-object v2, v5

    :goto_57
    invoke-direct {p0, v3}, Lcom/kwad/sdk/c/f/h;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v2}, Lcom/kwad/sdk/c/f/h;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v1}, Lcom/kwad/sdk/c/f/h;->a(Ljava/io/Closeable;)V
    :try_end_60
    .catchall {:try_start_49 .. :try_end_60} :catchall_44

    goto :goto_1b

    :catch_61
    move-exception v6

    move-object v6, v1

    goto :goto_35

    :cond_64
    :try_start_64
    new-instance v1, Ljava/lang/String;

    invoke-static {}, Lcom/kwad/sdk/c/b/a;->b()Lcom/kwad/sdk/c/b/a$a;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/kwad/sdk/c/b/a$a;->a([B)[B

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v1, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_77
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_64 .. :try_end_77} :catch_81
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_77} :catch_53
    .catchall {:try_start_64 .. :try_end_77} :catchall_47

    :goto_77
    :try_start_77
    new-instance v7, Lcom/kwad/sdk/c/f/g;

    invoke-direct {v7, v1}, Lcom/kwad/sdk/c/f/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v6

    goto :goto_31

    :catch_81
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_85} :catch_53
    .catchall {:try_start_77 .. :try_end_85} :catchall_47

    move-object v1, v3

    goto :goto_77

    :catch_87
    move-exception v1

    move-object v1, v2

    move-object v2, v5

    goto :goto_57

    :catchall_8b
    move-exception v0

    move-object v5, v3

    goto :goto_49

    :catch_8e
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_57

    :catchall_92
    move-exception v0

    move-object v2, v3

    move-object v5, v3

    goto :goto_49

    :catch_96
    move-exception v1

    move-object v1, v3

    move-object v2, v3

    goto :goto_57

    :catchall_9a
    move-exception v0

    goto :goto_49
.end method

.method declared-synchronized a(Lcom/kwad/sdk/c/f/g;)V
    .registers 8
    .param p1    # Lcom/kwad/sdk/c/f/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v0, Lcom/kwad/sdk/c/f/h;->a:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_a} :catch_8f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_8b
    .catchall {:try_start_2 .. :try_end_a} :catchall_87

    :try_start_a
    new-instance v4, Ljava/io/OutputStreamWriter;

    const-string v0, "UTF-8"

    invoke-direct {v4, v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_11} :catch_83
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_7f
    .catchall {:try_start_a .. :try_end_11} :catchall_7c

    :try_start_11
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_16} :catch_78
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_74
    .catchall {:try_start_11 .. :try_end_16} :catchall_93

    :try_start_16
    invoke-virtual {p1}, Lcom/kwad/sdk/c/f/g;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_95

    invoke-static {}, Lcom/kwad/sdk/c/b/a;->c()Lcom/kwad/sdk/c/b/a$b;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/kwad/sdk/c/b/a$b;->a([B)[B

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v2, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_4d} :catch_6f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_4d} :catch_6a
    .catchall {:try_start_16 .. :try_end_4d} :catchall_5b

    move-object v0, v1

    move-object v2, v3

    move-object v1, v4

    :goto_50
    :try_start_50
    invoke-direct {p0, v2}, Lcom/kwad/sdk/c/f/h;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v1}, Lcom/kwad/sdk/c/f/h;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v0}, Lcom/kwad/sdk/c/f/h;->a(Ljava/io/Closeable;)V
    :try_end_59
    .catchall {:try_start_50 .. :try_end_59} :catchall_67

    monitor-exit p0

    return-void

    :catchall_5b
    move-exception v0

    move-object v2, v3

    :goto_5d
    :try_start_5d
    invoke-direct {p0, v2}, Lcom/kwad/sdk/c/f/h;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v4}, Lcom/kwad/sdk/c/f/h;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v1}, Lcom/kwad/sdk/c/f/h;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_67
    .catchall {:try_start_5d .. :try_end_67} :catchall_67

    :catchall_67
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_6a
    move-exception v0

    move-object v0, v1

    move-object v2, v3

    move-object v1, v4

    goto :goto_50

    :catch_6f
    move-exception v0

    move-object v0, v1

    move-object v2, v3

    move-object v1, v4

    goto :goto_50

    :catch_74
    move-exception v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_50

    :catch_78
    move-exception v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_50

    :catchall_7c
    move-exception v0

    move-object v4, v2

    goto :goto_5d

    :catch_7f
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_50

    :catch_83
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_50

    :catchall_87
    move-exception v0

    move-object v1, v2

    move-object v4, v2

    goto :goto_5d

    :catch_8b
    move-exception v0

    move-object v0, v2

    move-object v1, v2

    goto :goto_50

    :catch_8f
    move-exception v0

    move-object v0, v2

    move-object v1, v2

    goto :goto_50

    :catchall_93
    move-exception v0

    goto :goto_5d

    :cond_95
    move-object v0, v1

    move-object v2, v3

    move-object v1, v4

    goto :goto_50
.end method

.method declared-synchronized a(Ljava/util/List;)V
    .registers 10
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kwad/sdk/c/f/g;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v0, Lcom/kwad/sdk/c/f/h;->a:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_96
    .catchall {:try_start_2 .. :try_end_a} :catchall_92

    :try_start_a
    new-instance v4, Ljava/io/OutputStreamWriter;

    const-string v0, "UTF-8"

    invoke-direct {v4, v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_8e
    .catchall {:try_start_a .. :try_end_11} :catchall_8b

    :try_start_11
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_87
    .catchall {:try_start_11 .. :try_end_16} :catchall_9a

    :try_start_16
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1a
    :goto_1a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/c/f/g;

    invoke-virtual {v0}, Lcom/kwad/sdk/c/f/g;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1a

    invoke-static {}, Lcom/kwad/sdk/c/b/a;->c()Lcom/kwad/sdk/c/b/a$b;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/kwad/sdk/c/b/a$b;->a([B)[B
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_3f} :catch_63
    .catchall {:try_start_16 .. :try_end_3f} :catchall_78

    move-result-object v6

    :try_start_40
    new-instance v0, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v0, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_47
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_40 .. :try_end_47} :catch_72
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_47} :catch_63
    .catchall {:try_start_40 .. :try_end_47} :catchall_78

    :goto_47
    :try_start_47
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_5d} :catch_5e
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_5d} :catch_63
    .catchall {:try_start_47 .. :try_end_5d} :catchall_78

    goto :goto_1a

    :catch_5e
    move-exception v0

    :try_start_5f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_62} :catch_63
    .catchall {:try_start_5f .. :try_end_62} :catchall_78

    goto :goto_1a

    :catch_63
    move-exception v0

    move-object v0, v1

    move-object v2, v3

    move-object v1, v4

    :goto_67
    :try_start_67
    invoke-direct {p0, v2}, Lcom/kwad/sdk/c/f/h;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v1}, Lcom/kwad/sdk/c/f/h;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v0}, Lcom/kwad/sdk/c/f/h;->a(Ljava/io/Closeable;)V
    :try_end_70
    .catchall {:try_start_67 .. :try_end_70} :catchall_84

    monitor-exit p0

    return-void

    :catch_72
    move-exception v0

    :try_start_73
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_76} :catch_63
    .catchall {:try_start_73 .. :try_end_76} :catchall_78

    move-object v0, v2

    goto :goto_47

    :catchall_78
    move-exception v0

    move-object v2, v3

    :goto_7a
    :try_start_7a
    invoke-direct {p0, v2}, Lcom/kwad/sdk/c/f/h;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v4}, Lcom/kwad/sdk/c/f/h;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v1}, Lcom/kwad/sdk/c/f/h;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_84

    :catchall_84
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_87
    move-exception v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_67

    :catchall_8b
    move-exception v0

    move-object v4, v2

    goto :goto_7a

    :catch_8e
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_67

    :catchall_92
    move-exception v0

    move-object v1, v2

    move-object v4, v2

    goto :goto_7a

    :catch_96
    move-exception v0

    move-object v0, v2

    move-object v1, v2

    goto :goto_67

    :catchall_9a
    move-exception v0

    goto :goto_7a

    :cond_9c
    move-object v0, v1

    move-object v2, v3

    move-object v1, v4

    goto :goto_67
.end method

.method declared-synchronized b()J
    .registers 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v2, 0x0

    monitor-enter p0

    const-wide/16 v4, 0x0

    :try_start_4
    new-instance v1, Ljava/io/FileInputStream;

    sget-object v0, Lcom/kwad/sdk/c/f/h;->a:Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_b} :catch_5f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_5b
    .catchall {:try_start_4 .. :try_end_b} :catchall_57

    :try_start_b
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_53
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_4f
    .catchall {:try_start_b .. :try_end_10} :catchall_4c

    :try_start_10
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_48
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_44
    .catchall {:try_start_10 .. :try_end_15} :catchall_63

    :goto_15
    :try_start_15
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_30
    .catchall {:try_start_15 .. :try_end_18} :catchall_1f

    move-result-object v2

    if-eqz v2, :cond_65

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    goto :goto_15

    :catchall_1f
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    :goto_23
    :try_start_23
    invoke-direct {p0, v2}, Lcom/kwad/sdk/c/f/h;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v3}, Lcom/kwad/sdk/c/f/h;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v1}, Lcom/kwad/sdk/c/f/h;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_30
    move-exception v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v3

    :goto_34
    :try_start_34
    invoke-direct {p0, v2}, Lcom/kwad/sdk/c/f/h;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v1}, Lcom/kwad/sdk/c/f/h;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v0}, Lcom/kwad/sdk/c/f/h;->a(Ljava/io/Closeable;)V
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_2d

    monitor-exit p0

    return-wide v4

    :catch_3f
    move-exception v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_34

    :catch_44
    move-exception v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_34

    :catch_48
    move-exception v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_34

    :catchall_4c
    move-exception v0

    move-object v3, v2

    goto :goto_23

    :catch_4f
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_34

    :catch_53
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_34

    :catchall_57
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_23

    :catch_5b
    move-exception v0

    move-object v0, v2

    move-object v1, v2

    goto :goto_34

    :catch_5f
    move-exception v0

    move-object v0, v2

    move-object v1, v2

    goto :goto_34

    :catchall_63
    move-exception v0

    goto :goto_23

    :cond_65
    move-object v2, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_34
.end method
