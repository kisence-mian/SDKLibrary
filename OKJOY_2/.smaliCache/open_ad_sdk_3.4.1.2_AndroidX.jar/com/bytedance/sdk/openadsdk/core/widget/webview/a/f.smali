.class public Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field private static a:Lcom/bytedance/sdk/openadsdk/core/d/q;


# direct methods
.method public static a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/q$a;
    .registers 5

    .line 119
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 120
    return-object v1

    .line 122
    :cond_8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->b()Lcom/bytedance/sdk/openadsdk/core/d/q;

    move-result-object v0

    if-eqz v0, :cond_4e

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->b()Lcom/bytedance/sdk/openadsdk/core/d/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/q;->e()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_4e

    .line 126
    :cond_19
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->b()Lcom/bytedance/sdk/openadsdk/core/d/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/q;->f()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 127
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->b()Lcom/bytedance/sdk/openadsdk/core/d/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/q;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/d/q$a;

    .line 128
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/q$a;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4c

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/q$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 129
    return-object v2

    .line 131
    :cond_4c
    goto :goto_2f

    .line 134
    :cond_4d
    return-object v1

    .line 123
    :cond_4e
    :goto_4e
    return-object v1
.end method

.method public static a()V
    .registers 8

    .line 27
    const-string v0, "Version"

    .line 29
    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->e()Ljava/io/File;

    move-result-object v2

    .line 30
    new-instance v3, Ljava/io/File;

    const-string v4, "temp_pkg_info.json"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 32
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_6e

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6e

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 33
    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    new-array v2, v2, [B

    .line 34
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_79

    .line 35
    :try_start_37
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    .line 37
    new-instance v1, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 38
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/d/q;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/q;

    move-result-object v1

    .line 40
    if-eqz v1, :cond_6a

    .line 41
    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->a:Lcom/bytedance/sdk/openadsdk/core/d/q;

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "old version read success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->a:Lcom/bytedance/sdk/openadsdk/core/d/q;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/q;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_37 .. :try_end_6a} :catchall_6c

    .line 44
    :cond_6a
    move-object v1, v4

    goto :goto_73

    .line 47
    :catchall_6c
    move-exception v1

    goto :goto_7c

    .line 45
    :cond_6e
    :try_start_6e
    const-string v2, "version pkg json file does not exist"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_6e .. :try_end_73} :catchall_79

    .line 50
    :goto_73
    if-eqz v1, :cond_89

    .line 52
    :try_start_75
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_87

    goto :goto_86

    .line 47
    :catchall_79
    move-exception v2

    move-object v4, v1

    move-object v1, v2

    .line 48
    :goto_7c
    :try_start_7c
    const-string v2, "version init error"

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_81
    .catchall {:try_start_7c .. :try_end_81} :catchall_8a

    .line 50
    if-eqz v4, :cond_89

    .line 52
    :try_start_83
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_87

    .line 54
    :goto_86
    goto :goto_89

    .line 53
    :catch_87
    move-exception v0

    goto :goto_86

    .line 57
    :cond_89
    :goto_89
    return-void

    .line 50
    :catchall_8a
    move-exception v0

    if-eqz v4, :cond_92

    .line 52
    :try_start_8d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_91

    .line 54
    goto :goto_92

    .line 53
    :catch_91
    move-exception v1

    .line 56
    :cond_92
    :goto_92
    throw v0
.end method

.method public static declared-synchronized a(Lcom/bytedance/sdk/openadsdk/core/d/q;)V
    .registers 3

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;

    monitor-enter v0

    .line 64
    if-eqz p0, :cond_11

    :try_start_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/q;->f()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 65
    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->a:Lcom/bytedance/sdk/openadsdk/core/d/q;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_e

    goto :goto_11

    .line 63
    :catchall_e
    move-exception p0

    monitor-exit v0

    throw p0

    .line 67
    :cond_11
    :goto_11
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized b()Lcom/bytedance/sdk/openadsdk/core/d/q;
    .registers 2

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;

    monitor-enter v0

    .line 60
    :try_start_3
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->a:Lcom/bytedance/sdk/openadsdk/core/d/q;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    .line 60
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 8

    .line 145
    const-string v0, "\\."

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->b()Lcom/bytedance/sdk/openadsdk/core/d/q;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_69

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->b()Lcom/bytedance/sdk/openadsdk/core/d/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/q;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_69

    .line 150
    :cond_19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 152
    return v1

    .line 155
    :cond_20
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->b()Lcom/bytedance/sdk/openadsdk/core/d/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/q;->b()Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 158
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 160
    array-length v2, p0

    array-length v4, v0

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 161
    move v4, v1

    :goto_37
    if-ge v4, v2, :cond_68

    .line 162
    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    aget-object v6, v0, v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    .line 163
    if-nez v5, :cond_64

    .line 165
    aget-object v5, p0, v4

    aget-object v6, v0, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    .line 166
    if-lez v5, :cond_53

    .line 167
    return v3

    .line 168
    :cond_53
    if-gez v5, :cond_56

    .line 169
    return v1

    .line 172
    :cond_56
    add-int/lit8 v5, v2, -0x1

    if-ne v4, v5, :cond_60

    .line 174
    array-length p0, p0

    array-length v0, v0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_6a

    if-le p0, v0, :cond_5f

    move v1, v3

    :cond_5f
    return v1

    .line 176
    :cond_60
    nop

    .line 161
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    .line 178
    :cond_64
    if-lez v5, :cond_67

    move v1, v3

    :cond_67
    return v1

    .line 183
    :cond_68
    goto :goto_6b

    .line 147
    :cond_69
    :goto_69
    return v3

    .line 182
    :catchall_6a
    move-exception p0

    .line 185
    :goto_6b
    return v1
.end method

.method public static c()V
    .registers 6

    .line 73
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->a:Lcom/bytedance/sdk/openadsdk/core/d/q;

    const-string v1, "Version"

    if-nez v0, :cond_c

    .line 74
    const-string v0, "version save error1"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void

    .line 78
    :cond_c
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/q;->g()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 80
    const-string v0, "version save error2"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void

    .line 84
    :cond_1c
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->e()Ljava/io/File;

    move-result-object v2

    .line 85
    new-instance v3, Ljava/io/File;

    const-string v4, "temp_pkg_info.json"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 86
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_48

    .line 90
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 93
    :cond_48
    const/4 v4, 0x0

    .line 95
    :try_start_49
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_6b

    .line 96
    :try_start_4e
    const-string v4, "utf-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 99
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 100
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 104
    :cond_60
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_63
    .catchall {:try_start_4e .. :try_end_63} :catchall_68

    .line 108
    nop

    .line 110
    :try_start_64
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_77

    goto :goto_76

    .line 105
    :catchall_68
    move-exception v0

    move-object v4, v5

    goto :goto_6c

    :catchall_6b
    move-exception v0

    .line 106
    :goto_6c
    :try_start_6c
    const-string v2, "version save error3"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_71
    .catchall {:try_start_6c .. :try_end_71} :catchall_7a

    .line 108
    if-eqz v4, :cond_79

    .line 110
    :try_start_73
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77

    .line 112
    :goto_76
    goto :goto_79

    .line 111
    :catch_77
    move-exception v0

    goto :goto_76

    .line 116
    :cond_79
    :goto_79
    return-void

    .line 108
    :catchall_7a
    move-exception v0

    if-eqz v4, :cond_82

    .line 110
    :try_start_7d
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    .line 112
    goto :goto_82

    .line 111
    :catch_81
    move-exception v1

    .line 114
    :cond_82
    :goto_82
    throw v0
.end method

.method public static d()V
    .registers 4

    .line 189
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->b()Lcom/bytedance/sdk/openadsdk/core/d/q;

    move-result-object v0

    .line 190
    if-nez v0, :cond_7

    .line 191
    return-void

    .line 194
    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->e()Ljava/io/File;

    move-result-object v1

    .line 198
    :try_start_b
    new-instance v2, Ljava/io/File;

    const-string v3, "temp_pkg_info.json"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_16

    .line 201
    goto :goto_17

    .line 200
    :catchall_16
    move-exception v2

    .line 204
    :goto_17
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/q;->e()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_44

    .line 205
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/q;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/d/q$a;

    .line 207
    :try_start_31
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/q$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 208
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_41
    .catchall {:try_start_31 .. :try_end_41} :catchall_42

    .line 211
    goto :goto_43

    .line 210
    :catchall_42
    move-exception v2

    .line 212
    :goto_43
    goto :goto_25

    .line 215
    :cond_44
    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->a:Lcom/bytedance/sdk/openadsdk/core/d/q;

    .line 216
    return-void
.end method
