.class final Lcom/tonyodev/fetch/FetchCallRunnable;
.super Ljava/lang/Object;
.source "FetchCallRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch/FetchCallRunnable$Callback;
    }
.end annotation


# instance fields
.field private bufferedReader:Ljava/io/BufferedReader;

.field private final callback:Lcom/tonyodev/fetch/FetchCallRunnable$Callback;

.field private final fetchCall:Lcom/tonyodev/fetch/callback/FetchCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tonyodev/fetch/callback/FetchCall",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private httpURLConnection:Ljava/net/HttpURLConnection;

.field private input:Ljava/io/InputStream;

.field private volatile interrupted:Z

.field private final request:Lcom/tonyodev/fetch/request/Request;

.field private response:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tonyodev/fetch/request/Request;Lcom/tonyodev/fetch/callback/FetchCall;Lcom/tonyodev/fetch/FetchCallRunnable$Callback;)V
    .registers 6
    .param p1, "request"    # Lcom/tonyodev/fetch/request/Request;
    .param p3, "callback"    # Lcom/tonyodev/fetch/FetchCallRunnable$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch/request/Request;",
            "Lcom/tonyodev/fetch/callback/FetchCall",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tonyodev/fetch/FetchCallRunnable$Callback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, "fetchCall":Lcom/tonyodev/fetch/callback/FetchCall;, "Lcom/tonyodev/fetch/callback/FetchCall<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->handler:Landroid/os/Handler;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->interrupted:Z

    .line 55
    if-nez p1, :cond_1b

    .line 56
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Request Cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1b
    if-nez p2, :cond_25

    .line 60
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "FetchCall cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_25
    if-nez p3, :cond_2f

    .line 64
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_2f
    iput-object p1, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->request:Lcom/tonyodev/fetch/request/Request;

    .line 68
    iput-object p2, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->fetchCall:Lcom/tonyodev/fetch/callback/FetchCall;

    .line 69
    iput-object p3, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->callback:Lcom/tonyodev/fetch/FetchCallRunnable$Callback;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/tonyodev/fetch/FetchCallRunnable;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tonyodev/fetch/FetchCallRunnable;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->response:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tonyodev/fetch/FetchCallRunnable;)Lcom/tonyodev/fetch/request/Request;
    .registers 2
    .param p0, "x0"    # Lcom/tonyodev/fetch/FetchCallRunnable;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->request:Lcom/tonyodev/fetch/request/Request;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tonyodev/fetch/FetchCallRunnable;)Lcom/tonyodev/fetch/callback/FetchCall;
    .registers 2
    .param p0, "x0"    # Lcom/tonyodev/fetch/FetchCallRunnable;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->fetchCall:Lcom/tonyodev/fetch/callback/FetchCall;

    return-object v0
.end method

.method private inputToString()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->input:Ljava/io/InputStream;

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v2, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->bufferedReader:Ljava/io/BufferedReader;

    .line 145
    :goto_13
    iget-object v2, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->bufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_25

    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchCallRunnable;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_25

    .line 146
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 149
    :cond_25
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchCallRunnable;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 150
    const/4 v2, 0x0

    .line 153
    :goto_2c
    return-object v2

    :cond_2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2c
.end method

.method private isInterrupted()Z
    .registers 2

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->interrupted:Z

    return v0
.end method

.method private release()V
    .registers 3

    .prologue
    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->input:Ljava/io/InputStream;

    if-eqz v1, :cond_9

    .line 160
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_1c

    .line 167
    :cond_9
    :goto_9
    :try_start_9
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->bufferedReader:Ljava/io/BufferedReader;

    if-eqz v1, :cond_12

    .line 168
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->bufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_12} :catch_21

    .line 174
    :cond_12
    :goto_12
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_1b

    .line 175
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 177
    :cond_1b
    return-void

    .line 162
    :catch_1c
    move-exception v0

    .line 163
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 170
    .end local v0    # "e":Ljava/io/IOException;
    :catch_21
    move-exception v0

    .line 171
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12
.end method

.method private setHttpConnectionPrefs()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 123
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->request:Lcom/tonyodev/fetch/request/Request;

    invoke-virtual {v2}, Lcom/tonyodev/fetch/request/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, "httpUrl":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    iput-object v2, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    .line 125
    iget-object v2, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v3, "GET"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 126
    iget-object v2, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    const/16 v3, 0x3a98

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 127
    iget-object v2, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 128
    iget-object v2, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 129
    iget-object v2, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 130
    iget-object v2, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 131
    iget-object v2, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 133
    iget-object v2, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->request:Lcom/tonyodev/fetch/request/Request;

    invoke-virtual {v2}, Lcom/tonyodev/fetch/request/Request;->getHeaders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_47
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_61

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tonyodev/fetch/request/Header;

    .line 134
    .local v0, "header":Lcom/tonyodev/fetch/request/Header;
    iget-object v3, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Lcom/tonyodev/fetch/request/Header;->getHeader()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tonyodev/fetch/request/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    .line 136
    .end local v0    # "header":Lcom/tonyodev/fetch/request/Header;
    :cond_61
    return-void
.end method


# virtual methods
.method public getRequest()Lcom/tonyodev/fetch/request/Request;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->request:Lcom/tonyodev/fetch/request/Request;

    return-object v0
.end method

.method declared-synchronized interrupt()V
    .registers 2

    .prologue
    .line 184
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->interrupted:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 185
    monitor-exit p0

    return-void

    .line 184
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 7

    .prologue
    .line 77
    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchCallRunnable;->setHttpConnectionPrefs()V

    .line 78
    iget-object v3, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 79
    iget-object v3, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 81
    .local v2, "responseCode":I
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_72

    .line 83
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchCallRunnable;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 84
    new-instance v3, Lcom/tonyodev/fetch/exception/DownloadInterruptedException;

    const-string v4, "DIE"

    const/16 v5, -0x76

    invoke-direct {v3, v4, v5}, Lcom/tonyodev/fetch/exception/DownloadInterruptedException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_8b

    .line 101
    .end local v2    # "responseCode":I
    :catch_22
    move-exception v1

    .line 102
    .local v1, "exception":Ljava/lang/Exception;
    :try_start_23
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tonyodev/fetch/ErrorUtils;->getCode(Ljava/lang/String;)I

    move-result v0

    .line 106
    .local v0, "error":I
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchCallRunnable;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_3e

    .line 108
    iget-object v3, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/tonyodev/fetch/FetchCallRunnable$2;

    invoke-direct {v4, p0, v0}, Lcom/tonyodev/fetch/FetchCallRunnable$2;-><init>(Lcom/tonyodev/fetch/FetchCallRunnable;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3e
    .catchall {:try_start_23 .. :try_end_3e} :catchall_8b

    .line 116
    :cond_3e
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchCallRunnable;->release()V

    .line 117
    iget-object v3, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->callback:Lcom/tonyodev/fetch/FetchCallRunnable$Callback;

    iget-object v4, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->request:Lcom/tonyodev/fetch/request/Request;

    invoke-interface {v3, v4}, Lcom/tonyodev/fetch/FetchCallRunnable$Callback;->onDone(Lcom/tonyodev/fetch/request/Request;)V

    .line 119
    .end local v0    # "error":I
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_48
    return-void

    .line 87
    .restart local v2    # "responseCode":I
    :cond_49
    :try_start_49
    iget-object v3, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->input:Ljava/io/InputStream;

    .line 88
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchCallRunnable;->inputToString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->response:Ljava/lang/String;

    .line 90
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchCallRunnable;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_67

    .line 91
    iget-object v3, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/tonyodev/fetch/FetchCallRunnable$1;

    invoke-direct {v4, p0}, Lcom/tonyodev/fetch/FetchCallRunnable$1;-><init>(Lcom/tonyodev/fetch/FetchCallRunnable;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_67} :catch_22
    .catchall {:try_start_49 .. :try_end_67} :catchall_8b

    .line 116
    :cond_67
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchCallRunnable;->release()V

    .line 117
    iget-object v3, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->callback:Lcom/tonyodev/fetch/FetchCallRunnable$Callback;

    iget-object v4, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->request:Lcom/tonyodev/fetch/request/Request;

    invoke-interface {v3, v4}, Lcom/tonyodev/fetch/FetchCallRunnable$Callback;->onDone(Lcom/tonyodev/fetch/request/Request;)V

    goto :goto_48

    .line 99
    :cond_72
    :try_start_72
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSRV:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_8b} :catch_22
    .catchall {:try_start_72 .. :try_end_8b} :catchall_8b

    .line 116
    .end local v2    # "responseCode":I
    :catchall_8b
    move-exception v3

    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchCallRunnable;->release()V

    .line 117
    iget-object v4, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->callback:Lcom/tonyodev/fetch/FetchCallRunnable$Callback;

    iget-object v5, p0, Lcom/tonyodev/fetch/FetchCallRunnable;->request:Lcom/tonyodev/fetch/request/Request;

    invoke-interface {v4, v5}, Lcom/tonyodev/fetch/FetchCallRunnable$Callback;->onDone(Lcom/tonyodev/fetch/request/Request;)V

    throw v3
.end method
