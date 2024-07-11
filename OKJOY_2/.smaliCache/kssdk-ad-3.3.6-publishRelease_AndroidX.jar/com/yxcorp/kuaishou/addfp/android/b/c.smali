.class public Lcom/yxcorp/kuaishou/addfp/android/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yxcorp/kuaishou/addfp/a/b/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([Ljava/lang/String;ZZ)Lcom/yxcorp/kuaishou/addfp/android/b/d;
    .registers 13

    const/4 p2, 0x0

    const/4 v0, -0x1

    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    if-eqz p1, :cond_b

    const-string p1, "su"

    goto :goto_d

    :cond_b
    const-string p1, "sh"

    :goto_d
    invoke-virtual {v1, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_11} :catch_130
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_10d
    .catchall {:try_start_2 .. :try_end_11} :catchall_107

    :try_start_11
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1a} :catch_104
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1a} :catch_101
    .catchall {:try_start_11 .. :try_end_1a} :catchall_fe

    const/4 v2, 0x0

    move v3, v2

    :goto_1c
    if-gtz v3, :cond_34

    :try_start_1e
    aget-object v4, p0, v2

    if-eqz v4, :cond_31

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->write([B)V

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_34
    const-string p0, "exit\n"

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    move-result v0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_58} :catch_f6
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_58} :catch_ee
    .catchall {:try_start_1e .. :try_end_58} :catchall_e8

    :try_start_58
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_66} :catch_e5
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_66} :catch_e2
    .catchall {:try_start_58 .. :try_end_66} :catchall_df

    :goto_66
    :try_start_66
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_6a} :catch_db
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6a} :catch_d7
    .catchall {:try_start_66 .. :try_end_6a} :catchall_d5

    const-string v7, "|"

    if-eqz v6, :cond_76

    :try_start_6e
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_66

    :cond_76
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_7a} :catch_db
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_7a} :catch_d7
    .catchall {:try_start_6e .. :try_end_7a} :catchall_d5

    :try_start_7a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_8a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_8a
    :goto_8a
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_98

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8a

    :cond_98
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_ac

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_ac} :catch_cb
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_ac} :catch_c1
    .catchall {:try_start_7a .. :try_end_ac} :catchall_d5

    :cond_ac
    :try_start_ac
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_b5} :catch_b6

    goto :goto_ba

    :catch_b6
    move-exception v1

    invoke-static {v1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    :goto_ba
    if-eqz p1, :cond_158

    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    goto/16 :goto_158

    :catch_c1
    move-exception v2

    move v8, v0

    move-object v0, p0

    move-object p0, v2

    move v2, v8

    move-object v9, v1

    move-object v1, p2

    move-object p2, v9

    goto/16 :goto_114

    :catch_cb
    move-exception v2

    move v8, v0

    move-object v0, p0

    move-object p0, v2

    move v2, v8

    move-object v9, v1

    move-object v1, p2

    move-object p2, v9

    goto/16 :goto_137

    :catchall_d5
    move-exception p0

    goto :goto_eb

    :catch_d7
    move-exception p0

    move v2, v0

    move-object v0, p2

    goto :goto_f3

    :catch_db
    move-exception p0

    move v2, v0

    move-object v0, p2

    goto :goto_fb

    :catchall_df
    move-exception p0

    move-object v5, p2

    goto :goto_eb

    :catch_e2
    move-exception p0

    move-object v5, p2

    goto :goto_f1

    :catch_e5
    move-exception p0

    move-object v5, p2

    goto :goto_f9

    :catchall_e8
    move-exception p0

    move-object v4, p2

    move-object v5, v4

    :goto_eb
    move-object p2, v1

    goto/16 :goto_15f

    :catch_ee
    move-exception p0

    move-object v4, p2

    move-object v5, v4

    :goto_f1
    move v2, v0

    move-object v0, v5

    :goto_f3
    move-object p2, v1

    move-object v1, v0

    goto :goto_114

    :catch_f6
    move-exception p0

    move-object v4, p2

    move-object v5, v4

    :goto_f9
    move v2, v0

    move-object v0, v5

    :goto_fb
    move-object p2, v1

    move-object v1, v0

    goto :goto_137

    :catchall_fe
    move-exception p0

    move-object v4, p2

    goto :goto_10a

    :catch_101
    move-exception p0

    move-object v1, p2

    goto :goto_110

    :catch_104
    move-exception p0

    move-object v1, p2

    goto :goto_133

    :catchall_107
    move-exception p0

    move-object p1, p2

    move-object v4, p1

    :goto_10a
    move-object v5, v4

    goto/16 :goto_15f

    :catch_10d
    move-exception p0

    move-object p1, p2

    move-object v1, p1

    :goto_110
    move-object v4, v1

    move-object v5, v4

    move v2, v0

    move-object v0, v5

    :goto_114
    :try_start_114
    invoke-static {p0}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V
    :try_end_117
    .catchall {:try_start_114 .. :try_end_117} :catchall_15e

    if-eqz p2, :cond_11f

    :try_start_119
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->close()V

    goto :goto_11f

    :catch_11d
    move-exception p0

    goto :goto_12a

    :cond_11f
    :goto_11f
    if-eqz v4, :cond_124

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    :cond_124
    if-eqz v5, :cond_12d

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_129
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_129} :catch_11d

    goto :goto_12d

    :goto_12a
    invoke-static {p0}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    :cond_12d
    :goto_12d
    if-eqz p1, :cond_155

    goto :goto_152

    :catch_130
    move-exception p0

    move-object p1, p2

    move-object v1, p1

    :goto_133
    move-object v4, v1

    move-object v5, v4

    move v2, v0

    move-object v0, v5

    :goto_137
    :try_start_137
    invoke-static {p0}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V
    :try_end_13a
    .catchall {:try_start_137 .. :try_end_13a} :catchall_15e

    if-eqz p2, :cond_142

    :try_start_13c
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->close()V

    goto :goto_142

    :catch_140
    move-exception p0

    goto :goto_14d

    :cond_142
    :goto_142
    if-eqz v4, :cond_147

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    :cond_147
    if-eqz v5, :cond_150

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_14c
    .catch Ljava/io/IOException; {:try_start_13c .. :try_end_14c} :catch_140

    goto :goto_150

    :goto_14d
    invoke-static {p0}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    :cond_150
    :goto_150
    if-eqz p1, :cond_155

    :goto_152
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    :cond_155
    move-object p0, v0

    move-object p2, v1

    move v0, v2

    :cond_158
    :goto_158
    new-instance p1, Lcom/yxcorp/kuaishou/addfp/android/b/d;

    invoke-direct {p1, v0, p0, p2}, Lcom/yxcorp/kuaishou/addfp/android/b/d;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p1

    :catchall_15e
    move-exception p0

    :goto_15f
    if-eqz p2, :cond_167

    :try_start_161
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->close()V

    goto :goto_167

    :catch_165
    move-exception p2

    goto :goto_172

    :cond_167
    :goto_167
    if-eqz v4, :cond_16c

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    :cond_16c
    if-eqz v5, :cond_175

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_171
    .catch Ljava/io/IOException; {:try_start_161 .. :try_end_171} :catch_165

    goto :goto_175

    :goto_172
    invoke-static {p2}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    :cond_175
    :goto_175
    if-eqz p1, :cond_17a

    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    :cond_17a
    throw p0
.end method


# virtual methods
.method public a(Lcom/yxcorp/kuaishou/addfp/a/a/a;)V
    .registers 2

    return-void
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .registers 1

    return-void
.end method
