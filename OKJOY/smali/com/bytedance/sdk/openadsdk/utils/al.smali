.class public Lcom/bytedance/sdk/openadsdk/utils/al;
.super Ljava/lang/Object;
.source "ZipUtils.java"


# direct methods
.method private static a(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .prologue
    .line 171
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/al;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public static a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    :cond_4
    const/4 v0, 0x0

    .line 114
    :goto_5
    return-object v0

    .line 84
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 86
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 88
    :try_start_14
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/al;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 89
    :cond_1a
    :goto_1a
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 90
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 91
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 92
    const-string v5, "../"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 93
    const-string v0, "ZipUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "entryName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is dangerous!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_14 .. :try_end_50} :catchall_51

    goto :goto_1a

    .line 112
    :catchall_51
    move-exception v0

    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    throw v0

    .line 96
    :cond_56
    :try_start_56
    invoke-static {p1, v1, v2, v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/al;->a(Ljava/io/File;Ljava/util/List;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_51

    move-result v0

    if-nez v0, :cond_1a

    .line 112
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    move-object v0, v1

    .line 96
    goto :goto_5

    .line 99
    :cond_61
    :goto_61
    :try_start_61
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 100
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 101
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 102
    const-string v5, "../"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_98

    .line 103
    const-string v0, "ZipUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "entryName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is dangerous!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_61

    .line 106
    :cond_98
    invoke-virtual {v4, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 107
    invoke-static {p1, v1, v2, v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/al;->a(Ljava/io/File;Ljava/util/List;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z
    :try_end_a1
    .catchall {:try_start_61 .. :try_end_a1} :catchall_51

    move-result v0

    if-nez v0, :cond_61

    .line 112
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    move-object v0, v1

    .line 107
    goto/16 :goto_5

    .line 112
    :cond_aa
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    move-object v0, v1

    .line 114
    goto/16 :goto_5
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/al;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/al;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/al;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/bytedance/sdk/openadsdk/utils/al;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/File;)Z
    .registers 2

    .prologue
    .line 156
    if-eqz p0, :cond_16

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_16
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static a(Ljava/io/File;Ljava/util/List;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/zip/ZipFile;",
            "Ljava/util/zip/ZipEntry;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 122
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual {p3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 125
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/al;->a(Ljava/io/File;)Z

    move-result v0

    .line 152
    :cond_14
    :goto_14
    return v0

    .line 127
    :cond_15
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/al;->b(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 132
    :try_start_1b
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_62

    .line 133
    :try_start_20
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {p2, p3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_66

    .line 134
    :try_start_29
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_69

    .line 135
    const/16 v0, 0x2000

    :try_start_30
    new-array v0, v0, [B

    .line 137
    :goto_32
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_51

    .line 138
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_3e

    goto :goto_32

    .line 141
    :catchall_3e
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    :goto_41
    if-eqz v3, :cond_46

    .line 142
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 144
    :cond_46
    if-eqz v2, :cond_4b

    .line 145
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 147
    :cond_4b
    if-eqz v1, :cond_50

    .line 148
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_50
    throw v0

    .line 141
    :cond_51
    if-eqz v4, :cond_56

    .line 142
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 144
    :cond_56
    if-eqz v3, :cond_5b

    .line 145
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 147
    :cond_5b
    if-eqz v1, :cond_60

    .line 148
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 152
    :cond_60
    const/4 v0, 0x1

    goto :goto_14

    .line 141
    :catchall_62
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_41

    :catchall_66
    move-exception v0

    move-object v3, v2

    goto :goto_41

    :catchall_69
    move-exception v0

    move-object v3, v4

    goto :goto_41
.end method

.method private static b(Ljava/io/File;)Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 160
    if-nez p0, :cond_4

    .line 167
    :cond_3
    :goto_3
    return v0

    .line 161
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    goto :goto_3

    .line 162
    :cond_f
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 164
    :try_start_19
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_1c} :catch_1e

    move-result v0

    goto :goto_3

    .line 165
    :catch_1e
    move-exception v1

    goto :goto_3
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 175
    if-nez p0, :cond_5

    .line 181
    :cond_4
    :goto_4
    return v0

    .line 176
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v1

    :goto_a
    if-ge v2, v3, :cond_4

    .line 177
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_18

    move v0, v1

    .line 178
    goto :goto_4

    .line 176
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_a
.end method
