.class public Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;
.super Ljava/lang/Object;
.source "LibUrlConnection4DZ.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;


# instance fields
.field protected final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;->a:Ljava/lang/ref/WeakReference;

    .line 30
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)Ljava/net/HttpURLConnection;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .line 88
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 89
    return-object v1

    .line 92
    :cond_8
    nop

    .line 97
    :try_start_9
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_14} :catch_6f

    .line 99
    const/4 v0, 0x0

    :try_start_15
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 100
    const-string v0, "accept"

    const-string v1, "*/*"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "connection"

    const-string v1, "Keep-Alive"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    if-eqz p2, :cond_4a

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 103
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/model/c;

    .line 104
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    goto :goto_32

    .line 107
    :cond_4a
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 108
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 109
    const/16 v1, 0xc8

    const/16 v2, 0x12c

    if-lt v0, v1, :cond_5a

    if-ge v0, v2, :cond_5a

    .line 110
    return-object p1

    .line 111
    :cond_5a
    if-lt v0, v2, :cond_6b

    const/16 v1, 0x190

    if-ge v0, v1, :cond_6b

    .line 112
    const-string v0, "Location"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-direct {p0, v0, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;->a(Ljava/lang/String;Ljava/util/List;)Ljava/net/HttpURLConnection;

    move-result-object p1
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_6a} :catch_6c

    return-object p1

    .line 116
    :cond_6b
    goto :goto_71

    .line 115
    :catch_6c
    move-exception p2

    move-object v1, p1

    goto :goto_70

    :catch_6f
    move-exception p1

    :goto_70
    move-object p1, v1

    .line 118
    :goto_71
    return-object p1
.end method

.method private a(Ljava/net/HttpURLConnection;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 124
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    .line 125
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 126
    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_1e

    .line 127
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v4

    .line 129
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 132
    :cond_1e
    return-object v0
.end method


# virtual methods
.method public downloadWithConnection(ILjava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/network/i;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;)",
            "Lcom/ss/android/socialbase/downloader/network/i;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;->a(Ljava/lang/String;Ljava/util/List;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 35
    const/4 p1, 0x0

    if-nez v5, :cond_8

    .line 36
    return-object p1

    .line 39
    :cond_8
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 40
    const/16 p2, 0xc8

    if-lt v4, p2, :cond_3f

    const/16 p2, 0x12c

    if-ge v4, p2, :cond_3f

    .line 41
    invoke-direct {p0, v5}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;->a(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v3

    .line 42
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 43
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object p2

    .line 44
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_35

    const-string p3, "gzip"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_35

    .line 45
    new-instance p2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p2, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, p2

    goto :goto_36

    .line 48
    :cond_35
    move-object v2, p1

    :goto_36
    nop

    .line 50
    new-instance p1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$1;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$1;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;Ljava/io/InputStream;Ljava/util/Map;ILjava/net/HttpURLConnection;)V

    return-object p1

    .line 83
    :cond_3f
    return-object p1
.end method
