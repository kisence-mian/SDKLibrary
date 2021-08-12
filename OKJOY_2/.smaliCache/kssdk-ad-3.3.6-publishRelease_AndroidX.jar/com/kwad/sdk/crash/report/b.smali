.class public abstract Lcom/kwad/sdk/crash/report/b;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/kwad/sdk/crash/report/c;

.field protected b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/kwad/sdk/crash/report/b;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_15

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    const/16 v1, 0x2d

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_15
    return-object p1
.end method


# virtual methods
.method protected abstract a(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Lcom/kwad/sdk/crash/model/message/ExceptionMessage;
.end method

.method public a(Lcom/kwad/sdk/crash/report/c;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/crash/report/b;->a:Lcom/kwad/sdk/crash/report/c;

    return-void
.end method

.method public a(Ljava/io/File;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportException dir ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExceptionCollector"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/kwad/sdk/crash/report/b$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/crash/report/b$1;-><init>(Lcom/kwad/sdk/crash/report/b;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_23
    if-ge v1, v0, :cond_2d

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/kwad/sdk/crash/report/b;->b(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_2d
    return-void
.end method

.method protected a(Ljava/io/File;Lcom/kwad/sdk/crash/model/message/ExceptionMessage;)V
    .registers 9

    :try_start_0
    new-instance v0, Lcom/kwad/sdk/crash/model/message/MemoryInfo;

    iget-object v1, p2, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mMemoryInfo:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/crash/model/message/MemoryInfo;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_9b

    const/4 v2, 0x0

    :try_start_d
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_17} :catch_8f
    .catchall {:try_start_d .. :try_end_17} :catchall_8d

    :try_start_17
    new-instance p1, Lcom/kwad/sdk/crash/model/message/ThreadInfo;

    invoke-direct {p1}, Lcom/kwad/sdk/crash/model/message/ThreadInfo;-><init>()V

    :goto_1c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_77

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/kwad/sdk/crash/model/message/ThreadInfo;

    invoke-direct {p1}, Lcom/kwad/sdk/crash/model/message/ThreadInfo;-><init>()V

    goto :goto_1c

    :cond_31
    const-string v4, "at "

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_45

    const-string v4, "(no "

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_42

    goto :goto_45

    :cond_42
    iput-object v2, p1, Lcom/kwad/sdk/crash/model/message/ThreadInfo;->mName:Ljava/lang/String;

    goto :goto_1c

    :cond_45
    :goto_45
    iget-object v4, p1, Lcom/kwad/sdk/crash/model/message/ThreadInfo;->mTrace:Ljava/lang/String;

    if-nez v4, :cond_4a

    goto :goto_5d

    :cond_4a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/kwad/sdk/crash/model/message/ThreadInfo;->mTrace:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5d
    iput-object v2, p1, Lcom/kwad/sdk/crash/model/message/ThreadInfo;->mTrace:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/kwad/sdk/crash/model/message/ThreadInfo;->mTrace:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "#"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/kwad/sdk/crash/model/message/ThreadInfo;->mTrace:Ljava/lang/String;

    goto :goto_1c

    :cond_77
    iput-object v1, v0, Lcom/kwad/sdk/crash/model/message/MemoryInfo;->mJavaThreads:Ljava/util/List;

    invoke-virtual {v0}, Lcom/kwad/sdk/crash/model/message/MemoryInfo;->toJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mMemoryInfo:Ljava/lang/String;
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_83} :catch_8a
    .catchall {:try_start_17 .. :try_end_83} :catchall_87

    :try_start_83
    invoke-static {v3}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/Reader;)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_86} :catch_9b

    goto :goto_9f

    :catchall_87
    move-exception p1

    move-object v2, v3

    goto :goto_97

    :catch_8a
    move-exception p1

    move-object v2, v3

    goto :goto_90

    :catchall_8d
    move-exception p1

    goto :goto_97

    :catch_8f
    move-exception p1

    :goto_90
    :try_start_90
    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_8d

    :try_start_93
    invoke-static {v2}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/Reader;)V

    goto :goto_9f

    :goto_97
    invoke-static {v2}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/Reader;)V

    throw p1
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_9b} :catch_9b

    :catch_9b
    move-exception p1

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :goto_9f
    return-void
.end method

.method public b(Ljava/io/File;)V
    .registers 14

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/crash/utils/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".msg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".blog"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jtrace"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :try_start_6d
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/kwad/sdk/crash/report/b;->a(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Lcom/kwad/sdk/crash/model/message/ExceptionMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/crash/report/b;->a:Lcom/kwad/sdk/crash/report/c;

    invoke-interface {v1, v0}, Lcom/kwad/sdk/crash/report/c;->a(Lcom/kwad/sdk/crash/model/message/ExceptionMessage;)V

    invoke-static {v3}, Lcom/kwad/sdk/crash/utils/f;->a(Ljava/io/File;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/io/File;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v8, 0x1

    aput-object v3, v6, v8

    invoke-static {v1, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8e
    :goto_8e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_8e

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_8e

    :cond_a4
    new-instance v6, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    const-string v9, "custom"

    invoke-direct {v6, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_ed

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    array-length v8, v6

    :goto_be
    if-ge v7, v8, :cond_ea

    aget-object v9, v6, v7

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_e7

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mLogUUID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_e4

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mLogUUID:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/kwad/sdk/crash/report/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e7

    :cond_e4
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e7
    add-int/lit8 v7, v7, 0x1

    goto :goto_be

    :cond_ea
    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_ed
    .catchall {:try_start_6d .. :try_end_ed} :catchall_127

    :cond_ed
    :try_start_ed
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/crash/utils/h;->b(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/crash/utils/h;->b(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/crash/utils/h;->b(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_106
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/crash/utils/h;->b(Ljava/lang/String;)V

    goto :goto_106

    :cond_11a
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/crash/utils/h;->b(Ljava/lang/String;)V

    sget-object p1, Lcom/kwad/sdk/crash/c/b;->b:Ljava/io/File;

    invoke-static {p1}, Lcom/kwad/sdk/crash/utils/f;->b(Ljava/io/File;)V
    :try_end_126
    .catchall {:try_start_ed .. :try_end_126} :catchall_170

    goto :goto_174

    :catchall_127
    move-exception v0

    :try_start_128
    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/kwad/sdk/crash/report/b;->a:Lcom/kwad/sdk/crash/report/c;

    const-string v6, "report_ex_error"

    invoke-static {v0}, Lcom/kwad/sdk/crash/utils/f;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v6, v0}, Lcom/kwad/sdk/crash/report/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_136
    .catchall {:try_start_128 .. :try_end_136} :catchall_175

    :try_start_136
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/crash/utils/h;->b(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/crash/utils/h;->b(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/crash/utils/h;->b(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_163

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/crash/utils/h;->b(Ljava/lang/String;)V

    goto :goto_14f

    :cond_163
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/crash/utils/h;->b(Ljava/lang/String;)V

    sget-object p1, Lcom/kwad/sdk/crash/c/b;->b:Ljava/io/File;

    invoke-static {p1}, Lcom/kwad/sdk/crash/utils/f;->b(Ljava/io/File;)V
    :try_end_16f
    .catchall {:try_start_136 .. :try_end_16f} :catchall_170

    goto :goto_174

    :catchall_170
    move-exception p1

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :goto_174
    return-void

    :catchall_175
    move-exception v0

    :try_start_176
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/crash/utils/h;->b(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/crash/utils/h;->b(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/crash/utils/h;->b(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_18f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/crash/utils/h;->b(Ljava/lang/String;)V

    goto :goto_18f

    :cond_1a3
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/crash/utils/h;->b(Ljava/lang/String;)V

    sget-object p1, Lcom/kwad/sdk/crash/c/b;->b:Ljava/io/File;

    invoke-static {p1}, Lcom/kwad/sdk/crash/utils/f;->b(Ljava/io/File;)V
    :try_end_1af
    .catchall {:try_start_176 .. :try_end_1af} :catchall_1b0

    goto :goto_1b4

    :catchall_1b0
    move-exception p1

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :goto_1b4
    throw v0
.end method

.method protected b(Ljava/io/File;Lcom/kwad/sdk/crash/model/message/ExceptionMessage;)V
    .registers 9

    const-string v0, "JNI DETECTED ERROR IN APPLICATION"

    const-string v1, "\n"

    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_f} :catch_17f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_164
    .catchall {:try_start_5 .. :try_end_f} :catchall_162

    const/4 p1, 0x0

    :cond_10
    :goto_10
    :try_start_10
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_155

    if-nez p1, :cond_2a

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mJNIError:Ljava/lang/String;

    const/4 p1, 0x1

    goto :goto_10

    :cond_2a
    const-string v4, "Waiting for a blocking GC "

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_123

    const-string v4, "WaitForGcToComplete"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3c

    goto/16 :goto_123

    :cond_3c
    const-string v4, "dvm_lock_sample"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_75

    iget-object v4, p2, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mLockInfo:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    :goto_59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_72

    :cond_5e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p2, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mLockInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_59

    :goto_72
    iput-object v2, p2, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mLockInfo:Ljava/lang/String;

    goto :goto_10

    :cond_75
    const-string v4, "Long monitor"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_af

    iget-object v4, p2, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mMonitorInfo:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_97

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    :goto_92
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_ab

    :cond_97
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p2, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mMonitorInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_92

    :goto_ab
    iput-object v2, p2, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mMonitorInfo:Ljava/lang/String;

    goto/16 :goto_10

    :cond_af
    const-string v4, "Slow Looper"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e9

    iget-object v4, p2, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mSlowLooper:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    :goto_cc
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_e5

    :cond_d1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p2, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mSlowLooper:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_cc

    :goto_e5
    iput-object v2, p2, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mSlowLooper:Ljava/lang/String;

    goto/16 :goto_10

    :cond_e9
    const-string v4, "Slow Operation"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p2, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mSlowOperation:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    :goto_106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_11f

    :cond_10b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p2, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mSlowOperation:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_106

    :goto_11f
    iput-object v2, p2, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mSlowOperation:Ljava/lang/String;

    goto/16 :goto_10

    :cond_123
    :goto_123
    iget-object v4, p2, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mGCInfo:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    :goto_138
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_151

    :cond_13d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p2, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mGCInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_138

    :goto_151
    iput-object v2, p2, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mGCInfo:Ljava/lang/String;
    :try_end_153
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_153} :catch_15f
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_153} :catch_15c
    .catchall {:try_start_10 .. :try_end_153} :catchall_159

    goto/16 :goto_10

    :cond_155
    invoke-static {v3}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/Reader;)V

    goto :goto_19b

    :catchall_159
    move-exception p1

    move-object v2, v3

    goto :goto_19c

    :catch_15c
    move-exception p1

    move-object v2, v3

    goto :goto_165

    :catch_15f
    move-exception p1

    move-object v2, v3

    goto :goto_180

    :catchall_162
    move-exception p1

    goto :goto_19c

    :catch_164
    move-exception p1

    :goto_165
    :try_start_165
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/kwad/sdk/crash/report/b;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_17c
    iput-object p1, p0, Lcom/kwad/sdk/crash/report/b;->b:Ljava/lang/String;

    goto :goto_198

    :catch_17f
    move-exception p1

    :goto_180
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/kwad/sdk/crash/report/b;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_197
    .catchall {:try_start_165 .. :try_end_197} :catchall_162

    goto :goto_17c

    :goto_198
    invoke-static {v2}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/Reader;)V

    :goto_19b
    return-void

    :goto_19c
    invoke-static {v2}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/Reader;)V

    throw p1
.end method
