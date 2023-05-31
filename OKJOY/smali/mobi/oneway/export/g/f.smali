.class public Lmobi/oneway/export/g/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/oneway/export/g/f$a;,
        Lmobi/oneway/export/g/f$b;,
        Lmobi/oneway/export/g/f$c;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "POST"

.field public static final b:Ljava/lang/String; = "HEAD"

.field public static final c:Ljava/lang/String; = "Content-Type"

.field public static final d:Ljava/lang/String; = "application/json"

.field private static final e:I = 0x3a98


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:I

.field private m:Z

.field private n:Ljava/io/File;

.field private o:Z

.field private volatile p:Z

.field private q:Z

.field private r:J

.field private s:J

.field private t:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    const/16 v2, 0x3a98

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmobi/oneway/export/g/f;->i:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmobi/oneway/export/g/f;->j:Ljava/util/Map;

    iput v2, p0, Lmobi/oneway/export/g/f;->k:I

    iput v2, p0, Lmobi/oneway/export/g/f;->l:I

    iput-boolean v1, p0, Lmobi/oneway/export/g/f;->m:Z

    iput-boolean v1, p0, Lmobi/oneway/export/g/f;->o:Z

    iput-boolean v1, p0, Lmobi/oneway/export/g/f;->p:Z

    iput-boolean v1, p0, Lmobi/oneway/export/g/f;->q:Z

    iput-boolean v1, p0, Lmobi/oneway/export/g/f;->t:Z

    invoke-virtual {p0, p1}, Lmobi/oneway/export/g/f;->b(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmobi/oneway/export/g/f;->r:J

    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;Ljava/io/OutputStream;Lmobi/oneway/export/g/b;)I
    .registers 15

    const/4 v2, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    :try_start_9
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_75

    :try_start_11
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v6, 0xc8

    if-ne v0, v6, :cond_51

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_1f
    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_78

    const/16 v0, 0x400

    :try_start_24
    new-array v2, v0, [B

    move v0, v4

    :goto_27
    invoke-virtual {p0}, Lmobi/oneway/export/g/f;->e()Z

    move-result v6

    if-nez v6, :cond_56

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-nez v6, :cond_56

    invoke-virtual {v3, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_56

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    add-int/2addr v0, v6

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_42
    .catchall {:try_start_24 .. :try_end_42} :catchall_43

    goto :goto_27

    :catchall_43
    move-exception v0

    move-object v2, v3

    :goto_45
    new-array v3, v10, [Ljava/io/Closeable;

    aput-object p2, v3, v4

    aput-object v2, v3, v8

    aput-object v1, v3, v9

    invoke-static {v3}, Lmobi/oneway/export/h/j;->a([Ljava/io/Closeable;)V

    throw v0

    :cond_51
    :try_start_51
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_78

    move-result-object v0

    goto :goto_1f

    :cond_56
    :try_start_56
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {p0}, Lmobi/oneway/export/g/f;->e()Z
    :try_end_5c
    .catchall {:try_start_56 .. :try_end_5c} :catchall_43

    move-result v2

    if-eqz v2, :cond_6b

    :cond_5f
    :goto_5f
    new-array v2, v10, [Ljava/io/Closeable;

    aput-object p2, v2, v4

    aput-object v3, v2, v8

    aput-object v1, v2, v9

    invoke-static {v2}, Lmobi/oneway/export/h/j;->a([Ljava/io/Closeable;)V

    return v0

    :cond_6b
    :try_start_6b
    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-virtual {p0}, Lmobi/oneway/export/g/f;->d()V
    :try_end_74
    .catchall {:try_start_6b .. :try_end_74} :catchall_43

    goto :goto_5f

    :catchall_75
    move-exception v0

    move-object v1, v2

    goto :goto_45

    :catchall_78
    move-exception v0

    goto :goto_45
.end method

.method public static a(Ljava/util/Map;Z)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_d

    if-eqz p1, :cond_2b

    invoke-static {v0}, Lmobi/oneway/export/g/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lmobi/oneway/export/g/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_3f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/net/HttpURLConnection;)V
    .registers 9

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v0, "POST"

    invoke-virtual {p0}, Lmobi/oneway/export/g/f;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    :goto_e
    return-void

    :cond_f
    const/4 v2, 0x0

    const/4 v0, 0x1

    :try_start_11
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    new-instance v1, Ljava/io/PrintWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v0, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_57

    :try_start_24
    iget-object v0, p0, Lmobi/oneway/export/g/f;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lmobi/oneway/export/g/f;->h:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    :cond_31
    :goto_31
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_34
    .catchall {:try_start_24 .. :try_end_34} :catchall_4e

    new-array v0, v5, [Ljava/io/Closeable;

    aput-object v1, v0, v6

    invoke-static {v0}, Lmobi/oneway/export/h/j;->a([Ljava/io/Closeable;)V

    goto :goto_e

    :cond_3c
    :try_start_3c
    invoke-virtual {p0}, Lmobi/oneway/export/g/f;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual {p0}, Lmobi/oneway/export/g/f;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_3c .. :try_end_4d} :catchall_4e

    goto :goto_31

    :catchall_4e
    move-exception v0

    :goto_4f
    new-array v2, v5, [Ljava/io/Closeable;

    aput-object v1, v2, v6

    invoke-static {v2}, Lmobi/oneway/export/h/j;->a([Ljava/io/Closeable;)V

    throw v0

    :catchall_57
    move-exception v0

    move-object v1, v2

    goto :goto_4f
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    :goto_3
    return-object p0

    :cond_4
    :try_start_4
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object p0

    goto :goto_3

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3
.end method

.method private o()Z
    .registers 2

    iget-object v0, p0, Lmobi/oneway/export/g/f;->n:Ljava/io/File;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private p()Ljava/net/HttpURLConnection;
    .registers 5

    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Lmobi/oneway/export/g/f;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    iget-boolean v1, p0, Lmobi/oneway/export/g/f;->m:Z

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {p0}, Lmobi/oneway/export/g/f;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0}, Lmobi/oneway/export/g/f;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {p0}, Lmobi/oneway/export/g/f;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Accept-Encoding"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lmobi/oneway/export/g/f;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5c

    iget-object v1, p0, Lmobi/oneway/export/g/f;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_44
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lmobi/oneway/export/g/f;->j:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_44

    :cond_5c
    iget-object v1, p0, Lmobi/oneway/export/g/f;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_75

    move-object v1, v0

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {}, Lmobi/oneway/export/g/d;->b()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    invoke-static {}, Lmobi/oneway/export/g/d;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_75
    return-object v0
.end method

.method private q()V
    .registers 5

    iget-object v0, p0, Lmobi/oneway/export/g/f;->g:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, "GET"

    iput-object v0, p0, Lmobi/oneway/export/g/f;->g:Ljava/lang/String;

    :cond_8
    iget-object v0, p0, Lmobi/oneway/export/g/f;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/oneway/export/g/f;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lmobi/oneway/export/g/f;->j()I

    move-result v0

    if-gtz v0, :cond_39

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmobi/oneway/export/g/f;->j()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is <= 0."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    iget v0, p0, Lmobi/oneway/export/g/f;->k:I

    if-gtz v0, :cond_60

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmobi/oneway/export/g/f;->i()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is <= 0."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_60
    iget-object v0, p0, Lmobi/oneway/export/g/f;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_83

    iget-object v0, p0, Lmobi/oneway/export/g/f;->i:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/oneway/export/g/f;->a(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v1

    const-string v0, "POST"

    iget-object v2, p0, Lmobi/oneway/export/g/f;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    iget-object v0, p0, Lmobi/oneway/export/g/f;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_84

    iput-object v1, p0, Lmobi/oneway/export/g/f;->h:Ljava/lang/String;

    :cond_83
    :goto_83
    return-void

    :cond_84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmobi/oneway/export/g/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lmobi/oneway/export/g/f;->f:Ljava/lang/String;

    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_bb

    const-string v0, "&"

    :goto_9b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/oneway/export/g/f;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmobi/oneway/export/g/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/oneway/export/g/f;->f:Ljava/lang/String;

    goto :goto_83

    :cond_bb
    const-string v0, "?"

    goto :goto_9b
.end method


# virtual methods
.method public a(I)Lmobi/oneway/export/g/f;
    .registers 2

    iput p1, p0, Lmobi/oneway/export/g/f;->k:I

    return-object p0
.end method

.method public a(II)Lmobi/oneway/export/g/f;
    .registers 3

    invoke-virtual {p0, p1}, Lmobi/oneway/export/g/f;->a(I)Lmobi/oneway/export/g/f;

    invoke-virtual {p0, p2}, Lmobi/oneway/export/g/f;->b(I)Lmobi/oneway/export/g/f;

    return-object p0
.end method

.method public a(Ljava/io/File;)Lmobi/oneway/export/g/f;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmobi/oneway/export/g/f;->a(Ljava/io/File;Z)Lmobi/oneway/export/g/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/File;Z)Lmobi/oneway/export/g/f;
    .registers 7

    iput-object p1, p0, Lmobi/oneway/export/g/f;->n:Ljava/io/File;

    iput-boolean p2, p0, Lmobi/oneway/export/g/f;->o:Z

    if-eqz p2, :cond_28

    const-string v0, "Range"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmobi/oneway/export/g/f;->a(Ljava/lang/String;Ljava/lang/String;)Lmobi/oneway/export/g/f;

    :cond_28
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lmobi/oneway/export/g/f;
    .registers 4

    iput-object p1, p0, Lmobi/oneway/export/g/f;->h:Ljava/lang/String;

    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {p0, v0, v1}, Lmobi/oneway/export/g/f;->a(Ljava/lang/String;Ljava/lang/String;)Lmobi/oneway/export/g/f;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/g/f;
    .registers 5

    if-nez p2, :cond_3

    :goto_2
    return-object p0

    :cond_3
    iget-object v0, p0, Lmobi/oneway/export/g/f;->i:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lmobi/oneway/export/g/f;
    .registers 4

    iget-object v0, p0, Lmobi/oneway/export/g/f;->j:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lmobi/oneway/export/g/f;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lmobi/oneway/export/g/f;"
        }
    .end annotation

    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_d

    iget-object v0, p0, Lmobi/oneway/export/g/f;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_d
    return-object p0
.end method

.method public a(Lorg/json/JSONArray;)Lmobi/oneway/export/g/f;
    .registers 4

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/oneway/export/g/f;->h:Ljava/lang/String;

    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {p0, v0, v1}, Lmobi/oneway/export/g/f;->a(Ljava/lang/String;Ljava/lang/String;)Lmobi/oneway/export/g/f;

    return-object p0
.end method

.method public a(Lorg/json/JSONObject;)Lmobi/oneway/export/g/f;
    .registers 4

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/oneway/export/g/f;->h:Ljava/lang/String;

    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {p0, v0, v1}, Lmobi/oneway/export/g/f;->a(Ljava/lang/String;Ljava/lang/String;)Lmobi/oneway/export/g/f;

    return-object p0
.end method

.method public a(Z)Lmobi/oneway/export/g/f;
    .registers 2

    iput-boolean p1, p0, Lmobi/oneway/export/g/f;->q:Z

    return-object p0
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lmobi/oneway/export/g/f;->q:Z

    return v0
.end method

.method public b(I)Lmobi/oneway/export/g/f;
    .registers 2

    iput p1, p0, Lmobi/oneway/export/g/f;->l:I

    return-object p0
.end method

.method public b(Ljava/util/Map;)Lmobi/oneway/export/g/f;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lmobi/oneway/export/g/f;"
        }
    .end annotation

    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_d

    iget-object v0, p0, Lmobi/oneway/export/g/f;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_d
    return-object p0
.end method

.method public b(Z)Lmobi/oneway/export/g/f;
    .registers 2

    iput-boolean p1, p0, Lmobi/oneway/export/g/f;->t:Z

    return-object p0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmobi/oneway/export/g/f;->f:Ljava/lang/String;

    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lmobi/oneway/export/g/f;->t:Z

    return v0
.end method

.method public c()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmobi/oneway/export/g/f;->i:Ljava/util/Map;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lmobi/oneway/export/g/f;
    .registers 2

    iput-object p1, p0, Lmobi/oneway/export/g/f;->g:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)Lmobi/oneway/export/g/f;
    .registers 2

    iput-boolean p1, p0, Lmobi/oneway/export/g/f;->m:Z

    return-object p0
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/oneway/export/g/f;->p:Z

    return-void
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lmobi/oneway/export/g/f;->p:Z

    return v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmobi/oneway/export/g/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmobi/oneway/export/g/f;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lmobi/oneway/export/g/f;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .registers 2

    iget v0, p0, Lmobi/oneway/export/g/f;->k:I

    return v0
.end method

.method public j()I
    .registers 2

    iget v0, p0, Lmobi/oneway/export/g/f;->l:I

    return v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lmobi/oneway/export/g/f;->n()Lmobi/oneway/export/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/oneway/export/g/b;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()[B
    .registers 2

    invoke-virtual {p0}, Lmobi/oneway/export/g/f;->n()Lmobi/oneway/export/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/oneway/export/g/b;->c()[B

    move-result-object v0

    return-object v0
.end method

.method public m()Lorg/json/JSONObject;
    .registers 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lmobi/oneway/export/g/f;->k()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public n()Lmobi/oneway/export/g/b;
    .registers 7

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lmobi/oneway/export/g/f;->s:J

    new-instance v0, Lmobi/oneway/export/g/b;

    invoke-direct {v0, p0}, Lmobi/oneway/export/g/b;-><init>(Lmobi/oneway/export/g/f;)V

    :try_start_c
    invoke-direct {p0}, Lmobi/oneway/export/g/f;->q()V

    invoke-direct {p0}, Lmobi/oneway/export/g/f;->p()Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-direct {p0, v1}, Lmobi/oneway/export/g/f;->a(Ljava/net/HttpURLConnection;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v0, v2}, Lmobi/oneway/export/g/b;->a(I)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmobi/oneway/export/g/b;->a(Ljava/util/Map;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Lmobi/oneway/export/g/b;->a(J)V

    iget-boolean v3, p0, Lmobi/oneway/export/g/f;->q:Z
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_56

    if-eqz v3, :cond_34

    :goto_30
    invoke-static {v1}, Lmobi/oneway/export/h/j;->a(Ljava/net/HttpURLConnection;)V

    return-object v0

    :cond_34
    :try_start_34
    invoke-direct {p0}, Lmobi/oneway/export/g/f;->o()Z

    move-result v3

    if-eqz v3, :cond_5b

    iget-object v2, p0, Lmobi/oneway/export/g/f;->n:Ljava/io/File;

    invoke-virtual {v0, v2}, Lmobi/oneway/export/g/b;->a(Ljava/io/File;)V

    iget-object v2, p0, Lmobi/oneway/export/g/f;->n:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lmobi/oneway/export/h/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lmobi/oneway/export/g/f;->n:Ljava/io/File;

    iget-boolean v4, p0, Lmobi/oneway/export/g/f;->o:Z

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {p0, v1, v2, v0}, Lmobi/oneway/export/g/f;->a(Ljava/net/HttpURLConnection;Ljava/io/OutputStream;Lmobi/oneway/export/g/b;)I
    :try_end_55
    .catchall {:try_start_34 .. :try_end_55} :catchall_56

    goto :goto_30

    :catchall_56
    move-exception v0

    invoke-static {v1}, Lmobi/oneway/export/h/j;->a(Ljava/net/HttpURLConnection;)V

    throw v0

    :cond_5b
    const/high16 v3, 0x200000

    if-le v2, v3, :cond_7e

    :try_start_5f
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Body is too large to load in memory: contentLength = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " B"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7e
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v1, v2, v0}, Lmobi/oneway/export/g/f;->a(Ljava/net/HttpURLConnection;Ljava/io/OutputStream;Lmobi/oneway/export/g/b;)I

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lmobi/oneway/export/g/b;->a([B)V
    :try_end_8d
    .catchall {:try_start_5f .. :try_end_8d} :catchall_56

    goto :goto_30
.end method
