.class final Lcom/tds/common/net/TdsHttp$CallServerInterceptor;
.super Ljava/lang/Object;
.source "TdsHttp.java"

# interfaces
.implements Lcom/tds/common/net/TdsHttp$Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/net/TdsHttp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CallServerInterceptor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/net/TdsHttp$CallServerInterceptor$MyHostnameVerifier;
    }
.end annotation


# static fields
.field private static myHostnameVerifier:Lcom/tds/common/net/TdsHttp$CallServerInterceptor$MyHostnameVerifier;

.field private static mySSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 792
    invoke-static {}, Lcom/tds/common/net/TdsHttp$CallServerInterceptor;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lcom/tds/common/net/TdsHttp$CallServerInterceptor;->mySSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 817
    new-instance v0, Lcom/tds/common/net/TdsHttp$CallServerInterceptor$MyHostnameVerifier;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tds/common/net/TdsHttp$CallServerInterceptor$MyHostnameVerifier;-><init>(Lcom/tds/common/net/TdsHttp$1;)V

    sput-object v0, Lcom/tds/common/net/TdsHttp$CallServerInterceptor;->myHostnameVerifier:Lcom/tds/common/net/TdsHttp$CallServerInterceptor$MyHostnameVerifier;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 4

    .line 794
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lcom/tds/common/net/TdsHttp$CallServerInterceptor$1;

    invoke-direct {v1}, Lcom/tds/common/net/TdsHttp$CallServerInterceptor$1;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 808
    .local v0, "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    const/4 v1, 0x0

    :try_start_c
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 809
    .local v2, "sc":Ljavax/net/ssl/SSLContext;
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v1, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 810
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1e} :catch_1f

    return-object v1

    .line 811
    .end local v2    # "sc":Ljavax/net/ssl/SSLContext;
    :catch_1f
    move-exception v2

    .line 812
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 813
    return-object v1
.end method

.method private static open(Ljava/lang/String;Lcom/tds/common/net/TdsHttp$Client;)Ljava/net/HttpURLConnection;
    .registers 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "client"    # Lcom/tds/common/net/TdsHttp$Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 768
    iget-object v0, p1, Lcom/tds/common/net/TdsHttp$Client;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_12

    .line 769
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/tds/common/net/TdsHttp$Client;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .local v0, "conn":Ljava/net/HttpURLConnection;
    goto :goto_1d

    .line 771
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    :cond_12
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 773
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    :goto_1d
    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_47

    .line 774
    move-object v1, v0

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 775
    .local v1, "sConn":Ljavax/net/ssl/HttpsURLConnection;
    iget-boolean v2, p1, Lcom/tds/common/net/TdsHttp$Client;->trustAllCerts:Z

    if-eqz v2, :cond_35

    .line 776
    sget-object v2, Lcom/tds/common/net/TdsHttp$CallServerInterceptor;->mySSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v2, :cond_2f

    .line 777
    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 779
    :cond_2f
    sget-object v2, Lcom/tds/common/net/TdsHttp$CallServerInterceptor;->myHostnameVerifier:Lcom/tds/common/net/TdsHttp$CallServerInterceptor$MyHostnameVerifier;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_47

    .line 781
    :cond_35
    iget-object v2, p1, Lcom/tds/common/net/TdsHttp$Client;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v2, :cond_3e

    .line 782
    iget-object v2, p1, Lcom/tds/common/net/TdsHttp$Client;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 784
    :cond_3e
    iget-object v2, p1, Lcom/tds/common/net/TdsHttp$Client;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v2, :cond_47

    .line 785
    iget-object v2, p1, Lcom/tds/common/net/TdsHttp$Client;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 789
    .end local v1    # "sConn":Ljavax/net/ssl/HttpsURLConnection;
    :cond_47
    :goto_47
    return-object v0
.end method

.method private writeRequest(Ljava/net/HttpURLConnection;Lcom/tds/common/net/TdsHttp$Request;)V
    .registers 10
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "request"    # Lcom/tds/common/net/TdsHttp$Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 736
    iget-object v0, p2, Lcom/tds/common/net/TdsHttp$Request;->method:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 737
    iget-object v0, p2, Lcom/tds/common/net/TdsHttp$Request;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 738
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_f

    .line 740
    :cond_2b
    iget-object v0, p2, Lcom/tds/common/net/TdsHttp$Request;->body:Lcom/tds/common/net/TdsHttp$RequestBody;

    if-eqz v0, :cond_7c

    .line 741
    iget-object v0, p2, Lcom/tds/common/net/TdsHttp$Request;->body:Lcom/tds/common/net/TdsHttp$RequestBody;

    invoke-virtual {v0}, Lcom/tds/common/net/TdsHttp$RequestBody;->contentType()Ljava/lang/String;

    move-result-object v0

    .line 742
    .local v0, "contentType":Ljava/lang/String;
    if-eqz v0, :cond_3c

    .line 743
    const-string v1, "Content-Type"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    :cond_3c
    iget-object v1, p2, Lcom/tds/common/net/TdsHttp$Request;->body:Lcom/tds/common/net/TdsHttp$RequestBody;

    invoke-virtual {v1}, Lcom/tds/common/net/TdsHttp$RequestBody;->contentLength()J

    move-result-wide v1

    .line 746
    .local v1, "contentLength":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_51

    .line 747
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Content-Length"

    invoke-virtual {p1, v6, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    :cond_51
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 750
    iget-object v5, p2, Lcom/tds/common/net/TdsHttp$Request;->body:Lcom/tds/common/net/TdsHttp$RequestBody;

    invoke-virtual {v5}, Lcom/tds/common/net/TdsHttp$RequestBody;->contentLength()J

    move-result-wide v5

    .line 751
    .local v5, "len":J
    cmp-long v3, v5, v3

    if-lez v3, :cond_64

    .line 752
    long-to-int v3, v5

    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    goto :goto_68

    .line 754
    :cond_64
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 756
    :goto_68
    const/4 v3, 0x0

    .line 758
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_69
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    move-object v3, v4

    .line 759
    iget-object v4, p2, Lcom/tds/common/net/TdsHttp$Request;->body:Lcom/tds/common/net/TdsHttp$RequestBody;

    invoke-virtual {v4, v3}, Lcom/tds/common/net/TdsHttp$RequestBody;->writeTo(Ljava/io/OutputStream;)V
    :try_end_73
    .catchall {:try_start_69 .. :try_end_73} :catchall_77

    .line 761
    invoke-static {v3}, Lcom/tds/common/io/IoUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 762
    goto :goto_7c

    .line 761
    :catchall_77
    move-exception v4

    invoke-static {v3}, Lcom/tds/common/io/IoUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 762
    throw v4

    .line 764
    .end local v0    # "contentType":Ljava/lang/String;
    .end local v1    # "contentLength":J
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v5    # "len":J
    :cond_7c
    :goto_7c
    return-void
.end method


# virtual methods
.method public intercept(Lcom/tds/common/net/TdsHttp$Interceptor$Chain;)Lcom/tds/common/net/TdsHttp$Response;
    .registers 9
    .param p1, "chain"    # Lcom/tds/common/net/TdsHttp$Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 716
    invoke-interface {p1}, Lcom/tds/common/net/TdsHttp$Interceptor$Chain;->request()Lcom/tds/common/net/TdsHttp$Request;

    move-result-object v0

    .line 717
    .local v0, "request":Lcom/tds/common/net/TdsHttp$Request;
    iget-object v1, v0, Lcom/tds/common/net/TdsHttp$Request;->url:Ljava/lang/String;

    invoke-interface {p1}, Lcom/tds/common/net/TdsHttp$Interceptor$Chain;->call()Lcom/tds/common/net/TdsHttp$Call;

    move-result-object v2

    iget-object v2, v2, Lcom/tds/common/net/TdsHttp$Call;->client:Lcom/tds/common/net/TdsHttp$Client;

    invoke-static {v1, v2}, Lcom/tds/common/net/TdsHttp$CallServerInterceptor;->open(Ljava/lang/String;Lcom/tds/common/net/TdsHttp$Client;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 718
    .local v1, "connection":Ljava/net/HttpURLConnection;
    invoke-interface {p1}, Lcom/tds/common/net/TdsHttp$Interceptor$Chain;->connectTimeoutMillis()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 719
    invoke-interface {p1}, Lcom/tds/common/net/TdsHttp$Interceptor$Chain;->readTimeoutMillis()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 720
    invoke-direct {p0, v1, v0}, Lcom/tds/common/net/TdsHttp$CallServerInterceptor;->writeRequest(Ljava/net/HttpURLConnection;Lcom/tds/common/net/TdsHttp$Request;)V

    .line 722
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 723
    .local v2, "code":I
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    .line 724
    .local v3, "message":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    .line 725
    .local v4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {v1}, Lcom/tds/common/net/TdsHttp$ResponseBody;->create(Ljava/net/HttpURLConnection;)Lcom/tds/common/net/TdsHttp$ResponseBody;

    move-result-object v5

    .line 726
    .local v5, "body":Lcom/tds/common/net/TdsHttp$ResponseBody;
    new-instance v6, Lcom/tds/common/net/TdsHttp$Response$Builder;

    invoke-direct {v6}, Lcom/tds/common/net/TdsHttp$Response$Builder;-><init>()V

    .line 727
    invoke-virtual {v6, v0}, Lcom/tds/common/net/TdsHttp$Response$Builder;->request(Lcom/tds/common/net/TdsHttp$Request;)Lcom/tds/common/net/TdsHttp$Response$Builder;

    move-result-object v6

    .line 728
    invoke-virtual {v6, v2}, Lcom/tds/common/net/TdsHttp$Response$Builder;->code(I)Lcom/tds/common/net/TdsHttp$Response$Builder;

    move-result-object v6

    .line 729
    invoke-virtual {v6, v3}, Lcom/tds/common/net/TdsHttp$Response$Builder;->message(Ljava/lang/String;)Lcom/tds/common/net/TdsHttp$Response$Builder;

    move-result-object v6

    .line 730
    invoke-virtual {v6, v4}, Lcom/tds/common/net/TdsHttp$Response$Builder;->headers(Ljava/util/Map;)Lcom/tds/common/net/TdsHttp$Response$Builder;

    move-result-object v6

    .line 731
    invoke-virtual {v6, v5}, Lcom/tds/common/net/TdsHttp$Response$Builder;->body(Lcom/tds/common/net/TdsHttp$ResponseBody;)Lcom/tds/common/net/TdsHttp$Response$Builder;

    move-result-object v6

    .line 732
    invoke-virtual {v6}, Lcom/tds/common/net/TdsHttp$Response$Builder;->build()Lcom/tds/common/net/TdsHttp$Response;

    move-result-object v6

    .line 726
    return-object v6
.end method
