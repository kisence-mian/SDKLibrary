.class public Lcom/bytedance/sdk/openadsdk/utils/ai;
.super Ljava/lang/Object;
.source "TestHelperUtils.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    nop

    .line 22
    nop

    .line 24
    const/4 v1, 0x0

    :try_start_8
    const-string v2, "com.union_test.toutiao"

    .line 25
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data/data/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_38

    .line 27
    nop

    .line 40
    nop

    .line 44
    nop

    .line 46
    nop

    .line 50
    nop

    .line 27
    return-object v1

    .line 29
    :cond_38
    new-instance p0, Ljava/io/FileReader;

    invoke-direct {p0, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_3d} :catch_6b
    .catchall {:try_start_8 .. :try_end_3d} :catchall_68

    .line 30
    :try_start_3d
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_42} :catch_63
    .catchall {:try_start_3d .. :try_end_42} :catchall_60

    .line 31
    nop

    .line 32
    :goto_43
    :try_start_43
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4d

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_43

    .line 35
    :cond_4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_51} :catch_5e
    .catchall {:try_start_43 .. :try_end_51} :catchall_89

    .line 40
    nop

    .line 41
    :try_start_52
    invoke-virtual {p0}, Ljava/io/FileReader;->close()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_56

    .line 44
    goto :goto_57

    .line 43
    :catchall_56
    move-exception p0

    .line 46
    :goto_57
    nop

    .line 47
    :try_start_58
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5c

    .line 50
    goto :goto_5d

    .line 49
    :catchall_5c
    move-exception p0

    .line 35
    :goto_5d
    return-object v0

    .line 36
    :catch_5e
    move-exception v1

    goto :goto_6f

    .line 39
    :catchall_60
    move-exception v0

    move-object v2, v1

    goto :goto_8a

    .line 36
    :catch_63
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_6f

    .line 39
    :catchall_68
    move-exception v0

    move-object v2, v1

    goto :goto_8b

    .line 36
    :catch_6b
    move-exception p0

    move-object v2, v1

    move-object v1, p0

    move-object p0, v2

    .line 37
    :goto_6f
    :try_start_6f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_89

    .line 40
    if-eqz p0, :cond_7a

    .line 41
    :try_start_74
    invoke-virtual {p0}, Ljava/io/FileReader;->close()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_78

    goto :goto_7a

    .line 43
    :catchall_78
    move-exception p0

    goto :goto_7b

    .line 44
    :cond_7a
    :goto_7a
    nop

    .line 46
    :goto_7b
    if-eqz v2, :cond_83

    .line 47
    :try_start_7d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_81

    goto :goto_83

    .line 49
    :catchall_81
    move-exception p0

    .line 51
    goto :goto_84

    .line 50
    :cond_83
    :goto_83
    nop

    .line 52
    :goto_84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 39
    :catchall_89
    move-exception v0

    :goto_8a
    move-object v1, p0

    .line 40
    :goto_8b
    if-eqz v1, :cond_93

    .line 41
    :try_start_8d
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_91

    goto :goto_93

    .line 43
    :catchall_91
    move-exception p0

    goto :goto_94

    .line 44
    :cond_93
    :goto_93
    nop

    .line 46
    :goto_94
    if-eqz v2, :cond_9c

    .line 47
    :try_start_96
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_9a

    goto :goto_9c

    .line 49
    :catchall_9a
    move-exception p0

    goto :goto_9d

    .line 50
    :cond_9c
    :goto_9c
    nop

    .line 51
    :goto_9d
    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 74
    nop

    .line 75
    const-string v0, "https://pangolin.snssdk.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 76
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :cond_e
    const-string v0, "https://is.snssdk.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 79
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 80
    return-object p0

    .line 81
    :cond_1b
    const-string v0, "https://pangolin16.snssdk.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 82
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 83
    return-object p0

    .line 84
    :cond_28
    const-string v0, "https://api-access.pangolin-sdk-toutiao.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 85
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 86
    return-object p0

    .line 89
    :cond_35
    return-object p0
.end method

.method public static a()Z
    .registers 2

    .line 56
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/u;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 57
    return v1

    .line 59
    :cond_8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->v()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->w()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 60
    const/4 v0, 0x1

    return v0

    .line 62
    :cond_1e
    return v1
.end method

.method public static b()Ljava/lang/String;
    .registers 3

    .line 113
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/ai;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 114
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ZGV2aWNlX2lk"

    invoke-static {v2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/ai;->a:Ljava/lang/String;

    .line 116
    :cond_16
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/ai;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 95
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 96
    return-object p0

    .line 98
    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->x()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 100
    return-object p0

    .line 102
    :cond_16
    const-string v1, "TestHelperUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AnyDoorId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 104
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ai;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "aid"

    const-string v2, "5001121"

    .line 105
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_4a
    .catchall {:try_start_0 .. :try_end_4a} :catchall_4b

    .line 103
    return-object p0

    .line 107
    :catchall_4b
    move-exception v0

    .line 108
    return-object p0
.end method
