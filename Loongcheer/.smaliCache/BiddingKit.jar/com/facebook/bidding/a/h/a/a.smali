.class public Lcom/facebook/bidding/a/h/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field protected a:I

.field protected b:I

.field protected c:Ljava/lang/String;

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/bidding/a/h/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/bidding/a/h/a/a;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/facebook/bidding/a/h/a/a;->a:I

    const/16 v0, 0x1f40

    iput v0, p0, Lcom/facebook/bidding/a/h/a/a;->b:I

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/facebook/bidding/a/h/a/a;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/bidding/a/h/a/a;->g:Ljava/util/Map;

    return-void
.end method

.method private a(Lcom/facebook/bidding/a/h/a/f;)Z
    .registers 2

    invoke-virtual {p1}, Lcom/facebook/bidding/a/h/a/f;->a()Lcom/facebook/bidding/a/h/a/g;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/facebook/bidding/a/h/a/g;->a()I

    move-result p1

    if-lez p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method private a(Ljava/io/InputStream;)[B
    .registers 6

    const/16 v0, 0x4000

    new-array v0, v0, [B

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_9
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_15

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    :cond_15
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/net/HttpURLConnection;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/bidding/a/h/a/a;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/bidding/a/h/a/a;->g:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_22
    iget-object v0, p0, Lcom/facebook/bidding/a/h/a/a;->c:Ljava/lang/String;

    const-string v1, "Accept-Charset"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/net/HttpURLConnection;[B)I
    .registers 4

    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_17

    if-eqz v0, :cond_9

    :try_start_6
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    :cond_9
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_15

    if-eqz v0, :cond_14

    :try_start_f
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception p2

    :cond_14
    :goto_14
    return p1

    :catchall_15
    move-exception p1

    goto :goto_19

    :catchall_17
    move-exception p1

    const/4 v0, 0x0

    :goto_19
    if-eqz v0, :cond_20

    :try_start_1b
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_1f

    goto :goto_20

    :catch_1f
    move-exception p2

    :cond_20
    :goto_20
    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/bidding/a/h/a/a;
    .registers 4

    iget-object v0, p0, Lcom/facebook/bidding/a/h/a/a;->g:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Lcom/facebook/bidding/a/h/a/e;)Lcom/facebook/bidding/a/h/a/g;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Lcom/facebook/bidding/a/h/a/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/bidding/a/h/a/e;->b()Lcom/facebook/bidding/a/h/a/c;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/bidding/a/h/a/e;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/bidding/a/h/a/e;->d()[B

    move-result-object p1

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/facebook/bidding/a/h/a/a;->a(Ljava/lang/String;Lcom/facebook/bidding/a/h/a/c;Ljava/lang/String;[B)Lcom/facebook/bidding/a/h/a/g;

    move-result-object v0
    :try_end_15
    .catch Lcom/facebook/bidding/a/h/a/f; {:try_start_1 .. :try_end_15} :catch_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_16

    goto :goto_24

    :catch_16
    move-exception p1

    new-instance v1, Lcom/facebook/bidding/a/h/a/f;

    invoke-direct {v1, p1, v0}, Lcom/facebook/bidding/a/h/a/f;-><init>(Ljava/lang/Exception;Lcom/facebook/bidding/a/h/a/g;)V

    invoke-direct {p0, v1}, Lcom/facebook/bidding/a/h/a/a;->a(Lcom/facebook/bidding/a/h/a/f;)Z

    goto :goto_24

    :catch_20
    move-exception p1

    invoke-direct {p0, p1}, Lcom/facebook/bidding/a/h/a/a;->a(Lcom/facebook/bidding/a/h/a/f;)Z

    :goto_24
    return-object v0
.end method

.method protected a(Ljava/lang/String;Lcom/facebook/bidding/a/h/a/c;Ljava/lang/String;[B)Lcom/facebook/bidding/a/h/a/g;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/facebook/bidding/a/h/a/a;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_6c
    .catchall {:try_start_1 .. :try_end_5} :catchall_6a

    :try_start_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/bidding/a/h/a/a;->a(Ljava/net/HttpURLConnection;Lcom/facebook/bidding/a/h/a/c;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/facebook/bidding/a/h/a/a;->c(Ljava/net/HttpURLConnection;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    iget-object p2, p0, Lcom/facebook/bidding/a/h/a/a;->f:Ljava/util/Set;

    const/4 p3, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1c

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1c

    const/4 p2, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p2, 0x0

    :goto_1d
    iget-object v2, p0, Lcom/facebook/bidding/a/h/a/a;->e:Ljava/util/Set;

    if-eqz v2, :cond_28

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_28

    goto :goto_29

    :cond_28
    const/4 p3, 0x0

    :goto_29
    instance-of v1, p1, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2b} :catch_68
    .catchall {:try_start_5 .. :try_end_2b} :catchall_65

    if-eqz v1, :cond_44

    if-nez p2, :cond_31

    if-eqz p3, :cond_44

    :cond_31
    :try_start_31
    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/HttpsURLConnection;

    iget-object p3, p0, Lcom/facebook/bidding/a/h/a/a;->f:Ljava/util/Set;

    iget-object v1, p0, Lcom/facebook/bidding/a/h/a/a;->e:Ljava/util/Set;

    invoke-static {p2, p3, v1}, Lcom/facebook/bidding/a/h/a/h;->a(Ljavax/net/ssl/HttpsURLConnection;Ljava/util/Set;Ljava/util/Set;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3b} :catch_3c
    .catchall {:try_start_31 .. :try_end_3b} :catchall_65

    goto :goto_44

    :catch_3c
    move-exception p2

    :try_start_3d
    sget-object p3, Lcom/facebook/bidding/a/h/a/a;->d:Ljava/lang/String;

    const-string v1, "Unable to validate SSL certificates."

    invoke-static {p3, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_44
    :goto_44
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result p2

    if-eqz p2, :cond_4f

    if-eqz p4, :cond_4f

    invoke-virtual {p0, p1, p4}, Lcom/facebook/bidding/a/h/a/a;->a(Ljava/net/HttpURLConnection;[B)I

    :cond_4f
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getDoInput()Z

    move-result p2

    if-eqz p2, :cond_5a

    invoke-virtual {p0, p1}, Lcom/facebook/bidding/a/h/a/a;->a(Ljava/net/HttpURLConnection;)Lcom/facebook/bidding/a/h/a/g;

    move-result-object p2

    goto :goto_5f

    :cond_5a
    new-instance p2, Lcom/facebook/bidding/a/h/a/g;

    invoke-direct {p2, p1, v0}, Lcom/facebook/bidding/a/h/a/g;-><init>(Ljava/net/HttpURLConnection;[B)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_5f} :catch_68
    .catchall {:try_start_3d .. :try_end_5f} :catchall_65

    :goto_5f
    if-eqz p1, :cond_64

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_64
    return-object p2

    :catchall_65
    move-exception p2

    move-object v0, p1

    goto :goto_98

    :catch_68
    move-exception p2

    goto :goto_6e

    :catchall_6a
    move-exception p2

    goto :goto_98

    :catch_6c
    move-exception p2

    move-object p1, v0

    :goto_6e
    :try_start_6e
    invoke-virtual {p0, p1}, Lcom/facebook/bidding/a/h/a/a;->b(Ljava/net/HttpURLConnection;)Lcom/facebook/bidding/a/h/a/g;

    move-result-object p3
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_72} :catch_88
    .catchall {:try_start_6e .. :try_end_72} :catchall_86

    if-eqz p3, :cond_80

    :try_start_74
    invoke-virtual {p3}, Lcom/facebook/bidding/a/h/a/g;->a()I

    move-result p4
    :try_end_78
    .catchall {:try_start_74 .. :try_end_78} :catchall_65

    if-lez p4, :cond_80

    if-eqz p1, :cond_7f

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7f
    return-object p3

    :cond_80
    :try_start_80
    new-instance p4, Lcom/facebook/bidding/a/h/a/f;

    invoke-direct {p4, p2, p3}, Lcom/facebook/bidding/a/h/a/f;-><init>(Ljava/lang/Exception;Lcom/facebook/bidding/a/h/a/g;)V

    throw p4
    :try_end_86
    .catchall {:try_start_80 .. :try_end_86} :catchall_65

    :catchall_86
    move-exception p3

    goto :goto_92

    :catch_88
    move-exception p3

    :try_start_89
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_86

    :try_start_8c
    new-instance p3, Lcom/facebook/bidding/a/h/a/f;

    invoke-direct {p3, p2, v0}, Lcom/facebook/bidding/a/h/a/f;-><init>(Ljava/lang/Exception;Lcom/facebook/bidding/a/h/a/g;)V

    throw p3

    :goto_92
    new-instance p3, Lcom/facebook/bidding/a/h/a/f;

    invoke-direct {p3, p2, v0}, Lcom/facebook/bidding/a/h/a/f;-><init>(Ljava/lang/Exception;Lcom/facebook/bidding/a/h/a/g;)V

    throw p3
    :try_end_98
    .catchall {:try_start_8c .. :try_end_98} :catchall_65

    :goto_98
    if-eqz v0, :cond_9d

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9d
    throw p2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[B)Lcom/facebook/bidding/a/h/a/g;
    .registers 6

    new-instance v0, Lcom/facebook/bidding/a/h/a/d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/facebook/bidding/a/h/a/d;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[B)V

    invoke-virtual {p0, v0}, Lcom/facebook/bidding/a/h/a/a;->a(Lcom/facebook/bidding/a/h/a/e;)Lcom/facebook/bidding/a/h/a/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/bidding/a/h/a/g;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/bidding/a/h/a/g;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/bidding/a/h/a/b;

    invoke-direct {v0, p1, p2}, Lcom/facebook/bidding/a/h/a/b;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/facebook/bidding/a/h/a/a;->a(Lcom/facebook/bidding/a/h/a/e;)Lcom/facebook/bidding/a/h/a/g;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/net/HttpURLConnection;)Lcom/facebook/bidding/a/h/a/g;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1b

    if-eqz v1, :cond_b

    :try_start_7
    invoke-direct {p0, v1}, Lcom/facebook/bidding/a/h/a/a;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    :cond_b
    new-instance v2, Lcom/facebook/bidding/a/h/a/g;

    invoke-direct {v2, p1, v0}, Lcom/facebook/bidding/a/h/a/g;-><init>(Ljava/net/HttpURLConnection;[B)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_18

    if-eqz v1, :cond_17

    :try_start_12
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception p1

    :cond_17
    :goto_17
    return-object v2

    :catchall_18
    move-exception p1

    move-object v0, v1

    goto :goto_1c

    :catchall_1b
    move-exception p1

    :goto_1c
    if-eqz v0, :cond_23

    :try_start_1e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v0

    :cond_23
    :goto_23
    throw p1
.end method

.method protected a(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 5

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_b
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " is not a valid URL"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/bidding/a/h/a/a;->g:Ljava/util/Map;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/facebook/bidding/a/h/a/a;->a:I

    return-void
.end method

.method protected a(Ljava/net/HttpURLConnection;Lcom/facebook/bidding/a/h/a/c;Ljava/lang/String;)V
    .registers 5

    iget v0, p0, Lcom/facebook/bidding/a/h/a/a;->a:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v0, p0, Lcom/facebook/bidding/a/h/a/a;->b:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {p2}, Lcom/facebook/bidding/a/h/a/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/facebook/bidding/a/h/a/c;->b()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {p2}, Lcom/facebook/bidding/a/h/a/c;->a()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    if-eqz p3, :cond_26

    const-string p2, "Content-Type"

    invoke-virtual {p1, p2, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method public a(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/bidding/a/h/a/a;->f:Ljava/util/Set;

    return-void
.end method

.method protected b(Ljava/net/HttpURLConnection;)Lcom/facebook/bidding/a/h/a/g;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1b

    if-eqz v1, :cond_b

    :try_start_7
    invoke-direct {p0, v1}, Lcom/facebook/bidding/a/h/a/a;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    :cond_b
    new-instance v2, Lcom/facebook/bidding/a/h/a/g;

    invoke-direct {v2, p1, v0}, Lcom/facebook/bidding/a/h/a/g;-><init>(Ljava/net/HttpURLConnection;[B)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_18

    if-eqz v1, :cond_17

    :try_start_12
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception p1

    :cond_17
    :goto_17
    return-object v2

    :catchall_18
    move-exception p1

    move-object v0, v1

    goto :goto_1c

    :catchall_1b
    move-exception p1

    :goto_1c
    if-eqz v0, :cond_23

    :try_start_1e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v0

    :cond_23
    :goto_23
    throw p1
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/facebook/bidding/a/h/a/a;->b:I

    return-void
.end method

.method public b(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/bidding/a/h/a/a;->e:Ljava/util/Set;

    return-void
.end method
