.class public Lcom/bytedance/sdk/openadsdk/utils/am;
.super Ljava/lang/Object;
.source "ZipUtils.java"


# direct methods
.method private static a(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 171
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/am;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    goto :goto_e

    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    :goto_e
    return-object p0
.end method

.method public static a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    if-eqz p0, :cond_a6

    if-nez p1, :cond_6

    goto/16 :goto_a6

    .line 84
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 86
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p0

    .line 88
    :try_start_14
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/am;->b(Ljava/lang/String;)Z

    move-result v2
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_a1

    const-string v3, " is dangerous!"

    const-string v4, "entryName: "

    const-string v5, "ZipUtils"

    const-string v6, "../"

    if-eqz v2, :cond_5c

    .line 89
    :goto_22
    :try_start_22
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p2

    if-eqz p2, :cond_9c

    .line 90
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/zip/ZipEntry;

    .line 91
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 93
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    goto :goto_22

    .line 96
    :cond_51
    invoke-static {p1, v0, v1, p2, v2}, Lcom/bytedance/sdk/openadsdk/utils/am;->a(Ljava/io/File;Ljava/util/List;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z

    move-result p2
    :try_end_55
    .catchall {:try_start_22 .. :try_end_55} :catchall_a1

    if-nez p2, :cond_5b

    .line 112
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 96
    return-object v0

    .line 97
    :cond_5b
    goto :goto_22

    .line 99
    :cond_5c
    :goto_5c
    :try_start_5c
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 100
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 101
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    .line 102
    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8b

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    goto :goto_5c

    .line 106
    :cond_8b
    invoke-virtual {v7, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9b

    .line 107
    invoke-static {p1, v0, v1, v2, v7}, Lcom/bytedance/sdk/openadsdk/utils/am;->a(Ljava/io/File;Ljava/util/List;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z

    move-result v2
    :try_end_95
    .catchall {:try_start_5c .. :try_end_95} :catchall_a1

    if-nez v2, :cond_9b

    .line 112
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 107
    return-object v0

    .line 109
    :cond_9b
    goto :goto_5c

    .line 112
    :cond_9c
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 113
    nop

    .line 114
    return-object v0

    .line 112
    :catchall_a1
    move-exception p0

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 113
    throw p0

    .line 83
    :cond_a6
    :goto_a6
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/am;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/am;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/am;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/io/File;)Z
    .registers 2

    .line 156
    if-eqz p0, :cond_17

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_15

    :cond_f
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_17

    :goto_15
    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method private static a(Ljava/io/File;Ljava/util/List;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
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

    .line 122
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual {p3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_13

    .line 125
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/am;->a(Ljava/io/File;)Z

    move-result p0

    return p0

    .line 127
    :cond_13
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/am;->b(Ljava/io/File;)Z

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_1b

    return p1

    .line 128
    :cond_1b
    nop

    .line 129
    nop

    .line 130
    nop

    .line 132
    const/4 p0, 0x0

    :try_start_1f
    new-instance p4, Ljava/io/FileOutputStream;

    invoke-direct {p4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_58

    .line 133
    :try_start_24
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p2, p3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_54

    .line 134
    :try_start_2d
    new-instance p2, Ljava/io/BufferedOutputStream;

    invoke-direct {p2, p4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_51

    .line 135
    const/16 p0, 0x2000

    :try_start_34
    new-array p0, p0, [B

    .line 137
    :goto_36
    invoke-virtual {v0, p0}, Ljava/io/InputStream;->read([B)I

    move-result p3

    const/4 v1, -0x1

    if-eq p3, v1, :cond_41

    .line 138
    invoke-virtual {p2, p0, p1, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_40
    .catchall {:try_start_34 .. :try_end_40} :catchall_4f

    goto :goto_36

    .line 141
    :cond_41
    nop

    .line 142
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 144
    nop

    .line 145
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 147
    nop

    .line 148
    invoke-virtual {p4}, Ljava/io/OutputStream;->close()V

    .line 152
    const/4 p0, 0x1

    return p0

    .line 141
    :catchall_4f
    move-exception p0

    goto :goto_5d

    :catchall_51
    move-exception p1

    move-object p2, p0

    goto :goto_5c

    :catchall_54
    move-exception p1

    move-object p2, p0

    move-object v0, p2

    goto :goto_5c

    :catchall_58
    move-exception p1

    move-object p2, p0

    move-object p4, p2

    move-object v0, p4

    :goto_5c
    move-object p0, p1

    :goto_5d
    if-eqz v0, :cond_62

    .line 142
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 144
    :cond_62
    if-eqz p2, :cond_67

    .line 145
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 147
    :cond_67
    if-eqz p4, :cond_6c

    .line 148
    invoke-virtual {p4}, Ljava/io/OutputStream;->close()V

    .line 150
    :cond_6c
    throw p0
.end method

.method private static b(Ljava/io/File;)Z
    .registers 3

    .line 160
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 161
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p0

    return p0

    .line 162
    :cond_f
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/am;->a(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v0

    .line 164
    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result p0
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1f

    return p0

    .line 165
    :catchall_1f
    move-exception p0

    .line 167
    return v0
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 6

    .line 175
    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    .line 176
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_1a

    .line 177
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_17

    .line 178
    return v2

    .line 176
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 181
    :cond_1a
    return v0
.end method
