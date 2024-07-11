.class public Lcom/ss/android/socialbase/appdownloader/f/a/e;
.super Ljava/lang/Object;
.source "PackageInfoUtils.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/io/File;I)Landroid/content/pm/PackageInfo;
    .registers 5

    .line 198
    const/high16 v0, 0x10000000

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_28

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_28

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_28

    .line 202
    :try_start_14
    invoke-static {p1}, Lcom/ss/android/socialbase/appdownloader/f/a/e;->a(Ljava/io/File;)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_19

    .line 207
    :goto_18
    goto :goto_2c

    .line 204
    :catchall_19
    move-exception v0

    .line 205
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getPackageInfo::unzip_getpackagearchiveinfo"

    invoke-static {v1, v0}, Lcom/ss/android/socialbase/appdownloader/f/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {p0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/f/a/e;->b(Landroid/content/Context;Ljava/io/File;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    goto :goto_18

    .line 210
    :cond_28
    invoke-static {p0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/f/a/e;->b(Landroid/content/Context;Ljava/io/File;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 213
    :goto_2c
    return-object p0
.end method

.method public static a(Ljava/io/File;)Landroid/content/pm/PackageInfo;
    .registers 14

    .line 36
    nop

    .line 37
    nop

    .line 38
    nop

    .line 40
    nop

    .line 41
    nop

    .line 43
    nop

    .line 46
    const/4 v0, 0x0

    :try_start_7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_15c

    const/16 v2, 0x18

    const-string v3, "AndroidManifest.xml"

    if-lt v1, v2, :cond_4d

    .line 47
    :try_start_f
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_15c

    .line 48
    :try_start_14
    new-instance p0, Ljava/util/zip/ZipInputStream;

    invoke-direct {p0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 49
    :goto_19
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_41

    .line 50
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_47

    if-eqz v4, :cond_2b

    .line 52
    :try_start_25
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    .line 55
    goto :goto_19

    .line 53
    :catchall_29
    move-exception v2

    .line 57
    goto :goto_19

    .line 60
    :cond_2b
    :try_start_2b
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_47

    if-nez v4, :cond_3b

    .line 62
    :try_start_35
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    .line 65
    goto :goto_19

    .line 63
    :catchall_39
    move-exception v2

    .line 67
    goto :goto_19

    .line 70
    :cond_3b
    nop

    .line 72
    move-object v4, v0

    move-object v5, v2

    move-object v2, v1

    move-object v1, p0

    goto :goto_83

    .line 49
    :cond_41
    move-object v4, v0

    move-object v5, v2

    move-object v2, v1

    move-object v1, p0

    move-object p0, v4

    goto :goto_83

    .line 154
    :catchall_47
    move-exception p0

    move-object v4, v0

    move-object v2, v1

    move-object v1, v4

    goto/16 :goto_160

    .line 75
    :cond_4d
    :try_start_4d
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_15c

    .line 76
    :try_start_52
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p0

    move-object v2, v0

    .line 77
    :goto_57
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 78
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 79
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 80
    goto :goto_57

    .line 83
    :cond_6a
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_75

    .line 84
    goto :goto_57

    .line 87
    :cond_75
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_79
    .catchall {:try_start_52 .. :try_end_79} :catchall_157

    .line 89
    move-object v4, v1

    move-object v5, v2

    move-object v1, v0

    move-object v2, v1

    goto :goto_83

    .line 77
    :cond_7e
    move-object p0, v0

    move-object v4, v1

    move-object v5, v2

    move-object v1, p0

    move-object v2, v1

    .line 93
    :goto_83
    if-eqz v5, :cond_14a

    :try_start_85
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14a

    .line 97
    new-instance v3, Lcom/ss/android/socialbase/appdownloader/f/a/a;

    invoke-direct {v3}, Lcom/ss/android/socialbase/appdownloader/f/a/a;-><init>()V
    :try_end_94
    .catchall {:try_start_85 .. :try_end_94} :catchall_152

    .line 98
    :try_start_94
    invoke-virtual {v3, p0}, Lcom/ss/android/socialbase/appdownloader/f/a/a;->a(Ljava/io/InputStream;)V

    .line 100
    :goto_97
    invoke-virtual {v3}, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b()I

    move-result v5

    .line 101
    const/4 v6, 0x1

    if-eq v5, v6, :cond_13d

    .line 105
    const/4 v6, 0x2

    if-ne v5, v6, :cond_13b

    .line 106
    nop

    .line 110
    nop

    .line 111
    nop

    .line 112
    nop

    .line 113
    invoke-virtual {v3}, Lcom/ss/android/socialbase/appdownloader/f/a/a;->e()I

    move-result v5

    .line 114
    const/4 v6, 0x0

    move-object v7, v0

    move v8, v6

    move-object v6, v7

    :goto_ad
    if-eq v8, v5, :cond_e4

    .line 115
    const-string v9, "versionName"

    invoke-virtual {v3, v8}, Lcom/ss/android/socialbase/appdownloader/f/a/a;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c0

    .line 117
    invoke-static {v3, v8}, Lcom/ss/android/socialbase/appdownloader/f/a/e;->a(Lcom/ss/android/socialbase/appdownloader/f/a/a;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_e1

    .line 119
    :cond_c0
    const-string v9, "versionCode"

    invoke-virtual {v3, v8}, Lcom/ss/android/socialbase/appdownloader/f/a/a;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d1

    .line 121
    invoke-static {v3, v8}, Lcom/ss/android/socialbase/appdownloader/f/a/e;->a(Lcom/ss/android/socialbase/appdownloader/f/a/a;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e1

    .line 123
    :cond_d1
    const-string v9, "package"

    invoke-virtual {v3, v8}, Lcom/ss/android/socialbase/appdownloader/f/a/a;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e1

    .line 125
    invoke-static {v3, v8}, Lcom/ss/android/socialbase/appdownloader/f/a/e;->a(Lcom/ss/android/socialbase/appdownloader/f/a/a;I)Ljava/lang/String;

    move-result-object v7
    :try_end_e1
    .catchall {:try_start_94 .. :try_end_e1} :catchall_145

    .line 114
    :cond_e1
    :goto_e1
    add-int/lit8 v8, v8, 0x1

    goto :goto_ad

    .line 129
    :cond_e4
    nop

    .line 131
    const-wide/16 v8, -0x1

    :try_start_e7
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10
    :try_end_eb
    .catch Lcom/ss/android/socialbase/appdownloader/f/a/c; {:try_start_e7 .. :try_end_eb} :catch_ec
    .catchall {:try_start_e7 .. :try_end_eb} :catchall_145

    .line 134
    goto :goto_ee

    .line 132
    :catch_ec
    move-exception v5

    move-wide v10, v8

    .line 135
    :goto_ee
    cmp-long v5, v10, v8

    if-eqz v5, :cond_122

    .line 139
    :try_start_f2
    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 140
    iput-object v6, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 141
    long-to-int v5, v10

    iput v5, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 142
    iput-object v7, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_fe
    .catchall {:try_start_f2 .. :try_end_fe} :catchall_145

    .line 144
    if-eqz v1, :cond_105

    .line 146
    :try_start_100
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_103
    .catchall {:try_start_100 .. :try_end_103} :catchall_104

    .line 149
    goto :goto_105

    .line 147
    :catchall_104
    move-exception v1

    .line 152
    :cond_105
    :goto_105
    nop

    .line 157
    nop

    .line 159
    :try_start_107
    invoke-virtual {v3}, Lcom/ss/android/socialbase/appdownloader/f/a/a;->a()V
    :try_end_10a
    .catchall {:try_start_107 .. :try_end_10a} :catchall_10b

    .line 162
    goto :goto_10c

    .line 160
    :catchall_10b
    move-exception v1

    .line 165
    :goto_10c
    if-eqz p0, :cond_113

    .line 167
    :try_start_10e
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_111
    .catchall {:try_start_10e .. :try_end_111} :catchall_112

    .line 170
    goto :goto_113

    .line 168
    :catchall_112
    move-exception p0

    .line 173
    :cond_113
    :goto_113
    if-eqz v4, :cond_11a

    .line 175
    :try_start_115
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_118
    .catchall {:try_start_115 .. :try_end_118} :catchall_119

    .line 178
    goto :goto_11a

    .line 176
    :catchall_119
    move-exception p0

    .line 181
    :cond_11a
    :goto_11a
    if-eqz v2, :cond_121

    .line 183
    :try_start_11c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_11f
    .catchall {:try_start_11c .. :try_end_11f} :catchall_120

    .line 186
    goto :goto_121

    .line 184
    :catchall_120
    move-exception p0

    .line 152
    :cond_121
    :goto_121
    return-object v0

    .line 136
    :cond_122
    :try_start_122
    new-instance v1, Lcom/ss/android/socialbase/appdownloader/f/a/c;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "versionCode\u83b7\u53d6\u5931\u8d25: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/appdownloader/f/a/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_13b
    goto/16 :goto_97

    .line 102
    :cond_13d
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/f/a/c;

    const-string v1, "\u5df2\u8fbe\u5230END_DOCUMENT"

    invoke-direct {v0, v1}, Lcom/ss/android/socialbase/appdownloader/f/a/c;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_145
    .catchall {:try_start_122 .. :try_end_145} :catchall_145

    .line 154
    :catchall_145
    move-exception v0

    move-object v1, p0

    move-object p0, v0

    move-object v0, v3

    goto :goto_160

    .line 94
    :cond_14a
    :try_start_14a
    new-instance v1, Lcom/ss/android/socialbase/appdownloader/f/a/c;

    const-string v3, "\u6ca1\u6709\u627e\u5230AndroidManifest.xml entry"

    invoke-direct {v1, v3}, Lcom/ss/android/socialbase/appdownloader/f/a/c;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_152
    .catchall {:try_start_14a .. :try_end_152} :catchall_152

    .line 154
    :catchall_152
    move-exception v1

    move-object v12, v1

    move-object v1, p0

    move-object p0, v12

    goto :goto_160

    :catchall_157
    move-exception p0

    move-object v2, v0

    move-object v4, v1

    move-object v1, v2

    goto :goto_160

    :catchall_15c
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    move-object v4, v2

    .line 155
    :goto_160
    :try_start_160
    new-instance v3, Lcom/ss/android/socialbase/appdownloader/f/a/c;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "throwable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Lcom/ss/android/socialbase/appdownloader/f/a/c;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_185
    .catchall {:try_start_160 .. :try_end_185} :catchall_185

    .line 157
    :catchall_185
    move-exception p0

    if-eqz v0, :cond_18d

    .line 159
    :try_start_188
    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/f/a/a;->a()V
    :try_end_18b
    .catchall {:try_start_188 .. :try_end_18b} :catchall_18c

    .line 162
    goto :goto_18d

    .line 160
    :catchall_18c
    move-exception v0

    .line 165
    :cond_18d
    :goto_18d
    if-eqz v1, :cond_194

    .line 167
    :try_start_18f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_192
    .catchall {:try_start_18f .. :try_end_192} :catchall_193

    .line 170
    goto :goto_194

    .line 168
    :catchall_193
    move-exception v0

    .line 173
    :cond_194
    :goto_194
    if-eqz v4, :cond_19b

    .line 175
    :try_start_196
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_199
    .catchall {:try_start_196 .. :try_end_199} :catchall_19a

    .line 178
    goto :goto_19b

    .line 176
    :catchall_19a
    move-exception v0

    .line 181
    :cond_19b
    :goto_19b
    if-eqz v2, :cond_1a2

    .line 183
    :try_start_19d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1a0
    .catchall {:try_start_19d .. :try_end_1a0} :catchall_1a1

    .line 186
    goto :goto_1a2

    .line 184
    :catchall_1a1
    move-exception v0

    .line 186
    :cond_1a2
    :goto_1a2
    throw p0
.end method

.method private static a(I)Ljava/lang/String;
    .registers 2

    .line 249
    ushr-int/lit8 p0, p0, 0x18

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    .line 250
    const-string p0, "android:"

    return-object p0

    .line 253
    :cond_8
    const-string p0, ""

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 276
    if-eqz p1, :cond_23

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_23

    .line 277
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 278
    iput-object p2, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 279
    iput-object p2, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 281
    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_18
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_18} :catch_19

    return-object p0

    .line 282
    :catch_19
    move-exception p0

    .line 283
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "getPackageInfo::fail_load_label"

    invoke-static {p1, p0}, Lcom/ss/android/socialbase/appdownloader/f/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lcom/ss/android/socialbase/appdownloader/f/a/a;I)Ljava/lang/String;
    .registers 6

    .line 257
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b(I)I

    move-result v0

    .line 258
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/appdownloader/f/a/a;->c(I)I

    move-result v1

    .line 260
    const/4 v2, 0x3

    if-ne v0, v2, :cond_10

    .line 261
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/appdownloader/f/a/a;->d(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 264
    :cond_10
    const/4 p0, 0x1

    const/4 p1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2a

    .line 265
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/ss/android/socialbase/appdownloader/f/a/e;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, p0

    const-string p0, "?%s%08X"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 268
    :cond_2a
    const/16 v3, 0x10

    if-lt v0, v3, :cond_37

    const/16 v3, 0x1f

    if-gt v0, v3, :cond_37

    .line 269
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 272
    :cond_37
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p0

    const-string p0, "<0x%X, type 0x%02X>"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 233
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->g()Lcom/ss/android/socialbase/downloader/d/b;

    move-result-object v0

    .line 234
    if-nez v0, :cond_7

    .line 235
    return-void

    .line 238
    :cond_7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 240
    :try_start_c
    const-string v2, "message"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_11} :catch_12

    .line 243
    goto :goto_13

    .line 241
    :catch_12
    move-exception p1

    .line 245
    :goto_13
    const/4 p1, 0x0

    invoke-interface {v0, p0, v1, p1, p1}, Lcom/ss/android/socialbase/downloader/d/b;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 246
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/io/File;I)Landroid/content/pm/PackageInfo;
    .registers 5

    .line 218
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 219
    const/4 v0, 0x0

    const-string v1, "unzip_getpackagearchiveinfo"

    if-nez p0, :cond_f

    .line 220
    const-string p0, "packageManager == null"

    invoke-static {v1, p0}, Lcom/ss/android/socialbase/appdownloader/f/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-object v0

    .line 225
    :cond_f
    :try_start_f
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_18

    return-object p0

    .line 226
    :catchall_18
    move-exception p0

    .line 227
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "pm.getPackageArchiveInfo failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/socialbase/appdownloader/f/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-object v0
.end method
