.class public Lcom/tencent/smtt/sdk/a;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/tencent/smtt/sdk/a;->b:I

    const/16 v0, 0x258

    sput v0, Lcom/tencent/smtt/sdk/a;->a:I

    return-void
.end method

.method public static a()I
    .registers 5

    const/4 v0, 0x0

    sget v1, Lcom/tencent/smtt/sdk/a;->b:I

    if-lez v1, :cond_8

    sget v0, Lcom/tencent/smtt/sdk/a;->b:I

    :goto_7
    return v0

    :cond_8
    const-string v1, "/proc/meminfo"

    const/4 v3, 0x0

    :try_start_b
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/BufferedReader;

    const/16 v1, 0x2000

    invoke-direct {v2, v4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_17} :catch_60
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_17} :catch_70
    .catchall {:try_start_b .. :try_end_17} :catchall_80

    :cond_17
    :try_start_17
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_55

    const-string v3, "MemTotal:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v4, v3, :cond_17

    add-int/lit8 v3, v3, 0x9

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_55

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_55

    const-string v3, "k"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_55

    const/4 v3, 0x0

    const-string v4, "k"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    div-int/lit16 v0, v1, 0x400
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_55} :catch_91
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_55} :catch_8f
    .catchall {:try_start_17 .. :try_end_55} :catchall_8d

    :cond_55
    :try_start_55
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_5b

    :cond_58
    :goto_58
    sput v0, Lcom/tencent/smtt/sdk/a;->b:I

    goto :goto_7

    :catch_5b
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_58

    :catch_60
    move-exception v1

    move-object v2, v3

    :goto_62
    :try_start_62
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_8d

    if-eqz v2, :cond_58

    :try_start_67
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6b

    goto :goto_58

    :catch_6b
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_58

    :catch_70
    move-exception v1

    move-object v2, v3

    :goto_72
    :try_start_72
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_8d

    if-eqz v2, :cond_58

    :try_start_77
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b

    goto :goto_58

    :catch_7b
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_58

    :catchall_80
    move-exception v0

    move-object v2, v3

    :goto_82
    if-eqz v2, :cond_87

    :try_start_84
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_88

    :cond_87
    :goto_87
    throw v0

    :catch_88
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_87

    :catchall_8d
    move-exception v0

    goto :goto_82

    :catch_8f
    move-exception v1

    goto :goto_72

    :catch_91
    move-exception v1

    goto :goto_62
.end method
