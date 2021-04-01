.class final Lcom/anythink/nativead/a/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/nativead/a/c;->a(Ljava/lang/String;ILcom/anythink/nativead/a/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/anythink/nativead/a/c$a;

.field final synthetic d:Lcom/anythink/nativead/a/c;


# direct methods
.method constructor <init>(Lcom/anythink/nativead/a/c;Ljava/lang/String;ILcom/anythink/nativead/a/c$a;)V
    .registers 5

    .prologue
    .line 47
    iput-object p1, p0, Lcom/anythink/nativead/a/c$1;->d:Lcom/anythink/nativead/a/c;

    iput-object p2, p0, Lcom/anythink/nativead/a/c$1;->a:Ljava/lang/String;

    iput p3, p0, Lcom/anythink/nativead/a/c$1;->b:I

    iput-object p4, p0, Lcom/anythink/nativead/a/c$1;->c:Lcom/anythink/nativead/a/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .prologue
    .line 51
    const/4 v1, 0x0

    .line 53
    :try_start_1
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/anythink/nativead/a/c$1;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 55
    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 56
    const/16 v2, 0x7530

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 57
    const/16 v2, 0x7530

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 59
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 61
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 64
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_47

    .line 65
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2b} :catch_ad
    .catchall {:try_start_1 .. :try_end_2b} :catchall_9d

    move-result-object v0

    .line 66
    const/16 v1, 0x800

    :try_start_2e
    new-array v1, v1, [B

    .line 68
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 69
    :goto_35
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_54

    .line 70
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_40} :catch_41
    .catchall {:try_start_2e .. :try_end_40} :catchall_a8

    goto :goto_35

    :catch_41
    move-exception v1

    .line 104
    :goto_42
    if-eqz v0, :cond_47

    .line 106
    :try_start_44
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_a4

    .line 114
    :cond_47
    :goto_47
    iget-object v0, p0, Lcom/anythink/nativead/a/c$1;->d:Lcom/anythink/nativead/a/c;

    iget-object v0, v0, Lcom/anythink/nativead/a/c;->a:Landroid/os/Handler;

    new-instance v1, Lcom/anythink/nativead/a/c$1$2;

    invoke-direct {v1, p0}, Lcom/anythink/nativead/a/c$1$2;-><init>(Lcom/anythink/nativead/a/c$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    :cond_53
    :goto_53
    return-void

    .line 72
    :cond_54
    :try_start_54
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 73
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 74
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 76
    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v1, v4, v5, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 78
    iget v4, p0, Lcom/anythink/nativead/a/c$1;->b:I

    iget v5, p0, Lcom/anythink/nativead/a/c$1;->b:I

    invoke-static {v3, v4, v5}, Lcom/anythink/nativead/a/a/a;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v4

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 80
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 82
    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v1, v4, v5, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 83
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 84
    iget-object v1, p0, Lcom/anythink/nativead/a/c$1;->d:Lcom/anythink/nativead/a/c;

    iget-object v1, v1, Lcom/anythink/nativead/a/c;->b:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/anythink/nativead/a/c$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v1, p0, Lcom/anythink/nativead/a/c$1;->d:Lcom/anythink/nativead/a/c;

    iget-object v1, v1, Lcom/anythink/nativead/a/c;->a:Landroid/os/Handler;

    new-instance v4, Lcom/anythink/nativead/a/c$1$1;

    invoke-direct {v4, p0, v3}, Lcom/anythink/nativead/a/c$1$1;-><init>(Lcom/anythink/nativead/a/c$1;Ljava/lang/ref/SoftReference;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_95} :catch_41
    .catchall {:try_start_54 .. :try_end_95} :catchall_a8

    .line 104
    if-eqz v0, :cond_53

    .line 106
    :try_start_97
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9a} :catch_9b

    goto :goto_53

    .line 98
    :catch_9b
    move-exception v0

    goto :goto_53

    .line 103
    :catchall_9d
    move-exception v0

    .line 104
    :goto_9e
    if-eqz v1, :cond_a3

    .line 106
    :try_start_a0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a3} :catch_a6

    .line 111
    :cond_a3
    :goto_a3
    throw v0

    .line 112
    :catch_a4
    move-exception v0

    goto :goto_47

    :catch_a6
    move-exception v1

    goto :goto_a3

    .line 103
    :catchall_a8
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_9e

    :catch_ad
    move-exception v0

    move-object v0, v1

    goto :goto_42
.end method
