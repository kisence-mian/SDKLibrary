.class final Lcom/tendcloud/tenddata/game/cc;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static final a:Ljava/lang/String; = "mPBE"

.field private static final b:Ljava/lang/String; = "_Ladder_Project"

.field private static final c:Ljava/lang/String; = "Pythagoras_phase"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 150
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, "Pythagoras_phase"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 151
    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_Ladder_Project"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 153
    invoke-static {v3, p0}, Lcom/tendcloud/tenddata/game/cc;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 154
    invoke-static {v4}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 155
    invoke-static {v2}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4d

    .line 156
    invoke-static {v3, p0, v2}, Lcom/tendcloud/tenddata/game/cc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 158
    goto :goto_4e

    .line 161
    :cond_4d
    move-object v2, v4

    :goto_4e
    return-object v2
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Ladder_Project"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v0, p0, p1}, Lcom/tendcloud/tenddata/game/cc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 75
    nop

    .line 77
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1b

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1b

    .line 79
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result p0

    .line 80
    if-nez p0, :cond_1b

    .line 98
    nop

    .line 81
    return-void

    .line 84
    :cond_1b
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2e

    .line 86
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result p1

    .line 87
    if-nez p1, :cond_2e

    .line 98
    nop

    .line 88
    return-void

    .line 91
    :cond_2e
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_33
    .catchall {:try_start_2 .. :try_end_33} :catchall_42

    .line 92
    :try_start_33
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_3f

    .line 98
    nop

    .line 100
    :try_start_3b
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_48

    .line 93
    :catchall_3f
    move-exception p0

    move-object v0, p1

    goto :goto_43

    :catchall_42
    move-exception p0

    .line 98
    :goto_43
    if-eqz v0, :cond_4b

    .line 100
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_48
    .catchall {:try_start_3b .. :try_end_48} :catchall_49

    .line 105
    :goto_48
    goto :goto_4b

    .line 101
    :catchall_49
    move-exception p0

    goto :goto_48

    .line 113
    :cond_4b
    :goto_4b
    return-void
.end method

.method static a(Ljava/lang/String;[B)V
    .registers 7

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_17

    aget-byte v3, p1, v2

    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 40
    :cond_17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "mPBE"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/tendcloud/tenddata/game/cc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method private static a(ILjava/lang/String;)[B
    .registers 4

    .line 232
    :try_start_0
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 233
    new-array p0, p0, [B

    .line 234
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 235
    const/4 v0, 0x0

    :goto_f
    array-length v1, p1

    if-ge v0, v1, :cond_1d

    .line 236
    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    aput-byte v1, p0, v0
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1f

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 238
    :cond_1d
    return-object p0

    .line 244
    :cond_1e
    goto :goto_20

    .line 240
    :catchall_1f
    move-exception p0

    .line 245
    :goto_20
    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Ljava/lang/String;I)[B
    .registers 8

    .line 122
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, "mPBE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 123
    const-string v2, ""

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-static {v1, p0}, Lcom/tendcloud/tenddata/game/cc;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 126
    nop

    .line 127
    invoke-static {v4}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 128
    invoke-static {v3}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_50

    .line 129
    invoke-static {v1, p0, v3}, Lcom/tendcloud/tenddata/game/cc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 131
    invoke-static {p1, v3}, Lcom/tendcloud/tenddata/game/cc;->a(ILjava/lang/String;)[B

    move-result-object p0

    goto :goto_56

    .line 128
    :cond_50
    const/4 p0, 0x0

    goto :goto_56

    .line 134
    :cond_52
    invoke-static {p1, v4}, Lcom/tendcloud/tenddata/game/cc;->a(ILjava/lang/String;)[B

    move-result-object p0

    .line 136
    :goto_56
    return-object p0
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 170
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {v0, p0}, Lcom/tendcloud/tenddata/game/cc;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 60
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0, p0, p1}, Lcom/tendcloud/tenddata/game/cc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 180
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 70
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 184
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    nop

    .line 186
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const-string v1, ""

    if-nez p0, :cond_1b

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1b

    .line 187
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    .line 188
    if-nez p0, :cond_1b

    .line 189
    return-object v1

    .line 192
    :cond_1b
    const/4 p0, 0x0

    .line 194
    :try_start_1c
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_44

    .line 196
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_55

    .line 197
    :try_start_2c
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int p0, v2

    new-array p0, p0, [B

    .line 198
    invoke-virtual {p1, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    .line 199
    if-lez v0, :cond_3f

    .line 200
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_3e
    .catchall {:try_start_2c .. :try_end_3e} :catchall_41

    move-object v1, v0

    .line 202
    :cond_3f
    move-object p0, p1

    goto :goto_4d

    .line 207
    :catchall_41
    move-exception p0

    move-object p0, p1

    goto :goto_56

    .line 203
    :cond_44
    :try_start_44
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result p1
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_55

    if-nez p1, :cond_4d

    .line 204
    nop

    .line 212
    nop

    .line 204
    return-object v1

    .line 212
    :cond_4d
    :goto_4d
    if-eqz p0, :cond_5c

    .line 214
    :try_start_4f
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 219
    :goto_52
    goto :goto_5c

    .line 215
    :catchall_53
    move-exception p0

    goto :goto_52

    .line 207
    :catchall_55
    move-exception p1

    .line 212
    :goto_56
    if-eqz p0, :cond_5c

    .line 214
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_5b
    .catchall {:try_start_4f .. :try_end_5b} :catchall_53

    goto :goto_52

    .line 227
    :cond_5c
    :goto_5c
    return-object v1
.end method
