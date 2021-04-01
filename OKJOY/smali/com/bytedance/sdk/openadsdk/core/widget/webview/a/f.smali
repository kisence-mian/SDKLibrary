.class public Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field private static a:Lcom/bytedance/sdk/openadsdk/core/d/o;


# direct methods
.method public static a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/o$a;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v1

    .line 134
    :goto_8
    return-object v0

    .line 122
    :cond_9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->b()Lcom/bytedance/sdk/openadsdk/core/d/o;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->b()Lcom/bytedance/sdk/openadsdk/core/d/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/o;->d()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1b

    :cond_19
    move-object v0, v1

    .line 123
    goto :goto_8

    .line 126
    :cond_1b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->b()Lcom/bytedance/sdk/openadsdk/core/d/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/o;->e()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 127
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->b()Lcom/bytedance/sdk/openadsdk/core/d/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/o;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/o$a;

    .line 128
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/o$a;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_31

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/o$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    goto :goto_8

    :cond_4e
    move-object v0, v1

    .line 134
    goto :goto_8
.end method

.method public static a()V
    .registers 8

    .prologue
    .line 27
    const/4 v2, 0x0

    .line 29
    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->e()Ljava/io/File;

    move-result-object v0

    .line 30
    new-instance v3, Ljava/io/File;

    const-string v1, "temp_pkg_info.json"

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_70

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 33
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    new-array v0, v0, [B

    .line 34
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_35} :catch_79
    .catchall {:try_start_1 .. :try_end_35} :catchall_8a

    .line 35
    :try_start_35
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    .line 37
    new-instance v2, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 38
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/o;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/o;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_6a

    .line 41
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->a:Lcom/bytedance/sdk/openadsdk/core/d/o;

    .line 42
    const-string v0, "Version"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "old version read success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->a:Lcom/bytedance/sdk/openadsdk/core/d/o;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/o;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_6a} :catch_98
    .catchall {:try_start_35 .. :try_end_6a} :catchall_96

    .line 50
    :cond_6a
    :goto_6a
    if-eqz v1, :cond_6f

    .line 52
    :try_start_6c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_92

    .line 57
    :cond_6f
    :goto_6f
    return-void

    .line 45
    :cond_70
    :try_start_70
    const-string v0, "Version"

    const-string v1, "version pkg json file does not exist"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_77} :catch_79
    .catchall {:try_start_70 .. :try_end_77} :catchall_8a

    move-object v1, v2

    goto :goto_6a

    .line 47
    :catch_79
    move-exception v0

    move-object v1, v2

    .line 48
    :goto_7b
    :try_start_7b
    const-string v2, "Version"

    const-string v3, "version init error"

    invoke-static {v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_82
    .catchall {:try_start_7b .. :try_end_82} :catchall_96

    .line 50
    if-eqz v1, :cond_6f

    .line 52
    :try_start_84
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_88

    goto :goto_6f

    .line 53
    :catch_88
    move-exception v0

    goto :goto_6f

    .line 50
    :catchall_8a
    move-exception v0

    move-object v1, v2

    :goto_8c
    if-eqz v1, :cond_91

    .line 52
    :try_start_8e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_94

    .line 54
    :cond_91
    :goto_91
    throw v0

    .line 53
    :catch_92
    move-exception v0

    goto :goto_6f

    :catch_94
    move-exception v1

    goto :goto_91

    .line 50
    :catchall_96
    move-exception v0

    goto :goto_8c

    .line 47
    :catch_98
    move-exception v0

    goto :goto_7b
.end method

.method public static declared-synchronized a(Lcom/bytedance/sdk/openadsdk/core/d/o;)V
    .registers 3

    .prologue
    .line 64
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;

    monitor-enter v1

    if-eqz p0, :cond_d

    :try_start_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/o;->e()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 65
    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->a:Lcom/bytedance/sdk/openadsdk/core/d/o;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_f

    .line 67
    :cond_d
    monitor-exit v1

    return-void

    .line 64
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()Lcom/bytedance/sdk/openadsdk/core/d/o;
    .registers 2

    .prologue
    .line 60
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->a:Lcom/bytedance/sdk/openadsdk/core/d/o;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 145
    :try_start_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->b()Lcom/bytedance/sdk/openadsdk/core/d/o;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->b()Lcom/bytedance/sdk/openadsdk/core/d/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/o;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 185
    :cond_16
    :goto_16
    return v0

    .line 150
    :cond_17
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    move v0, v1

    .line 152
    goto :goto_16

    .line 155
    :cond_1f
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->b()Lcom/bytedance/sdk/openadsdk/core/d/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/o;->b()Ljava/lang/String;

    move-result-object v2

    .line 157
    const-string v3, "\\."

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 158
    const-string v4, "\\."

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 160
    array-length v2, v3

    array-length v5, v4

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v2, v1

    .line 161
    :goto_3a
    if-ge v2, v5, :cond_6b

    .line 162
    aget-object v6, v3, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    aget-object v7, v4, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    .line 163
    if-nez v6, :cond_63

    .line 165
    aget-object v6, v3, v2

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    .line 166
    if-gtz v6, :cond_16

    .line 168
    if-gez v6, :cond_59

    move v0, v1

    .line 169
    goto :goto_16

    .line 172
    :cond_59
    add-int/lit8 v6, v5, -0x1

    if-ne v2, v6, :cond_67

    .line 174
    array-length v2, v3

    array-length v3, v4
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5f} :catch_6a

    if-gt v2, v3, :cond_16

    move v0, v1

    goto :goto_16

    .line 178
    :cond_63
    if-gtz v6, :cond_16

    move v0, v1

    goto :goto_16

    .line 161
    :cond_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 182
    :catch_6a
    move-exception v0

    :cond_6b
    move v0, v1

    .line 185
    goto :goto_16
.end method

.method public static c()V
    .registers 5

    .prologue
    .line 73
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->a:Lcom/bytedance/sdk/openadsdk/core/d/o;

    if-nez v0, :cond_c

    .line 74
    const-string v0, "Version"

    const-string v1, "version save error1"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_b
    :goto_b
    return-void

    .line 78
    :cond_c
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->a:Lcom/bytedance/sdk/openadsdk/core/d/o;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/o;->f()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 80
    const-string v0, "Version"

    const-string v1, "version save error2"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 84
    :cond_20
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->e()Ljava/io/File;

    move-result-object v1

    .line 85
    new-instance v3, Ljava/io/File;

    const-string v2, "temp_pkg_info.json"

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 86
    new-instance v4, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 90
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 93
    :cond_4c
    const/4 v2, 0x0

    .line 95
    :try_start_4d
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_52} :catch_6f
    .catchall {:try_start_4d .. :try_end_52} :catchall_80

    .line 96
    :try_start_52
    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 99
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 100
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 104
    :cond_64
    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_67} :catch_8c
    .catchall {:try_start_52 .. :try_end_67} :catchall_8a

    .line 108
    if-eqz v1, :cond_b

    .line 110
    :try_start_69
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_b

    .line 111
    :catch_6d
    move-exception v0

    goto :goto_b

    .line 105
    :catch_6f
    move-exception v0

    move-object v1, v2

    .line 106
    :goto_71
    :try_start_71
    const-string v2, "Version"

    const-string v3, "version save error3"

    invoke-static {v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_78
    .catchall {:try_start_71 .. :try_end_78} :catchall_8a

    .line 108
    if-eqz v1, :cond_b

    .line 110
    :try_start_7a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_7e

    goto :goto_b

    .line 111
    :catch_7e
    move-exception v0

    goto :goto_b

    .line 108
    :catchall_80
    move-exception v0

    move-object v1, v2

    :goto_82
    if-eqz v1, :cond_87

    .line 110
    :try_start_84
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_88

    .line 112
    :cond_87
    :goto_87
    throw v0

    .line 111
    :catch_88
    move-exception v1

    goto :goto_87

    .line 108
    :catchall_8a
    move-exception v0

    goto :goto_82

    .line 105
    :catch_8c
    move-exception v0

    goto :goto_71
.end method

.method public static d()V
    .registers 4

    .prologue
    .line 189
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->b()Lcom/bytedance/sdk/openadsdk/core/d/o;

    move-result-object v0

    .line 190
    if-nez v0, :cond_7

    .line 216
    :goto_6
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
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_15} :catch_46

    .line 204
    :goto_15
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/o;->d()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 205
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/o;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/o$a;

    .line 207
    :try_start_2f
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/o$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_3f} :catch_40

    goto :goto_23

    .line 210
    :catch_40
    move-exception v0

    goto :goto_23

    .line 215
    :cond_42
    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->a:Lcom/bytedance/sdk/openadsdk/core/d/o;

    goto :goto_6

    .line 200
    :catch_46
    move-exception v2

    goto :goto_15
.end method
