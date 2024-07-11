.class public Lcom/ss/android/socialbase/downloader/impls/g;
.super Ljava/lang/Object;
.source "DefaultDownloadHttpService.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;


# instance fields
.field private final a:Lcom/ss/android/socialbase/downloader/i/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ss/android/socialbase/downloader/i/g<",
            "Ljava/lang/String;",
            "Lokhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/g;

    const/4 v1, 0x4

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/i/g;-><init>(II)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g;->a:Lcom/ss/android/socialbase/downloader/i/g;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/OkHttpClient;
    .registers 6

    .line 139
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5b

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/g;->a:Lcom/ss/android/socialbase/downloader/i/g;

    monitor-enter v1
    :try_end_2e
    .catchall {:try_start_0 .. :try_end_2e} :catchall_5c

    .line 145
    :try_start_2e
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/g;->a:Lcom/ss/android/socialbase/downloader/i/g;

    invoke-virtual {v2, v0}, Lcom/ss/android/socialbase/downloader/i/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/OkHttpClient;

    .line 146
    if-eqz v2, :cond_3a

    .line 147
    monitor-exit v1

    return-object v2

    .line 149
    :cond_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_2e .. :try_end_3b} :catchall_58

    .line 150
    :try_start_3b
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->t()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 151
    new-instance v2, Lcom/ss/android/socialbase/downloader/impls/g$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/g$2;-><init>(Lcom/ss/android/socialbase/downloader/impls/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    .line 162
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    .line 163
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/g;->a:Lcom/ss/android/socialbase/downloader/i/g;

    monitor-enter p2
    :try_end_4e
    .catchall {:try_start_3b .. :try_end_4e} :catchall_5c

    .line 164
    :try_start_4e
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/g;->a:Lcom/ss/android/socialbase/downloader/i/g;

    invoke-virtual {v1, v0, p1}, Lcom/ss/android/socialbase/downloader/i/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    monitor-exit p2

    .line 166
    return-object p1

    .line 165
    :catchall_55
    move-exception p1

    monitor-exit p2
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_55

    :try_start_57
    throw p1
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_5c

    .line 149
    :catchall_58
    move-exception p1

    :try_start_59
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    :try_start_5a
    throw p1
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_5c

    .line 170
    :cond_5b
    goto :goto_60

    .line 168
    :catchall_5c
    move-exception p1

    .line 169
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 171
    :goto_60
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->s()Lokhttp3/OkHttpClient;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public downloadWithConnection(ILjava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/network/i;
    .registers 12
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

    .line 40
    nop

    .line 42
    new-instance p1, Lokhttp3/Request$Builder;

    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 43
    const/4 v0, 0x0

    if-eqz p3, :cond_43

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_43

    .line 44
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move-object v1, v0

    :goto_18
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/model/c;

    .line 45
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/c;->a()Ljava/lang/String;

    move-result-object v3

    .line 48
    if-nez v1, :cond_37

    const-string v4, "ss_d_request_host_ip_114"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 49
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 50
    goto :goto_18

    .line 52
    :cond_37
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/e;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 53
    goto :goto_18

    .line 57
    :cond_43
    move-object v1, v0

    :cond_44
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4f

    .line 58
    invoke-direct {p0, p2, v1}, Lcom/ss/android/socialbase/downloader/impls/g;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/OkHttpClient;

    move-result-object p2

    goto :goto_53

    .line 60
    :cond_4f
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->s()Lokhttp3/OkHttpClient;

    move-result-object p2

    .line 63
    :goto_53
    if-eqz p2, :cond_9f

    .line 67
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 68
    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v5

    .line 69
    invoke-interface {v5}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v4

    .line 70
    if-eqz v4, :cond_97

    .line 73
    invoke-virtual {p1}, Lokhttp3/Request;->getIpAddrStr()Ljava/lang/String;

    move-result-object v7

    .line 74
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    .line 75
    if-eqz v6, :cond_96

    .line 76
    invoke-virtual {v6}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    .line 77
    const-string p2, "Content-Encoding"

    invoke-virtual {v4, p2}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 78
    if-eqz p2, :cond_8c

    const-string p3, "gzip"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8c

    instance-of p2, p1, Ljava/util/zip/GZIPInputStream;

    if-nez p2, :cond_8c

    .line 79
    new-instance p2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p2, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, p2

    goto :goto_8d

    .line 82
    :cond_8c
    move-object v3, p1

    :goto_8d
    nop

    .line 84
    new-instance p1, Lcom/ss/android/socialbase/downloader/impls/g$1;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/ss/android/socialbase/downloader/impls/g$1;-><init>(Lcom/ss/android/socialbase/downloader/impls/g;Ljava/io/InputStream;Lokhttp3/Response;Lokhttp3/Call;Lokhttp3/ResponseBody;Ljava/lang/String;)V

    return-object p1

    .line 126
    :cond_96
    return-object v0

    .line 71
    :cond_97
    new-instance p1, Ljava/io/IOException;

    const-string p2, "can\'t get response"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_9f
    new-instance p1, Ljava/io/IOException;

    const-string p2, "can\'t get httpClient"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
