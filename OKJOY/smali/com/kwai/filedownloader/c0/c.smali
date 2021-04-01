.class public Lcom/kwai/filedownloader/c0/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwai/filedownloader/c0/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/c0/c$a;,
        Lcom/kwai/filedownloader/c0/c$b;
    }
.end annotation


# instance fields
.field protected a:Ljava/net/URLConnection;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/kwai/filedownloader/c0/c$a;)V
    .registers 4

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/kwai/filedownloader/c0/c;-><init>(Ljava/net/URL;Lcom/kwai/filedownloader/c0/c$a;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/kwai/filedownloader/c0/c$a;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_3e

    invoke-static {p2}, Lcom/kwai/filedownloader/c0/c$a;->a(Lcom/kwai/filedownloader/c0/c$a;)Ljava/net/Proxy;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-static {p2}, Lcom/kwai/filedownloader/c0/c$a;->a(Lcom/kwai/filedownloader/c0/c$a;)Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/c0/c;->a:Ljava/net/URLConnection;

    :goto_15
    if-eqz p2, :cond_3d

    invoke-static {p2}, Lcom/kwai/filedownloader/c0/c$a;->b(Lcom/kwai/filedownloader/c0/c$a;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/kwai/filedownloader/c0/c;->a:Ljava/net/URLConnection;

    invoke-static {p2}, Lcom/kwai/filedownloader/c0/c$a;->b(Lcom/kwai/filedownloader/c0/c$a;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    :cond_2a
    invoke-static {p2}, Lcom/kwai/filedownloader/c0/c$a;->c(Lcom/kwai/filedownloader/c0/c$a;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/kwai/filedownloader/c0/c;->a:Ljava/net/URLConnection;

    invoke-static {p2}, Lcom/kwai/filedownloader/c0/c$a;->c(Lcom/kwai/filedownloader/c0/c$a;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    :cond_3d
    return-void

    :cond_3e
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/c0/c;->a:Ljava/net/URLConnection;

    goto :goto_15
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/c0/c;->a:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/c0/c;->a:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/c0/c;->a:Ljava/net/URLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;J)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public b()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kwai/filedownloader/c0/c;->a:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public d()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kwai/filedownloader/c0/c;->a:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/c0/c;->a:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    return-void
.end method

.method public f()I
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/c0/c;->a:Ljava/net/URLConnection;

    instance-of v1, v0, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_d

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method
