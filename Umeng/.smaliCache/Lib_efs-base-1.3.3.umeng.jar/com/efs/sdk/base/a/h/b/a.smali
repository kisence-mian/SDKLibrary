.class public final Lcom/efs/sdk/base/a/h/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/efs/sdk/base/http/IHttpUtil;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/efs/sdk/base/a/h/b/a$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/efs/sdk/base/a/h/b/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/efs/sdk/base/a/h/b/a;
    .registers 1

    .line 79
    invoke-static {}, Lcom/efs/sdk/base/a/h/b/a$a;->a()Lcom/efs/sdk/base/a/h/b/a;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;[B)Lcom/efs/sdk/base/http/HttpResponse;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "[B)",
            "Lcom/efs/sdk/base/http/HttpResponse;"
        }
    .end annotation

    .line 205
    const-string v0, "\' error"

    const-string v1, "post file \'"

    const-string v2, "efs.util.http"

    .line 206
    nop

    .line 207
    nop

    .line 208
    nop

    .line 209
    new-instance v3, Lcom/efs/sdk/base/http/HttpResponse;

    invoke-direct {v3}, Lcom/efs/sdk/base/http/HttpResponse;-><init>()V

    .line 212
    const/4 v4, 0x0

    :try_start_f
    invoke-static {p0, p1}, Lcom/efs/sdk/base/a/h/b/a;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object p1
    :try_end_13
    .catch Ljava/net/UnknownHostException; {:try_start_f .. :try_end_13} :catch_11c
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_13} :catch_ff
    .catchall {:try_start_f .. :try_end_13} :catchall_da

    .line 213
    :try_start_13
    const-string v5, "POST"

    invoke-virtual {p1, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 215
    const-string v5, "Connection"

    const-string v6, "close"

    invoke-virtual {p1, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v5, "Content-Type"

    const-string v6, "multipart/form-data;boundary=----WebKitFormBoundaryP0Rfzlf32iRoMhmb"

    invoke-virtual {p1, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5
    :try_end_2a
    .catch Ljava/net/UnknownHostException; {:try_start_13 .. :try_end_2a} :catch_d4
    .catch Ljava/net/SocketTimeoutException; {:try_start_13 .. :try_end_2a} :catch_ce
    .catchall {:try_start_13 .. :try_end_2a} :catchall_c8

    .line 218
    :try_start_2a
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2f
    .catch Ljava/net/UnknownHostException; {:try_start_2a .. :try_end_2f} :catch_c4
    .catch Ljava/net/SocketTimeoutException; {:try_start_2a .. :try_end_2f} :catch_c0
    .catchall {:try_start_2a .. :try_end_2f} :catchall_bc

    .line 221
    :try_start_2f
    const-string v7, "------WebKitFormBoundaryP0Rfzlf32iRoMhmb\r\n"

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/net/UnknownHostException; {:try_start_2f .. :try_end_34} :catch_b9
    .catch Ljava/net/SocketTimeoutException; {:try_start_2f .. :try_end_34} :catch_b6
    .catchall {:try_start_2f .. :try_end_34} :catchall_b3

    .line 224
    const/4 v7, 0x0

    const-string v8, "\r\n"

    if-nez p3, :cond_8d

    .line 225
    if-eqz p2, :cond_7f

    :try_start_3b
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_42

    goto :goto_7f

    .line 228
    :cond_42
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v9, "Content-Disposition: form-data;name=\"file\";filename=\""

    invoke-direct {p3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v9, "\"\r\n"

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 230
    new-instance p3, Ljava/io/FileInputStream;

    invoke-direct {p3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_66
    .catch Ljava/net/UnknownHostException; {:try_start_3b .. :try_end_66} :catch_b9
    .catch Ljava/net/SocketTimeoutException; {:try_start_3b .. :try_end_66} :catch_b6
    .catchall {:try_start_3b .. :try_end_66} :catchall_b3

    .line 231
    const/16 p2, 0x1000

    :try_start_68
    new-array p2, p2, [B

    .line 233
    :goto_6a
    invoke-virtual {p3, p2}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v9, -0x1

    if-eq v4, v9, :cond_75

    .line 234
    invoke-virtual {v6, p2, v7, v4}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_74
    .catch Ljava/net/UnknownHostException; {:try_start_68 .. :try_end_74} :catch_7c
    .catch Ljava/net/SocketTimeoutException; {:try_start_68 .. :try_end_74} :catch_79
    .catchall {:try_start_68 .. :try_end_74} :catchall_77

    goto :goto_6a

    .line 236
    :cond_75
    move-object v4, p3

    goto :goto_99

    .line 255
    :catchall_77
    move-exception p2

    goto :goto_cc

    .line 251
    :catch_79
    move-exception p2

    goto/16 :goto_d2

    .line 247
    :catch_7c
    move-exception p2

    goto/16 :goto_d8

    .line 226
    :cond_7f
    :goto_7f
    nop

    .line 258
    invoke-static {p1}, Lcom/efs/sdk/base/a/h/b/a;->b(Ljava/net/HttpURLConnection;)V

    .line 259
    invoke-static {v5}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 260
    invoke-static {v6}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 261
    invoke-static {v4}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 226
    return-object v3

    .line 237
    :cond_8d
    :try_start_8d
    const-string p2, "Content-Disposition: form-data;name=\"file\";filename=\"f\"\r\n"

    invoke-virtual {v6, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 239
    array-length p2, p3

    invoke-virtual {v6, p3, v7, p2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 241
    :goto_99
    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 242
    const-string p2, "------WebKitFormBoundaryP0Rfzlf32iRoMhmb--\r\n"

    invoke-virtual {v6, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 243
    invoke-static {p1}, Lcom/efs/sdk/base/a/h/b/a;->a(Ljava/net/HttpURLConnection;)Lcom/efs/sdk/base/http/HttpResponse;

    move-result-object v3
    :try_end_a5
    .catch Ljava/net/UnknownHostException; {:try_start_8d .. :try_end_a5} :catch_b9
    .catch Ljava/net/SocketTimeoutException; {:try_start_8d .. :try_end_a5} :catch_b6
    .catchall {:try_start_8d .. :try_end_a5} :catchall_b3

    .line 258
    invoke-static {p1}, Lcom/efs/sdk/base/a/h/b/a;->b(Ljava/net/HttpURLConnection;)V

    .line 259
    invoke-static {v5}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 260
    invoke-static {v6}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 261
    invoke-static {v4}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 262
    :goto_b1
    goto/16 :goto_13b

    .line 255
    :catchall_b3
    move-exception p2

    move-object p3, v4

    goto :goto_cc

    .line 251
    :catch_b6
    move-exception p2

    move-object p3, v4

    goto :goto_d2

    .line 247
    :catch_b9
    move-exception p2

    move-object p3, v4

    goto :goto_d8

    .line 255
    :catchall_bc
    move-exception p2

    move-object p3, v4

    move-object v6, p3

    goto :goto_cc

    .line 251
    :catch_c0
    move-exception p2

    move-object p3, v4

    move-object v6, p3

    goto :goto_d2

    .line 247
    :catch_c4
    move-exception p2

    move-object p3, v4

    move-object v6, p3

    goto :goto_d8

    .line 255
    :catchall_c8
    move-exception p2

    move-object p3, v4

    move-object v5, p3

    move-object v6, v5

    :goto_cc
    move-object v4, p1

    goto :goto_de

    .line 251
    :catch_ce
    move-exception p2

    move-object p3, v4

    move-object v5, p3

    move-object v6, v5

    :goto_d2
    move-object v4, p1

    goto :goto_103

    .line 247
    :catch_d4
    move-exception p2

    move-object p3, v4

    move-object v5, p3

    move-object v6, v5

    :goto_d8
    move-object v4, p1

    goto :goto_120

    .line 255
    :catchall_da
    move-exception p2

    move-object p3, v4

    move-object v5, p3

    move-object v6, v5

    .line 256
    :goto_de
    :try_start_de
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p2}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f2
    .catchall {:try_start_de .. :try_end_f2} :catchall_13f

    .line 258
    :goto_f2
    invoke-static {v4}, Lcom/efs/sdk/base/a/h/b/a;->b(Ljava/net/HttpURLConnection;)V

    .line 259
    invoke-static {v5}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 260
    invoke-static {v6}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 261
    invoke-static {p3}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    goto :goto_b1

    .line 251
    :catch_ff
    move-exception p2

    move-object p3, v4

    move-object v5, p3

    move-object v6, v5

    .line 252
    :goto_103
    const/4 p1, -0x3

    :try_start_104
    invoke-virtual {v3, p1}, Lcom/efs/sdk/base/http/HttpResponse;->setHttpCode(I)V

    .line 253
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p2}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f2

    .line 247
    :catch_11c
    move-exception p2

    move-object p3, v4

    move-object v5, p3

    move-object v6, v5

    .line 248
    :goto_120
    const/4 p1, -0x2

    invoke-virtual {v3, p1}, Lcom/efs/sdk/base/http/HttpResponse;->setHttpCode(I)V

    .line 249
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\' error\uff0c maybe network is disconnect"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p2}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13a
    .catchall {:try_start_104 .. :try_end_13a} :catchall_13f

    goto :goto_f2

    .line 263
    :goto_13b
    invoke-virtual {v3, p0}, Lcom/efs/sdk/base/http/HttpResponse;->setReqUrl(Ljava/lang/String;)V

    .line 264
    return-object v3

    .line 258
    :catchall_13f
    move-exception p0

    invoke-static {v4}, Lcom/efs/sdk/base/a/h/b/a;->b(Ljava/net/HttpURLConnection;)V

    .line 259
    invoke-static {v5}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 260
    invoke-static {v6}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 261
    invoke-static {p3}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    goto :goto_14e

    :goto_14d
    throw p0

    :goto_14e
    goto :goto_14d
.end method

.method private static a(Ljava/net/HttpURLConnection;)Lcom/efs/sdk/base/http/HttpResponse;
    .registers 6

    .line 118
    new-instance v0, Lcom/efs/sdk/base/http/HttpResponse;

    invoke-direct {v0}, Lcom/efs/sdk/base/http/HttpResponse;-><init>()V

    .line 120
    if-nez p0, :cond_8

    .line 121
    return-object v0

    .line 124
    :cond_8
    nop

    .line 125
    nop

    .line 129
    const/4 v1, 0x0

    :try_start_b
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 130
    invoke-virtual {v0, v2}, Lcom/efs/sdk/base/http/HttpResponse;->setHttpCode(I)V

    .line 133
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_3c

    .line 134
    const/16 v2, 0x400

    :try_start_18
    new-array v2, v2, [B

    .line 136
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_38

    .line 138
    :goto_23
    :try_start_23
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2f

    .line 139
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_23

    .line 141
    :cond_2f
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/efs/sdk/base/http/HttpResponse;->data:Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_23 .. :try_end_35} :catchall_36

    goto :goto_47

    .line 143
    :catchall_36
    move-exception v1

    goto :goto_40

    :catchall_38
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    goto :goto_40

    :catchall_3c
    move-exception p0

    move-object v3, v1

    move-object v1, p0

    move-object p0, v3

    .line 144
    :goto_40
    :try_start_40
    const-string v2, "efs.util.http"

    const-string v4, "get response error"

    invoke-static {v2, v4, v1}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_4f

    .line 146
    :goto_47
    invoke-static {p0}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 147
    invoke-static {v3}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 148
    nop

    .line 149
    return-object v0

    .line 146
    :catchall_4f
    move-exception v0

    invoke-static {p0}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 147
    invoke-static {v3}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    goto :goto_58

    :goto_57
    throw v0

    :goto_58
    goto :goto_57
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 94
    const/16 v0, 0x3a98

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 95
    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 97
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 101
    if-nez p1, :cond_26

    .line 102
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    .line 105
    :cond_26
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 106
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    goto :goto_2e

    .line 108
    :cond_4a
    return-object p0
.end method

.method private static b(Ljava/net/HttpURLConnection;)V
    .registers 1

    .line 306
    if-eqz p0, :cond_e

    .line 307
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 311
    :try_start_5
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    .line 313
    return-void

    .line 312
    :catchall_d
    move-exception p0

    .line 315
    :cond_e
    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/String;Ljava/util/Map;)Lcom/efs/sdk/base/http/HttpResponse;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/efs/sdk/base/http/HttpResponse;"
        }
    .end annotation

    .line 156
    const-string v0, "\' error"

    const-string v1, "get request \'"

    const-string v2, "efs.util.http"

    .line 157
    new-instance v3, Lcom/efs/sdk/base/http/HttpResponse;

    invoke-direct {v3}, Lcom/efs/sdk/base/http/HttpResponse;-><init>()V

    const/4 v4, 0x0

    .line 159
    :goto_c
    const/4 v5, 0x3

    if-ge v4, v5, :cond_87

    .line 160
    const/4 v5, 0x0

    .line 162
    :try_start_10
    invoke-static {p1, p2}, Lcom/efs/sdk/base/a/h/b/a;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 163
    const-string v6, "GET"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 164
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 165
    const-string v6, "Connection"

    const-string v7, "close"

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 167
    invoke-static {v5}, Lcom/efs/sdk/base/a/h/b/a;->a(Ljava/net/HttpURLConnection;)Lcom/efs/sdk/base/http/HttpResponse;

    move-result-object v3
    :try_end_2b
    .catch Ljava/net/UnknownHostException; {:try_start_10 .. :try_end_2b} :catch_66
    .catch Ljava/net/SocketTimeoutException; {:try_start_10 .. :try_end_2b} :catch_4a
    .catchall {:try_start_10 .. :try_end_2b} :catchall_2f

    .line 184
    invoke-static {v5}, Lcom/efs/sdk/base/a/h/b/a;->b(Ljava/net/HttpURLConnection;)V

    goto :goto_87

    .line 180
    :catchall_2f
    move-exception v6

    .line 181
    :try_start_30
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v6}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_44
    .catchall {:try_start_30 .. :try_end_44} :catchall_82

    .line 182
    add-int/lit8 v4, v4, 0x1

    .line 184
    :goto_46
    invoke-static {v5}, Lcom/efs/sdk/base/a/h/b/a;->b(Ljava/net/HttpURLConnection;)V

    .line 185
    goto :goto_c

    .line 176
    :catch_4a
    move-exception v6

    .line 177
    const/4 v7, -0x3

    :try_start_4c
    invoke-virtual {v3, v7}, Lcom/efs/sdk/base/http/HttpResponse;->setHttpCode(I)V

    .line 178
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "post file \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v6}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_46

    .line 172
    :catch_66
    move-exception v6

    .line 173
    const/4 v7, -0x2

    invoke-virtual {v3, v7}, Lcom/efs/sdk/base/http/HttpResponse;->setHttpCode(I)V

    .line 174
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' error\uff0c maybe network is disconnect"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v6}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_81
    .catchall {:try_start_4c .. :try_end_81} :catchall_82

    goto :goto_46

    .line 184
    :catchall_82
    move-exception p1

    invoke-static {v5}, Lcom/efs/sdk/base/a/h/b/a;->b(Ljava/net/HttpURLConnection;)V

    throw p1

    .line 187
    :cond_87
    :goto_87
    invoke-virtual {v3, p1}, Lcom/efs/sdk/base/http/HttpResponse;->setReqUrl(Ljava/lang/String;)V

    .line 188
    return-object v3
.end method

.method public final post(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;)Lcom/efs/sdk/base/http/HttpResponse;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")",
            "Lcom/efs/sdk/base/http/HttpResponse;"
        }
    .end annotation

    .line 200
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/efs/sdk/base/a/h/b/a;->a(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;[B)Lcom/efs/sdk/base/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public final post(Ljava/lang/String;Ljava/util/Map;[B)Lcom/efs/sdk/base/http/HttpResponse;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Lcom/efs/sdk/base/http/HttpResponse;"
        }
    .end annotation

    .line 272
    const-string v0, "\' error"

    const-string v1, "efs.util.http"

    .line 273
    nop

    .line 274
    new-instance v2, Lcom/efs/sdk/base/http/HttpResponse;

    invoke-direct {v2}, Lcom/efs/sdk/base/http/HttpResponse;-><init>()V

    .line 277
    const/4 v3, 0x0

    :try_start_b
    invoke-static {p1, p2}, Lcom/efs/sdk/base/a/h/b/a;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object p2
    :try_end_f
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_f} :catch_69
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_f} :catch_4c
    .catchall {:try_start_b .. :try_end_f} :catchall_33

    .line 279
    :try_start_f
    const-string v4, "POST"

    invoke-virtual {p2, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 280
    const-string v4, "Connection"

    const-string v5, "close"

    invoke-virtual {p2, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 282
    invoke-virtual {v3, p3}, Ljava/io/OutputStream;->write([B)V

    .line 283
    invoke-static {p2}, Lcom/efs/sdk/base/a/h/b/a;->a(Ljava/net/HttpURLConnection;)Lcom/efs/sdk/base/http/HttpResponse;

    move-result-object v2
    :try_end_26
    .catch Ljava/net/UnknownHostException; {:try_start_f .. :try_end_26} :catch_31
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_26} :catch_2f
    .catchall {:try_start_f .. :try_end_26} :catchall_2d

    .line 298
    :goto_26
    invoke-static {v3}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 299
    invoke-static {p2}, Lcom/efs/sdk/base/a/h/b/a;->b(Ljava/net/HttpURLConnection;)V

    .line 300
    goto :goto_88

    .line 295
    :catchall_2d
    move-exception p3

    goto :goto_35

    .line 291
    :catch_2f
    move-exception p3

    goto :goto_4e

    .line 287
    :catch_31
    move-exception p3

    goto :goto_6b

    .line 295
    :catchall_33
    move-exception p3

    move-object p2, v3

    .line 296
    :goto_35
    :try_start_35
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "post data \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p3}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_26

    .line 291
    :catch_4c
    move-exception p3

    move-object p2, v3

    .line 292
    :goto_4e
    const/4 v4, -0x3

    invoke-virtual {v2, v4}, Lcom/efs/sdk/base/http/HttpResponse;->setHttpCode(I)V

    .line 293
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "post file \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p3}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_26

    .line 287
    :catch_69
    move-exception p3

    move-object p2, v3

    .line 288
    :goto_6b
    const/4 v0, -0x2

    invoke-virtual {v2, v0}, Lcom/efs/sdk/base/http/HttpResponse;->setHttpCode(I)V

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "post data to \'"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\' error\uff0c maybe network is disconnect"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p3}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_87
    .catchall {:try_start_35 .. :try_end_87} :catchall_8c

    goto :goto_26

    .line 301
    :goto_88
    invoke-virtual {v2, p1}, Lcom/efs/sdk/base/http/HttpResponse;->setReqUrl(Ljava/lang/String;)V

    .line 302
    return-object v2

    .line 298
    :catchall_8c
    move-exception p1

    invoke-static {v3}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 299
    invoke-static {p2}, Lcom/efs/sdk/base/a/h/b/a;->b(Ljava/net/HttpURLConnection;)V

    goto :goto_95

    :goto_94
    throw p1

    :goto_95
    goto :goto_94
.end method

.method public final postAsFile(Ljava/lang/String;Ljava/util/Map;[B)Lcom/efs/sdk/base/http/HttpResponse;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Lcom/efs/sdk/base/http/HttpResponse;"
        }
    .end annotation

    .line 194
    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p3}, Lcom/efs/sdk/base/a/h/b/a;->a(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;[B)Lcom/efs/sdk/base/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method
