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

    .prologue
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

    .prologue
    const/16 v2, 0x80

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 66
    if-nez p2, :cond_e

    .line 67
    new-instance v0, Lcom/bytedance/tea/crash/upload/f;

    const/16 v1, 0xc9

    invoke-direct {v0, v1}, Lcom/bytedance/tea/crash/upload/f;-><init>(I)V

    .line 104
    :goto_d
    return-object v0

    .line 69
    :cond_e
    if-nez p3, :cond_12

    .line 70
    new-array p3, v6, [B

    .line 72
    :cond_12
    array-length v0, p3

    .line 74
    const/4 v3, 0x0

    .line 75
    sget-object v1, Lcom/bytedance/tea/crash/upload/b$a;->b:Lcom/bytedance/tea/crash/upload/b$a;

    if-ne v1, p4, :cond_2b

    if-le v0, v2, :cond_2b

    .line 76
    invoke-static {p3}, Lcom/bytedance/tea/crash/upload/b;->b([B)[B

    move-result-object p3

    .line 77
    const-string v3, "gzip"

    move-object v1, p3

    .line 82
    :goto_21
    if-nez v1, :cond_39

    .line 83
    new-instance v0, Lcom/bytedance/tea/crash/upload/f;

    const/16 v1, 0xca

    invoke-direct {v0, v1}, Lcom/bytedance/tea/crash/upload/f;-><init>(I)V

    goto :goto_d

    .line 78
    :cond_2b
    sget-object v1, Lcom/bytedance/tea/crash/upload/b$a;->c:Lcom/bytedance/tea/crash/upload/b$a;

    if-ne v1, p4, :cond_b4

    if-le v0, v2, :cond_b4

    .line 79
    invoke-static {p3}, Lcom/bytedance/tea/crash/upload/b;->a([B)[B

    move-result-object p3

    .line 80
    const-string v3, "deflate"

    move-object v1, p3

    goto :goto_21

    .line 85
    :cond_39
    if-eqz p6, :cond_aa

    .line 86
    array-length v0, v1

    invoke-static {v1, v0}, Lcom/bytedance/embedapplog/util/TTEncryptUtils;->a([BI)[B

    move-result-object v0

    .line 87
    if-eqz v0, :cond_a7

    .line 88
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 89
    const-string v1, "?"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6c

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 97
    :cond_6c
    :goto_6c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tt_data=a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 98
    const-string v2, "application/octet-stream;tt-data=a"

    move-object v1, v0

    move-object v0, p2

    .line 102
    :goto_83
    const-string v4, "POST"

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/bytedance/tea/crash/upload/b;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/bytedance/tea/crash/upload/f;

    move-result-object v0

    goto :goto_d

    .line 93
    :cond_8b
    const-string v1, "&"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6c

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_6c

    :cond_a7
    move-object v2, p5

    move-object v0, p2

    .line 100
    goto :goto_83

    .line 104
    :cond_aa
    const-string v4, "POST"

    move-object v0, p2

    move-object v2, p5

    invoke-static/range {v0 .. v6}, Lcom/bytedance/tea/crash/upload/b;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/bytedance/tea/crash/upload/f;

    move-result-object v0

    goto/16 :goto_d

    :cond_b4
    move-object v1, p3

    goto/16 :goto_21
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/tea/crash/upload/f;
    .registers 3

    .prologue
    .line 250
    invoke-static {}, Lcom/bytedance/tea/crash/upload/b;->b()Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/bytedance/tea/crash/upload/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/tea/crash/upload/f;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/tea/crash/upload/f;
    .registers 7

    .prologue
    .line 275
    :try_start_0
    new-instance v0, Lcom/bytedance/tea/crash/upload/e;

    const-string v1, "UTF-8"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/bytedance/tea/crash/upload/e;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 276
    const-string v1, "json"

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/tea/crash/upload/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v1, "file"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/tea/crash/upload/e;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 278
    invoke-virtual {v0}, Lcom/bytedance/tea/crash/upload/e;->a()Ljava/lang/String;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1a} :catch_47

    move-result-object v1

    .line 280
    :try_start_1b
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 281
    const-string v0, "succ_kind"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    const-string v3, "succ"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 283
    new-instance v0, Lcom/bytedance/tea/crash/upload/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/tea/crash/upload/f;-><init>(ILorg/json/JSONObject;)V

    .line 292
    :goto_34
    return-object v0

    .line 285
    :cond_35
    new-instance v0, Lcom/bytedance/tea/crash/upload/f;

    const/16 v2, 0xcc

    invoke-direct {v0, v2, v1}, Lcom/bytedance/tea/crash/upload/f;-><init>(ILjava/lang/String;)V
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_3c} :catch_3d
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_3c} :catch_47

    goto :goto_34

    .line 287
    :catch_3d
    move-exception v0

    move-object v1, v0

    .line 288
    :try_start_3f
    new-instance v0, Lcom/bytedance/tea/crash/upload/f;

    const/16 v2, 0xcd

    invoke-direct {v0, v2, v1}, Lcom/bytedance/tea/crash/upload/f;-><init>(ILjava/lang/Throwable;)V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_46} :catch_47

    goto :goto_34

    .line 290
    :catch_47
    move-exception v0

    .line 291
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 292
    new-instance v0, Lcom/bytedance/tea/crash/upload/f;

    const/16 v1, 0xcf

    invoke-direct {v0, v1}, Lcom/bytedance/tea/crash/upload/f;-><init>(I)V

    goto :goto_34
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/tea/crash/upload/f;
    .registers 10

    .prologue
    .line 370
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 371
    :cond_c
    new-instance v0, Lcom/bytedance/tea/crash/upload/f;

    const/16 v1, 0xc9

    invoke-direct {v0, v1}, Lcom/bytedance/tea/crash/upload/f;-><init>(I)V

    .line 376
    :goto_13
    return-object v0

    .line 373
    :cond_14
    const-wide/32 v0, 0x200000

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    sget-object v4, Lcom/bytedance/tea/crash/upload/b$a;->b:Lcom/bytedance/tea/crash/upload/b$a;

    const-string v5, "application/json; charset=utf-8"

    move-object v2, p0

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/bytedance/tea/crash/upload/b;->a(JLjava/lang/String;[BLcom/bytedance/tea/crash/upload/b$a;Ljava/lang/String;Z)Lcom/bytedance/tea/crash/upload/f;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_24} :catch_26

    move-result-object v0

    goto :goto_13

    .line 374
    :catch_26
    move-exception v0

    move-object v1, v0

    .line 375
    invoke-static {v1}, Lcom/bytedance/tea/crash/g/j;->b(Ljava/lang/Throwable;)V

    .line 376
    new-instance v0, Lcom/bytedance/tea/crash/upload/f;

    const/16 v2, 0xcf

    invoke-direct {v0, v2, v1}, Lcom/bytedance/tea/crash/upload/f;-><init>(ILjava/lang/Throwable;)V

    goto :goto_13
.end method

.method private static a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/bytedance/tea/crash/upload/f;
    .registers 14

    .prologue
    const/4 v3, 0x0

    .line 142
    .line 145
    :try_start_1
    sget-object v0, Lcom/bytedance/tea/crash/upload/b;->b:Lcom/bytedance/tea/crash/upload/c;

    if-eqz v0, :cond_b

    .line 146
    sget-object v0, Lcom/bytedance/tea/crash/upload/b;->b:Lcom/bytedance/tea/crash/upload/c;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/tea/crash/upload/c;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    .line 150
    :cond_b
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 151
    if-eqz p6, :cond_5c

    .line 152
    new-instance v0, Ljava/net/URL;

    invoke-static {p0, v1}, Lcom/bytedance/tea/a/a/a/a;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 156
    :goto_1b
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_21} :catch_62
    .catchall {:try_start_1 .. :try_end_21} :catchall_12d

    .line 157
    if-eqz p6, :cond_66

    :try_start_23
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_66

    .line 158
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2d
    :goto_2d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 159
    if-eqz v1, :cond_2d

    .line 162
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_46} :catch_47
    .catchall {:try_start_23 .. :try_end_46} :catchall_8b

    goto :goto_2d

    .line 211
    :catch_47
    move-exception v1

    move-object v2, v0

    .line 212
    :goto_49
    :try_start_49
    invoke-static {v1}, Lcom/bytedance/tea/crash/g/j;->b(Ljava/lang/Throwable;)V

    .line 213
    new-instance v0, Lcom/bytedance/tea/crash/upload/f;

    const/16 v4, 0xcf

    invoke-direct {v0, v4, v1}, Lcom/bytedance/tea/crash/upload/f;-><init>(ILjava/lang/Throwable;)V
    :try_end_53
    .catchall {:try_start_49 .. :try_end_53} :catchall_137

    .line 216
    if-eqz v2, :cond_58

    .line 218
    :try_start_55
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_127

    .line 222
    :cond_58
    :goto_58
    invoke-static {v3}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    .line 213
    :goto_5b
    return-object v0

    .line 154
    :cond_5c
    :try_start_5c
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_61} :catch_62
    .catchall {:try_start_5c .. :try_end_61} :catchall_12d

    goto :goto_1b

    .line 211
    :catch_62
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    goto :goto_49

    .line 165
    :cond_66
    if-eqz p5, :cond_97

    .line 166
    const/4 v1, 0x1

    :try_start_69
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 170
    :goto_6c
    if-eqz p2, :cond_73

    .line 171
    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_73
    if-eqz p3, :cond_7a

    .line 174
    const-string v1, "Content-Encoding"

    invoke-virtual {v0, v1, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_7a
    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    if-nez p4, :cond_9c

    .line 178
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "request method is not null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_8b} :catch_47
    .catchall {:try_start_69 .. :try_end_8b} :catchall_8b

    .line 216
    :catchall_8b
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_8e
    if-eqz v2, :cond_93

    .line 218
    :try_start_90
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_93} :catch_12a

    .line 222
    :cond_93
    :goto_93
    invoke-static {v3}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    throw v0

    .line 168
    :cond_97
    const/4 v1, 0x0

    :try_start_98
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    goto :goto_6c

    .line 180
    :cond_9c
    invoke-virtual {v0, p4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 181
    if-eqz p1, :cond_b6

    array-length v1, p1
    :try_end_a2
    .catch Ljava/lang/Throwable; {:try_start_98 .. :try_end_a2} :catch_47
    .catchall {:try_start_98 .. :try_end_a2} :catchall_8b

    if-lez v1, :cond_b6

    .line 184
    :try_start_a4
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_ad
    .catchall {:try_start_a4 .. :try_end_ad} :catchall_e9

    .line 185
    :try_start_ad
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 186
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_b3
    .catchall {:try_start_ad .. :try_end_b3} :catchall_13d

    .line 188
    :try_start_b3
    invoke-static {v2}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    .line 191
    :cond_b6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 192
    const/16 v1, 0xc8

    if-ne v2, v1, :cond_fe

    .line 193
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_c1
    .catch Ljava/lang/Throwable; {:try_start_b3 .. :try_end_c1} :catch_47
    .catchall {:try_start_b3 .. :try_end_c1} :catchall_8b

    move-result-object v4

    .line 195
    :try_start_c2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    .line 196
    const-string v2, "gzip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_cb
    .catch Ljava/lang/Throwable; {:try_start_c2 .. :try_end_cb} :catch_f4
    .catchall {:try_start_c2 .. :try_end_cb} :catchall_131

    move-result v1

    if-eqz v1, :cond_f9

    .line 199
    :try_start_ce
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d3
    .catchall {:try_start_ce .. :try_end_d3} :catchall_ef

    .line 200
    :try_start_d3
    invoke-static {v2}, Lcom/bytedance/tea/crash/upload/b;->a(Ljava/io/InputStream;)[B
    :try_end_d6
    .catchall {:try_start_d3 .. :try_end_d6} :catchall_13a

    move-result-object v1

    .line 202
    :try_start_d7
    invoke-static {v2}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    .line 207
    :goto_da
    invoke-static {v1}, Lcom/bytedance/tea/crash/upload/b;->c([B)Lcom/bytedance/tea/crash/upload/f;
    :try_end_dd
    .catch Ljava/lang/Throwable; {:try_start_d7 .. :try_end_dd} :catch_f4
    .catchall {:try_start_d7 .. :try_end_dd} :catchall_131

    move-result-object v1

    .line 216
    if-eqz v0, :cond_e3

    .line 218
    :try_start_e0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_e3} :catch_123

    .line 222
    :cond_e3
    :goto_e3
    invoke-static {v4}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 207
    goto/16 :goto_5b

    .line 188
    :catchall_e9
    move-exception v1

    move-object v2, v3

    :goto_eb
    :try_start_eb
    invoke-static {v2}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    throw v1
    :try_end_ef
    .catch Ljava/lang/Throwable; {:try_start_eb .. :try_end_ef} :catch_47
    .catchall {:try_start_eb .. :try_end_ef} :catchall_8b

    .line 202
    :catchall_ef
    move-exception v1

    :goto_f0
    :try_start_f0
    invoke-static {v3}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    throw v1

    .line 211
    :catch_f4
    move-exception v1

    move-object v3, v4

    move-object v2, v0

    goto/16 :goto_49

    .line 205
    :cond_f9
    invoke-static {v4}, Lcom/bytedance/tea/crash/upload/b;->a(Ljava/io/InputStream;)[B
    :try_end_fc
    .catch Ljava/lang/Throwable; {:try_start_f0 .. :try_end_fc} :catch_f4
    .catchall {:try_start_f0 .. :try_end_fc} :catchall_131

    move-result-object v1

    goto :goto_da

    .line 209
    :cond_fe
    :try_start_fe
    new-instance v1, Lcom/bytedance/tea/crash/upload/f;

    const/16 v4, 0xce

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http response code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Lcom/bytedance/tea/crash/upload/f;-><init>(ILjava/lang/String;)V
    :try_end_118
    .catch Ljava/lang/Throwable; {:try_start_fe .. :try_end_118} :catch_47
    .catchall {:try_start_fe .. :try_end_118} :catchall_8b

    .line 216
    if-eqz v0, :cond_11d

    .line 218
    :try_start_11a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_11d} :catch_125

    .line 222
    :cond_11d
    :goto_11d
    invoke-static {v3}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 209
    goto/16 :goto_5b

    .line 219
    :catch_123
    move-exception v0

    goto :goto_e3

    :catch_125
    move-exception v0

    goto :goto_11d

    :catch_127
    move-exception v1

    goto/16 :goto_58

    :catch_12a
    move-exception v1

    goto/16 :goto_93

    .line 216
    :catchall_12d
    move-exception v0

    move-object v2, v3

    goto/16 :goto_8e

    :catchall_131
    move-exception v1

    move-object v3, v4

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_8e

    :catchall_137
    move-exception v0

    goto/16 :goto_8e

    .line 202
    :catchall_13a
    move-exception v1

    move-object v3, v2

    goto :goto_f0

    .line 188
    :catchall_13d
    move-exception v1

    goto :goto_eb
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 346
    invoke-static {}, Lcom/bytedance/tea/crash/h;->e()Lcom/bytedance/tea/crash/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/e/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 347
    return-object v0
.end method

.method public static a()Z
    .registers 1

    .prologue
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

    .prologue
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
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_20

    move-result-object v1

    .line 427
    invoke-static {v0}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    .line 425
    return-object v1

    .line 427
    :catchall_20
    move-exception v1

    invoke-static {v0}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method private static a([B)[B
    .registers 6

    .prologue
    const/16 v2, 0x2000

    .line 109
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 110
    new-instance v1, Ljava/util/zip/Deflater;

    invoke-direct {v1}, Ljava/util/zip/Deflater;-><init>()V

    .line 111
    invoke-virtual {v1, p0}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 112
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finish()V

    .line 113
    new-array v2, v2, [B

    .line 114
    :goto_14
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finished()Z

    move-result v3

    if-nez v3, :cond_23

    .line 115
    invoke-virtual {v1, v2}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v3

    .line 116
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_14

    .line 118
    :cond_23
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V

    .line 119
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/tea/crash/upload/f;
    .registers 3

    .prologue
    .line 254
    invoke-static {}, Lcom/bytedance/tea/crash/upload/b;->a()Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/bytedance/tea/crash/upload/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/tea/crash/upload/f;

    move-result-object v0

    return-object v0
.end method

.method public static b()Z
    .registers 1

    .prologue
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

    .prologue
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
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_f} :catch_17
    .catchall {:try_start_c .. :try_end_f} :catchall_20

    .line 131
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 134
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :goto_16
    return-object v0

    .line 127
    :catch_17
    move-exception v0

    .line 128
    :try_start_18
    invoke-static {v0}, Lcom/bytedance/tea/crash/g/j;->b(Ljava/lang/Throwable;)V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_20

    .line 129
    const/4 v0, 0x0

    .line 131
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    goto :goto_16

    :catchall_20
    move-exception v0

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    throw v0
.end method

.method private static c([B)Lcom/bytedance/tea/crash/upload/f;
    .registers 6

    .prologue
    const/16 v4, 0xcc

    .line 233
    if-eqz p0, :cond_7

    array-length v0, p0

    if-nez v0, :cond_f

    .line 234
    :cond_7
    new-instance v0, Lcom/bytedance/tea/crash/upload/f;

    const/16 v1, 0xcb

    invoke-direct {v0, v1}, Lcom/bytedance/tea/crash/upload/f;-><init>(I)V

    .line 246
    :goto_e
    return-object v0

    .line 236
    :cond_f
    new-instance v1, Ljava/lang/String;

    const-string v0, "utf-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 238
    :try_start_1a
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_33

    .line 240
    new-instance v0, Lcom/bytedance/tea/crash/upload/f;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2}, Lcom/bytedance/tea/crash/upload/f;-><init>(ILorg/json/JSONObject;)V
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_2b} :catch_2c

    goto :goto_e

    .line 244
    :catch_2c
    move-exception v0

    .line 246
    new-instance v0, Lcom/bytedance/tea/crash/upload/f;

    invoke-direct {v0, v4, v1}, Lcom/bytedance/tea/crash/upload/f;-><init>(ILjava/lang/String;)V

    goto :goto_e

    .line 242
    :cond_33
    :try_start_33
    new-instance v0, Lcom/bytedance/tea/crash/upload/f;

    const/16 v2, 0xcc

    invoke-direct {v0, v2, v1}, Lcom/bytedance/tea/crash/upload/f;-><init>(ILjava/lang/String;)V
    :try_end_3a
    .catch Lorg/json/JSONException; {:try_start_33 .. :try_end_3a} :catch_2c

    goto :goto_e
.end method
