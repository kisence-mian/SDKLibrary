.class public Lcom/umeng/commonsdk/internal/utils/g;
.super Ljava/lang/Object;
.source "ProcessUtil.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:[B

.field private static c:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    const-string v0, "\n"

    sput-object v0, Lcom/umeng/commonsdk/internal/utils/g;->a:Ljava/lang/String;

    .line 25
    const-string v0, "\nexit\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/internal/utils/g;->b:[B

    .line 26
    const/16 v0, 0x20

    new-array v0, v0, [B

    sput-object v0, Lcom/umeng/commonsdk/internal/utils/g;->c:[B

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs a([Ljava/lang/String;)Ljava/lang/String;
    .registers 10

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

    .line 44
    nop

    .line 45
    nop

    .line 48
    const/4 v0, 0x0

    :try_start_8
    new-instance v1, Ljava/lang/ProcessBuilder;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1, p0}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    move-result-object p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p0
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_18} :catch_e3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_18} :catch_d5
    .catchall {:try_start_8 .. :try_end_18} :catchall_c4

    .line 51
    :try_start_18
    invoke-virtual {p0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1c} :catch_c1
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1c} :catch_be
    .catchall {:try_start_18 .. :try_end_1c} :catchall_b6

    .line 52
    :try_start_1c
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_20} :catch_b3
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_20} :catch_b0
    .catchall {:try_start_1c .. :try_end_20} :catchall_a9

    .line 53
    :try_start_20
    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_24} :catch_a5
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_24} :catch_a2
    .catchall {:try_start_20 .. :try_end_24} :catchall_9c

    .line 55
    :try_start_24
    sget-object v4, Lcom/umeng/commonsdk/internal/utils/g;->b:[B

    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 56
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 58
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    .line 60
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_34} :catch_98
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_34} :catch_94
    .catchall {:try_start_24 .. :try_end_34} :catchall_8e

    .line 61
    :try_start_34
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_39} :catch_8a
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_39} :catch_86
    .catchall {:try_start_34 .. :try_end_39} :catchall_80

    .line 64
    :try_start_39
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5b

    .line 65
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_44} :catch_7c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_44} :catch_78
    .catchall {:try_start_39 .. :try_end_44} :catchall_75

    .line 66
    :try_start_44
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    sget-object v6, Lcom/umeng/commonsdk/internal/utils/g;->a:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :goto_4c
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5c

    .line 69
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    sget-object v6, Lcom/umeng/commonsdk/internal/utils/g;->a:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4c

    .line 64
    :cond_5b
    move-object v7, v0

    .line 74
    :cond_5c
    :goto_5c
    sget-object v6, Lcom/umeng/commonsdk/internal/utils/g;->c:[B

    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I

    move-result v6
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_62} :catch_72
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_62} :catch_6f
    .catchall {:try_start_44 .. :try_end_62} :catchall_75

    if-lez v6, :cond_65

    goto :goto_5c

    .line 81
    :cond_65
    invoke-static {v1, v3, v2, v4, v5}, Lcom/umeng/commonsdk/internal/utils/g;->a(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStreamReader;Ljava/io/BufferedReader;)V

    .line 83
    if-eqz p0, :cond_f2

    .line 84
    :goto_6a
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/g;->c(Ljava/lang/Process;)V

    .line 85
    goto/16 :goto_f2

    .line 78
    :catch_6f
    move-exception v6

    goto/16 :goto_dd

    .line 76
    :catch_72
    move-exception v6

    goto/16 :goto_eb

    .line 81
    :catchall_75
    move-exception v0

    goto/16 :goto_cc

    .line 78
    :catch_78
    move-exception v6

    move-object v7, v0

    goto/16 :goto_dd

    .line 76
    :catch_7c
    move-exception v6

    move-object v7, v0

    goto/16 :goto_eb

    .line 81
    :catchall_80
    move-exception v5

    move-object v8, v5

    move-object v5, v0

    move-object v0, v8

    goto/16 :goto_cc

    .line 78
    :catch_86
    move-exception v5

    move-object v5, v0

    goto/16 :goto_dc

    .line 76
    :catch_8a
    move-exception v5

    move-object v5, v0

    goto/16 :goto_ea

    .line 81
    :catchall_8e
    move-exception v4

    move-object v5, v0

    move-object v0, v4

    move-object v4, v5

    goto/16 :goto_cc

    .line 78
    :catch_94
    move-exception v4

    move-object v4, v0

    goto/16 :goto_db

    .line 76
    :catch_98
    move-exception v4

    move-object v4, v0

    goto/16 :goto_e9

    .line 81
    :catchall_9c
    move-exception v3

    move-object v4, v0

    move-object v5, v4

    move-object v0, v3

    move-object v3, v5

    goto :goto_cc

    .line 78
    :catch_a2
    move-exception v3

    move-object v3, v0

    goto :goto_da

    .line 76
    :catch_a5
    move-exception v3

    move-object v3, v0

    goto/16 :goto_e8

    .line 81
    :catchall_a9
    move-exception v2

    move-object v3, v0

    move-object v4, v3

    move-object v5, v4

    move-object v0, v2

    move-object v2, v5

    goto :goto_cc

    .line 78
    :catch_b0
    move-exception v2

    move-object v2, v0

    goto :goto_d9

    .line 76
    :catch_b3
    move-exception v2

    move-object v2, v0

    goto :goto_e7

    .line 81
    :catchall_b6
    move-exception v1

    move-object v2, v0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v0, v1

    move-object v1, v5

    goto :goto_cc

    .line 78
    :catch_be
    move-exception v1

    move-object v1, v0

    goto :goto_d8

    .line 76
    :catch_c1
    move-exception v1

    move-object v1, v0

    goto :goto_e6

    .line 81
    :catchall_c4
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v0, p0

    move-object p0, v5

    :goto_cc
    invoke-static {v1, v3, v2, v4, v5}, Lcom/umeng/commonsdk/internal/utils/g;->a(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStreamReader;Ljava/io/BufferedReader;)V

    .line 83
    if-eqz p0, :cond_d4

    .line 84
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/g;->c(Ljava/lang/Process;)V

    .line 85
    :cond_d4
    throw v0

    .line 78
    :catch_d5
    move-exception p0

    move-object p0, v0

    move-object v1, p0

    :goto_d8
    move-object v2, v1

    :goto_d9
    move-object v3, v2

    :goto_da
    move-object v4, v3

    :goto_db
    move-object v5, v4

    :goto_dc
    move-object v7, v5

    .line 81
    :goto_dd
    invoke-static {v1, v3, v2, v4, v5}, Lcom/umeng/commonsdk/internal/utils/g;->a(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStreamReader;Ljava/io/BufferedReader;)V

    .line 83
    if-eqz p0, :cond_f2

    .line 84
    goto :goto_6a

    .line 76
    :catch_e3
    move-exception p0

    move-object p0, v0

    move-object v1, p0

    :goto_e6
    move-object v2, v1

    :goto_e7
    move-object v3, v2

    :goto_e8
    move-object v4, v3

    :goto_e9
    move-object v5, v4

    :goto_ea
    move-object v7, v5

    .line 81
    :goto_eb
    invoke-static {v1, v3, v2, v4, v5}, Lcom/umeng/commonsdk/internal/utils/g;->a(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStreamReader;Ljava/io/BufferedReader;)V

    .line 83
    if-eqz p0, :cond_f2

    .line 84
    goto/16 :goto_6a

    .line 89
    :cond_f2
    :goto_f2
    if-nez v7, :cond_f5

    return-object v0

    :cond_f5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStreamReader;Ljava/io/BufferedReader;)V
    .registers 5

    .line 103
    if-eqz p0, :cond_7

    .line 105
    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 108
    goto :goto_7

    .line 106
    :catch_6
    move-exception p0

    .line 110
    :cond_7
    :goto_7
    if-eqz p1, :cond_e

    .line 112
    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_d

    .line 115
    goto :goto_e

    .line 113
    :catch_d
    move-exception p0

    .line 117
    :cond_e
    :goto_e
    if-eqz p2, :cond_15

    .line 119
    :try_start_10
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_14

    .line 122
    goto :goto_15

    .line 120
    :catch_14
    move-exception p0

    .line 124
    :cond_15
    :goto_15
    if-eqz p3, :cond_1c

    .line 126
    :try_start_17
    invoke-virtual {p3}, Ljava/io/InputStreamReader;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1b

    .line 129
    goto :goto_1c

    .line 127
    :catch_1b
    move-exception p0

    .line 131
    :cond_1c
    :goto_1c
    if-eqz p4, :cond_23

    .line 133
    :try_start_1e
    invoke-virtual {p4}, Ljava/io/BufferedReader;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_22

    .line 136
    goto :goto_23

    .line 134
    :catch_22
    move-exception p0

    .line 138
    :cond_23
    :goto_23
    return-void
.end method

.method private static a(Ljava/lang/Process;)V
    .registers 2

    .line 146
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/g;->b(Ljava/lang/Process;)I

    move-result v0

    .line 147
    if-eqz v0, :cond_10

    .line 150
    :try_start_6
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_a

    .line 156
    goto :goto_10

    .line 151
    :catch_a
    move-exception v0

    .line 153
    :try_start_b
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_f

    .line 155
    goto :goto_10

    .line 154
    :catch_f
    move-exception p0

    .line 158
    :cond_10
    :goto_10
    return-void
.end method

.method private static b(Ljava/lang/Process;)I
    .registers 3

    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 169
    :try_start_4
    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 170
    const-string v1, "]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 171
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 172
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1a} :catch_1b

    return p0

    .line 173
    :catch_1b
    move-exception p0

    .line 174
    const/4 p0, 0x0

    return p0
.end method

.method private static c(Ljava/lang/Process;)V
    .registers 2

    .line 184
    if-eqz p0, :cond_10

    .line 187
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I

    move-result v0

    if-eqz v0, :cond_b

    .line 188
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/g;->a(Ljava/lang/Process;)V
    :try_end_b
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_2 .. :try_end_b} :catch_c

    .line 192
    :cond_b
    goto :goto_10

    .line 190
    :catch_c
    move-exception v0

    .line 191
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/g;->a(Ljava/lang/Process;)V

    .line 194
    :cond_10
    :goto_10
    return-void
.end method
