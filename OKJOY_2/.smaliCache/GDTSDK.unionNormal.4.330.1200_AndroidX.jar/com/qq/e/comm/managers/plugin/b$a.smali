.class final Lcom/qq/e/comm/managers/plugin/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/comm/net/NetworkCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/comm/managers/plugin/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private synthetic c:Lcom/qq/e/comm/managers/plugin/b;


# direct methods
.method public constructor <init>(Lcom/qq/e/comm/managers/plugin/b;Ljava/lang/String;I)V
    .registers 4

    iput-object p1, p0, Lcom/qq/e/comm/managers/plugin/b$a;->c:Lcom/qq/e/comm/managers/plugin/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/qq/e/comm/managers/plugin/b$a;->a:Ljava/lang/String;

    iput p3, p0, Lcom/qq/e/comm/managers/plugin/b$a;->b:I

    return-void
.end method

.method private static a(Lcom/qq/e/comm/net/rr/Response;Ljava/io/File;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-interface {p0}, Lcom/qq/e/comm/net/rr/Response;->getStreamContent()Ljava/io/InputStream;

    move-result-object p0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_56
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_b} :catch_47
    .catchall {:try_start_1 .. :try_end_b} :catchall_44

    :try_start_b
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_41
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_10} :catch_3e
    .catchall {:try_start_b .. :try_end_10} :catchall_3b

    const/16 p1, 0x400

    :try_start_12
    new-array p1, p1, [B

    :goto_14
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_22

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v2, p1, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_14

    :cond_22
    invoke-static {p0}, Lcom/qq/e/comm/util/FileUtil;->tryClose(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/qq/e/comm/util/FileUtil;->tryClose(Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-static {p1}, Lcom/qq/e/comm/util/Md5Util;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p1
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_30} :catch_39
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_12 .. :try_end_30} :catch_37
    .catchall {:try_start_12 .. :try_end_30} :catchall_5c

    invoke-static {p0}, Lcom/qq/e/comm/util/FileUtil;->tryClose(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/qq/e/comm/util/FileUtil;->tryClose(Ljava/io/OutputStream;)V

    return-object p1

    :catch_37
    move-exception p1

    goto :goto_4a

    :catch_39
    move-exception p1

    goto :goto_59

    :catchall_3b
    move-exception p1

    move-object v2, v0

    goto :goto_5d

    :catch_3e
    move-exception p1

    move-object v2, v0

    goto :goto_4a

    :catch_41
    move-exception p1

    move-object v2, v0

    goto :goto_59

    :catchall_44
    move-exception p1

    move-object v2, v0

    goto :goto_5e

    :catch_47
    move-exception p1

    move-object p0, v0

    move-object v2, p0

    :goto_4a
    :try_start_4a
    const-string v1, "MD5SUMException While Update Plugin"

    :goto_4c
    invoke-static {v1, p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_5c

    invoke-static {p0}, Lcom/qq/e/comm/util/FileUtil;->tryClose(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/qq/e/comm/util/FileUtil;->tryClose(Ljava/io/OutputStream;)V

    return-object v0

    :catch_56
    move-exception p1

    move-object p0, v0

    move-object v2, p0

    :goto_59
    :try_start_59
    const-string v1, "IOException While Update Plugin"
    :try_end_5b
    .catchall {:try_start_59 .. :try_end_5b} :catchall_5c

    goto :goto_4c

    :catchall_5c
    move-exception p1

    :goto_5d
    move-object v0, p0

    :goto_5e
    invoke-static {v0}, Lcom/qq/e/comm/util/FileUtil;->tryClose(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/qq/e/comm/util/FileUtil;->tryClose(Ljava/io/OutputStream;)V

    throw p1
.end method

.method private a()V
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/b$a;->c:Lcom/qq/e/comm/managers/plugin/b;

    invoke-static {v0}, Lcom/qq/e/comm/managers/plugin/b;->b(Lcom/qq/e/comm/managers/plugin/b;)Lcom/qq/e/comm/managers/plugin/PM$a$b;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/b$a;->c:Lcom/qq/e/comm/managers/plugin/b;

    invoke-static {v0}, Lcom/qq/e/comm/managers/plugin/b;->b(Lcom/qq/e/comm/managers/plugin/b;)Lcom/qq/e/comm/managers/plugin/PM$a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/qq/e/comm/managers/plugin/PM$a$b;->b()V

    :cond_11
    return-void
.end method

.method private a(Ljava/io/File;)Z
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/qq/e/comm/managers/plugin/b$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#####"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/b$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_1b
    invoke-static {v0, p1}, Lcom/qq/e/comm/util/StringUtil;->writeTo(Ljava/lang/String;Ljava/io/File;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_20

    const/4 p1, 0x1

    return p1

    :catch_20
    move-exception p1

    const-string v0, "IOException While Update Plugin"

    invoke-static {v0, p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final onException(Ljava/lang/Exception;)V
    .registers 3

    const-string v0, "Exception While Update Plugin"

    invoke-static {v0, p1}, Lcom/qq/e/comm/util/GDTLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/b$a;->a()V

    return-void
.end method

.method public final onResponse(Lcom/qq/e/comm/net/rr/Request;Lcom/qq/e/comm/net/rr/Response;)V
    .registers 9

    const-string p1, ";sig="

    const-string v0, "TIMESTAMP_AFTER_DOWNPLUGIN:"

    invoke-interface {p2}, Lcom/qq/e/comm/net/rr/Response;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_e9

    :try_start_c
    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/b$a;->c:Lcom/qq/e/comm/managers/plugin/b;

    invoke-static {v1}, Lcom/qq/e/comm/managers/plugin/b;->a(Lcom/qq/e/comm/managers/plugin/b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/managers/plugin/d;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/b$a;->c:Lcom/qq/e/comm/managers/plugin/b;

    invoke-static {v2}, Lcom/qq/e/comm/managers/plugin/b;->a(Lcom/qq/e/comm/managers/plugin/b;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/e/comm/managers/plugin/d;->f(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-static {p2, v1}, Lcom/qq/e/comm/managers/plugin/b$a;->a(Lcom/qq/e/comm/net/rr/Response;Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/qq/e/comm/util/a;->a()Lcom/qq/e/comm/util/a;

    move-result-object p2

    iget-object v4, p0, Lcom/qq/e/comm/managers/plugin/b$a;->a:Ljava/lang/String;

    invoke-virtual {p2, v4, v3}, Lcom/qq/e/comm/util/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p2, :cond_83

    invoke-direct {p0, v2}, Lcom/qq/e/comm/managers/plugin/b$a;->a(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_5e

    iget-object p2, p0, Lcom/qq/e/comm/managers/plugin/b$a;->c:Lcom/qq/e/comm/managers/plugin/b;

    invoke-static {p2}, Lcom/qq/e/comm/managers/plugin/b;->a(Lcom/qq/e/comm/managers/plugin/b;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/qq/e/comm/managers/plugin/d;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/qq/e/comm/util/FileUtil;->renameTo(Ljava/io/File;Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_5a

    iget-object p2, p0, Lcom/qq/e/comm/managers/plugin/b$a;->c:Lcom/qq/e/comm/managers/plugin/b;

    invoke-static {p2}, Lcom/qq/e/comm/managers/plugin/b;->a(Lcom/qq/e/comm/managers/plugin/b;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/qq/e/comm/managers/plugin/d;->g(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/qq/e/comm/util/FileUtil;->renameTo(Ljava/io/File;Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_5a

    move p2, v4

    goto :goto_5b

    :cond_5a
    move p2, v5

    :goto_5b
    if-eqz p2, :cond_5e

    goto :goto_5f

    :cond_5e
    move v4, v5

    :goto_5f
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "PluginUpdateSucc:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/qq/e/comm/managers/plugin/b$a;->c:Lcom/qq/e/comm/managers/plugin/b;

    invoke-static {p2}, Lcom/qq/e/comm/managers/plugin/b;->b(Lcom/qq/e/comm/managers/plugin/b;)Lcom/qq/e/comm/managers/plugin/PM$a$b;

    move-result-object p2

    if-eqz p2, :cond_9b

    iget-object p2, p0, Lcom/qq/e/comm/managers/plugin/b$a;->c:Lcom/qq/e/comm/managers/plugin/b;

    invoke-static {p2}, Lcom/qq/e/comm/managers/plugin/b;->b(Lcom/qq/e/comm/managers/plugin/b;)Lcom/qq/e/comm/managers/plugin/PM$a$b;

    move-result-object p2

    invoke-interface {p2}, Lcom/qq/e/comm/managers/plugin/PM$a$b;->a()V

    goto :goto_9b

    :cond_83
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const-string p2, "Fail to update plugin while verifying,sig=%s,md5=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/b$a;->a:Ljava/lang/String;

    aput-object v2, v1, v5

    aput-object v3, v1, v4

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qq/e/comm/util/GDTLogger;->report(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/b$a;->a()V
    :try_end_9b
    .catchall {:try_start_c .. :try_end_9b} :catchall_a1

    :cond_9b
    :goto_9b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_af

    :catchall_a1
    move-exception p2

    :try_start_a2
    const-string v1, "UnknownException While Update Plugin"

    invoke-static {v1, p2}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/b$a;->a()V
    :try_end_aa
    .catchall {:try_start_a2 .. :try_end_aa} :catchall_c9

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_af
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/qq/e/comm/managers/plugin/b$a;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    goto :goto_102

    :catchall_c9
    move-exception p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/b$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    throw p2

    :cond_e9
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "DownLoad Plugin Jar Status error,response status code="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/qq/e/comm/net/rr/Response;->getStatusCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->report(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/b$a;->a()V

    :goto_102
    return-void
.end method
