.class public Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/g;
.super Ljava/lang/Object;
.source "LibUrlConnection4DZ.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/i/f;


# instance fields
.field protected final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/g;->a:Ljava/lang/ref/WeakReference;

    .line 31
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)Ljava/net/HttpURLConnection;
    .registers 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/e;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x12c

    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, v1

    .line 119
    :cond_a
    :goto_a
    return-object v0

    .line 95
    :cond_b
    :try_start_b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 96
    invoke-static {}, Lcom/bytedance/sdk/adnet/d/b;->a()V

    .line 98
    :cond_1c
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_27} :catch_7d

    .line 100
    const/4 v1, 0x0

    :try_start_28
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 101
    const-string v1, "accept"

    const-string v2, "*/*"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    if-eqz p2, :cond_5f

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5f

    .line 104
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_45
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/g/e;

    .line 105
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45

    .line 116
    :catch_5d
    move-exception v1

    goto :goto_a

    .line 108
    :cond_5f
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 109
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 110
    const/16 v2, 0xc8

    if-lt v1, v2, :cond_6c

    if-lt v1, v4, :cond_a

    .line 112
    :cond_6c
    if-lt v1, v4, :cond_a

    const/16 v2, 0x190

    if-ge v1, v2, :cond_a

    .line 113
    const-string v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-direct {p0, v1, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/g;->a(Ljava/lang/String;Ljava/util/List;)Ljava/net/HttpURLConnection;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_7b} :catch_5d

    move-result-object v0

    goto :goto_a

    .line 116
    :catch_7d
    move-exception v0

    move-object v0, v1

    goto :goto_a
.end method

.method private a(Ljava/net/HttpURLConnection;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 125
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 126
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    .line 127
    const/4 v0, 0x0

    :goto_e
    if-ge v0, v2, :cond_1e

    .line 128
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v3

    .line 129
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v4

    .line 130
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 133
    :cond_1e
    return-object v1
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/i/e;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/e;",
            ">;)",
            "Lcom/ss/android/socialbase/downloader/i/e;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/g;->a(Ljava/lang/String;Ljava/util/List;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 36
    if-nez v5, :cond_8

    .line 84
    :cond_7
    :goto_7
    return-object v0

    .line 40
    :cond_8
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 41
    const/16 v1, 0xc8

    if-lt v4, v1, :cond_7

    const/16 v1, 0x12c

    if-ge v4, v1, :cond_7

    .line 42
    invoke-direct {p0, v5}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/g;->a(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v3

    .line 43
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 44
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "gzip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 46
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 51
    :goto_33
    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/g$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/g$1;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/g;Ljava/io/InputStream;Ljava/util/Map;ILjava/net/HttpURLConnection;)V

    goto :goto_7

    :cond_3a
    move-object v2, v0

    goto :goto_33
.end method
