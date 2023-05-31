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
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-interface {p0}, Lcom/qq/e/comm/net/rr/Response;->getStreamContent()Ljava/io/InputStream;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_6a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_a} :catch_45
    .catchall {:try_start_1 .. :try_end_a} :catchall_54

    move-result-object v3

    :try_start_b
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_6e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_10} :catch_65
    .catchall {:try_start_b .. :try_end_10} :catchall_5f

    const/16 v4, 0x400

    :try_start_12
    new-array v4, v4, [B

    :goto_14
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_30

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6, v5}, Ljava/security/MessageDigest;->update([BII)V

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_22} :catch_23
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_12 .. :try_end_22} :catch_68
    .catchall {:try_start_12 .. :try_end_22} :catchall_63

    goto :goto_14

    :catch_23
    move-exception v1

    :goto_24
    :try_start_24
    const-string v4, "IOException While Update Plugin"

    invoke-static {v4, v1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_63

    invoke-static {v3}, Lcom/qq/e/comm/util/FileUtil;->tryClose(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/qq/e/comm/util/FileUtil;->tryClose(Ljava/io/OutputStream;)V

    :goto_2f
    return-object v0

    :cond_30
    :try_start_30
    invoke-static {v3}, Lcom/qq/e/comm/util/FileUtil;->tryClose(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/qq/e/comm/util/FileUtil;->tryClose(Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/util/Md5Util;->byteArrayToHexString([B)Ljava/lang/String;
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_3d} :catch_23
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_30 .. :try_end_3d} :catch_68
    .catchall {:try_start_30 .. :try_end_3d} :catchall_63

    move-result-object v0

    invoke-static {v3}, Lcom/qq/e/comm/util/FileUtil;->tryClose(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/qq/e/comm/util/FileUtil;->tryClose(Ljava/io/OutputStream;)V

    goto :goto_2f

    :catch_45
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    :goto_48
    :try_start_48
    const-string v4, "MD5SUMException While Update Plugin"

    invoke-static {v4, v1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4d
    .catchall {:try_start_48 .. :try_end_4d} :catchall_63

    invoke-static {v3}, Lcom/qq/e/comm/util/FileUtil;->tryClose(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/qq/e/comm/util/FileUtil;->tryClose(Ljava/io/OutputStream;)V

    goto :goto_2f

    :catchall_54
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_58
    invoke-static {v3}, Lcom/qq/e/comm/util/FileUtil;->tryClose(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/qq/e/comm/util/FileUtil;->tryClose(Ljava/io/OutputStream;)V

    throw v0

    :catchall_5f
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_58

    :catchall_63
    move-exception v0

    goto :goto_58

    :catch_65
    move-exception v1

    move-object v2, v0

    goto :goto_48

    :catch_68
    move-exception v1

    goto :goto_48

    :catch_6a
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto :goto_24

    :catch_6e
    move-exception v1

    move-object v2, v0

    goto :goto_24
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

    const/4 v0, 0x1

    :goto_1f
    return v0

    :catch_20
    move-exception v0

    const-string v1, "IOException While Update Plugin"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_1f
.end method


# virtual methods
.method public final onException(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    const-string v0, "Exception While Update Plugin"

    invoke-static {v0, p1}, Lcom/qq/e/comm/util/GDTLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/b$a;->a()V

    return-void
.end method

.method public final onResponse(Lcom/qq/e/comm/net/rr/Request;Lcom/qq/e/comm/net/rr/Response;)V
    .registers 10
    .param p2, "resp"    # Lcom/qq/e/comm/net/rr/Response;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2}, Lcom/qq/e/comm/net/rr/Response;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_10c

    :try_start_a
    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/b$a;->c:Lcom/qq/e/comm/managers/plugin/b;

    invoke-static {v2}, Lcom/qq/e/comm/managers/plugin/b;->a(Lcom/qq/e/comm/managers/plugin/b;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/e/comm/managers/plugin/d;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/qq/e/comm/managers/plugin/b$a;->c:Lcom/qq/e/comm/managers/plugin/b;

    invoke-static {v3}, Lcom/qq/e/comm/managers/plugin/b;->a(Lcom/qq/e/comm/managers/plugin/b;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/qq/e/comm/managers/plugin/d;->f(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-static {p2, v2}, Lcom/qq/e/comm/managers/plugin/b$a;->a(Lcom/qq/e/comm/net/rr/Response;Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/qq/e/comm/util/a;->a()Lcom/qq/e/comm/util/a;

    move-result-object v5

    iget-object v6, p0, Lcom/qq/e/comm/managers/plugin/b$a;->a:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lcom/qq/e/comm/util/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a1

    invoke-direct {p0, v3}, Lcom/qq/e/comm/managers/plugin/b$a;->a(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_9f

    iget-object v4, p0, Lcom/qq/e/comm/managers/plugin/b$a;->c:Lcom/qq/e/comm/managers/plugin/b;

    invoke-static {v4}, Lcom/qq/e/comm/managers/plugin/b;->a(Lcom/qq/e/comm/managers/plugin/b;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/qq/e/comm/managers/plugin/d;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qq/e/comm/util/FileUtil;->renameTo(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_9d

    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/b$a;->c:Lcom/qq/e/comm/managers/plugin/b;

    invoke-static {v2}, Lcom/qq/e/comm/managers/plugin/b;->a(Lcom/qq/e/comm/managers/plugin/b;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/e/comm/managers/plugin/d;->g(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/qq/e/comm/util/FileUtil;->renameTo(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_9d

    move v2, v0

    :goto_55
    if-eqz v2, :cond_9f

    :goto_57
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PluginUpdateSucc:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/b$a;->c:Lcom/qq/e/comm/managers/plugin/b;

    invoke-static {v0}, Lcom/qq/e/comm/managers/plugin/b;->b(Lcom/qq/e/comm/managers/plugin/b;)Lcom/qq/e/comm/managers/plugin/PM$a$b;

    move-result-object v0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/b$a;->c:Lcom/qq/e/comm/managers/plugin/b;

    invoke-static {v0}, Lcom/qq/e/comm/managers/plugin/b;->b(Lcom/qq/e/comm/managers/plugin/b;)Lcom/qq/e/comm/managers/plugin/PM$a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/qq/e/comm/managers/plugin/PM$a$b;->a()V
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_7a} :catch_bc
    .catchall {:try_start_a .. :try_end_7a} :catchall_e8

    :cond_7a
    :goto_7a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TIMESTAMP_AFTER_DOWNPLUGIN:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";sig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/b$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    :goto_9c
    return-void

    :cond_9d
    move v2, v1

    goto :goto_55

    :cond_9f
    move v0, v1

    goto :goto_57

    :cond_a1
    :try_start_a1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const-string v0, "Fail to update plugin while verifying,sig=%s,md5=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/qq/e/comm/managers/plugin/b$a;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->report(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/b$a;->a()V
    :try_end_bb
    .catch Ljava/lang/Throwable; {:try_start_a1 .. :try_end_bb} :catch_bc
    .catchall {:try_start_a1 .. :try_end_bb} :catchall_e8

    goto :goto_7a

    :catch_bc
    move-exception v0

    :try_start_bd
    const-string v1, "UnknownException While Update Plugin"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/b$a;->a()V
    :try_end_c5
    .catchall {:try_start_bd .. :try_end_c5} :catchall_e8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TIMESTAMP_AFTER_DOWNPLUGIN:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";sig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/b$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    goto :goto_9c

    :catchall_e8
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TIMESTAMP_AFTER_DOWNPLUGIN:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";sig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/b$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    throw v0

    :cond_10c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DownLoad Plugin Jar Status error,response status code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/qq/e/comm/net/rr/Response;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->report(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/b$a;->a()V

    goto/16 :goto_9c
.end method
