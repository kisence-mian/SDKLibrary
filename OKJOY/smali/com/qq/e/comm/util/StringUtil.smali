.class public Lcom/qq/e/comm/util/StringUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .registers 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "delimiter"    # Ljava/lang/String;
    .param p1, "strArray"    # [Ljava/lang/String;

    .prologue
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_1a

    const/4 v0, 0x0

    :goto_8
    array-length v2, p1

    if-ge v0, v2, :cond_1a

    if-eqz p0, :cond_12

    if-eqz v0, :cond_12

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_12
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1a
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseInteger(Ljava/lang/String;I)I
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "optValue"    # I

    .prologue
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result p1

    .end local p1    # "optValue":I
    :goto_4
    return p1

    .restart local p1    # "optValue":I
    :catch_5
    move-exception v0

    goto :goto_4
.end method

.method public static readAll(Ljava/io/File;)Ljava/lang/String;
    .registers 5
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    :try_start_a
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_14} :catch_47
    .catchall {:try_start_a .. :try_end_14} :catchall_42

    :try_start_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_19
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_22} :catch_23
    .catchall {:try_start_14 .. :try_end_22} :catchall_25

    goto :goto_19

    :catch_23
    move-exception v0

    :goto_24
    :try_start_24
    throw v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception v0

    :goto_26
    if-eqz v1, :cond_2b

    :try_start_28
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_3b

    :cond_2b
    :goto_2b
    throw v0

    :cond_2c
    :try_start_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_23
    .catchall {:try_start_2c .. :try_end_2f} :catchall_25

    move-result-object v0

    :try_start_30
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_9

    :catch_34
    move-exception v1

    const-string v2, "Exception while close bufferreader"

    invoke-static {v2, v1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :catch_3b
    move-exception v1

    const-string v2, "Exception while close bufferreader"

    invoke-static {v2, v1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2b

    :catchall_42
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_26

    :catch_47
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_24
.end method

.method public static writeTo(Ljava/lang/String;Ljava/io/File;)V
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    if-nez p1, :cond_a

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Target File Can not be null in StringUtil.writeTo"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_17
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    return-void
.end method
