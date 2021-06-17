.class public final Lcom/efs/sdk/base/a/h/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 284
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/efs/sdk/base/a/h/b;->a:Ljava/util/Random;

    return-void
.end method

.method public static a(Lcom/efs/sdk/base/a/f/b;)Ljava/lang/String;
    .registers 4

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2164
    iget-object v1, p0, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-object v1, v1, Lcom/efs/sdk/base/a/f/a;->a:Ljava/lang/String;

    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3107
    iget-object v2, p0, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-object v2, v2, Lcom/efs/sdk/base/a/f/a;->d:Ljava/lang/String;

    .line 292
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3132
    iget-object v2, p0, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget v2, v2, Lcom/efs/sdk/base/a/f/a;->e:I

    .line 292
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3140
    iget-object p0, p0, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-byte p0, p0, Lcom/efs/sdk/base/a/f/a;->b:B

    .line 292
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 293
    invoke-static {}, Lcom/efs/sdk/base/a/h/g;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lcom/efs/sdk/base/a/h/b;->a:Ljava/util/Random;

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcom/efs/sdk/base/a/a/a;->a()Lcom/efs/sdk/base/a/a/a;

    invoke-static {}, Lcom/efs/sdk/base/a/a/a;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 292
    return-object p0
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .registers 1

    .line 85
    invoke-static {p0}, Lcom/efs/sdk/base/a/h/b;->e(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 3

    .line 221
    if-eqz p0, :cond_e

    .line 223
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    .line 226
    return-void

    .line 224
    :catchall_6
    move-exception p0

    .line 225
    const-string v0, "efs.util.file"

    const-string v1, "safe close error"

    invoke-static {v0, v1, p0}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    :cond_e
    return-void
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)V
    .registers 6

    .line 209
    nop

    .line 1170
    const/high16 v0, 0x80000

    new-array v0, v0, [B

    .line 1181
    nop

    .line 1182
    nop

    .line 1185
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 1186
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_14

    .line 1187
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1189
    :cond_14
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1190
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p1, v1

    .line 1194
    :cond_24
    const/4 v1, 0x0

    :try_start_25
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2a} :catch_4e
    .catchall {:try_start_25 .. :try_end_2a} :catchall_4b

    .line 1195
    :try_start_2a
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2f} :catch_47
    .catchall {:try_start_2a .. :try_end_2f} :catchall_43

    .line 1197
    :goto_2f
    :try_start_2f
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3b

    .line 1198
    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1, p1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3a} :catch_41
    .catchall {:try_start_2f .. :try_end_3a} :catchall_3f

    goto :goto_2f

    .line 1203
    :cond_3b
    invoke-static {v2}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    goto :goto_5a

    :catchall_3f
    move-exception p0

    goto :goto_45

    .line 1200
    :catch_41
    move-exception p1

    goto :goto_49

    .line 1203
    :catchall_43
    move-exception p0

    move-object v3, v1

    :goto_45
    move-object v1, v2

    goto :goto_63

    .line 1200
    :catch_47
    move-exception p1

    move-object v3, v1

    :goto_49
    move-object v1, v2

    goto :goto_50

    .line 1203
    :catchall_4b
    move-exception p0

    move-object v3, v1

    goto :goto_63

    .line 1200
    :catch_4e
    move-exception p1

    move-object v3, v1

    .line 1201
    :goto_50
    :try_start_50
    const-string v0, "efs.util.file"

    const-string v2, "error when copy"

    invoke-static {v0, v2, p1}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_62

    .line 1203
    invoke-static {v1}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 1204
    :goto_5a
    invoke-static {v3}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 1205
    nop

    .line 210
    invoke-static {p0}, Lcom/efs/sdk/base/a/h/b;->b(Ljava/io/File;)V

    .line 211
    return-void

    .line 1203
    :catchall_62
    move-exception p0

    :goto_63
    invoke-static {v1}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 1204
    invoke-static {v3}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    goto :goto_6b

    :goto_6a
    throw p0

    :goto_6b
    goto :goto_6a
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)Z
    .registers 2

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/File;[B)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/io/File;[B)Z
    .registers 6

    .line 50
    nop

    .line 51
    nop

    .line 54
    const/4 v0, 0x0

    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_16

    .line 55
    :try_start_8
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 56
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_13

    .line 57
    const/4 p0, 0x1

    .line 61
    invoke-static {v1}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 62
    goto :goto_33

    .line 58
    :catchall_13
    move-exception p1

    move-object v0, v1

    goto :goto_17

    :catchall_16
    move-exception p1

    .line 59
    :goto_17
    :try_start_17
    const-string v1, "efs.util.file"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "write file error, filename is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_34

    .line 61
    invoke-static {v0}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 62
    const/4 p0, 0x0

    .line 64
    :goto_33
    return p0

    .line 61
    :catchall_34
    move-exception p0

    invoke-static {v0}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 5

    .line 128
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 129
    nop

    .line 131
    const/4 v1, 0x0

    :try_start_5
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_1f
    .catchall {:try_start_5 .. :try_end_a} :catchall_1d

    .line 132
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result p0

    new-array v0, p0, [B

    .line 133
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_1a
    .catchall {:try_start_a .. :try_end_13} :catchall_17

    .line 137
    invoke-static {v2}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    goto :goto_2a

    :catchall_17
    move-exception p0

    move-object v1, v2

    goto :goto_2c

    .line 134
    :catch_1a
    move-exception p0

    move-object v1, v2

    goto :goto_20

    .line 137
    :catchall_1d
    move-exception p0

    goto :goto_2c

    .line 134
    :catch_1f
    move-exception p0

    .line 135
    :goto_20
    :try_start_20
    const-string v2, "efs.util.file"

    const-string v3, "read data error"

    invoke-static {v2, v3, p0}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_1d

    .line 137
    invoke-static {v1}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 138
    :goto_2a
    nop

    .line 139
    return-object v0

    .line 137
    :goto_2c
    invoke-static {v1}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static b(Ljava/lang/String;)Lcom/efs/sdk/base/a/f/b;
    .registers 5

    .line 297
    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 299
    array-length v1, v0

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1b

    .line 300
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "File name error, name is "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4025
    const-string v0, "efs.util.file"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 301
    return-object v1

    .line 304
    :cond_1b
    const/4 p0, 0x0

    aget-object p0, v0, p0

    .line 305
    const/4 v1, 0x1

    aget-object v1, v0, v1

    .line 306
    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    .line 307
    const/4 v3, 0x3

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 309
    new-instance v3, Lcom/efs/sdk/base/a/f/b;

    invoke-direct {v3, p0, v0}, Lcom/efs/sdk/base/a/f/b;-><init>(Ljava/lang/String;B)V

    .line 310
    invoke-virtual {v3, v1}, Lcom/efs/sdk/base/a/f/b;->a(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v3, v2}, Lcom/efs/sdk/base/a/f/b;->a(I)V

    .line 312
    return-object v3
.end method

.method public static b(Ljava/io/File;)V
    .registers 5

    .line 148
    if-eqz p0, :cond_28

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_28

    .line 151
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 152
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_24

    array-length v1, v0

    if-lez v1, :cond_24

    .line 155
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_24

    aget-object v3, v0, v2

    .line 156
    invoke-static {v3}, Lcom/efs/sdk/base/a/h/b;->b(Ljava/io/File;)V

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 160
    :cond_24
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 161
    return-void

    .line 149
    :cond_28
    :goto_28
    return-void
.end method

.method public static c(Ljava/io/File;)J
    .registers 7

    .line 237
    nop

    .line 239
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1f

    .line 240
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 242
    if-nez p0, :cond_10

    .line 243
    return-wide v1

    .line 246
    :cond_10
    array-length v0, p0

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v0, :cond_1e

    aget-object v4, p0, v3

    .line 247
    invoke-static {v4}, Lcom/efs/sdk/base/a/h/b;->c(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v1, v4

    .line 246
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 249
    :cond_1e
    goto :goto_24

    .line 250
    :cond_1f
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 253
    :goto_24
    return-wide v1
.end method

.method public static d(Ljava/io/File;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 263
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 266
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 268
    if-eqz p0, :cond_35

    array-length v0, p0

    if-gtz v0, :cond_15

    goto :goto_35

    .line 272
    :cond_15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 274
    array-length v1, p0

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v1, :cond_34

    aget-object v3, p0, v2

    .line 275
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 276
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 278
    :cond_2a
    invoke-static {v3}, Lcom/efs/sdk/base/a/h/b;->d(Ljava/io/File;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 274
    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 281
    :cond_34
    return-object v0

    .line 269
    :cond_35
    :goto_35
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static e(Ljava/io/File;)Ljava/lang/String;
    .registers 7

    .line 96
    nop

    .line 97
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_a

    .line 98
    return-object v1

    .line 101
    :cond_a
    const/4 v0, 0x0

    .line 103
    :try_start_b
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_34

    .line 104
    const/16 p0, 0x400

    :try_start_12
    new-array p0, p0, [B

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    :goto_19
    invoke-virtual {v2, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_29

    .line 109
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 111
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2d
    .catchall {:try_start_12 .. :try_end_2d} :catchall_31

    .line 115
    invoke-static {v2}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    goto :goto_3f

    .line 112
    :catchall_31
    move-exception p0

    move-object v0, v2

    goto :goto_35

    :catchall_34
    move-exception p0

    .line 113
    :goto_35
    :try_start_35
    const-string v2, "efs.util.file"

    const-string v3, "read file error"

    invoke-static {v2, v3, p0}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_41

    .line 115
    invoke-static {v0}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 116
    :goto_3f
    nop

    .line 117
    return-object v1

    .line 115
    :catchall_41
    move-exception p0

    invoke-static {v0}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    goto :goto_47

    :goto_46
    throw p0

    :goto_47
    goto :goto_46
.end method
