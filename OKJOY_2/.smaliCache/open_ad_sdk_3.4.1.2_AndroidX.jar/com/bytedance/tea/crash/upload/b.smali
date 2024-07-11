.class public Lcom/bytedance/tea/crash/upload/b;
.super Ljava/lang/Object;
.source "CrashUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/tea/crash/upload/b$b;,
        Lcom/bytedance/tea/crash/upload/b$a;
    }
.end annotation


# static fields
.field public static a:Z

.field private static b:Lcom/bytedance/tea/crash/upload/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bytedance/tea/crash/upload/b;->a:Z

    return-void
.end method

.method public static a(JLjava/lang/String;[BLcom/bytedance/tea/crash/upload/b$a;Ljava/lang/String;Z)Lcom/bytedance/tea/crash/upload/f;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    if-nez p2, :cond_a

    .line 67
    new-instance p0, Lcom/bytedance/tea/crash/upload/f;

    const/16 p1, 0xc9

    invoke-direct {p0, p1}, Lcom/bytedance/tea/crash/upload/f;-><init>(I)V

    return-object p0

    .line 69
    :cond_a
    if-nez p3, :cond_f

    .line 70
    const/4 p0, 0x0

    new-array p3, p0, [B

    .line 72
    :cond_f
    array-length p0, p3

    .line 73
    nop

    .line 74
    const/4 p1, 0x0

    .line 75
    sget-object v0, Lcom/bytedance/tea/crash/upload/b$a;->b:Lcom/bytedance/tea/crash/upload/b$a;

    const/16 v1, 0x80

    if-ne v0, p4, :cond_23

    if-le p0, v1, :cond_23

    .line 76
    invoke-static {p3}, Lcom/bytedance/tea/crash/upload/b;->b([B)[B

    move-result-object p3

    .line 77
    const-string p1, "gzip"

    move-object v3, p1

    move-object v1, p3

    goto :goto_34

    .line 78
    :cond_23
    sget-object v0, Lcom/bytedance/tea/crash/upload/b$a;->c:Lcom/bytedance/tea/crash/upload/b$a;

    if-ne v0, p4, :cond_32

    if-le p0, v1, :cond_32

    .line 79
    invoke-static {p3}, Lcom/bytedance/tea/crash/upload/b;->a([B)[B

    move-result-object p3

    .line 80
    const-string p1, "deflate"

    move-object v3, p1

    move-object v1, p3

    goto :goto_34

    .line 82
    :cond_32
    move-object v3, p1

    move-object v1, p3

    :goto_34
    if-nez v1, :cond_3e

    .line 83
    new-instance p0, Lcom/bytedance/tea/crash/upload/f;

    const/16 p1, 0xca

    invoke-direct {p0, p1}, Lcom/bytedance/tea/crash/upload/f;-><init>(I)V

    return-object p0

    .line 85
    :cond_3e
    if-eqz p6, :cond_ad

    .line 86
    array-length p0, v1

    invoke-static {v1, p0}, Lcom/bytedance/embedapplog/util/TTEncryptUtils;->a([BI)[B

    move-result-object p0

    .line 87
    if-eqz p0, :cond_a2

    .line 88
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_70

    .line 89
    const-string p1, "?"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_89

    .line 90
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_89

    .line 93
    :cond_70
    const-string p1, "&"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_89

    .line 94
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 97
    :cond_89
    :goto_89
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "tt_data=a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 98
    const-string p5, "application/octet-stream;tt-data=a"

    move-object v1, p0

    move-object v0, p2

    move-object v2, p5

    goto :goto_a4

    .line 100
    :cond_a2
    move-object v0, p2

    move-object v2, p5

    .line 102
    :goto_a4
    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v4, "POST"

    invoke-static/range {v0 .. v6}, Lcom/bytedance/tea/crash/upload/b;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/bytedance/tea/crash/upload/f;

    move-result-object p0

    return-object p0

    .line 104
    :cond_ad
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v4, "POST"

    move-object v0, p2

    move-object v2, p5

    invoke-static/range {v0 .. v6}, Lcom/bytedance/tea/crash/upload/b;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/bytedance/tea/crash/upload/f;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/tea/crash/upload/f;
    .registers 3

    .line 250
    invoke-static {}, Lcom/bytedance/tea/crash/upload/b;->b()Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/bytedance/tea/crash/upload/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/tea/crash/upload/f;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/tea/crash/upload/f;
    .registers 6

    .line 275
    :try_start_0
    new-instance v0, Lcom/bytedance/tea/crash/upload/e;

    const-string v1, "UTF-8"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/bytedance/tea/crash/upload/e;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 276
    const-string p0, "json"

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/tea/crash/upload/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string p0, "file"

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/tea/crash/upload/e;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 278
    invoke-virtual {v0}, Lcom/bytedance/tea/crash/upload/e;->a()Ljava/lang/String;

    move-result-object p0
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1b} :catch_46

    .line 280
    :try_start_1b
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 281
    const-string p2, "succ_kind"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 282
    const-string v0, "succ"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_35

    .line 283
    new-instance p0, Lcom/bytedance/tea/crash/upload/f;

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lcom/bytedance/tea/crash/upload/f;-><init>(ILorg/json/JSONObject;)V

    return-object p0

    .line 285
    :cond_35
    new-instance p1, Lcom/bytedance/tea/crash/upload/f;

    const/16 p2, 0xcc

    invoke-direct {p1, p2, p0}, Lcom/bytedance/tea/crash/upload/f;-><init>(ILjava/lang/String;)V
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_3c} :catch_3d
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_3c} :catch_46

    return-object p1

    .line 287
    :catch_3d
    move-exception p0

    .line 288
    :try_start_3e
    new-instance p1, Lcom/bytedance/tea/crash/upload/f;

    const/16 p2, 0xcd

    invoke-direct {p1, p2, p0}, Lcom/bytedance/tea/crash/upload/f;-><init>(ILjava/lang/Throwable;)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_45} :catch_46

    return-object p1

    .line 290
    :catch_46
    move-exception p0

    .line 291
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 292
    new-instance p0, Lcom/bytedance/tea/crash/upload/f;

    const/16 p1, 0xcf

    invoke-direct {p0, p1}, Lcom/bytedance/tea/crash/upload/f;-><init>(I)V

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/tea/crash/upload/f;
    .registers 11

    .line 370
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1f

    .line 373
    :cond_d
    const-wide/32 v1, 0x200000

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    sget-object v5, Lcom/bytedance/tea/crash/upload/b$a;->b:Lcom/bytedance/tea/crash/upload/b$a;

    const-string v6, "application/json; charset=utf-8"

    move-object v3, p0

    move v7, p2

    invoke-static/range {v1 .. v7}, Lcom/bytedance/tea/crash/upload/b;->a(JLjava/lang/String;[BLcom/bytedance/tea/crash/upload/b$a;Ljava/lang/String;Z)Lcom/bytedance/tea/crash/upload/f;

    move-result-object p0

    return-object p0

    .line 371
    :cond_1f
    :goto_1f
    new-instance p0, Lcom/bytedance/tea/crash/upload/f;

    const/16 p1, 0xc9

    invoke-direct {p0, p1}, Lcom/bytedance/tea/crash/upload/f;-><init>(I)V
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_27

    return-object p0

    .line 374
    :catchall_27
    move-exception p0

    .line 375
    invoke-static {p0}, Lcom/bytedance/tea/crash/g/j;->b(Ljava/lang/Throwable;)V

    .line 376
    new-instance p1, Lcom/bytedance/tea/crash/upload/f;

    const/16 p2, 0xcf

    invoke-direct {p1, p2, p0}, Lcom/bytedance/tea/crash/upload/f;-><init>(ILjava/lang/Throwable;)V

    return-object p1
.end method

.method private static a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/bytedance/tea/crash/upload/f;
    .registers 12

    .line 142
    const-string v0, "gzip"

    .line 143
    nop

    .line 145
    const/4 v1, 0x0

    :try_start_4
    sget-object v2, Lcom/bytedance/tea/crash/upload/b;->b:Lcom/bytedance/tea/crash/upload/c;

    if-eqz v2, :cond_c

    .line 146
    invoke-interface {v2, p0, p1}, Lcom/bytedance/tea/crash/upload/c;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    .line 150
    :cond_c
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 151
    if-eqz p6, :cond_1d

    .line 152
    new-instance v3, Ljava/net/URL;

    invoke-static {p0, v2}, Lcom/bytedance/tea/a/a/a/a;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_22

    .line 154
    :cond_1d
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 156
    :goto_22
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_10b

    .line 157
    if-eqz p6, :cond_56

    :try_start_2a
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p6

    if-nez p6, :cond_56

    .line 158
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :goto_34
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 159
    if-nez v2, :cond_43

    .line 160
    goto :goto_34

    .line 162
    :cond_43
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    goto :goto_34

    .line 211
    :catchall_4f
    move-exception p1

    move-object v4, v1

    move-object v1, p0

    move-object p0, p1

    move-object p1, v4

    goto/16 :goto_10d

    .line 165
    :cond_56
    if-eqz p5, :cond_5d

    .line 166
    const/4 p5, 0x1

    invoke-virtual {p0, p5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    goto :goto_61

    .line 168
    :cond_5d
    const/4 p5, 0x0

    invoke-virtual {p0, p5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 170
    :goto_61
    if-eqz p2, :cond_68

    .line 171
    const-string p5, "Content-Type"

    invoke-virtual {p0, p5, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_68
    if-eqz p3, :cond_6f

    .line 174
    const-string p2, "Content-Encoding"

    invoke-virtual {p0, p2, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_6f
    const-string p2, "Accept-Encoding"

    invoke-virtual {p0, p2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    if-eqz p4, :cond_103

    .line 180
    invoke-virtual {p0, p4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 181
    if-eqz p1, :cond_9a

    array-length p2, p1
    :try_end_7c
    .catchall {:try_start_2a .. :try_end_7c} :catchall_4f

    if-lez p2, :cond_9a

    .line 182
    nop

    .line 184
    :try_start_7f
    new-instance p2, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_88
    .catchall {:try_start_7f .. :try_end_88} :catchall_94

    .line 185
    :try_start_88
    invoke-virtual {p2, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 186
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_8e
    .catchall {:try_start_88 .. :try_end_8e} :catchall_92

    .line 188
    :try_start_8e
    invoke-static {p2}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    .line 189
    goto :goto_9a

    .line 188
    :catchall_92
    move-exception p1

    goto :goto_96

    :catchall_94
    move-exception p1

    move-object p2, v1

    :goto_96
    invoke-static {p2}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    throw p1

    .line 191
    :cond_9a
    :goto_9a
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 192
    const/16 p2, 0xc8

    if-ne p1, p2, :cond_de

    .line 193
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_a6
    .catchall {:try_start_8e .. :try_end_a6} :catchall_4f

    .line 195
    :try_start_a6
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object p2

    .line 196
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2
    :try_end_ae
    .catchall {:try_start_a6 .. :try_end_ae} :catchall_da

    if-eqz p2, :cond_c7

    .line 197
    nop

    .line 199
    :try_start_b1
    new-instance p2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p2, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b6
    .catchall {:try_start_b1 .. :try_end_b6} :catchall_c2

    .line 200
    :try_start_b6
    invoke-static {p2}, Lcom/bytedance/tea/crash/upload/b;->a(Ljava/io/InputStream;)[B

    move-result-object p3
    :try_end_ba
    .catchall {:try_start_b6 .. :try_end_ba} :catchall_bf

    .line 202
    :try_start_ba
    invoke-static {p2}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    .line 203
    nop

    .line 204
    goto :goto_cb

    .line 202
    :catchall_bf
    move-exception p3

    move-object v1, p2

    goto :goto_c3

    :catchall_c2
    move-exception p3

    :goto_c3
    invoke-static {v1}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    throw p3

    .line 205
    :cond_c7
    invoke-static {p1}, Lcom/bytedance/tea/crash/upload/b;->a(Ljava/io/InputStream;)[B

    move-result-object p3

    .line 207
    :goto_cb
    invoke-static {p3}, Lcom/bytedance/tea/crash/upload/b;->c([B)Lcom/bytedance/tea/crash/upload/f;

    move-result-object p2
    :try_end_cf
    .catchall {:try_start_ba .. :try_end_cf} :catchall_da

    .line 216
    if-eqz p0, :cond_d6

    .line 218
    :try_start_d1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_d4} :catch_d5

    .line 220
    goto :goto_d6

    .line 219
    :catch_d5
    move-exception p0

    .line 222
    :cond_d6
    :goto_d6
    invoke-static {p1}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    .line 207
    return-object p2

    .line 211
    :catchall_da
    move-exception p2

    move-object v1, p0

    move-object p0, p2

    goto :goto_10d

    .line 209
    :cond_de
    :try_start_de
    new-instance p2, Lcom/bytedance/tea/crash/upload/f;

    const/16 p3, 0xce

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "http response code "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/bytedance/tea/crash/upload/f;-><init>(ILjava/lang/String;)V
    :try_end_f8
    .catchall {:try_start_de .. :try_end_f8} :catchall_4f

    .line 216
    if-eqz p0, :cond_ff

    .line 218
    :try_start_fa
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_fd} :catch_fe

    .line 220
    goto :goto_ff

    .line 219
    :catch_fe
    move-exception p0

    .line 222
    :cond_ff
    :goto_ff
    invoke-static {v1}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    .line 209
    return-object p2

    .line 178
    :cond_103
    :try_start_103
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "request method is not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_10b
    .catchall {:try_start_103 .. :try_end_10b} :catchall_4f

    .line 211
    :catchall_10b
    move-exception p0

    move-object p1, v1

    .line 212
    :goto_10d
    :try_start_10d
    invoke-static {p0}, Lcom/bytedance/tea/crash/g/j;->b(Ljava/lang/Throwable;)V

    .line 213
    new-instance p2, Lcom/bytedance/tea/crash/upload/f;

    const/16 p3, 0xcf

    invoke-direct {p2, p3, p0}, Lcom/bytedance/tea/crash/upload/f;-><init>(ILjava/lang/Throwable;)V
    :try_end_117
    .catchall {:try_start_10d .. :try_end_117} :catchall_122

    .line 216
    if-eqz v1, :cond_11e

    .line 218
    :try_start_119
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_11c} :catch_11d

    .line 220
    goto :goto_11e

    .line 219
    :catch_11d
    move-exception p0

    .line 222
    :cond_11e
    :goto_11e
    invoke-static {p1}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    .line 213
    return-object p2

    .line 216
    :catchall_122
    move-exception p0

    if-eqz v1, :cond_12a

    .line 218
    :try_start_125
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_125 .. :try_end_128} :catch_129

    .line 220
    goto :goto_12a

    .line 219
    :catch_129
    move-exception p2

    .line 222
    :cond_12a
    :goto_12a
    invoke-static {p1}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .registers 1

    .line 346
    invoke-static {}, Lcom/bytedance/tea/crash/h;->e()Lcom/bytedance/tea/crash/e/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/tea/crash/e/b;->a()Ljava/lang/String;

    move-result-object p0

    .line 347
    return-object p0
.end method

.method public static a()Z
    .registers 1

    .line 258
    const/4 v0, 0x1

    return v0
.end method

.method private static a(Ljava/io/InputStream;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 417
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 418
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 420
    :goto_9
    const/4 v2, -0x1

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v2, v3, :cond_15

    .line 421
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    .line 423
    :cond_15
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 425
    :try_start_18
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_20

    .line 427
    invoke-static {v0}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    .line 425
    return-object p0

    .line 427
    :catchall_20
    move-exception p0

    invoke-static {v0}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method private static a([B)[B
    .registers 5

    .line 109
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 110
    new-instance v2, Ljava/util/zip/Deflater;

    invoke-direct {v2}, Ljava/util/zip/Deflater;-><init>()V

    .line 111
    invoke-virtual {v2, p0}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 112
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finish()V

    .line 113
    new-array p0, v1, [B

    .line 114
    :goto_14
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finished()Z

    move-result v1

    if-nez v1, :cond_23

    .line 115
    invoke-virtual {v2, p0}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v1

    .line 116
    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 117
    goto :goto_14

    .line 118
    :cond_23
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->end()V

    .line 119
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/tea/crash/upload/f;
    .registers 3

    .line 254
    invoke-static {}, Lcom/bytedance/tea/crash/upload/b;->a()Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/bytedance/tea/crash/upload/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/tea/crash/upload/f;

    move-result-object p0

    return-object p0
.end method

.method public static b()Z
    .registers 1

    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method private static b([B)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 124
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 126
    :try_start_c
    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_18

    .line 131
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 132
    nop

    .line 134
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 127
    :catchall_18
    move-exception p0

    .line 128
    :try_start_19
    invoke-static {p0}, Lcom/bytedance/tea/crash/g/j;->b(Ljava/lang/Throwable;)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_21

    .line 129
    const/4 p0, 0x0

    .line 131
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 129
    return-object p0

    .line 131
    :catchall_21
    move-exception p0

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    throw p0
.end method

.method private static c([B)Lcom/bytedance/tea/crash/upload/f;
    .registers 5

    .line 233
    if-eqz p0, :cond_32

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_32

    .line 236
    :cond_6
    new-instance v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 238
    const/16 p0, 0xcc

    :try_start_13
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_25

    .line 240
    new-instance v2, Lcom/bytedance/tea/crash/upload/f;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lcom/bytedance/tea/crash/upload/f;-><init>(ILorg/json/JSONObject;)V

    return-object v2

    .line 242
    :cond_25
    new-instance v1, Lcom/bytedance/tea/crash/upload/f;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/tea/crash/upload/f;-><init>(ILjava/lang/String;)V
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_2a} :catch_2b

    return-object v1

    .line 244
    :catch_2b
    move-exception v1

    .line 246
    new-instance v1, Lcom/bytedance/tea/crash/upload/f;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/tea/crash/upload/f;-><init>(ILjava/lang/String;)V

    return-object v1

    .line 234
    :cond_32
    :goto_32
    new-instance p0, Lcom/bytedance/tea/crash/upload/f;

    const/16 v0, 0xcb

    invoke-direct {p0, v0}, Lcom/bytedance/tea/crash/upload/f;-><init>(I)V

    return-object p0
.end method
