.class public final Lokjoy/h/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/os/Handler;

.field public final synthetic d:Lokjoy/h/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lokjoy/h/b;)V
    .registers 5

    iput-object p1, p0, Lokjoy/h/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lokjoy/h/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lokjoy/h/a;->c:Landroid/os/Handler;

    iput-object p4, p0, Lokjoy/h/a;->d:Lokjoy/h/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lokjoy/h/a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v1, p0, Lokjoy/h/a;->b:Ljava/lang/String;

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_6c

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lokjoy/a/g;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u63a5\u53e3\u54cd\u5e94\u5185\u5bb9\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lokjoy/h/a;->c:Landroid/os/Handler;

    new-instance v2, Lokjoy/h/a$a;

    invoke-direct {v2, p0, v0}, Lokjoy/h/a$a;-><init>(Lokjoy/h/a;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_91

    :cond_6c
    iget-object v0, p0, Lokjoy/h/a;->c:Landroid/os/Handler;

    new-instance v2, Lokjoy/h/a$b;

    invoke-direct {v2, p0, v1}, Lokjoy/h/a$b;-><init>(Lokjoy/h/a;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_76
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_76} :catch_83
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_76} :catch_77

    goto :goto_91

    :catch_77
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v0, p0, Lokjoy/h/a;->c:Landroid/os/Handler;

    new-instance v1, Lokjoy/h/a$d;

    invoke-direct {v1, p0}, Lokjoy/h/a$d;-><init>(Lokjoy/h/a;)V

    goto :goto_8e

    :catch_83
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    iget-object v0, p0, Lokjoy/h/a;->c:Landroid/os/Handler;

    new-instance v1, Lokjoy/h/a$c;

    invoke-direct {v1, p0}, Lokjoy/h/a$c;-><init>(Lokjoy/h/a;)V

    :goto_8e
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_91
    return-void
.end method
